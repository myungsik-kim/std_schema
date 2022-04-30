#!/bin/sh

#강 호수 川 池 RIVER LAKES 강 호수 川 池 RIVER LAKES 강 호수 川 池 RIVER LAKES 강 호수 川 池 RIVER LAKES
#데이터 다운로드
mkdir -p /home1/irteam/osm_ocean #혹시 if exists 가 되는 지 확인해 볼 것.
cd /home1/irteam/osm_ocean
## Natural Earth (110m, 50m)
for j in 110m 50m;
	do wget "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/${j}/physical/ne_${j}_lakes.zip" && unzip ne_${j}_lakes.zip
	done;

## 10m lakes (north america, europe, and other world)
wget https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/ne_10m_lakes_north_america.zip -O ne_10m_lakes_north_america.zip;
unzip -j ne_10m_lakes_north_america.zip;
wget https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/ne_10m_lakes.zip -O ne_10m_lakes.zip;
unzip -j ne_10m_lakes.zip;
wget https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/ne_10m_lakes_europe.zip -O ne_10m_lakes_europe.zip;
unzip -j ne_10m_lakes_europe.zip;
ogr2ogr -overwrite -f "esri shapefile" ne_10m_lakes_union.shp ne_10m_lakes_north_america.shp -lco ENCODING=UTF-8;
ogr2ogr -f "esri shapefile" -update -append ne_10m_lakes_union.shp ne_10m_lakes_europe.shp -lco ENCODING=UTF-8;
ogr2ogr -f "esri shapefile" -update -append ne_10m_lakes_union.shp ne_10m_lakes.shp -lco ENCODING=UTF-8;


#한국 최신 바다 영역 (아래 날짜는 계속 바꿔야함)
sea_korea="sea_korea_220215";

#바다 들어갈 DB
PORT="10432";
HOST="localhost";
DMP_DB_USER="irteam";
DMP_DB_PW="postgres";
DBNAME="osm_ocean";


ogr2ogr -overwrite -f "PostgreSQL" PG:"host=${HOST} port=${PORT} dbname=${DBNAME} user=irteam password=postgres" ne_110m_lakes.shp -lco geometry_name=shape -nlt promote_to_multi;
ogr2ogr -overwrite -f "postgresql" -f "PostgreSQL" PG:"host=${HOST} port=${PORT} dbname=${DBNAME} user=irteam password=postgres" ne_50m_lakes.shp -lco geometry_name=shape -nlt promote_to_multi;
ogr2ogr -overwrite -f "postgresql" -f "PostgreSQL" PG:"host=${HOST} port=${PORT} dbname=${DBNAME} user=irteam password=postgres" ne_10m_lakes_union.shp -lco geometry_name=shape -nlt promote_to_multi -nln ne_10m_lakes -lco ENCODING=UTF-8;
rm -f *;


# PG에서 좌표 변환 등의 가공
for i in 110m 50m 10m; do psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "drop table if exists ne_${i}_lakes_3857; create table ne_${i}_lakes_3857 as select * from ne_${i}_lakes; alter table ne_${i}_lakes_3857 alter column shape type geometry(multipolygon, 3857) using st_transform(shape, 3857); drop index if exists ne_${i}_lakes_3857_sdx; create index ne_${i}_lakes_3857_sdx on ne_${i}_lakes_3857 using gist(shape);"; done;

# OSM Raw Data 가져오기
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "drop table if exists osm_waterareas;"
pg_dump -h 10.114.239.85 -p 10432 -d osm_world -t osm_waterareas | psql -h ${HOST} -d ${DBNAME} -p ${PORT}

# geometry field 정리
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "alter table skorea ALTER COLUMN geometry TYPE geometry(MULTIPOLYGON, 3857) USING ST_SetSRID(ST_AsEWKT(geometry),3857);"
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "alter table tiles9 ALTER COLUMN shape TYPE geometry(MULTIPOLYGON, 3857) USING ST_SetSRID(ST_AsEWKT(shape),3857);"
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "alter table world_extent_3857 ALTER COLUMN shape TYPE geometry(MULTIPOLYGON, 3857) USING ST_SetSRID(ST_AsEWKT(shape),3857);"
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "alter table world_extent_4326 ALTER COLUMN shape TYPE geometry(MULTIPOLYGON, 3857) USING ST_SetSRID(ST_AsEWKT(shape),3857);"
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "alter table world_korea_extent_3857 ALTER COLUMN shape TYPE geometry(MULTIPOLYGON, 3857) USING ST_SetSRID(ST_AsEWKT(shape),3857);"

# 한국제거 double check
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "update osm_waterareas a set geometry=st_difference(a.geometry, b.geometry) from skorea b where st_intersects(a.geometry, b.geometry);"

psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "alter table osm_waterareas rename column geometry to shape; drop index if exists osm_waterareas_sdix; create index osm_waterareas_sdix on osm_waterareas using gist(shape);"
# OSM Raw Data Simplifying 하는 Zres Function 삽입
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -a -q -f /home1/irteam/standard_schema_script/zres_function.sql

# OSM Raw Data Simplifying 하기
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "create table world${DATE}_inland_water_gen1 as select st_simplify(shape, ZRes(12)) as shape from osm_waterareas;
create table world${DATE}_inland_water_gen2 as select st_simplify(shape, ZRes(11)) as shape from world${DATE}_inland_water_gen1;
create table world${DATE}_inland_water_gen3 as select st_simplify(shape, ZRes(10)) as shape from world${DATE}_inland_water_gen2;
create table world${DATE}_inland_water_gen4 as select st_simplify(shape, ZRes(9)) as shape from world${DATE}_inland_water_gen3;
create table world${DATE}_inland_water_gen5 as select st_simplify(shape, ZRes(8)) as shape from world${DATE}_inland_water_gen4;
create table world${DATE}_inland_water_gen6 as select st_simplify(shape, ZRes(7)) as shape from world${DATE}_inland_water_gen5;"
#Geometry Error 수정 및 Spatial Index
for i in {1..6};
	do psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "update world${DATE}_inland_water_gen${i} set shape = st_multi(st_collectionextract(st_makevalid(shape), 3)) where st_isvalid(shape) = false; drop index if exists water_polygon_gen${i}_sdx; create index water_polygon_gen${i}_sdx on world${DATE}_inland_water_gen${i} using gist(shape);";
	done;


#바다 SEA 海 바다 SEA 海 바다 SEA 海 바다 SEA 海 바다 SEA 海 바다 SEA 海 바다 SEA 海 바다 SEA
#데이터 다운로드
cd $PG_HOME/osm_ocean
## Natural Earth (110m, 50m, 10m)
for o in 110m 50m 10m;
	do wget "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/${o}/physical/ne_${o}_ocean.zip" && unzip ne_${o}_ocean.zip && ogr2ogr -overwrite -f "PostgreSQL" PG:"host=${HOST} port=${PORT} dbname=${DBNAME} user=irteam password=postgres" ne_${o}_ocean.shp -lco geometry_name=shape -nlt promote_to_multi -nln ne_${o}_ocean
done;
## OSM Ocean
wget https://osmdata.openstreetmap.de/download/water-polygons-split-3857.zip;
unzip -j water-polygons-split-3857.zip;
ogr2ogr -f "PostgreSQL" PG:"host=${HOST} port=${PORT} dbname=${DBNAME} user=irteam password=postgres" water_polygons.shp -lco geometry_name=shape -nln water_polygons;
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "drop index if exists water_polygons_sdx; create index water_polygons_sdx on water_polygons using gist(shape);";
rm -f *;


#한국부분 빵꾸내기
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "create table water_polygons_3857 as (select st_difference(a.shape, b.shape) as shape from water_polygons a inner join world_korea_extent_3857 b on st_intersects(a.shape, b.shape)) union (select a.shape from water_polygons a right join world_korea_extent_3857 b on st_intersects(a.shape, b.shape) = false);"


###### 한국쪽 다시 해야할 것 같음
#한국 데이터 Dawul DB에서 가져오기 #한국 데이터 부분 수정해야합니다.
#Dawul DB에서 직접가져오기 #ACL신청 필요 매년
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "drop table if exists k25_bg_sea_a, k25_bg_sea_a_sub;"
#PGPASSWORD='#Ekdnf2020!' pg_dump -h 112.221.120.91 -d dawulmap2 -p 35432 -U dw_editor -t ${SEA} | psql -h ${HOST} -d ${DBNAME} -p ${PORT};

pgsql2shp -h 112.221.120.91 -p 35432 -u dw_editor -P '#Ekdnf2020!' -f sea_korea dawulmap2 ${SEA}
ogr2ogr -overwrite -progress -f "postgresql" pg:"host=cdev-osmdata101-map  port=10432 dbname=osm_ocean user=irteam password=postgres" sea_korea.shp -lco geometry_name=shape -nln ${SEA} -nlt promote_to_multi

psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "create table k25_bg_sea_a_sub as select st_intersection(a.shape, b.shape) as shape from ${SEA} a join tiles9 b on st_intersects (a.shape, b.shape);";
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "create index sea_korea_sdx on k25_bg_sea_a_sub using gist(shape);"

##한국 지형 이어 붙이기
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "drop table if exists water_polygons_3857_union; create table water_polygons_3857_union as select shape from (select shape from water_polygons_3857 union (select st_intersection (a.shape, b.shape) as shape from k25_bg_sea_a_sub a, world_korea_extent_3857 b))x; drop index if exists water_polygons_3857_union_sdx; create index water_polygons_3857_union_sdx on water_polygons_3857_union using gist(shape);"
