drop table if exists "001600020000";
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
create index "001600020000_sdix" on "001600020000" using gist(shape);