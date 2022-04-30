-- 국내 테스트
--create table "000000010000'" as -- 도로실선 | 고속도로
    select shape, 6 as minlv, 6 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k200_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 7 as minlv, 8 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 9 as minlv, 12 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 13 as minlv, 15 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2);
--create table "000000010001'" as -- 도로실선 | 고속도로 bg
    select shape, 6 as minlv, 6 as maxlv, 15 as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k200_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 7 as minlv, 8 as maxlv, 15 as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 9 as minlv, 12 as maxlv, 15 as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 13 as minlv, 15 as maxlv, 15 as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2);
--create table "000000020001'" as -- 도로실선 | 주요도로 국도
    select shape, 8 as minlv, 8 as maxlv, 19 as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 9 as minlv, 12 as maxlv, 19 as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 19 as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12);
--create table "000000020002" as-- 도로실선 | 주요도로 지방도
    select shape, 9 as minlv, 12 as maxlv, 18 as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (4,5) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 18 as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (4,5) AND dp_link_k In (1,2,5,7,12);
--create table "000000020003'" as -- 도로실선 | 주요도로 국도 bg
    select shape, 8 as minlv, 8 as maxlv, 14 as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_bg' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 9 as minlv, 12 as maxlv, 14 as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_bg' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 14 as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12);
--create table "000000020004'" as -- 도로실선 | 주요도로-지방도 bg
    select shape, 9 as minlv, 12 as maxlv, 13 as rel_z_road, '000000020004' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도_bg' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (4,5) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 13 as rel_z_road, '000000020004' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (4,5) AND dp_link_k In (1,2,5,7,12);
--create table "000000030001'" as -- 도로실선 | 일반도로-대로
    select shape, 9 as minlv, 11 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2)) AND dp_level In (1)
    union
    select shape, 12 as minlv, 12 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,12)) AND dp_level In (1)
    union
    select shape, 13 as minlv, 13 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,12)) AND dp_level in (1)
    union
    select shape, 14 as minlv, 15 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,7,12)) AND dp_level in (1);
--create table "000000030002'" as -- 도로실선 | 일반도로-중로
    select shape, 12 as minlv, 12 as maxlv, 9 as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,12)) and dp_level in (2)
    union
    select shape, 13 as minlv, 13 as maxlv, 9 as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,12)) and dp_level in (2)
    union
    select shape, 14 as minlv, 15 as maxlv, 9 as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,7,12)) AND dp_level in (2);
--create table "000000030003'" as -- 도로실선 | 일반도로-소로
    select shape, 13 as minlv, 13 as maxlv, 8 as rel_z_road, '000000030003' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,3,4,5,12)) and dp_level in (3)
    union
    select shape, 14 as minlv, 15 as maxlv, 8 as rel_z_road, '000000030003' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로' as cate3
        from k5_bg_rd_link_l
        where ((dp_road_k In (6) AND dp_link_k In (1,2,3,4,5,6,7,12))) and dp_level in (3);
--create table "000000030004'" as -- 도로실선 | 일반도로-대로 bg
    select shape, 9 as minlv, 11 as maxlv, 5 as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로_bg' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2)) AND dp_level In (1)
    union
    select shape, 12 as minlv, 12 as maxlv, 5 as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로_bg' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,12)) AND dp_level In (1)
    union
    select shape, 13 as minlv, 13 as maxlv, 5 as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,12)) AND dp_level in (1)
    union
    select shape, 14 as minlv, 15 as maxlv, 5 as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,7,12)) AND dp_level in (1);
--create table "000000030005'" as -- 도로실선 | 일반도로-중로 bg
    select shape, 12 as minlv, 12 as maxlv, 4 as rel_z_road, '000000030005' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로_bg' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,12)) and dp_level in (2)
    union
    select shape, 13 as minlv, 13 as maxlv, 4 as rel_z_road, '000000030005' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,12)) and dp_level in (2)
    union
    select shape, 14 as minlv, 15 as maxlv, 4 as rel_z_road, '000000030005' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,7,12)) AND dp_level in (2);
--create table "000000030006'" as -- 도로실선 | 일반도로-소로 bg
    select shape, 13 as minlv, 13 as maxlv, 3 as rel_z_road, '000000030006' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,3,4,5,12)) and dp_level in (3)
    union
    select shape, 14 as minlv, 15 as maxlv, 3 as rel_z_road, '000000030006' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로_bg' as cate3
        from k5_bg_rd_link_l
        where ((dp_road_k In (6) AND dp_link_k In (1,2,3,4,5,6,7,12))) and dp_level in (3);
--create table "000000040000'" as -- 도로실선 | 단지내도로
    select shape, 14 as minlv, 15 as maxlv, 6 as rel_z_road, '000000040000' as std_code,
        '도로실선' as cate1,
        '단지내도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where road_dk in (3,4);
--create table "000000040001'" as -- 도로실선 | 단지내도로 bg
    select shape, 14 as minlv, 15 as maxlv, 2 as rel_z_road, '000000040001' as std_code,
        '도로실선' as cate1,
        '단지내도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_link_l
        where road_dk in (3,4);
--create table "000000050000" as -- 도로실선 | 실폭용보행도로
    select shape, 16 as minlv, 22 as maxlv, 0 as rel_z_road, 000000050000 as std_code,
        '도로실선' as cate1,
        '실폭용보행도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171209');
--create table "000000050001" as -- 도로실선 | 실폭용보행도로 bg
    select shape, 16 as minlv, 22 as maxlv, -1 as rel_z_road, 000000050001 as std_code,
        '도로실선' as cate1,
        '실폭용보행도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171209');
--create table "000000050002" as -- 도로실선 | 램프별도 오버선
    select shape, 13 as minlv, 15 as maxlv, -1 as rel_z_road, 000000050002 as std_code,
        '도로실선' as cate1,
        '램프별도오버선' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171237');
--create table "000000050003" as -- 도로실선 | 램프별도 오버선 bg
    select shape, 13 as minlv, 15 as maxlv, -1 as rel_z_road, 000000050003 as std_code,
        '도로실선' as cate1,
        '램프별도오버선' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171237');




-- 실선 도로 램프 및 BG
--create table "'000100000000'" as
    select shape, 12 as minlv, 12 as maxlv, 17 as rel_z_road, '000100000000' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 13 as minlv, 15 as maxlv, 17 as rel_z_road, '000100000000' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14);
--create table "'000100000001'" as
    select shape, 12 as minlv, 12 as maxlv, 12 as rel_z_road, '000100000001' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 13 as minlv, 15 as maxlv, 12 as rel_z_road, '000100000001' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14);
--create table "'000100010000'" as
    select shape, 13 as minlv, 15 as maxlv, 16 as rel_z_road, '000100010000' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3,4,5) AND dp_link_k in (3,4,8,13,14);
--create table "'000100010001'" as
    select shape, 13 as minlv, 15 as maxlv, 11 as rel_z_road, '000100010001' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3,4,5) AND dp_link_k in (3,4,8,13,14);
--create table "'000100020000'" as
    select shape, 13 as minlv, 13 as maxlv, 7 as rel_z_road, '000100020000' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,14)) and dp_level in (1,2)
    union
    select shape, 14 as minlv, 15 as maxlv, 7 as rel_z_road, '000100020000' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,8,13,14)) and dp_level in (1,2);
--create table "'000100020001'" as
    select shape, 13 as minlv, 13 as maxlv, 1 as rel_z_road, '000100020001' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,14)) and dp_level in (1,2)
    union
    select shape, 14 as minlv, 15 as maxlv, 1 as rel_z_road, '000100020001' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,8,13,14)) and dp_level in (1,2);
create table "000000060000" as
    select shape, 13 as minlv, 15 as maxlv, 22 as rel_z_road, 000000050002 as std_code,
        '도로실선' as cate1,
        '램프별도오버선' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171237')
    union
    select shape, 13 as minlv, 15 as maxlv, 21 as rel_z_road, 000000050003 as std_code,
        '도로실선' as cate1,
        '램프별도오버선' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171237')
    union
    select shape, 6 as minlv, 6 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k200_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 7 as minlv, 8 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 9 as minlv, 12 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 13 as minlv, 15 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 5 as minlv, 6 as maxlv, 15 as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k200_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 7 as minlv, 8 as maxlv, 15 as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 9 as minlv, 12 as maxlv, 15 as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 13 as minlv, 15 as maxlv, 15 as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2)
    union
    select shape, 8 as minlv, 8 as maxlv, 19 as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 9 as minlv, 12 as maxlv, 19 as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 19 as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 9 as minlv, 12 as maxlv, 18 as rel_z_road, '000000020002' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (4,5) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 18 as rel_z_road, '000000020002' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (4,5) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 8 as minlv, 8 as maxlv, 14 as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_bg' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 9 as minlv, 12 as maxlv, 14 as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_bg' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 14 as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 9 as minlv, 12 as maxlv, 13 as rel_z_road, '000000020004' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도_bg' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (4,5) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 13 as rel_z_road, '000000020004' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (4,5) AND dp_link_k In (1,2,5,7,12)
    union
    select shape, 9 as minlv, 11 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2)) AND dp_level In (1)
    union
    select shape, 12 as minlv, 12 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,12)) AND dp_level In (1)
    union
    select shape, 13 as minlv, 13 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,12)) AND dp_level in (1)
    union
    select shape, 14 as minlv, 15 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,7,12)) AND dp_level in (1)
    union
    select shape, 12 as minlv, 12 as maxlv, 9 as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,12)) and dp_level in (2)
    union
    select shape, 13 as minlv, 13 as maxlv, 9 as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,12)) and dp_level in (2)
    union
    select shape, 14 as minlv, 15 as maxlv, 9 as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,7,12)) AND dp_level in (2)
    union
    select shape, 13 as minlv, 13 as maxlv, 8 as rel_z_road, '000000030003' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,3,4,5,12)) and dp_level in (3)
    union
    select shape, 14 as minlv, 15 as maxlv, 8 as rel_z_road, '000000030003' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로' as cate3
        from k5_bg_rd_link_l
        where ((dp_road_k In (6) AND dp_link_k In (1,2,3,4,5,6,7,12))) and dp_level in (3)
    union
    select shape, 9 as minlv, 11 as maxlv, 5 as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로_bg' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2)) AND dp_level In (1)
    union
    select shape, 12 as minlv, 12 as maxlv, 5 as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로_bg' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,12)) AND dp_level In (1)
    union
    select shape, 13 as minlv, 13 as maxlv, 5 as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,12)) AND dp_level in (1)
    union
    select shape, 14 as minlv, 15 as maxlv, 5 as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,7,12)) AND dp_level in (1)
    union
    select shape, 12 as minlv, 12 as maxlv, 4 as rel_z_road, '000000030005' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로_bg' as cate3
        from k25_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,12)) and dp_level in (2)
    union
    select shape, 13 as minlv, 13 as maxlv, 4 as rel_z_road, '000000030005' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,12)) and dp_level in (2)
    union
    select shape, 14 as minlv, 15 as maxlv, 4 as rel_z_road, '000000030005' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,7,12)) AND dp_level in (2)
    union
    select shape, 13 as minlv, 13 as maxlv, 3 as rel_z_road, '000000030006' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로_bg' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,3,4,5,12)) and dp_level in (3)
    union
    select shape, 14 as minlv, 15 as maxlv, 3 as rel_z_road, '000000030006' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로_bg' as cate3
        from k5_bg_rd_link_l
        where ((dp_road_k In (6) AND dp_link_k In (1,2,3,4,5,6,7,12))) and dp_level in (3)
    union
    select shape, 14 as minlv, 15 as maxlv, 6 as rel_z_road, '000000040000' as std_code,
        '도로실선' as cate1,
        '단지내도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where road_dk in (3,4)
    union
    select shape, 14 as minlv, 15 as maxlv, 2 as rel_z_road, '000000040001' as std_code,
        '도로실선' as cate1,
        '단지내도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_link_l
        where road_dk in (3,4)
    union
    select shape, 12 as minlv, 12 as maxlv, 17 as rel_z_road, '000100000000' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 13 as minlv, 15 as maxlv, 17 as rel_z_road, '000100000000' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 12 as minlv, 12 as maxlv, 12 as rel_z_road, '000100000001' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 13 as minlv, 15 as maxlv, 12 as rel_z_road, '000100000001' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 13 as minlv, 15 as maxlv, 16 as rel_z_road, '000100010000' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3,4,5) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 13 as minlv, 15 as maxlv, 11 as rel_z_road, '000100010001' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반_bg' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3,4,5) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 13 as minlv, 13 as maxlv, 7 as rel_z_road, '000100020000' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,14)) and dp_level in (1,2)
    union
    select shape, 14 as minlv, 15 as maxlv, 7 as rel_z_road, '000100020000' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,8,13,14)) and dp_level in (1,2)
    union
    select shape, 13 as minlv, 13 as maxlv, 1 as rel_z_road, '000100020001' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,14)) and dp_level in (1,2)
    union
    select shape, 14 as minlv, 15 as maxlv, 1 as rel_z_road, '000100020001' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,8,13,14)) and dp_level in (1,2);
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
create table "000300000000" as
    select shape, 11 as minlv, 13 as maxlv, '000300000000' as std_code,
        '철도' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k25_bg_rail_l
        where dp_code in ('160300','160302','160305','160427','160401','160402','160313')
    union
    select shape, 14 as minlv, 22 as maxlv, '000300000000' as std_code,
        '철도' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rail_l
        where dp_code in ('160300','160302','160305','160427','160401','160402','160313');
create table "000300010000" as
    select shape, 11 as minlv, 13 as maxlv, '00030001000' as std_code,
        '철도' as cate1,
        '공사중/예정' as cate2,
        '일반' as cate3
        from k25_bg_rail_l
        where dp_code in ('160304')
    union
    select shape, 14 as minlv, 22 as maxlv, '000300001000' as std_code,
        '철도' as cate1,
        '공사중/예정' as cate2,
        '일반' as cate3
        from k5_bg_rail_l
        where dp_code in ('160304');
create table "000300020000" as
    select shape, 11 as minlv, 13 as maxlv, '00030002000' as std_code,
        '철도' as cate1,
        '고속철도' as cate2,
        '일반' as cate3
        from k25_bg_rail_l
        where dp_code in ('160301')
    union
    select shape, 14 as minlv, 22 as maxlv, '00030002000' as std_code,
        '철도' as cate1,
        '고속철도' as cate2,
        '일반' as cate3
        from k5_bg_rail_l
        where dp_code in ('160301');
create table "000400010000" as
    select shape, 11 as minlv, 13 as maxlv, '000400010001' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160401','160402')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010001' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160401')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010002' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울2호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160404')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010002' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160404')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010003' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울3호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160405')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010003' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160405')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010004' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울4호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160406')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010004' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160406')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010005' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울5호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160407')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010005' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울5호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160407')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010006' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울6호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160408')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010006' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울6호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160408')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010007' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울7호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160409')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010007' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울7호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160409')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010008' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울8호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160410')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010008' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울8호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160410')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010009' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울9호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160412')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010009' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울9호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160412')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010010' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '분당선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160411')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010010' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160411')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010011' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160413')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010011' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160413')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010012' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산2호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160414')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010012' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160414')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010013' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산3호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160415')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010013' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160415')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010014' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산4호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160431')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010014' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160431')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010015' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160416')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010015' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160416')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010016' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구2호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160417')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010016' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160417')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010017' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구3호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160439')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010017' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160439')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010018' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160418')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010018' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160418')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010019' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천2호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160419')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010019' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160419')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010020' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '광주1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160420')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010020' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '광주1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160420')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010021' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대전1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160421')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010021' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대전1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160421')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010022' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경춘선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160430')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010022' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경춘선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160430')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010023' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김해경전철' as cate3
        from k25_bg_rail_l
        where dp_code in ('160432')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010023' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김해경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160432')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010024' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '신분당선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160433')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010024' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '신분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160433')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010025' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '공항선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160303')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010025' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '공항선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160303')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010026' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '수인선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160435')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010026' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '수인선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160435')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010027' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '의정부경전철' as cate3
        from k25_bg_rail_l
        where dp_code in ('160436')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010027' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160436')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010028' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '용인경전철' as cate3
        from k25_bg_rail_l
        where dp_code in ('160437')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010028' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '용인경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160437')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010029' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경의중앙선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160438')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010029' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160438')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010030' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천공항자기부상철도' as cate3
        from k25_bg_rail_l
        where dp_code in ('160440')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010030' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rail_l
        where dp_code in ('160440')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010031' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경강선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160441')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010031' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경강선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160441')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010032' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '동해선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160442')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010032' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '동해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160442')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010033' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '우이선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160443')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010033' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '우이선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160443')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010034' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서해선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160444')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010034' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160444')
    union
    select shape, 11 as minlv, 13 as maxlv, '000400010035' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김포골드라인' as cate3
        from k25_bg_rail_l
        where dp_code in ('160445')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010035' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rail_l
        where dp_code in ('160445')

--create table "000400010001" as
    select shape, 11 as minlv, 13 as maxlv, '000400010001' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160401','160402')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010001' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160401');
--create table "000400010002" as
    select shape, 11 as minlv, 13 as maxlv, '000400010002' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울2호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160404')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010002' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160404');
--create table "000400010003" as
    select shape, 11 as minlv, 13 as maxlv, '000400010003' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울3호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160405')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010003' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160405');
--create table "000400010004" as
    select shape, 11 as minlv, 13 as maxlv, '000400010004' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울4호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160406')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010004' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160406');
--create table "000400010005" as
    select shape, 11 as minlv, 13 as maxlv, '000400010005' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울5호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160407')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010005' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울5호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160407');
--create table "000400010006" as
    select shape, 11 as minlv, 13 as maxlv, '000400010006' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울6호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160408')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010006' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울6호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160408');
--create table "000400010007" as
    select shape, 11 as minlv, 13 as maxlv, '000400010007' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울7호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160409')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010007' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울7호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160409');
--create table "000400010008" as
    select shape, 11 as minlv, 13 as maxlv, '000400010008' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울8호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160410')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010008' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울8호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160410');
--create table "000400010009" as
    select shape, 11 as minlv, 13 as maxlv, '000400010009' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울9호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160412')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010009' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울9호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160412');
--create table "000400010010" as
    select shape, 11 as minlv, 13 as maxlv, '000400010010' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '분당선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160411')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010010' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160411');
--create table "000400010011" as
    select shape, 11 as minlv, 13 as maxlv, '000400010011' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160413')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010011' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160413');
--create table "000400010012" as
    select shape, 11 as minlv, 13 as maxlv, '000400010012' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산2호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160414')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010012' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160414');
--create table "000400010013" as
    select shape, 11 as minlv, 13 as maxlv, '000400010013' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산3호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160415')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010013' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160415');
--create table "000400010014" as
    select shape, 11 as minlv, 13 as maxlv, '000400010014' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산4호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160431')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010014' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160431');
--create table "000400010015" as
    select shape, 11 as minlv, 13 as maxlv, '000400010015' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160416')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010015' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160416');
--create table "000400010016" as
    select shape, 11 as minlv, 13 as maxlv, '000400010016' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구2호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160417')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010016' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160417');
--create table "000400010017" as
    select shape, 11 as minlv, 13 as maxlv, '000400010017' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구3호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160439')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010017' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160439');
--create table "000400010018" as
    select shape, 11 as minlv, 13 as maxlv, '000400010018' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160418')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010018' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160418');
--create table "000400010019" as
    select shape, 11 as minlv, 13 as maxlv, '000400010019' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천2호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160419')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010019' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160419');
--create table "000400010020" as
    select shape, 11 as minlv, 13 as maxlv, '000400010020' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '광주1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160420')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010020' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '광주1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160420');
--create table "000400010021" as
    select shape, 11 as minlv, 13 as maxlv, '000400010021' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대전1호선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160421')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010021' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대전1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160421');
--create table "000400010022" as
    select shape, 11 as minlv, 13 as maxlv, '000400010022' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경춘선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160430')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010022' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경춘선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160430');
--create table "000400010023" as
    select shape, 11 as minlv, 13 as maxlv, '000400010023' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김해경전철' as cate3
        from k25_bg_rail_l
        where dp_code in ('160432')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010023' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김해경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160432');
--create table "000400010024" as
    select shape, 11 as minlv, 13 as maxlv, '000400010024' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '신분당선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160433')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010024' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '신분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160433');
--create table "000400010025" as
    select shape, 11 as minlv, 13 as maxlv, '000400010025' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '공항선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160303')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010025' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '공항선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160303');
--create table "000400010026" as
    select shape, 11 as minlv, 13 as maxlv, '000400010026' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '수인선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160435')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010026' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '수인선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160435');
--create table "000400010027" as
    select shape, 11 as minlv, 13 as maxlv, '000400010027' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '의정부경전철' as cate3
        from k25_bg_rail_l
        where dp_code in ('160436')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010027' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160436');
--create table "000400010028" as
    select shape, 11 as minlv, 13 as maxlv, '000400010028' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '용인경전철' as cate3
        from k25_bg_rail_l
        where dp_code in ('160437')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010028' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '용인경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160437');
--create table "000400010029" as
    select shape, 11 as minlv, 13 as maxlv, '000400010029' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경의중앙선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160438')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010029' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160438');
--create table "000400010030" as
    select shape, 11 as minlv, 13 as maxlv, '000400010030' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천공항자기부상철도' as cate3
        from k25_bg_rail_l
        where dp_code in ('160440')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010030' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rail_l
        where dp_code in ('160440');
--create table "000400010031" as
    select shape, 11 as minlv, 13 as maxlv, '000400010031' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경강선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160441')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010031' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경강선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160441');
--create table "000400010032" as
    select shape, 11 as minlv, 13 as maxlv, '000400010032' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '동해선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160442')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010032' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '동해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160442');
--create table "000400010033" as
    select shape, 11 as minlv, 13 as maxlv, '000400010033' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '우이선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160443')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010033' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '우이선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160443');
--create table "000400010034" as
    select shape, 11 as minlv, 13 as maxlv, '000400010034' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서해선' as cate3
        from k25_bg_rail_l
        where dp_code in ('160444')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010034' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160444');
--create table "000400010035" as
    select shape, 11 as minlv, 13 as maxlv, '000400010035' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김포골드라인' as cate3
        from k25_bg_rail_l
        where dp_code in ('160445')
    union
    select shape, 14 as minlv, 22 as maxlv, '000400010035' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rail_l
        where dp_code in ('160445');

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
    select shape, 15 as minlv, 22 as maxlv, '000500020000' as std_code,
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





create table "000600010000" as
    select shape, 13 as minlv, 22 as maxlv, '000600010000' as std_code,
        '등고선' as cate1,
        '계곡선' as cate2,
        '일반' as cate3
        from k25_bg_contour_l
        where dp_code in ('240312', '240307');
create table "000600020000" as
    select shape, 14 as minlv, 22 as maxlv, '000600020000' as std_code,
        '등고선' as cate1,
        '주곡선' as cate2,
        '일반' as cate3
        from k25_bg_contour_10m_e120under_l
        where dp_code in ('240303')
    union
    select shape, 14 as minlv, 22 as maxlv, '000600020000' as std_code,
        '등고선' as cate1,
        '주곡선' as cate2,
        '일반' as cate3
        from k25_bg_contour_10m_e240under_l
        where dp_code in ('240303')
    union
    select shape, 14 as minlv, 22 as maxlv, '000600020000' as std_code,
        '등고선' as cate1,
        '주곡선' as cate2,
        '일반' as cate3
        from k25_bg_contour_10m_e350under_l
        where dp_code in ('240303')
    union
    select shape, 14 as minlv, 22 as maxlv, '000600020000' as std_code,
        '등고선' as cate1,
        '주곡선' as cate2,
        '일반' as cate3
        from k25_bg_contour_10m_e600under_l
        where dp_code in ('240303')
    union
    select shape, 14 as minlv, 22 as maxlv, '000600020000' as std_code,
        '등고선' as cate1,
        '주곡선' as cate2,
        '일반' as cate3
        from k25_bg_contour_10m_e600over_l
        where dp_code in ('240303');
--create table "000700010000" as -- 라인으로 바뀜
    select shape, 15 as minlv, 22 as maxlv, '000700010000' as std_code,
        '역' as cate1,
        '철도지하철' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('160301', '160302', '160440', '160438', '160437', '160443', '160444', '160436', '160435', '160430', '160441', '160420', '160421', '160432', '160431', '160415', '160414', '160413', '160439', '160417', '160416', '160418', '160433', '160411', '160412', '160410', '160409', '160408', '160407', '160406', '160405', '160404', '160401', '160402', '160419', '160442', '160445');



--create table "001100070000" as
    select 1 as rel_z_poly_road, 14 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k25_bg_thm_width_a
        where dp_code in ('210807', '210808', '210809', '210810', '210813') --공사중bg
    union
    select 2 as rel_z_poly_road, 14 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k25_bg_thm_width_a
        where dp_code in ('210807', '210808', '210809', '210810', '210813') --공사중
    union
    select 3 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171211', '171213', '171215', '171217', '171219', '171223', '171225', '171227', '171229', '171231', '171233', '171235', '171237') --단지내보행자bg
    union
    select 4 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171211', '171213', '171215', '171217', '171219', '171223', '171225', '171227', '171229', '171231', '171233', '171235', '171237') --단지내보행자
    union
    select 5 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171210', '171212', '171214', '171216', '171218', '171220', '171222', '171224', '171226', '171228', '171230', '171232', '171234') --단지내차량bg
    union
    select 6 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171210', '171212', '171214', '171216', '171218', '171220', '171222', '171224', '171226', '171228', '171230', '171232', '171234') --단지내차량
    union
    select 7 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171207', '171208', '081207', '171236') --일반도로-일반bg
    union
    select 8 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171206') --일반도로-대로bg
    union
    select 9 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171207', '171208', '081207', '171236') --일반도로-일반
    union
    select 10 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171206') --일반도로-대로
    union
    select 11 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171203', '171204', '171205') --주요도로-bg
    union
    select 12 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171203', '171204', '171205') --주요도로
    union
    select 13 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171201', '171202') --고속도로bg
    union
    select 14 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a where dp_code in ('171201', '171202') --고속도로
    union
    select 15 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a where dp_code in ('170701', '170703') --대교bg
    union
    select 16 as rel_z_poly_road, 16 as minlv, 22 as maxlv, shape, '001100070000' as std_code,
        '도로실폭' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a where dp_code in ('170701', '170703') --대교;



create table "001600010000" as
    select shape, 15 as minlv, 22 as maxlv, '001600010001' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160401')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010002' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160404')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010003' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160405')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010004' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160406')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010006' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울6호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160408')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010007' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울7호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160409')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010008' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울8호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160410')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010009' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울9호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160412')
    union
   select shape, 15 as minlv, 22 as maxlv, '001600010010' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160411')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010011' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160413')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010012' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160414')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010013' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160415')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010014' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160431')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010015' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160416')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010016' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160417')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010017' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160439')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010018' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160418')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010019' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160419')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010020' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '광주1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160420')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010021' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대전1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160421')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010022' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경춘선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160430')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010023' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '김해경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160432')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010024' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '신분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160433')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010025' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '공항선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160303')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010026' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '수인선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160435')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010027' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '의정부경전털' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160436')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010028' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '용인경전털' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160437')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010029' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160438')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010030' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160440')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010031' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경강선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160441')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010032' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '동해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160442')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010033' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '우이선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160443')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010034' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160444')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010035' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160445')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010036' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '수인분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160446')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600030000' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '기차역' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160303');
--create table "001600010001" as
    select shape, 15 as minlv, 22 as maxlv, '001600010001' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160401');
--create table "001600010002" as
    select shape, 15 as minlv, 22 as maxlv, '001600010002' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160404');
--create table "001600010003" as
    select shape, 15 as minlv, 22 as maxlv, '001600010003' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160405');
--create table "001600010004" as
    select shape, 15 as minlv, 22 as maxlv, '001600010004' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160406');
--create table "001600010005" as
    select shape, 15 as minlv, 22 as maxlv, '001600010005' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울5호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160407');
--create table "001600010006" as
    select shape, 15 as minlv, 22 as maxlv, '001600010006' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울6호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160408');
--create table "001600010007" as
    select shape, 15 as minlv, 22 as maxlv, '001600010007' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울7호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160409');
--create table "001600010008" as
    select shape, 15 as minlv, 22 as maxlv, '001600010008' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울8호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160410');
--create table "001600010009" as
    select shape, 15 as minlv, 22 as maxlv, '001600010009' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울9호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160412');
--create table "001600010010" as
    select shape, 15 as minlv, 22 as maxlv, '001600010010' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160411');
--create table "001600010011" as
    select shape, 15 as minlv, 22 as maxlv, '001600010011' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160413');
--create table "001600010012" as
    select shape, 15 as minlv, 22 as maxlv, '001600010012' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160414');
--create table "001600010013" as
    select shape, 15 as minlv, 22 as maxlv, '001600010013' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160415');
--create table "001600010014" as
    select shape, 15 as minlv, 22 as maxlv, '001600010014' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160431');
--create table "001600010015" as
    select shape, 15 as minlv, 22 as maxlv, '001600010015' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160416');
--create table "001600010016" as
    select shape, 15 as minlv, 22 as maxlv, '001600010016' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160417');
--create table "001600010017" as
    select shape, 15 as minlv, 22 as maxlv, '001600010017' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160439');
--create table "001600010018" as
    select shape, 15 as minlv, 22 as maxlv, '001600010018' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160418');
--create table "001600010019" as
    select shape, 15 as minlv, 22 as maxlv, '001600010019' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160419');
--create table "001600010020" as
    select shape, 15 as minlv, 22 as maxlv, '001600010020' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '광주1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160420');
--create table "001600010021" as
    select shape, 15 as minlv, 22 as maxlv, '001600010021' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '대전1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160421');
--create table "001600010022" as
    select shape, 15 as minlv, 22 as maxlv, '001600010022' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '경춘선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160430');
--create table "001600010023" as
    select shape, 15 as minlv, 22 as maxlv, '001600010023' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '김해경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160432');
--create table "001600010024" as
    select shape, 15 as minlv, 22 as maxlv, '001600010024' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '신분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160433');
--create table "001600010025" as
    select shape, 15 as minlv, 22 as maxlv, '001600010025' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '공항선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160303');
--create table "001600010026" as
    select shape, 15 as minlv, 22 as maxlv, '001600010026' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '수인선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160435');
--create table "001600010027" as
    select shape, 15 as minlv, 22 as maxlv, '001600010027' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160436');
--create table "001600010028" as
    select shape, 15 as minlv, 22 as maxlv, '001600010028' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '용인경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160437');
--create table "001600010029" as
    select shape, 15 as minlv, 22 as maxlv, '001600010029' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160438');
--create table "001600010030" as
    select shape, 15 as minlv, 22 as maxlv, '001600010030' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160440');
--create table "001600010031" as
    select shape, 15 as minlv, 22 as maxlv, '001600010031' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '경강선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160441');
--create table "001600010032" as
    select shape, 15 as minlv, 22 as maxlv, '001600010032' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '동해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160442');
--create table "001600010033" as
    select shape, 15 as minlv, 22 as maxlv, '001600010033' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '우이선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160443');
--create table "001600010034" as
    select shape, 15 as minlv, 22 as maxlv, '001600010034' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '서해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160444');
--create table "001600010035" as
    select shape, 15 as minlv, 22 as maxlv, '001600010035' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160445');
--create table "001600010036" as
    select shape, 15 as minlv, 22 as maxlv, '001600010036' as std_code,
        '역' as cate1,
        '한국지하철역' as cate2,
        '수인분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160446');
--create table "001600030000" as
    select shape, 15 as minlv, 22 as maxlv, '001600030000' as std_code,
        '역' as cate1,
        '기차역' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160304');
--create table "001600030001" as
    select shape, 15 as minlv, 22 as maxlv, '001600030001' as std_code,
        '역' as cate1,
        '기차역출구' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160825');

create table "001600020000" as
    select shape, 15 as minlv, 22 as maxlv, '001600020001' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160801')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020002' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160804')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020003' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160805')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020004' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160806')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020006' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울6호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160808')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020007' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울7호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160809')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020008' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울8호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160810')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020009' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울9호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160812')
    union
   select shape, 15 as minlv, 22 as maxlv, '001600020010' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160811')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020011' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160813')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020012' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160814')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020013' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160815')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020014' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160831')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020015' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160816')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020016' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160817')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020017' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160839')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020018' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160818')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020019' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160419')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020020' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '광주1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160820')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020021' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대전1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160821')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020022' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경춘선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160830')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020023' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '김해경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160832')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020024' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '신분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160833')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020025' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '공항선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160803')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020026' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '수인선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160835')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020027' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160836')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020028' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '용인경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160837')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020029' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160838')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020030' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160840')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020031' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경강선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160841')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020032' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '동해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160842')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020033' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '우이선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160843')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020034' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160844')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020035' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160845')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020036' as std_code, 2 as rel_z_station, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '수인분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160846')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600030001' as std_code, 2 as rel_z_station,
        '역' as cate1,
        '기차역출구' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160803');
--create table "001600020001" as
    select shape, 15 as minlv, 22 as maxlv, '001600020001' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160801');
--create table "001600020002" as
    select shape, 15 as minlv, 22 as maxlv, '001600020002' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160804');
--create table "001600020003" as
    select shape, 15 as minlv, 22 as maxlv, '001600020003' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160805');
--create table "001600020004" as
    select shape, 15 as minlv, 22 as maxlv, '001600020004' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160806');
--create table "001600020005" as
    select shape, 15 as minlv, 22 as maxlv, '001600020005' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울5호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160807');
--create table "001600020006" as
    select shape, 15 as minlv, 22 as maxlv, '001600020006' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울6호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160808');
--create table "001600020007" as
    select shape, 15 as minlv, 22 as maxlv, '001600020007' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울7호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160809');
--create table "001600020008" as
    select shape, 15 as minlv, 22 as maxlv, '001600020008' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울8호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160810');
--create table "001600020009" as
    select shape, 15 as minlv, 22 as maxlv, '001600020009' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울9호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160812');
--create table "001600020010" as
    select shape, 15 as minlv, 22 as maxlv, '001600020010' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160811');
--create table "001600020011" as
    select shape, 15 as minlv, 22 as maxlv, '001600020011' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160813');
--create table "001600020012" as
    select shape, 15 as minlv, 22 as maxlv, '001600020012' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160814');
--create table "001600020013" as
    select shape, 15 as minlv, 22 as maxlv, '001600020013' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160815');
--create table "001600020014" as
    select shape, 15 as minlv, 22 as maxlv, '001600020014' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160831');
--create table "001600020015" as
    select shape, 15 as minlv, 22 as maxlv, '001600020015' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160816');
--create table "001600020016" as
    select shape, 15 as minlv, 22 as maxlv, '001600020016' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160817');
--create table "001600020017" as
    select shape, 15 as minlv, 22 as maxlv, '001600020017' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160839');
--create table "001600020018" as
    select shape, 15 as minlv, 22 as maxlv, '001600020018' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160818');
--create table "001600020019" as
    select shape, 15 as minlv, 22 as maxlv, '001600020019' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160819');
--create table "001600020020" as
    select shape, 15 as minlv, 22 as maxlv, '001600020020' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '광주1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160820');
--create table "001600020021" as
    select shape, 15 as minlv, 22 as maxlv, '001600020021' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대전1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160821');
--create table "001600020022" as
    select shape, 15 as minlv, 22 as maxlv, '001600020022' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경춘선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160830');
--create table "001600020023" as
    select shape, 15 as minlv, 22 as maxlv, '001600020023' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '김해경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160832');
--create table "001600020024" as
    select shape, 15 as minlv, 22 as maxlv, '001600020024' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '신분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160833');
--create table "001600020025" as
    select shape, 15 as minlv, 22 as maxlv, '001600020025' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '공항선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160803');
--create table "001600020026" as
    select shape, 15 as minlv, 22 as maxlv, '001600020026' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '수인선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160835');
--create table "001600020027" as
    select shape, 15 as minlv, 22 as maxlv, '001600020027' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160836');
--create table "001600020028" as
    select shape, 15 as minlv, 22 as maxlv, '001600020028' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '용인경전털' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160837');
--create table "001600020029" as
    select shape, 15 as minlv, 22 as maxlv, '001600020029' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160838');
--create table "001600020030" as
    select shape, 15 as minlv, 22 as maxlv, '001600020030' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160840');
--create table "001600020031" as
    select shape, 15 as minlv, 22 as maxlv, '001600020031' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경강선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160841');
--create table "001600020032" as
    select shape, 15 as minlv, 22 as maxlv, '001600020032' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '동해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160842');
--create table "001600020033" as
    select shape, 15 as minlv, 22 as maxlv, '001600020033' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '우이선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160843');
--create table "001600020034" as
    select shape, 15 as minlv, 22 as maxlv, '001600020034' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160844');
--create table "001600020035" as
    select shape, 15 as minlv, 22 as maxlv, '001600020035' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160845');
--create table "001600020036" as
    select shape, 15 as minlv, 22 as maxlv, '001600020036' as std_code,
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '수인분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160846');
--create table "001600030001" as
    select shape, 15 as minlv, 22 as maxlv, '001600030001' as std_code,
        '역' as cate1,
        '기차역출구' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160803');




-- 폴리곤
--create table "001200010001" as
    select shape, 6 as minlv, 11 as maxlv, '001200010001' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '1' as cate3
        from k200_bg_contour_a
        where dp_code in ('0100')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010001' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '1' as cate3
        from k25_bg_contour_a
        where dp_code in ('0100');
--create table "001200010002" as
    select shape, 6 as minlv, 11 as maxlv, '001200010002' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '2' as cate3
        from k200_bg_contour_a
        where dp_code in ('0200')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010002' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '2' as cate3
        from k25_bg_contour_a
        where dp_code in ('0200');
--create table "001200010003" as
    select shape, 6 as minlv, 11 as maxlv, '001200010003' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '3' as cate3
        from k200_bg_contour_a
        where dp_code in ('0300')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010003' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '3' as cate3
        from k25_bg_contour_a
        where dp_code in ('0300');
--create table "001200010004" as
    select shape, 6 as minlv, 11 as maxlv, '001200010004' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '4' as cate3
        from k200_bg_contour_a
        where dp_code in ('0400')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010004' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '4' as cate3
        from k25_bg_contour_a
        where dp_code in ('0400');
--create table "001200010005" as
    select shape, 6 as minlv, 11 as maxlv, '001200010005' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '5' as cate3
        from k200_bg_contour_a
        where dp_code in ('0500')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010005' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '5' as cate3
        from k25_bg_contour_a
        where dp_code in ('0500');
--create table "001200010006" as
    select shape, 6 as minlv, 11 as maxlv, '001200010006' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '6' as cate3
        from k200_bg_contour_a
        where dp_code in ('0600')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010006' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '6' as cate3
        from k25_bg_contour_a
        where dp_code in ('0600');
--create table "001200010007" as
    select shape, 6 as minlv, 11 as maxlv, '001200010007' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '7' as cate3
        from k200_bg_contour_a
        where dp_code in ('0700')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010007' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '7' as cate3
        from k25_bg_contour_a
        where dp_code in ('0700');
--create table "001200010008" as
    select shape, 6 as minlv, 11 as maxlv, '001200010008' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '8' as cate3
        from k200_bg_contour_a
        where dp_code in ('0800')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010008' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '8' as cate3
        from k25_bg_contour_a
        where dp_code in ('0800');
--create table "001200010009" as
    select shape, 6 as minlv, 11 as maxlv, '001200010009' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '9' as cate3
        from k200_bg_contour_a
        where dp_code in ('0900')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010009' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '9' as cate3
        from k25_bg_contour_a
        where dp_code in ('0900');
--create table "001200010010" as
    select shape, 6 as minlv, 11 as maxlv, '001200010010' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '10' as cate3
        from k200_bg_contour_a
        where dp_code in ('1000')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010010' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '10' as cate3
        from k25_bg_contour_a
        where dp_code in ('1000');
--create table "001200010011" as
    select shape, 6 as minlv, 11 as maxlv, '001200010011' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '11' as cate3
        from k200_bg_contour_a
        where dp_code in ('1100')
    union
    select shape, 12 as minlv, 22 as maxlv, '001200010011' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '11' as cate3
        from k25_bg_contour_a
        where dp_code in ('1100');
--create table "001200010012" as 
   select shape, 12 as minlv, 22 as maxlv, '001200010012' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '12' as cate3
        from k25_bg_contour_a
        where dp_code in ('1200');
--create table "001200010013" as
    select shape, 12 as minlv, 22 as maxlv, '001200010013' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '13' as cate3
        from k25_bg_contour_a
        where dp_code in ('1300');
--create table "001200010014" as
    select shape, 12 as minlv, 22 as maxlv, '001200010014' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '14' as cate3
        from k25_bg_contour_a
        where dp_code in ('1400');
--create table "001200010015" as
    select shape, 12 as minlv, 22 as maxlv, '001200010015' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '15' as cate3
        from k25_bg_contour_a
        where dp_code in ('1500');
--create table "001200010016" as
    select shape, 12 as minlv, 22 as maxlv, '001200010016' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '16' as cate3
        from k25_bg_contour_a
        where dp_code in ('1600');
--create table "001200010017" as
    select shape, 12 as minlv, 22 as maxlv, '001200010017' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '17' as cate3
        from k25_bg_contour_a
        where dp_code in ('1700');
--create table "001200010018" as
    select shape, 12 as minlv, 22 as maxlv, '001200010018' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '18' as cate3
        from k25_bg_contour_a
        where dp_code in ('1800');
--create table "001200010019" as
    select shape, 12 as minlv, 22 as maxlv, '001200010019' as std_code,
        '녹지' as cate1,
        '등고면' as cate2,
        '19' as cate3
        from k25_bg_contour_a
        where dp_code in ('1900');

--fill sort 기능을 사용하면 아래 테이블로 진행한다
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
            select 11 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('1100'))a;
create table "001200010021" as
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
            select 19 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1900'))a;
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
    select shape, 15 as minlv, 15 as maxlv, '001200020001' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293002','293006')
    union
    select shape, 16 as minlv, 22 as maxlv, '001200020001' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293002','293006','290700','290701','290702','290703','290704','290705','290706','291011')
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
--create table "001200030000" as
    select shape, 12 as minlv, 22 as maxlv, '001200030000' as std_code,
        '녹지' as cate1,
        '골프장' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('041900');
--create table "001200030001" as
    select shape, 14 as minlv, 22 as maxlv, '001200030001' as std_code,
        '녹지' as cate1,
        '골프장' as cate2,
        '러프' as cate3
        from k5_bg_park_a
        where dp_code in ('041907');
--create table "001200030002" as
    select shape, 15 as minlv, 22 as maxlv, '001200030002' as std_code,
        '녹지' as cate1,
        '골프장' as cate2,
        '홀' as cate3
        from k5_bg_park_a
        where dp_code in ('041905');
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
                12 as minlv, 22 as maxlv, shape from k5_bg_park_a where dp_code in ('041900'))a


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
        '스포츠시설' as cate2,
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


create table "001000000000" as
    select shape, 16 as minlv, 22 as maxlv, '001000000000' as std_code,
        '도로실폭' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171201', '171202');
create table "001000010000" as
    select shape, 16 as minlv, 22 as maxlv, '001000010000' as std_code,
        '도로실폭' as cate1,
        '대교' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170701','170703');
create table "001000020000" as
    select shape, 16 as minlv, 22 as maxlv, '001000020000' as std_code,
        '도로실폭' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171207','171208','081207','171236');
create table "001000020001" as
    select shape, 16 as minlv, 22 as maxlv, '001000020001' as std_code,
        '도로실폭' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171206');
create table "001000030000" as
    select shape, 16 as minlv, 22 as maxlv, '001000030000' as std_code,
        '도로실폭' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171203', '171204', '171205');
create table "001000040000" as
    select shape, 16 as minlv, 22 as maxlv, '001000040000' as std_code,
        '도로실폭' as cate1,
        '단지내차량' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171210', '171212', '171214', '171216', '171218', '171220', '171222', '171224', '171226', '171228', '171230', '171232', '171234');
create table "001000050000" as
    select shape, 16 as minlv, 22 as maxlv, '001000050000' as std_code,
        '도로실폭' as cate1,
        '단지내보행자' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171211', '171213', '171215', '171217', '171219', '171223', '171225', '171227', '171229', '171231', '171233', '171235', '171237');
create table "001000060000" as
    select shape, 15 as minlv, 22 as maxlv, '001000060000' as std_code,
        '도로실폭' as cate1,
        '공사중' as cate2,
        '일반' as cate3
        from k25_bg_thm_width_a
        where dp_code in ('210807', '210808', '210809', '210810', '210813');
create table "001100070000" as
    select shape, 15 as minlv, 22 as maxlv, '001100070000' as std_code,
        '도로실폭' as cate1,
        '에버랜드' as cate2,
        '보행자도로' as cate3
    from k5_bg_rd_width_a
    where dp_code in ('171238');
create table "001100070001" as
    select shape, 15 as minlv, 22 as maxlv, '001100070001' as std_code,
        '도로실폭' as cate1,
        '에버랜드' as cate2,
        '비보행자도로' as cate3
    from k5_bg_rd_width_a
    where dp_code in ('171239');