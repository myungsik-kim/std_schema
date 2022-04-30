drop table if exists "001300010000", "001300020000";
create table "001300010000" as
    select shape, 6 as minlv, 8 as maxlv, '001300010000' as std_code,
        '수계' as cate1,
        '하천' as cate2,
        '일반' as cate3
        from k50_bg_water_a
        where dp_code in ('010200')
    union
    select shape, 9 as minlv, 13 as maxlv, '001300010000' as std_code,
        '수계' as cate1,
        '하천' as cate2,
        '일반' as cate3
        from k25_bg_water_a
        where dp_code in ('010200','010300','010500')
    union
    select shape, 14 as minlv, 22 as maxlv, '001300010000' as std_code,
        '수계' as cate1,
        '하천' as cate2,
        '일반' as cate3
        from k5_bg_water_a;
create table "001300020000" as
    select shape, 7 as minlv, 10 as maxlv, '001300020000' as std_code,
        '수계' as cate1,
        '해상공원' as cate2,
        '일반' as cate3
        from k50_bg_park_a
        where dp_code in ('040107');
create index "001300010000_sdix" on "001300010000" using gist(shape);
create index "001300020000_sdix" on "001300020000" using gist(shape);