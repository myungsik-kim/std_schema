drop table if exists "001500010000", "001500010000", "001500020000", "001500020001";
create table "001500010000" as
    select shape, 15 as minlv, 22 as maxlv, '001500010000' as std_code,
        '건물' as cate1,
        '아파트' as cate2,
        '일반' as cate3
        from k5_bg_building_a
        where dp_code in ('200100');
create table "001500010001" as
    select shape, 17 as minlv, 22 as maxlv, '001500010001' as std_code,
        '건물' as cate1,
        '아파트' as cate2,
        '평형' as cate3
        from k5_bg_aptpy_a
        where dp_code in ('200112','200113');
create table "001500020000" as
    select shape, 13 as minlv, 13 as maxlv, '001500020000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where dp_code in ('160000') AND minlevel in (10)
    union
    select shape, 14 as minlv, 15 as maxlv, '001500020000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where dp_code in ('050600', '050700', '050800', '050100', '050200', '040200') OR (dp_code in ('130000', '070000', '110000', '100000', '160000', '090000', '030000', '180000', '050000', '140000', '200000', '120000', '150000', '080000', '020000', '170000', '060000', '040000', '190000') AND minlevel in (10,11))
    union
    select shape, 16 as minlv, 16 as maxlv, '001500020000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where dp_code in ('070000', '110000', '100000', '160000', '200200', '030000', '120000', '080000', '040200', '170000', '040000', '130000', '050600', '050700', '050800', '090000', '050100', '050200', '180000', '050000', '140000', '200000', '150000', '020000', '060000', '190000')
    union
    select shape, 17 as minlv, 22 as maxlv, '001500020000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
         where dp_code in ('050100', '050200', '050600',  '050700', '050800', '140000', '160000', '040200', '020000', '030000', '040000', '050000', '060000', '070000', '080000', '090000', '100000', '110000', '120000', '130000', '150000', '170000', '180000', '190000', '200000', '200200');
create table "001500020001" as
    select shape, 14 as minlv, 22 as maxlv, '001500020001' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '에버랜드' as cate3
        from k5_bg_building_a
        where dp_code in ('081405');
create index "001500010000_sdix" on "001500010000" using gist(shape);
create index "001500010001_sdix" on "001500010001" using gist(shape);
create index "001500020000_sdix" on "001500020000" using gist(shape);
create index "001500020001_sdix" on "001500020001" using gist(shape);