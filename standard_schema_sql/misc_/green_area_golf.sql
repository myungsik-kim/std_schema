drop table if exists "001200030004";
create table "001200030004" as
    select rel_z_golf, cate1, cate2, cate3, std_code, minlv, maxlv, shape from (
        select 3 as rel_z_golf, 
                '녹지' as cate1,
                '골프장' as cate2,
                '한국' as cate3,
                '001200030004' as std_code,
                15 as minlv, 22 as maxlv, shape from k5_bg_park_a where dp_code in ('041905')
        union
        select 2 as rel_z_golf, 
                                '녹지' as cate1,
                '골프장' as cate2,
                '한국' as cate3,
                '001200030004' as std_code,
                14 as minlv, 22 as maxlv, shape from k5_bg_park_a where dp_code in ('041907')
        union
        select 1 as rel_z_golf, 
                                '녹지' as cate1,
                '골프장' as cate2,
                '한국' as cate3,
                '001200030004' as std_code,
                12 as minlv, 22 as maxlv, shape from k5_bg_park_a where dp_code in ('041900'))a;
create index "001200030004_sdix" on "001200030004" using gist(shape);