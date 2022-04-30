-- LVT POLYGON으로 통합한다.
create table standard_road_line as -- dissolve by rel_z_road
    select shape, 13 as minlv, 15 as maxlv, 22 as rel_z_road, '000000050002' as std_code,
        '도로실선' as cate1,
        '램프별도오버선' as cate2,
        '일반' as cate3
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
    select shape, 14 as minlv, 15 as maxlv, 6 as rel_z_road, '000000040000' as std_code,
        '도로실선' as cate1,
        '단지내도로' as cate2,
        '일반' as cate3
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
    select shape, 13 as minlv, 15 as maxlv, 16 as rel_z_road, '000100010000' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
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
        where (dp_road_k In (6) AND dp_link_k in (3,4,8,13,14)) and dp_level in (1,2)
    union
    select shape, 16 as minlv, 22 as maxlv, 1 as rel_z_road, '000000050000' as std_code,
        '도로실선' as cate1,
        '실폭용보행도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171209');

create index standard_road_line_sdix on standard_road_line using gist(shape);

create table standard_subway_line as -- dissolve by cate3
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
        where dp_code in ('160401','160402')
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
        where dp_code in ('160445');

create index standard_subway_line_sdix on standard_subway_line using gist(shape);

create table standard_subway_station as  -- dissolve by cate3
--역 메인가지
    select shape, 15 as minlv, 22 as maxlv, '001600010001' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160401')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010002' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160404')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010003' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160405')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010004' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160406')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010006' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울6호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160408')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010007' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울7호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160409')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010008' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울8호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160410')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010009' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울9호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160412')
    union
   select shape, 15 as minlv, 22 as maxlv, '001600010010' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160411')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010011' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160413')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010012' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160414')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010013' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160415')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010014' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160431')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010015' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160416')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010016' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160417')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010017' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160439')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010018' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160418')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010019' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160419')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010020' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '광주1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160420')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010021' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대전1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160421')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010022' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경춘선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160430')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010023' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '김해경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160432')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010024' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '신분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160433')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010025' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '공항선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160303')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010026' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '수인선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160435')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010027' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '의정부경전털' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160436')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010028' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '용인경전털' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160437')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010029' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160438')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010030' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160440')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010031' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경강선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160441')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010032' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '동해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160442')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010033' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '우이선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160443')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010034' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160444')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010035' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160445')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010036' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '수인분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160446')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600030000' as std_code, 
        '역' as cate1,
        '기차역' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160304')
    union
--역 출구
    select shape, 15 as minlv, 22 as maxlv, '001600020001' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160801')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020002' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160804')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020003' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160805')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020004' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160806')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020006' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울6호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160808')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020007' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울7호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160809')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020008' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울8호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160810')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020009' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울9호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160812')
    union
   select shape, 15 as minlv, 22 as maxlv, '001600020010' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160811')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020011' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160813')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020012' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160814')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020013' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160815')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020014' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160831')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020015' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160816')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020016' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160817')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020017' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160839')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020018' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160818')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020019' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160419')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020020' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '광주1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160820')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020021' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대전1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160821')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020022' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경춘선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160830')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020023' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '김해경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160832')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020024' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '신분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160833')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020025' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '공항선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160803')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020026' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '수인선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160835')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020027' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160836')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020028' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '용인경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160837')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020029' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160838')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020030' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160840')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020031' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경강선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160841')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020032' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '동해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160842')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020033' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '우이선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160843')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020034' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160844')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020035' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160845')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020036' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '수인분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160846')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600030001' as std_code, 
        '역' as cate1,
        '기차역출구' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160803');

create index standard_subway_station_sdix on standard_subway_station using gist(shape);

create table standard_union_line as -- dissolve by std_code
-- 행정경계
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
        where dp_code in ('011700')
    union
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
        where dp_code in ('011303','011304')
    union
-- 철도
    select shape, 11 as minlv, 13 as maxlv, '000300000000' as std_code,
        '철도' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k25_bg_rail_l
        where dp_code in ('160300','160302','160305','160427','160313')
    union
    select shape, 14 as minlv, 22 as maxlv, '000300000000' as std_code,
        '철도' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from k5_bg_rail_l
        where dp_code in ('160300','160302','160305','160427','160313')
    union
    select shape, 14 as minlv, 22 as maxlv, '000300010000' as std_code,
        '철도' as cate1,
        '공사중/예정' as cate2,
        '일반' as cate3
        from k5_bg_rail_l
        where dp_code in ('160304')
    union
    select shape, 11 as minlv, 13 as maxlv, '000300020000' as std_code,
        '철도' as cate1,
        '고속철도' as cate2,
        '일반' as cate3
        from k25_bg_rail_l
        where dp_code in ('160301')
    union
    select shape, 14 as minlv, 22 as maxlv, '000300020000' as std_code,
        '철도' as cate1,
        '고속철도' as cate2,
        '일반' as cate3
        from k5_bg_rail_l
        where dp_code in ('160301')
    union
-- 시설라인
    select shape, 17 as minlv, 22 as maxlv, '000500020000' as std_code,
        '시설라인' as cate1,
        '성곽' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('291012')
    union
    select shape, 17 as minlv, 22 as maxlv, '000500020000' as std_code,
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
        where dp_code in ('151207', '151208')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500040000' as std_code,
        '시설라인' as cate1,
        '버스중앙정류장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160508')
    union
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
        where dp_code in ('170701', '170702', '170704','170508')
    union
    select shape, 15 as minlv, 22 as maxlv, '000500060000' as std_code,
        '시설라인' as cate1,
        '터널' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170506')
    union
    select shape, 15 as minlv, 22 as maxlv, '000500060001' as std_code,
        '시설라인' as cate1,
        '터널' as cate2,
        '터널내구간(점선)' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170503')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500070000' as std_code,
        '시설라인' as cate1,
        '지하도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170407', '170408')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500080000' as std_code,
        '시설라인' as cate1,
        '횡단보도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171001')
    union
    select shape, 15 as minlv, 22 as maxlv, '000500090000' as std_code,
        '시설라인' as cate1,
        '케이블카' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290501', '290502')
    union
    select shape, 17 as minlv, 22 as maxlv, '000500110000' as std_code,
        '시설라인' as cate1,
        '지하주차장 진입로' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170411')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500120000' as std_code,
        '시설라인' as cate1,
        '고속도로 입체라인' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171201', '171202')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500130000' as std_code,
        '시설라인' as cate1,
        '주요도로 입체라인' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171203', '171204', '171205')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500160000' as std_code,
        '시설라인' as cate1,
        '모노레일' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290401', '290402');

create index standard_union_line_sdix on standard_union_line using gist(shape);

create table standard_label_path as --dissolve by std_code
-- 페리 (흐르는 주기와 같이 씁니다)
    select -999 as angle, dp_name, shape, 6 as minlv, 9 as maxlv, '001800040000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반' as cate3
        from k200_bg_ferry_l
        where dp_code in ('160200')
    union
    select -999 as angle, dp_name, shape, 10 as minlv, 22 as maxlv, '001800040000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반' as cate3
        from k25_bg_ferry_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 12 as minlv, 22 as maxlv, '001800040000' as std_code,
        '시설라인' as cate1,
        '수상택시' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160205', '160211') and dp_name is not null and dp_name not in ('')
    union
-- 일방통행-주요도로
    select -999 as angle, null as dp_name, shape, 17 as minlv, 22 as maxlv, '001800000000' as std_code,
        '흐르는주기' as cate1,
        '일방통행' as cate2,
        '주요도로' as cate3
        from k5_bg_oneway_l
        where dp_road_k In (1,2) AND dp_link_k In (3,4,8)
    union
-- 일방통행-일반도로
    select -999 as angle, null as dp_name, shape, 17 as minlv, 22 as maxlv, '001800000001' as std_code,
        '흐르는주기' as cate1,
        '일방통행' as cate2,
        '일반도로' as cate3
        from k5_bg_oneway_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,6,7,12)) AND dp_level In (3)
    union
-- 고속도로
    select -999 as angle, dp_name, shape, 7 as minlv, 10 as maxlv, '001800010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k50_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 11 as minlv, 12 as maxlv, '001800010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k25_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k5_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
-- 일반도로
    select -999 as angle, road_name as dp_name, shape, 16 as minlv, 22 as maxlv, '001800010001' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '일반도로' as cate3
        from k5_bg_rd_label_general_l
        where dp_road_k in (3,4,5,6) and dp_link_k in (1,2) and road_name is not null and road_name not in ('')
    union
-- 소로
    select -999 as angle, road_name as dp_name, shape, 16 as minlv, 22 as maxlv, '001800010002' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '소로' as cate3
        from k5_bg_rd_label_general_l
        where wroad_k in (1) and road_name is not null and road_name not in ('')
    union
-- 제주올레길 (흐르는 주기와 같이 씁니다)
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001800030001' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '제주올레길코스' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('081209', '081215')
    union
-- 스키장슬로프
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001800030000' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '스키장슬로프' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('041805', '041806', '041807', '041808', '041809', '041810') and dp_name is not null and dp_name not in ('')
    union
-- 철도
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020000' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '공사중/예정' as cate3
        from k5_bg_subwayrail_label_l
    where dp_code in ('160304') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020001' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160401') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020002' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160404') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020003' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160405') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020004' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160406') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020005' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울5호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160407') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020006' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울6호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160408') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020007' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울7호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160409') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020008' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울8호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160410') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020009' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울9호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160412') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020010' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160411') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020011' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160413') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020012' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160414') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020013' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160415') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020014' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160431') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020015' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160416') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020016' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160417') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020017' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160439') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020018' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160418') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020019' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160419') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020020' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '광주1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160420') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020021' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대전1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160421') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020022' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경춘선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160430') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020023' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김해경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160432') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020024' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '신분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160433') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020025' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '공항선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160303') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020026' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '수인선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160435') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020027' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160436') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020028' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '용인경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160437') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020029' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160438') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020030' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rail_l
        where dp_code in ('160440') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020031' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경강선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160441') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020032' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '동해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160442') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020033' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '우이선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160443') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020034' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160444') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020035' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rail_l
        where dp_code in ('160445') and dp_name is not null and dp_name not in ('');


create index standard_label_path_sdix on standard_label_path using gist(shape);



create table standard_contour_line as -- dissolve by std_code
    select shape, 13 as minlv, 22 as maxlv, '000600010000' as std_code,
        '등고선' as cate1,
        '계곡선' as cate2,
        '일반' as cate3
        from k25_bg_contour_l
        where dp_code in ('240312', '240307')
    union
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

create index standard_contour_line_sdix on standard_contour_line using gist(shape);


create table standard_buld_polygon as -- dissolve by std_code
    select shape, 13 as minlv, 13 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where dp_code in ('160000') AND minlevel in (10)
    union
    select shape, 14 as minlv, 14 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where dp_code In ('050100', '050200', '040200') OR (dp_code In ('140000','160000','020000','030000','040000','050000','060000','070000','080000','090000','100000','110000','120000','130000','150000','170000','180000','190000','200000') and minlevel in (10,11))
    union
    select shape, 15 as minlv, 15 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where dp_code In ('050100', '050200', '050600', '050700', '050800', '040200') OR (dp_code In ('140000','160000','020000','030000','040000','050000','060000','070000','080000','090000','100000','110000','120000','130000','150000','170000','180000','200000') and minlevel in (10,11))
    union
    select shape, 16 as minlv, 22 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where dp_code in ('050100','050200','040200','050600','050700','050800','140000','160000','020000','030000','040000','050000','060000','070000','080000','090000','100000','110000','120000','130000','150000','170000','180000','190000','200000','200200')
    union
    select shape, 14 as minlv, 22 as maxlv, '000800000001' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '에버랜드' as cate3
        from k5_bg_building_a
        where dp_code in ('081405')
    union
    select shape, 15 as minlv, 22 as maxlv, '000800010000' as std_code,
        '건물' as cate1,
        '아파트' as cate2,
        '일반' as cate3
        from k5_bg_building_a
        where dp_code in ('200100')
    union
    select shape, 18 as minlv, 22 as maxlv, '000800010001' as std_code,
        '건물' as cate1,
        '아파트' as cate2,
        '아파트평형' as cate3
        from k5_bg_aptpy_a
        where dp_code in ('200112', '200113');

create index standard_buld_polygon_sdix on standard_buld_polygon using gist(shape);

create table standard_complex_polygon as --dissolve by std_code
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
        where dp_code in ('042509','040500')
    union
    select shape, 16 as minlv, 22 as maxlv, '001400010001' as std_code,
        '단지' as cate1,
        '스포츠시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293003')
    union
    select shape, 11 as minlv, 13 as maxlv, '001400020000' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('080506') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001400020000' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('080506','080000')
    union
    select shape, 16 as minlv, 22 as maxlv, '001400020001' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293005')
    union
    select shape, 14 as minlv, 22 as maxlv, '001400030000' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('041800')
    union
    select shape, 14 as minlv, 22 as maxlv, '001400040000' as std_code,
        '단지' as cate1,
        '해수욕장' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('082400')
    union
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
        where dp_code in ('130000','130403','130307')
    union
    select shape, 16 as minlv, 22 as maxlv, '001400050001' as std_code,
        '단지' as cate1,
        '상업시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293007')
    union
    select shape, 14 as minlv, 22 as maxlv, '001400060000' as std_code,
        '단지' as cate1,
        '의료시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('140000','140803')
    union
    select shape, 16 as minlv, 22 as maxlv, '001400060001' as std_code,
        '단지' as cate1,
        '의료시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293008')
    union
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
        where dp_code in ('160424','160000','162500','023504','020000')
    union
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
        where dp_code in ('293009','293001')
    union
    select shape, 11 as minlv, 13 as maxlv, '001400080000' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('050105','050100','050200') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001400080000' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('050100','050200','050105','050600','050700','050800','050605','050000')
    union
    select shape, 16 as minlv, 22 as maxlv, '001400080001' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293004','293012')
    union
    select shape, 15 as minlv, 22 as maxlv, '001400090000' as std_code,
        '단지' as cate1,
        '운동장' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('040200','040000')
    union
    select shape, 15 as minlv, 22 as maxlv, '001400090001' as std_code,
        '단지' as cate1,
        '운동장' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('290200','290302','290400','290401','290402','291001','291002','291003','291004','291008','291009','290800','290801','291005','291006','290900','290901','290902','290903')
    union
    select shape, 11 as minlv, 11 as maxlv, '001400100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300') and minlevel in (7)
    union
    select shape, 12 as minlv, 12 as maxlv, '001400100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300') and minlevel in (7)
    union
    select shape, 13 as minlv, 13 as maxlv, '001400100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300') and minlevel in (7,8,9)
    union
    select shape, 14 as minlv, 22 as maxlv, '001400100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300') and minlevel in (7,8,9)
    union
    select shape, 16 as minlv, 22 as maxlv, '001400110000' as std_code,
        '단지' as cate1,
        '주차장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('292001','292002','292003','292004','292005','292006','292007')
    union
    select shape, 14 as minlv, 22 as maxlv, '001400120000' as std_code,
        '단지' as cate1,
        '아파트' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('200100','200114')
    union
    select shape, 11 as minlv, 22 as maxlv, '001400130000' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('081200');

create index standard_complex_polygon_sdix on standard_complex_polygon using gist(shape);

create table standard_complex_everland_polygon as --dissolve by color
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

create index standard_complex_everland_polygon_sdix on standard_complex_everland_polygon using gist(shape);

create table standard_contour_polygon as -- dissove by rel_z
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
            select 11 as rel_z, 6 as minlv, 11 as maxlv, shape from k200_bg_contour_a where dp_code in ('1100'))b
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
            select 19 as rel_z, 12 as minlv, 22 as maxlv, shape from k25_bg_contour_a where dp_code in ('1900'))a;

create index standard_contour_polygon_sdix on standard_contour_polygon using gist(shape);

create table standard_green_polygon as -- dissolve by std_code
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
    select shape, 14 as minlv, 22 as maxlv, '001200020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040104','040120','040105','040106','040108')
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
        where dp_code In ('222702','224202','224802','226202','226302','226602')
    union
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
        where dp_code in ('040110','040210','132104','132105','132106','132107')
    union
    select shape, 15 as minlv, 22 as maxlv, '001200020001' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세' as cate3
        from k5_bg_park_a
        where dp_code in ('040109','040110','040111','040206')
    union
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

create index standard_green_polygon_sdix on standard_green_polygon using gist(shape);

create table standard_golf_polygon as -- dissolve by rel_z_golf
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
        12 as minlv, 22 as maxlv, shape from k5_bg_park_a where dp_code in ('041900');

create index standard_golf_polygon_sdix on standard_golf_polygon using gist(shape);

create table standard_water_polygon as -- dissolve by std_code
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
        from k5_bg_water_a
    union
    select shape, 7 as minlv, 10 as maxlv, '001300020000' as std_code,
        '수계' as cate1,
        '해상공원' as cate2,
        '일반' as cate3
        from k50_bg_park_a
        where dp_code in ('040107');

create index standard_water_polygon_sdix on standard_water_polygon using gist(shape);

create table standard_road_facility_polygon as -- dissolve by std_code
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
        where dp_code in ('171103','151509')
    union
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
        where dp_code in ('170505','170400','170405','170406')
    union
    select shape, 15 as minlv, 22 as maxlv, '001700020001' as std_code,
        '도로시설' as cate1,
        '터널' as cate2,
        '터널내 구간 (음영)' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170509')
    union
    select shape, 15 as minlv, 22 as maxlv, '001700030000' as std_code,
        '도로시설' as cate1,
        '고가(교량)' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170507')
    union
    select shape, 16 as minlv, 22 as maxlv, '001700050000' as std_code,
        '도로시설' as cate1,
        '지하주차장진입' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170410')
    union
    select shape, 16 as minlv, 22 as maxlv, '001700060000' as std_code,
        '도로시설' as cate1,
        '지하보도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('171104')
    union
    select shape, 17 as minlv, 22 as maxlv, '001700070000' as std_code,
        '도로시설' as cate1,
        '시장경계' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('130400');

create index standard_road_facility_polygon_sdix on standard_road_facility_polygon using gist(shape);

create table standard_road_polygon as -- dissolve by std_code
    select shape, 16 as minlv, 22 as maxlv, '001000000000' as std_code,
        '도로실폭' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171201', '171202')
    union
    select shape, 16 as minlv, 22 as maxlv, '001000010000' as std_code,
        '도로실폭' as cate1,
        '대교' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170701','170703')
    union
    select shape, 16 as minlv, 22 as maxlv, '001000020000' as std_code,
        '도로실폭' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171207','171208','081207','171236')
    union
    select shape, 16 as minlv, 22 as maxlv, '001000020001' as std_code,
        '도로실폭' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171206')
    union
    select shape, 16 as minlv, 22 as maxlv, '001000030000' as std_code,
        '도로실폭' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171203', '171204', '171205')
    union
    select shape, 16 as minlv, 22 as maxlv, '001000040000' as std_code,
        '도로실폭' as cate1,
        '단지내차량' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171210', '171212', '171214', '171216', '171218', '171220', '171222', '171224', '171226', '171228', '171230', '171232', '171234')
    union
    select shape, 16 as minlv, 22 as maxlv, '001000050000' as std_code,
        '도로실폭' as cate1,
        '단지내보행자' as cate2,
        '일반' as cate3
        from k5_bg_rd_width_a
        where dp_code in ('171211', '171213', '171215', '171217', '171219', '171223', '171225', '171227', '171229', '171231', '171233', '171235', '171237')
    union
    select shape, 16 as minlv, 22 as maxlv, '001000060000' as std_code,
        '도로실폭' as cate1,
        '공사중' as cate2,
        '일반' as cate3
        from k25_bg_thm_width_a
        where dp_code in ('210807', '210808', '210809', '210810', '210813')
    union
    select shape, 15 as minlv, 22 as maxlv, '001100070000' as std_code,
        '도로실폭' as cate1,
        '에버랜드' as cate2,
        '보행자도로' as cate3
    from k5_bg_rd_width_a
    where dp_code in ('171238')
    union
    select shape, 15 as minlv, 22 as maxlv, '001100070001' as std_code,
        '도로실폭' as cate1,
        '에버랜드' as cate2,
        '비보행자도로' as cate3
    from k5_bg_rd_width_a
    where dp_code in ('171239');

create index standard_road_polygon_sdix on standard_road_polygon using gist(shape);


-- ANNOTATION


create table standard_point_annotation as
-- 유턴-일반
    select angle, null as dp_name, shape, 17 as minlv, 22 as maxlv, '001800000002' as std_code,
        '흐르는주기' as cate1,
        '유턴' as cate2,
        '일반' as cate3
        from k5_uturn_p
-- 지명
-- IC/JC
-- 강 지명 흐르는 주기로?;








-- 위성지도용 데이터

create table standard_label_path_sat as --dissolve by std_code
-- 페리 (흐르는 주기와 같이 씁니다)
    select -999 as angle, dp_name, shape, 6 as minlv, 9 as maxlv, '001800040000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반' as cate3
        from k200_bg_ferry_l
        where dp_code in ('160200')
    union
    select -999 as angle, dp_name, shape, 10 as minlv, 22 as maxlv, '001800040000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반' as cate3
        from k25_bg_ferry_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 12 as minlv, 22 as maxlv, '001800040000' as std_code,
        '시설라인' as cate1,
        '수상택시' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160205', '160211') and dp_name is not null and dp_name not in ('')
    union
-- 고속도로
    select -999 as angle, dp_name, shape, 7 as minlv, 10 as maxlv, '001800010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k50_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 11 as minlv, 12 as maxlv, '001800010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k25_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k5_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
-- 제주올레길 (흐르는 주기와 같이 씁니다)
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001800030001' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '제주올레길코스' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('081209', '081215')
    union
-- 철도
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020000' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '공사중/예정' as cate3
        from k5_bg_subwayrail_label_l
    where dp_code in ('160304') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020001' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160401') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020002' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160404') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020003' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160405') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020004' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160406') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020005' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울5호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160407') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020006' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울6호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160408') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020007' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울7호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160409') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020008' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울8호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160410') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020009' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울9호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160412') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020010' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160411') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020011' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160413') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020012' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160414') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020013' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160415') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020014' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160431') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020015' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160416') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020016' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160417') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020017' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160439') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020018' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160418') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020019' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160419') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020020' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '광주1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160420') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020021' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대전1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160421') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020022' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경춘선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160430') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020023' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김해경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160432') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020024' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '신분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160433') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020025' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '공항선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160303') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020026' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '수인선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160435') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020027' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160436') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020028' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '용인경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160437') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020029' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160438') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020030' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rail_l
        where dp_code in ('160440') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020031' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경강선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160441') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020032' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '동해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160442') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020033' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '우이선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160443') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020034' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160444') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001800020035' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rail_l
        where dp_code in ('160445') and dp_name is not null and dp_name not in ('');

create index standard_label_path_sat_sdix on standard_label_path_sat using gist(shape);

create table standard_road_line_sat as -- dissolve by rel_z_road
    select shape, 13 as minlv, 15 as maxlv, 22 as rel_z_road, '000000050002' as std_code,
        '도로실선' as cate1,
        '램프별도오버선' as cate2,
        '일반' as cate3
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
    select shape, 13 as minlv, 22 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
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
    select shape, 13 as minlv, 22 as maxlv, 19 as rel_z_road, '000000020001' as std_code,
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
    select shape, 13 as minlv, 22 as maxlv, 18 as rel_z_road, '000000020002' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
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
    select shape, 14 as minlv, 22 as maxlv, 10 as rel_z_road, '000000030001' as std_code,
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
    select shape, 14 as minlv, 22 as maxlv, 9 as rel_z_road, '000000030002' as std_code,
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
    select shape, 14 as minlv, 22 as maxlv, 8 as rel_z_road, '000000030003' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6,9) AND dp_link_k In (1,2,3,4,5,6,7,12)) and dp_level in (3,4)
    union
    select shape, 14 as minlv, 22 as maxlv, 6 as rel_z_road, '000000040000' as std_code,
        '도로실선' as cate1,
        '단지내도로' as cate2,
        '일반' as cate3
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
    select shape, 13 as minlv, 22 as maxlv, 17 as rel_z_road, '000100000000' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k in (3,4,8,13,14)
    union
    select shape, 13 as minlv, 22 as maxlv, 16 as rel_z_road, '000100010000' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
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
    select shape, 14 as minlv, 22 as maxlv, 7 as rel_z_road, '000100020000' as std_code,
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
    select shape, 14 as minlv, 22 as maxlv, 1 as rel_z_road, '000100020001' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where (dp_road_k In (6) AND dp_link_k in (3,4,8,13,14)) and dp_level in (1,2);

create index standard_road_line_sat_sdix on standard_road_line_sat using gist(shape);

create table standard_union_line_sat as -- dissolve by std_code
-- 행정경계
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
        where dp_code in ('011700')
    union
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
        where dp_code in ('011303','011304')
    union
-- 철도
    select shape, 14 as minlv, 22 as maxlv, '000300010000' as std_code,
        '철도' as cate1,
        '공사중/예정' as cate2,
        '일반' as cate3
        from k5_bg_rail_l
        where dp_code in ('160304');

create index standard_union_line_sat_sdix on standard_union_line_sat using gist(shape);


create table standard_subway_station as  -- dissolve by cate3
--역 메인가지
    select shape, 15 as minlv, 22 as maxlv, '001600010001' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160401')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010002' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160404')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010003' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160405')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010004' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160406')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010006' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울6호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160408')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010007' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울7호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160409')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010008' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울8호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160410')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010009' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서울9호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160412')
    union
   select shape, 15 as minlv, 22 as maxlv, '001600010010' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160411')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010011' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160413')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010012' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160414')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010013' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160415')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010014' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '부산4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160431')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010015' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160416')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010016' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160417')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010017' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대구3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160439')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010018' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160418')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010019' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160419')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010020' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '광주1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160420')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010021' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '대전1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160421')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010022' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경춘선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160430')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010023' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '김해경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160432')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010024' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '신분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160433')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010025' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '공항선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160303')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010026' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '수인선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160435')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010027' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '의정부경전털' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160436')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010028' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '용인경전털' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160437')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010029' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160438')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010030' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160440')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010031' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '경강선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160441')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010032' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '동해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160442')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010033' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '우이선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160443')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010034' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '서해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160444')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010035' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160445')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600010036' as std_code, 
        '역' as cate1,
        '한국지하철역' as cate2,
        '수인분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160446')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600030000' as std_code, 
        '역' as cate1,
        '기차역' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160303')
--역 출구
    select shape, 15 as minlv, 22 as maxlv, '001600020001' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160801')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020002' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160804')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020003' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160805')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020004' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160806')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020006' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울6호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160808')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020007' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울7호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160809')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020008' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울8호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160810')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020009' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서울9호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160812')
    union
   select shape, 15 as minlv, 22 as maxlv, '001600020010' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160811')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020011' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160813')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020012' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160814')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020013' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160815')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020014' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '부산4호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160831')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020015' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160816')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020016' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160817')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020017' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대구3호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160839')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020018' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160818')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020019' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천2호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160419')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020020' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '광주1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160820')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020021' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '대전1호선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160821')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020022' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경춘선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160830')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020023' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '김해경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160832')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020024' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '신분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160833')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020025' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '공항선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160803')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020026' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '수인선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160835')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020027' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160836')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020028' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '용인경전철' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160837')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020029' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160838')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020030' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160840')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020031' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '경강선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160841')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020032' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '동해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160842')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020033' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '우이선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160843')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020034' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '서해선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160844')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020035' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160845')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600020036' as std_code, 
        '역' as cate1,
        '한국지하철역출구' as cate2,
        '수인분당선' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160846')
    union
    select shape, 15 as minlv, 22 as maxlv, '001600030001' as std_code, 
        '역' as cate1,
        '기차역출구' as cate2,
        '공사중' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160803');

create index standard_subway_station_sdix on standard_subway_station using gist(shape);
