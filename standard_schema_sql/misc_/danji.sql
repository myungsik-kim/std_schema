drop table if exists "001400010000", "001400010001", "001400020000", "001400020001", "001400030000", "001400040000", "001400050000", "001400050001", "001400060000", "001400060001", "001400070000", "001400070001", "001400080000", "001400080001", "001400090000", "001400090001", "001400100000", "001400110000", "001400120000", "001400130000", "001400130001";
create table "001400010000" as
    select shape, 11 as minlv, 13 as maxlv, '001400010000' as std_code,
        '단지' as cate1,
        '스포츠시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('042509') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001400010000' as std_code,
        '단지' as cate1,
        '스포츠시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('042509','040500');
create table "001400010001" as
    select shape, 16 as minlv, 22 as maxlv, '001400010001' as std_code,
        '단지' as cate1,
        '스포츠시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293003');
create table "001400020000" as
    select shape, 11 as minlv, 13 as maxlv, '001400020000' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('080506') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001400020000' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('080506','080000');
create table "001400020001" as
    select shape, 16 as minlv, 22 as maxlv, '001400020001' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293005');
create table "001400030000" as
    select shape, 14 as minlv, 22 as maxlv, '001400030000' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('041800');
create table "001400040000" as
    select shape, 14 as minlv, 22 as maxlv, '001400040000' as std_code,
        '단지' as cate1,
        '해수욕장' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('082400');
create table "001400050000" as
    select shape, 11 as minlv, 13 as maxlv, '001400050000' as std_code,
        '단지' as cate1,
        '상업시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('130307') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001400050000' as std_code,
        '단지' as cate1,
        '상업시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('130000','130403','130307');
create table "001400050001" as
    select shape, 16 as minlv, 22 as maxlv, '001400050001' as std_code,
        '단지' as cate1,
        '상업시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293007');
create table "001400060000" as
    select shape, 14 as minlv, 22 as maxlv, '001400060000' as std_code,
        '단지' as cate1,
        '의료시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('140000','140803');
create table "001400060001" as
    select shape, 16 as minlv, 22 as maxlv, '001400060001' as std_code,
        '단지' as cate1,
        '의료시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293008');
create table "001400070000" as
    select shape, 11 as minlv, 12 as maxlv, '001400070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('162500') and minlevel in (7,8,9,10)
    union
    select shape, 13 as minlv, 13 as maxlv, '001400070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('162500','023504','020000') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001400070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('160424','160000','162500','023504','020000');
create table "001400070001" as
    select shape, 14 as minlv, 15 as maxlv, '001400070001' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293009')
    union
    select shape, 16 as minlv, 22 as maxlv, '001400070001' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293009','293001');
create table "001400080000" as
    select shape, 11 as minlv, 12 as maxlv, '001400080000' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('050100','050200') and minlevel in (7,8,9,10)
    union
    select shape, 13 as minlv, 13 as maxlv, '001400080000' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('050105') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001400080000' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('050100','050200','050105','050600','050700','050800','050605','050000');
create table "001400080001" as
    select shape, 16 as minlv, 22 as maxlv, '001400080001' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293004','293012');
create table "001400090000" as
    select shape, 15 as minlv, 22 as maxlv, '001400090000' as std_code,
        '단지' as cate1,
        '운동장' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('040200','040000');
create table "001400090001" as
    select shape, 15 as minlv, 22 as maxlv, '001400090001' as std_code,
        '단지' as cate1,
        '운동장' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('290200','290302','290400','290401','290402','291001','291002','291003','291004','291008','291009','290800','290801','291005','291006','290900','290901','290902','290903');
create table "001400100000" as
    select shape, 11 as minlv, 11 as maxlv, '001400100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where minlevel in (7) and dp_code in ('190000', '190300')
    union
    select shape, 12 as minlv, 12 as maxlv, '001400100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where minlevel in (7,8) and dp_code in ('190000', '190300')
    union
    select shape, 13 as minlv, 13 as maxlv, '001400100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where minlevel in (7,8,9) and dp_code in ('190000', '190300')
    union
    select shape, 14 as minlv, 22 as maxlv, '001400100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300');
create table "001400110000" as
    select shape, 16 as minlv, 22 as maxlv, '001400110000' as std_code,
        '단지' as cate1,
        '주차장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('292001','292002','292003','292004','292005','292006','292007');
create table "001400120000" as
    select shape, 14 as minlv, 22 as maxlv, '001400120000' as std_code,
        '단지' as cate1,
        '아파트' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('200100','200114');
create table "001400130000" as
    select shape, 11 as minlv, 22 as maxlv, '001400130000' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('081200');
create table "001400130001" as
    select shape, 13 as minlv, 22 as maxlv, '001400130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '아메리칸어드벤처'as color
        from k5_bg_danji_a
        where dp_code in ('270908')
    union
    select shape, 13 as minlv, 22 as maxlv, '001400130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '글로벌페어'as color
        from k5_bg_danji_a
        where dp_code in ('270909')
    union
    select shape, 13 as minlv, 22 as maxlv, '001400130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '매직랜드'as color
        from k5_bg_danji_a
        where dp_code in ('270906')
    union
    select shape, 13 as minlv, 22 as maxlv, '001400130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '주토피아'as color
        from k5_bg_danji_a
        where dp_code in ('270905')
    union
    select shape, 13 as minlv, 22 as maxlv, '001400130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '유러피안어드벤처'as color
        from k5_bg_danji_a
        where dp_code in ('270907')
    union
    select shape, 13 as minlv, 22 as maxlv, '001400130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '주차장'as color
        from k5_bg_danji_a
        where dp_code in ('270911')
    union
    select shape, 13 as minlv, 15 as maxlv, '001400130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '아웃라인'as color
        from k5_bg_danji_a
        where dp_code in ('270910');
create index "001400010000_sdix" on "001400010000" using gist(shape);
create index "001400010001_sdix" on "001400010001" using gist(shape);
create index "001400020000_sdix" on "001400020000" using gist(shape);
create index "001400020001_sdix" on "001400020001" using gist(shape);
create index "001400030000_sdix" on "001400030000" using gist(shape);
create index "001400040000_sdix" on "001400040000" using gist(shape);
create index "001400050000_sdix" on "001400050000" using gist(shape);
create index "001400050001_sdix" on "001400050001" using gist(shape);
create index "001400060000_sdix" on "001400060000" using gist(shape);
create index "001400070000_sdix" on "001400070000" using gist(shape);
create index "001400070001_sdix" on "001400070001" using gist(shape);
create index "001400080000_sdix" on "001400080000" using gist(shape);
create index "001400080001_sdix" on "001400080001" using gist(shape);
create index "001400090000_sdix" on "001400090000" using gist(shape);
create index "001400090001_sdix" on "001400090001" using gist(shape);
create index "001400100000_sdix" on "001400100000" using gist(shape);
create index "001400110000_sdix" on "001400110000" using gist(shape);
create index "001400120000_sdix" on "001400120000" using gist(shape);
create index "001400130000_sdix" on "001400130000" using gist(shape);
create index "001400130001_sdix" on "001400130001" using gist(shape);