drop table if exists "000300000000", "000300010000", "000300020000", "000400010000";
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
        where dp_code in ('160445');
create index "000300000000_sdix" on "000300000000" using gist(shape);
create index "000300010000_sdix" on "000300010000" using gist(shape);
create index "000300020000_sdix" on "000300020000" using gist(shape);
create index "000400010000_sdix" on "000400010000" using gist(shape);