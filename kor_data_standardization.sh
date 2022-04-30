#!/bin/sh
D=`date +%Y%m%d-%H%M%S`

BACKUP="/home1/irteam/download/standard/dawul_$D";
ANNO_BACKUP="/home1/irteam/download/standard/poi_lod_$D";

#최신 한국 데이터를 가져온다 from dawul(https://oss.navercorp.com/Maps/transformer/issues/73#issuecomment-4928400)
KOR_PORT="10432";
KOR_HOST="10.114.239.46";
KOR_USER="irteam";
KOR_DB_PW="postgres";
KOR_DB="dawul";

#LOD POI DB
POI_DB="postgres";

#국내 표준스키마 DB
DMP_PORT="10432";
DMP_HOST="localhost";
DMP_DB_USER="irteam";
DMP_DB_PW="postgres";
DMP_DB="postgres";


#서비스 DB에서 한국 데이터를 표준스키마 DB로 dump & restore
pg_dump --verbose --jobs=8 -h ${KOR_HOST} -d ${KOR_DB} -p ${KOR_PORT} -U ${KOR_USER} -T "*_budongsan_*" -T "*_jijukmap_*" -T "*_nk_*" -T "*_bike_*" -T "poi_db_p" -T "*_cctv_*" -T "*_mountain_*" -T "*_bus_*" -T "_skyview_*" -T "k5_bg_building_a_test" -T "*bg_contour*" -T "k25_bg_sea_a" -T "k200_bg_sea_a" -t "k5_na_poi_db_p" -t "k*" -Fd -f ${BACKUP};
#POI중 Anno - LOD
psql -h ${KOR_HOST} -d ${POI_DB} -p ${KOR_PORT} -U ${KOR_USER} -c "create table if not exists poi_db_p_lod_web_anno as select * from poi_db_p_lod_web where dp_code in ('200104','200111','200106','200107','200108','200110');"
pg_dump --verbose --jobs=8 -h ${KOR_HOST} -d ${POI_DB} -p ${KOR_PORT} -U ${KOR_USER} -t "poi_db_p_lod_web_anno" -Fd -f ${ANNO_BACKUP};
psql -h ${KOR_HOST} -d ${POI_DB} -p ${KOR_PORT} -U ${KOR_USER} -c "drop table if exists poi_db_p_lod_web_anno;"

#등고선/수계는 이름 바꿔서 따로 한다.
#기존 k25_bg_contour_10m 이런건 contour_line 등으로 변경
#필요시 다시 백업하고/제작한다.
#k200_bg_sea_a,k25_bg_sea_a 도 가져오지 않는다.


#기존 덤프한 한국 데이터 제거
for i in $(psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -Atc "\dt k*" | cut -d '|' -f2); do psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -c "drop table if exists ${i};"; done;
for i in $(psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -Atc "\dt standard*" | cut -d '|' -f2); do psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -c "drop table if exists ${i};"; done;
for i in $(psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -Atc "\dt kor*" | cut -d '|' -f2); do psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -c "drop table if exists ${i};"; done;
for i in $(psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -Atc "\dt osm*" | cut -d '|' -f2); do psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -c "drop table if exists ${i};"; done;
#DB청소
psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -c "vacuum verbose analyze;";
pg_restore --verbose --jobs=8 --clean -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} ${BACKUP};
pg_restore --verbose --jobs=8 --clean -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} ${ANNO_BACKUP};


#한국 데이터 만들기
KOREA_ANNO=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_anno.sql -q -O -);
psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -U ${DMP_DB_USER} -c "$KOREA_ANNO";



#KOREA_CONT=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_cont.sql -q -O -);
#psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -U ${DMP_DB_USER} -c "$KOREA_CONT";



KOREA_LINE=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_line.sql -q -O -);
psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -U ${DMP_DB_USER} -c "$KOREA_LINE";



KOREA_POLYGON=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_polygon.sql -q -O -);
psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -U ${DMP_DB_USER} -c "$KOREA_POLYGON";



KOREA_ROAD=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_rd.sql -q -O -);
psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -U ${DMP_DB_USER} -c "$KOREA_ROAD";



KOREA_RAIL=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_rr.sql -q -O -);
psql -h ${DMP_HOST} -d ${DMP_DB} -p ${DMP_PORT} -U ${DMP_DB_USER} -c "$KOREA_RAIL";