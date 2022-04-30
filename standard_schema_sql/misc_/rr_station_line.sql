drop table if exists "001600010000";
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
        where dp_code in ('160304');
create index "001600010000_sdix" on "001600010000" using gist(shape);