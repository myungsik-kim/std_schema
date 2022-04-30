#!/bin/sh

#한국부분 수계만 변경될때 사용
#기존 글로벌 수계 : water_polygons_3857_union
#한국 빵꾸난 수계 : water_polygons_3857


#한국 최신 바다 영역
SEA="sea_korea_220215";

#바다 들어갈 DB
PORT="10432";
HOST="localhost";
DMP_DB_USER="irteam";
DMP_DB_PW="postgres";
DBNAME="osm_ocean";

#기존 전세계 수계(+한국) backup 해놓기
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "drop table if exists water_polygons_3857_union_bak; create table water_polygons_3857_union_bak as select * from water_polygons_3857_union; drop table water_polygons_3857_union;";

#데이터 가져오기
#다울에서 > cdev-osmadata101-map 서버로 데이터 가져오기
cd /home1/irteam/sea_korea;
pgsql2shp -h 112.221.120.91 -p 35432 -u dw_editor -P '#Ekdnf2020!' -f ${sea_korea} dawulmap2 ${sea_korea};
ogr2ogr -overwrite -progress -f "postgresql" pg:"host=localhost port=10432 dbname=osm_ocean user=irteam password=postgres" ${sea_korea}.shp -lco geometry_name=shape -nln ${sea_korea} -nlt promote_to_multi
#빵구난 한국에 새로운 한국
psql -h ${HOST} -d ${DBNAME} -p ${PORT} -c "create table water_polygons_3857_union as select shape from water_polygons_3857 union select shape from ${sea_korea};";