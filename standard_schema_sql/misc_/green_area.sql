drop table if exists "001200020000", "001200020001", "001200020002";
create table "001200020000" as
    select shape, 7 as minlv, 10 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k50_bg_park_a
        where dp_code in ('040101','040102')
    union
    select shape, 11 as minlv, 11 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040101','040102') or (dp_code in ('040105') and minlevel in (8))
    union
    select shape, 12 as minlv, 13 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040104','040120') or (dp_code in ('040105') and minlevel in (8))
    union
    select shape, 14 as minlv, 14 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040104','040120','040105','040106','040108')
    union
    select shape, 15 as minlv, 15 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040104','040120','040105','040106','040108','040109','040110','040111','040206')
    union
    select shape, 16 as minlv, 22 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040104','040120','040105','040106','040108','040206','040109','040110','040111','040206')
    union
    select shape, 11 as minlv, 12 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code In ('040112','080702','081402','081404') and minlevel In (7,8,9,10)
    union
    select shape, 13 as minlv, 13 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('040112','081404','080702','081402') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('040112','081404','080702','081402')
    union
    select shape, 14 as minlv, 22 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k25_bg_thm_ydo_a
        where dp_code In ('222702','224202','224802','226202','226302','226602');
create table "001200020001" as
    select shape, 16 as minlv, 22 as maxlv, '001200020003' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '공원구획' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293002','293006')
    union
    select shape, 16 as minlv, 22 as maxlv, '001200020001' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('290700','290701','290702','290703','290704','290705','290706','291011')
    union
    select shape, 16 as minlv, 22 as maxlv, '001200020001' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세' as cate3
        from k5_bg_danji_a
        where dp_code in ('040110','040210','132104','132105','132106','132107');
create table "001200020002" as
    select shape, 11 as minlv, 22 as maxlv, '001200020002' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세_실폭위' as cate3
        from k5_bg_danji_a
        where dp_code in ('010700')
    union
    select shape, 16 as minlv, 22 as maxlv, '001200020002' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세_실폭위' as cate3
        from k5_bg_park_a
        where dp_code in ('171003','171005');
create index "001200020000_sdix" on "001200020000" using gist(shape);
create index "001200020001_sdix" on "001200020001" using gist(shape);
create index "001200020002_sdix" on "001200020002" using gist(shape);