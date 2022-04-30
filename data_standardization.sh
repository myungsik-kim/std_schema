#!/bin/sh
D=`date +%Y%m%d-%H%M%S`
BACKUP="/home1/irteam/download/standard/dawul_$D"

####Git 토큰
#TOKEN='62e0e841468b117bb60e5fe28d2a95339177144a'
git init;
git pull https://pil-kwon:62e0e841468b117bb60e5fe28d2a95339177144a@oss.navercorp.com/pil-kwon/standard_schema.git;



#최신 한국 데이터를 가져온다 from dawul(https://oss.navercorp.com/Maps/transformer/issues/73#issuecomment-4928400)
DAWUL_DB_PORT="10432"
DAWUL_DB_HOST="10.114.239.46"
DAWUL_DB_USER="irteam"
DAWUL_DB_PW="postgres"
DAWUL_DB="dawul"

#국내 표준스키마 DB
DUMP_DB_PORT="10432"
DUMP_DB_HOST="10.113.132.168"
DUMP_DB_USER="irteam"
DUMP_DB_PW="postgres"
DUMP_DB="postgres"

#글로벌 표준스키마 DB
OSM_DB_PORT="10432"
OSM_DB_HOST="10.113.132.168"
OSM_DB_USER="irteam"
OSM_DB_PW="postgres"
OSM_DB="osm_sample"

#서비스 DB에서 한국 데이터를 표준스키마 DB로 dump & restore
pg_dump --verbose --jobs=8 -h $DAWUL_DB_HOST -d $DAWUL_DB -p $DAWUL_DB_PORT -U $DAWUL_DB_USER -T "*_budongsan_*" -T "*_jijukmap_*" -T "*_nk_*" -T "*_bike_*" -T "*poi_db_p*" -T "*_cctv_*" -T "*_mountain_*" -T "*_bus_*" -T "_skyview_*" -t "k*" -Fd -f $BACKUP
for i in $(psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -Atc "\dt k*" | cut -d '|' -f2); do psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -c "drop table if exists ${i};"; done;
for i in $(psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -Atc "\dt standard*" | cut -d '|' -f2); do psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -c "drop table if exists ${i};"; done;
for i in $(psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -Atc "\dt kor*" | cut -d '|' -f2); do psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -c "drop table if exists ${i};"; done;
for i in $(psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -Atc "\dt osm*" | cut -d '|' -f2); do psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -c "drop table if exists ${i};"; done;
#DB청소
psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -c "vacuum verbose analyze;";

pg_restore --verbose --jobs=8 --clean -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT $BACKUP


#한국 데이터 만들기
KOREA_ANNO=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_anno.sql -q -O -);
psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -c "$KOREA_ANNO";
KOREA_CONT=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_cont.sql -q -O -);
psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -c "$KOREA_CONT";
KOREA_LINE=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_line.sql -q -O -);
psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -c "$KOREA_LINE";
KOREA_POLYGON=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_polygon.sql -q -O -);
psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -c "$KOREA_POLYGON";
KOREA_ROAD=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_rd.sql -q -O -);
psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -c "$KOREA_ROAD";
KOREA_RAIL=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/korea_std_rr.sql -q -O -);
psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -c "$KOREA_RAIL";


#한국데이터 FID 넣기
for t in $(psql  -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -Atc "\dt kor_standard*" | cut -d '|' -f2); do 
psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -c "ADD COLUMN ogc_fid SERIAL PRIMARY KEY; alter table ${t} drop column if exists ogc_fid; alter table ${t} ADD COLUMN ogc_fid SERIAL PRIMARY KEY;"



#글로벌 데이터 만들기
GLO_LINE=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/osm_std_line.sql -q -O -)
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "$GLO_LINE"


GLO_RAIL=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/osm_std_rr.sql -q -O -)
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "$GLO_RAIL"


GLO_POLYGON=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/osm_std_polygon.sql -q -O -)
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "$GLO_POLYGON"


GLO_ROAD=$(wget --header 'Authorization: token 62e0e841468b117bb60e5fe28d2a95339177144a' https://raw.oss.navercorp.com/pil-kwon/standard_schema/master/standard_schema_sql/osm_std_rd.sql -q -O -)
psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "$GLO_ROAD"


for i in $(psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -Atc "\dt k*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -U $OSM_DB_USER -c "drop table if exists ${i};"; done;


for t in $(psql -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -Atc "\dt kor*" | cut -d '|' -f2); do pg_dump -h $DUMP_DB_HOST -d $DUMP_DB -p $DUMP_DB_PORT -U $DUMP_DB_USER -t ${t} | psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT; done;


#OSM 데이터 FID 넣기 & Geometry 이름 변경
for o in $(psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -Atc "\dt osm_standard*" | cut -d '|' -f2); do psql -h $OSM_DB_HOST -d $OSM_DB -p $OSM_DB_PORT -c "alter table ${o} rename column geometry to shape; ADD COLUMN ogc_fid SERIAL PRIMARY KEY; alter table ${o} drop column if exists ogc_fid; alter table ${o} ADD COLUMN ogc_fid SERIAL PRIMARY KEY;"; done;