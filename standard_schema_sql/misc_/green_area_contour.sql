drop table if exists "001200010020";
create table "001200010020" as
    select shape, minlv, maxlv, rel_z, '001200010020' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '한국저레벨' as cate3
        from
            (select 1 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0100')
            union select 2 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0200')
            union
            select 3 as rel_z,  6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0300')
            union
            select 4 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0400')
            union
            select 5 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0500')
            union
            select 6 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0600')
            union
            select 7 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0700')
            union
            select 8 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0800')
            union
            select 9 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('0900')
            union
            select 10 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where  dp_code in ('1000')
            union
            select 11 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('1100'))a
    union
    select shape, minlv, maxlv, rel_z, '001200010021' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '한국고레벨' as cate3
        from
            (select 1 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0100')
            union
            select 2 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0200')
            union
            select 3 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0300')
            union
            select 4 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0400')
            union
            select 5 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0500')
            union
            select 6 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0600')
            union
            select 7 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0700')
            union
            select 8 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0800')
            union
            select 9 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('0900')
            union
            select 10 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1000')
            union
            select 11 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1100')
            union
            select 12 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1200')
            union
            select 13 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1300')
            union
            select 14 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1400')
            union
            select 15 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1500')
            union
            select 16 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1600')
            union
            select 17 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1700')
            union
            select 18 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1800')
            union
            select 19 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1900'))b;
create index "001200010020_sdix" on "001200010020" using gist(shape);