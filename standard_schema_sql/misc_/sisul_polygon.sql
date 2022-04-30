drop table if exists "001700010000", "001700020000", "001700020001", "001700030000", "001700040000", "001700050000", "001700060000", "001700070000";
create table "001700010000" as
    select shape, 14 as minlv, 15 as maxlv, '001700010000' as std_code,
        '도로시설' as cate1,
        '육교' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('171103')
    union
    select shape, 16 as minlv, 22 as maxlv, '001700010000' as std_code,
        '도로시설' as cate1,
        '육교' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('171103','151509');
create table "001700020000" as
    select shape, 15 as minlv, 15 as maxlv, '001700020000' as std_code,
        '도로시설' as cate1,
        '터널' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170505')
    union
    select shape, 16 as minlv, 22 as maxlv, '001700020000' as std_code,
        '도로시설' as cate1,
        '터널' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170505','170400','170405','170406');
create table "001700020001" as
    select shape, 15 as minlv, 22 as maxlv, '001700020001' as std_code,
        '도로시설' as cate1,
        '터널' as cate2,
        '터널내 구간 (음영)' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170509');
create table "001700030000" as
    select shape, 15 as minlv, 22 as maxlv, '001700030000' as std_code,
        '도로시설' as cate1,
        '고가(교량)' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170507');
create table "001700040000" as
    select shape, 15 as minlv, 22 as maxlv, '001700040000' as std_code,
        '도로시설' as cate1,
        '대교' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170701');
create table "001700050000" as
    select shape, 16 as minlv, 22 as maxlv, '001700050000' as std_code,
        '도로시설' as cate1,
        '지하주차장진입' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170410');
create table "001700060000" as
    select shape, 16 as minlv, 22 as maxlv, '001700060000' as std_code,
        '도로시설' as cate1,
        '지하보도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('171104');
create table "001700070000" as
    select shape, 17 as minlv, 22 as maxlv, '001700070000' as std_code,
        '도로시설' as cate1,
        '시장경계' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('130400');
create index "001700010000_sdix" on "001700010000" using gist(shape);
create index "001700020000_sdix" on "001700020000" using gist(shape);
create index "001700020001_sdix" on "001700020001" using gist(shape);
create index "001700030000_sdix" on "001700030000" using gist(shape);
create index "001700040000_sdix" on "001700040000" using gist(shape);
create index "001700050000_sdix" on "001700050000" using gist(shape);
create index "001700060000_sdix" on "001700060000" using gist(shape);
create index "001700070000_sdix" on "001700070000" using gist(shape);