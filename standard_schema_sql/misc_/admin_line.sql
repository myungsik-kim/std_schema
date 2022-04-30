drop table if exists "000200010000", "000200020000";
create table "000200010000" as
    select shape, 0 as minlv, 8 as maxlv, '000200010000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from k200_bg_adm_l
        where dp_code in ('011700')
    union
    select shape, 9 as minlv, 12 as maxlv, '000200010000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from k50_bg_adm_l
        where dp_code in ('011700');
create table "000200020000" as
    select shape, 0 as minlv, 8 as maxlv, '000200020000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from k200_bg_adm_l
        where dp_code in ('011303')
    union
    select shape, 9 as minlv, 12 as maxlv, '000200020000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from k50_bg_adm_l
        where dp_code in ('011303','011304');
create index "000200010000_sdix" on "000200010000" using gist(shape);
create index "000200020000_sdix" on "000200020000" using gist(shape);