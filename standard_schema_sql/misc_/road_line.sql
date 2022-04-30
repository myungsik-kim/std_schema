drop table if exists "000000010000", "000000010001", "000000020001", "000000020002", "000000030001", "000000030002", "000000030003", "000000040000", "000000050000", "000000050002", "000100000000", "000100010000", "000100020000", "000100020001";
create table "000000010000" as
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
create table "000000010001" as
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
create table "000000020001" as
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
create table "000000020002" as
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
create table "000000030001" as
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
create table "000000030002" as
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
create table "000000030003" as
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
create table "000000040000" as
    select shape, 14 as minlv, 15 as maxlv, 6 as rel_z_road, '000000040000' as std_code,
        '도로실선' as cate1,
        '단지내도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where road_dk in (3,4);
create table "000000050000" as
    select shape, 16 as minlv, 22 as maxlv, 0 as rel_z_road, '000000050000' as std_code,
        '도로실선' as cate1,
        '실폭용보행도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171209');
create table "000000050002" as
    select shape, 13 as minlv, 15 as maxlv, -1 as rel_z_road, '000000050002' as std_code,
        '도로실선' as cate1,
        '램프별도오버선' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171237');
create table "000100000000" as
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
create table "000100010000" as
    select shape, 13 as minlv, 15 as maxlv, 16 as rel_z_road, '000100010000' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (3,4,5) AND dp_link_k in (3,4,8,13,14);
create table "000100020000" as
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
create table "000100020001" as
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
create index "000000010000_sdix" on "000000010000" using gist(shape);
create index "000000010001_sdix" on "000000010001" using gist(shape);
create index "000000020001_sdix" on "000000020001" using gist(shape);
create index "000000020002_sdix" on "000000020002" using gist(shape);
create index "000000030001_sdix" on "000000030001" using gist(shape);
create index "000000030002_sdix" on "000000030002" using gist(shape);
create index "000000030003_sdix" on "000000030003" using gist(shape);
create index "000000040000_sdix" on "000000040000" using gist(shape);
create index "000000050000_sdix" on "000000050000" using gist(shape);
create index "000000050002_sdix" on "000000050002" using gist(shape);
create index "000100000000_sdix" on "000100000000" using gist(shape);
create index "000100010000_sdix" on "000100010000" using gist(shape);
create index "000100020000_sdix" on "000100020000" using gist(shape);
create index "000100020001_sdix" on "000100020001" using gist(shape);