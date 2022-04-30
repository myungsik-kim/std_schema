#!/bin/sh

help() {
        echo "splt [OPTIONS] FILE"
                echo "    -h         도움말 출력."
                echo "    -a ARG     osm dump 파일 디렉토리 넣어요 /home1/irteam/download/world_osm/qx_202x"
                exit 0
}
while getopts "a:h" opt
do
    case $opt in
        a) arg_a=$OPTARG
        echo "디렉토리는 이곳입니까?: $arg_a";;
        h) help ;;
        ?) help ;;
    esac
done

####Git 토큰
#TOKEN='62e0e841468b117bb60e5fe28d2a95339177144a'
git init;
git pull https://pil-kwon:62e0e841468b117bb60e5fe28d2a95339177144a@oss.navercorp.com/pil-kwon/standard_schema.git;




#글로벌 표준스키마 DB
OSM_DB_PORT="10432"
OSM_DB_HOST="10.113.132.168"
OSM_DB_USER="irteam"
OSM_DB_PW="postgres"
OSM_DB="osm_sample"


#simplifying 데이터 백업
for i in $(psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -Atc "\dt *gen*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -c "create table if not exists back_${i} as table ${i};"; done;
for i in $(psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -Atc "\dt *zres*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -c "create table if not exists back_${i} as table ${i};"; done;
#이전 DB 청소
for i in $(psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -Atc "\dt ne_*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -c "drop table if exists ${i};"; done;
for i in $(psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -Atc "\dt osm_*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -c "drop table if exists ${i};"; done;
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -c "vacuum full analyze;";


#dump된거는 데이터 다운로드 받으면서 바로 하자

psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -c "create table osm_admin (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
admin_level int,
geometry geometry);

create table osm_aeroways (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
geometry geometry);

create table osm_amenities (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
geometry geometry);

create table osm_amenities_polygon (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
geometry geometry);

create table osm_places (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
z_order int, 
population int,
geometry geometry);

create table osm_transport_areas (
id bigint,
osm_id bigint, 
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
geometry geometry);


create table osm_transport_points (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
ref  varchar,
geometry geometry);


create table osm_waterareas (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
area real,
geometry geometry);


create table osm_waterways (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
geometry geometry);


create table osmborder_lines (
osm_id bigint,
admin_level bigint,
dividing_line boolean,
disputed boolean,
maritime boolean,
geometry geometry);


create table osm_roads (
id bigint,
osm_id bigint,
type varchar,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
tunnel int, 
bridge int,
oneway int,
ref varchar,
ramp int,
z_order int,
access varchar,
service varchar,
class varchar,
geometry geometry);

create table osm_landusages(
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
type varchar,
area decimal,
tags hstore,
z_order int,
geometry geometry);


create table osm_buildings (
id bigint,
osm_id bigint,
official_name varchar,
alternative_name varchar,
name varchar,
name_english varchar,
name_chinese varchar,
name_japanese varchar,
name_korean varchar,
wikipedia1 varchar,
wikipedia2 varchar,
tags hstore,
type varchar,
geometry geometry);"



#구매한 dump 파일가져오기
#수계는 global ocean.sh 에서

cd $arg_a
for x in $(psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -Atc "\dt osm*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "\copy ${x} from ${x}.csv csv header; create index ${x}_sdix on ${x} using gist(geometry);"; done;



##이미 만들어졌기 때문에 주석처리
#psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "create table skorea as select geometry from osm_admin where name='대한민국'; create index skorea_sdix on skorea using gist(geometry); create table nkorea as select geometry from osm_admin where name='조선민주주의인민공화국'; create index nkorea_sdix on nkorea using gist(geometry);"



#한국 제거 (intersects false) 
for i in aeroways amenities amenities_polygon buildings housenumbers housenumbers_interpolated places transport_points transport_areas roads; do psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "delete from osm_${i} a using skorea b where st_intersects(a.geometry, b.geometry);"; done;
#한국 제거 (diff / landusages)
psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "update osm_landusages a set geometry=st_difference(a.geometry, b.geometry) from skorea b where st_intersects(a.geometry, b.geometry);";
#한국 제거 (diff / osmborder_lines)
psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "delete from osmborder_lines a using skorea b where st_intersects(a.geometry, b.geometry);";


##이미 만들어졌기 때문에 주석처리
#도로 simplifying
# psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c 'create or replace function ZRes (z integer) returns float returns null on null input language sql immutable as $func$ select (40075016.6855785/(256*2^z)); $func$; create or replace function ZRes (z float) returns float returns null on null input language sql immutable as $func$ select (40075016.6855785/(256*2^z)); $func$;'

# psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "create table osm_roads_zres11 as select * from osm_roads where type IN ('motorway', 'trunk', 'primary', 'secondary', 'tertiary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link', 'tertiary_link') and ST_IsValid(geometry); update osm_roads_zres11 set geometry=st_simplify(geometry, ZRes(12)); create table osm_roads_zres10 as select * from osm_roads_zres11 where type IN ('motorway', 'trunk', 'primary', 'secondary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link'); update osm_roads_zres10 set geometry=st_simplify(geometry, ZRes(11));\
# create table osm_roads_zres9 as select * from osm_roads_zres10 where type IN ('motorway', 'trunk', 'primary', 'secondary', 'motorway_link', 'trunk_link', 'primary_link', 'secondary_link'); update osm_roads_zres9 set geometry=st_simplify(geometry, ZRes(10));\
# create table osm_roads_zres8 as select * from osm_roads_zres9 where type IN ('motorway', 'trunk', 'primary');\
# update osm_roads_zres8 set geometry=st_simplify(geometry, ZRes(10));\
# create table osm_roads_zres7 as select * from osm_roads_zres8 where type IN ('motorway', 'trunk', 'primary') AND ST_Length(geometry) > 50;\
# update osm_roads_zres7 set geometry=st_simplify(geometry, ZRes(9));\
# create table osm_roads_zres6 as select * from osm_roads_zres7 where type IN ('motorway', 'trunk') AND ST_Length(geometry) > 100;\
# update osm_roads_zres6 set geometry=st_simplify(geometry, ZRes(8));\
# create table osm_roads_zres5 as select * from osm_roads_zres6 where type IN ('motorway', 'trunk') AND ST_Length(geometry) > 500;\
# update osm_roads_zres5 set geometry=st_simplify(geometry, ZRes(7));\
# create table osm_roads_zres4 as select * from osm_roads_zres5 where type IN ('motorway') AND ST_Length(geometry) > 1000;\
# update osm_roads_zres4 set geometry=st_simplify(geometry, ZRes(6));"

# for i in {4..11}; do psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "create index osm_roads_zres${i}_sdix on osm_roads_zres${i} using gist(geometry);"; done;


##이미 만들어졌기 때문에 주석처리
#녹지 simplifying
# psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "create table osm_green_landusages_temp_z13 as select type, ST_MakeValid(ST_SnapToGrid(ST_SimplifyVW(geometry, power(zres(13),2)),0.001)) as geometry FROM osm_landusages WHERE ST_Area(geometry) > power(zres(10),2) and type IN ('allotments', 'cemetery', 'farm', 'farmland', 'farmyard', 'garden', 'grass', 'heath', 'hedge', 'meadow', 'nature_reserve', 'orchard', 'park', 'playground', 'vineyard', 'wood','forest', 'village_green');\
# CREATE TABLE osm_green_landusages_gen_z13 AS \
# (SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry FROM \
#     (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM \
#         osm_green_landusages_temp_z13 WHERE ST_NPoints(geometry) < 50) union_geom50 GROUP BY type, cid \
# UNION ALL \
# SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry FROM\
#     (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM \
#         osm_green_landusages_temp_z13 WHERE ST_NPoints(geometry) >= 50 AND ST_NPoints(geometry) < 300) union_geom300 GROUP BY type, cid \
# UNION ALL \
# SELECT type, geometry FROM \
#     osm_green_landusages_temp_z13 WHERE (ST_NPoints(geometry) >= 300));\
# CREATE TABLE osm_green_landusages_temp_z12 AS \
# (SELECT type, ST_MakeValid(ST_SnapToGrid(ST_SimplifyVW(geometry, power(zres(12),2)), 0.001)) AS geometry FROM osm_green_landusages_temp_z13 WHERE ST_Area(geometry) > power(zres(9),2));\
# CREATE TABLE osm_green_landusages_gen_z12 AS \
# (SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry \
# FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z12 WHERE ST_NPoints(geometry) < 50) union_geom50 GROUP BY type, cid \
# UNION ALL \
# SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z12 WHERE ST_NPoints(geometry) >= 50 AND ST_NPoints(geometry) < 300) union_geom300 GROUP BY type, cid \
# UNION ALL \
# SELECT type, geometry FROM osm_green_landusages_temp_z12 WHERE (ST_NPoints(geometry) >= 300));\
# CREATE TABLE osm_green_landusages_temp_z11 AS \
# (SELECT type, ST_MakeValid(ST_SnapToGrid(ST_SimplifyVW(geometry, power(zres(11),2)), 0.001)) AS geometry FROM osm_green_landusages_temp_z12 WHERE ST_Area(geometry) > power(zres(8),2));\
# CREATE TABLE osm_green_landusages_gen_z11 AS \
# (SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z11 WHERE ST_NPoints(geometry) < 50) union_geom50 GROUP BY type, cid \
# UNION ALL \
# SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z11 WHERE ST_NPoints(geometry) >= 50 AND ST_NPoints(geometry) < 300) union_geom300 GROUP BY type, cid \
# UNION ALL \
# SELECT type, geometry FROM osm_green_landusages_temp_z11 WHERE (ST_NPoints(geometry) >= 300));\
# CREATE TABLE osm_green_landusages_temp_z10 AS \
# (SELECT type, ST_MakeValid(ST_SnapToGrid(ST_SimplifyVW(geometry, power(zres(10),2)), 0.001)) AS geometry FROM osm_green_landusages_temp_z11 WHERE ST_Area(geometry) > power(zres(8),2));\
# CREATE TABLE osm_green_landusages_gen_z10 AS \
# (SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z10 WHERE ST_NPoints(geometry) < 50) union_geom50 GROUP BY type, cid \
# UNION ALL \
# SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z10 WHERE ST_NPoints(geometry) >= 50 AND ST_NPoints(geometry) < 300) union_geom300 GROUP BY type, cid \
# UNION ALL \
# SELECT type, geometry FROM osm_green_landusages_temp_z10 WHERE (ST_NPoints(geometry) >= 300));\
# CREATE TABLE osm_green_landusages_temp_z9 AS \
# (SELECT type, ST_MakeValid(ST_SnapToGrid(ST_SimplifyVW(geometry, power(zres(9),2)), 0.001)) AS geometry FROM osm_green_landusages_temp_z10 WHERE ST_Area(geometry) > power(zres(7),2));\
# CREATE TABLE osm_green_landusages_gen_z9 AS \
# (SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry \
#  FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z9 WHERE ST_NPoints(geometry) < 50) union_geom50 GROUP BY type, cid \
# UNION ALL \
# SELECT type, ST_MakeValid((ST_dump(ST_Union(geometry))).geom) AS geometry \
#  FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z9 WHERE ST_NPoints(geometry) >= 50 AND ST_NPoints(geometry) < 300) union_geom300 GROUP BY type, cid \
# UNION ALL \
# SELECT type, ST_MakeValid((ST_Dump(ST_Union(geometry))).geom) AS geometry FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) over () AS cid, geometry FROM osm_green_landusages_temp_z9 WHERE ST_NPoints(geometry) >= 300) union_geom_rest GROUP BY type, cid \
# UNION ALL \
# SELECT type, geometry FROM osm_green_landusages_temp_z9);\
# CREATE TABLE osm_green_landusages_temp_z8 AS \
# (SELECT type, ST_MakeValid(ST_SnapToGrid(ST_SimplifyVW(geometry, power(zres(8),2)), 0.001)) AS geometry FROM osm_green_landusages_temp_z9 WHERE ST_Area(geometry) > power(zres(6),2));\
# CREATE TABLE osm_green_landusages_gen_z8 AS \
# (SELECT type, ST_MakeValid((ST_Dump(ST_Union(geometry))).geom) AS geometry FROM (SELECT type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) OVER () AS cid, geometry FROM osm_green_landusages_temp_z8) union_geom GROUP BY type, cid
# UNION ALL \
# SELECT type, geometry FROM osm_green_landusages_temp_z8);\
# CREATE TABLE osm_green_landusages_temp_z7 AS \
# (SELECT type, ST_MakeValid(ST_SnapToGrid(ST_SimplifyVW(geometry, power(zres(7),2)), 0.001)) AS geometry FROM osm_green_landusages_temp_z8 WHERE ST_Area(geometry) > power(zres(5),2));\
# CREATE TABLE osm_green_landusages_gen_z7 AS \
# (SELECT type, ST_MakeValid((ST_Dump(ST_Union(geometry))).geom) AS geometry FROM (SELECT  type, ST_ClusterDBSCAN(geometry, eps := 0, minpoints := 1) OVER () AS cid, geometry FROM osm_green_landusages_temp_z7) union_geom GROUP BY type, cid );"

# for j in {7..13}; do psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "drop table osm_green_landusages_temp_z${j};"; done;

#amenities_polygon과 landusages 중복 제거
psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "create index osm_amenities_polygon_idx on osm_amenities_polygon(osm_id); create index osm_landusages_idx on osm_landusages(osm_id); create index osm_amenities_polygon_type_idx on osm_amenities_polygon(type)"
psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "delete from osm_amenities_polygon where type in ('water'); delete from osm_amenities_polygon a using osm_landusages b where a.osm_id = b.osm_id;"

######################################북한 split 해서 iso_country_code 부여하는 방안으로 검토##############################

##북한 Country Code 부여




#북한이랑 닿는 부분 빼기 country code 부여
#for i in $(psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -Atc "\dt osm*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "alter table ${i} add column iso_country_code varchar(3); create table nkorea_${i} as select a.* from ${i} a, nkorea b where st_intersects(a.geometry, b.geometry); update nkorea_${i} set iso_country_code='PRK';"; done;
##----------- 북한 경계내부 랜드커버 추가 프로세스---------------------
#psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "update nkorea_osm_landusages a set geometry = st_intersection(a.geometry, b.geometry) from nkorea b where st_intersects(a.geometry, b.geometry);"
#################### 북한 프로세스 끝 ####################

#for i in $(psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -Atc "\dt osm*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -p $OSM_DB_PORT -d $OSM_DB -U $OSM_DB_USER -c "drop index if exists ${i}_geom; create index ${i}_sdix on ${i} using gist(geometry);"; done;


for l in 50m 10m; do wget "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/${l}/cultural/ne_${l}_admin_0_boundary_lines_land.zip" && unzip ne_${l}_admin_0_boundary_lines_land.zip && ogr2ogr -overwrite -f "postgresql" -f "PostgreSQL" PG:"host=${OSM_DB_HOST} port=${OSM_DB_PORT} dbname=${OSM_DB} user=irteam password=postgres" ne_${l}_admin_0_boundary_lines_land.shp -s_srs EPSG:4326 -t_srs EPSG:3857 -lco geometry_name=shape -nlt promote_to_multi -nln ne_${l}_admin_0_boundary_lines_land; done;


for k in 50m 10m; do wget "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/${k}/cultural/ne_${k}_admin_1_states_provinces_lines.zip" && unzip ne_${k}_admin_1_states_provinces_lines.zip && ogr2ogr -overwrite -f "postgresql" -f "PostgreSQL" PG:"host=${OSM_DB_HOST} port=${OSM_DB_PORT} dbname=${OSM_DB} user=irteam password=postgres" ne_${k}_admin_1_states_provinces_lines.shp -s_srs EPSG:4326 -t_srs EPSG:3857 -lco geometry_name=shape -nlt promote_to_multi -nln ne_${k}_admin_1_states_provinces_lines; done;




GLO_LINE=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/osm_std_line.sql -q -O -)
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "$GLO_LINE"


GLO_RAIL=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/osm_std_rr.sql -q -O -)
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "$GLO_RAIL"


GLO_POLYGON=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/osm_std_polygon.sql -q -O -)
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "$GLO_POLYGON"


GLO_ROAD=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/osm_std_rd.sql -q -O -)
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "$GLO_ROAD"


#OSM 데이터 FID 넣기 & Geometry 이름 변경
for o in $(psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -Atc "\dt osm_standard*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -c "alter table ${o} rename column geometry to shape; ADD COLUMN ogc_fid SERIAL PRIMARY KEY; alter table ${o} drop column if exists ogc_fid; alter table ${o} ADD COLUMN ogc_fid SERIAL PRIMARY KEY;"; done;