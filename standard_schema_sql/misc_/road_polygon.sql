drop table if exists "001000000000", "001000010000", "001000020000", "001000020001", "001000030000", "001000040000", "001000050000", "001000060000", "001100070000", "001100070001";
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
    select shape, 16 as minlv, 22 as maxlv, '001000060000' as std_code,
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
create index "001000000000_sdix" on "001000000000" using gist(shape);
create index "001000010000_sdix" on "001000010000" using gist(shape);
create index "001000020000_sdix" on "001000020000" using gist(shape);
create index "001000020001_sdix" on "001000020001" using gist(shape);
create index "001000030000_sdix" on "001000030000" using gist(shape);
create index "001000040000_sdix" on "001000040000" using gist(shape);
create index "001000050000_sdix" on "001000050000" using gist(shape);
create index "001000060000_sdix" on "001000060000" using gist(shape);
create index "001000070000_sdix" on "001100070000" using gist(shape);
create index "001000070001_sdix" on "001100070001" using gist(shape);
