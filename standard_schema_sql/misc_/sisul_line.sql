drop table if exists "000500010000", "000500020000", "000500040000", "000500050000", "000500060000", "000500060001", "000500070000", "000500080000", "000500090000", "000500100000", "000500110000" , "000500120000", "000500130000", "000500160000";
create table "000500010000" as
    select shape, 6 as minlv, 9 as maxlv, '000500010000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반' as cate3
        from k200_bg_ferry_l
        where dp_code in ('160200')
    union
    select shape, 10 as minlv, 22 as maxlv, '000500010000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반' as cate3
        from k25_bg_ferry_l
    union
    select shape, 12 as minlv, 22 as maxlv, '000500010000' as std_code,
        '시설라인' as cate1,
        '수상택시' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160205', '160211');
create table "000500020000" as
    select shape, 17 as minlv, 22 as maxlv, '000500020000' as std_code,
        '시설라인' as cate1,
        '성곽' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('291012')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500020000' as std_code,
        '시설라인' as cate1,
        '경기장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290000', '290001', '290002', '290003', '290004', '290005', '290006', '290007', '290100', '290101', '290102', '290103', '290104', '290105', '290200', '290201', '290202', '290203', '290400', '291011', '290105', '151510')
    union
    select shape, 18 as minlv, 22 as maxlv, '000500020000' as std_code,
        '시설라인' as cate1,
        '계단선' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171105')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500020000' as std_code,
        '시설라인' as cate1,
        '주차장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('151207', '151208');
create table "000500040000" as
    select shape, 16 as minlv, 22 as maxlv, '000500040000' as std_code,
        '시설라인' as cate1,
        '버스중앙정류장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160508');
create table "000500050000" as
    select shape, 15 as minlv, 15 as maxlv, '000500050000' as std_code,
        '시설라인' as cate1,
        '교량' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170508')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500050000' as std_code,
        '시설라인' as cate1,
        '교량' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170701', '170702', '170704','170508');
create table "000500060000" as
    select shape, 15 as minlv, 22 as maxlv, '000500060000' as std_code,
        '시설라인' as cate1,
        '터널' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170506');
create table "000500060001" as
    select shape, 15 as minlv, 22 as maxlv, '000500060001' as std_code,
        '시설라인' as cate1,
        '터널' as cate2,
        '터널내구간(점선)' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170503');
create table "000500070000" as
    select shape, 16 as minlv, 22 as maxlv, '000500070000' as std_code,
        '시설라인' as cate1,
        '지하도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170407', '170408');
create table "000500080000" as
    select shape, 16 as minlv, 22 as maxlv, '000500080000' as std_code,
        '시설라인' as cate1,
        '횡단보도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171001');
create table "000500090000" as
    select shape, 15 as minlv, 22 as maxlv, '000500090000' as std_code,
        '시설라인' as cate1,
        '케이블카' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290501', '290502');
create table "000500100000" as
    select shape, 14 as minlv, 22 as maxlv, '000500100000' as std_code,
        '시설라인' as cate1,
        '제주올레길코스' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('081209', '081215');
create table "000500110000" as
    select shape, 17 as minlv, 22 as maxlv, '000500110000' as std_code,
        '시설라인' as cate1,
        '지하주차장 진입로' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170411');
create table "000500120000" as
    select shape, 16 as minlv, 22 as maxlv, '000500120000' as std_code,
        '시설라인' as cate1,
        '고속도로 입체라인' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171201', '171202');
create table "000500130000" as
    select shape, 16 as minlv, 22 as maxlv, '000500130000' as std_code,
        '시설라인' as cate1,
        '주요도로 입체라인' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171203', '171204', '171205');
create table "000500160000" as
    select shape, 16 as minlv, 22 as maxlv, '000500160000' as std_code,
        '시설라인' as cate1,
        '모노레일' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290401', '290402');
create index "000500010000_sdix" on "000500010000" using gist(shape);
create index "000500020000_sdix" on "000500020000" using gist(shape);
create index "000500040000_sdix" on "000500040000" using gist(shape);
create index "000500050000_sdix" on "000500050000" using gist(shape);
create index "000500060000_sdix" on "000500060000" using gist(shape);
create index "000500060001_sdix" on "000500060001" using gist(shape);
create index "000500070000_sdix" on "000500070000" using gist(shape);
create index "000500080000_sdix" on "000500080000" using gist(shape);
create index "000500090000_sdix" on "000500090000" using gist(shape);
create index "000500100000_sdix" on "000500100000" using gist(shape);
create index "000500110000_sdix" on "000500110000" using gist(shape);
create index "000500120000_sdix" on "000500120000" using gist(shape);
create index "000500130000_sdix" on "000500130000" using gist(shape);
create index "000500160000_sdix" on "000500160000" using gist(shape);