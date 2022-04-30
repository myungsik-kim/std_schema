--일반
create table kor_standard_road_line as
    select shape, 13 as minlv, 15 as maxlv, 22 as rel_z_road, '000100030000' as std_code,
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
        where dp_road_k In (1,2) AND dp_link_k In (1,2,12)
    union
    select shape, 7 as minlv, 8 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2,12)
    union
    select shape, 9 as minlv, 12 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2,12)
    union
    select shape, 13 as minlv, 15 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2,12)
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
    select shape, 16 as minlv, 22 as maxlv, 1 as rel_z_road, '000000050000' as std_code,
        '도로실선' as cate1,
        '실폭용보행도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171209');
create index kor_standard_road_line_sdix on kor_standard_road_line using gist(shape);
--위성
create table kor_standard_road_line_sat as
    select shape, 13 as minlv, 15 as maxlv, 22 as rel_z_road, '000100030000' as std_code,
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
        where dp_road_k In (1,2) AND dp_link_k In (1,2,12)
    union
    select shape, 7 as minlv, 8 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k50_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2,12)
    union
    select shape, 9 as minlv, 12 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k25_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2,12)
    union
    select shape, 13 as minlv, 22 as maxlv, 20 as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from k5_bg_rd_link_l
        where dp_road_k In (1,2) AND dp_link_k In (1,2,12)
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
        where (dp_road_k In (6) AND dp_link_k in (3,4,8,13,14)) and dp_level in (1,2);
create index kor_standard_road_line_sat_sdix on kor_standard_road_line_sat using gist(shape);
--실폭도로 등
create table kor_standard_road_facility_polygon as
    select shape, 14 as minlv, 15 as maxlv, '001300010000' as std_code,
        '도로시설' as cate1,
        '육교' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('171103')
    union
    select shape, 16 as minlv, 22 as maxlv, '001300010000' as std_code,
        '도로시설' as cate1,
        '육교' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('171103','151509')
    union
    select shape, 15 as minlv, 15 as maxlv, '001300020000' as std_code,
        '도로시설' as cate1,
        '터널' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170505')
    union
    select shape, 16 as minlv, 22 as maxlv, '001300020000' as std_code,
        '도로시설' as cate1,
        '터널' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170505','170400','170405','170406')
    union
    select shape, 15 as minlv, 22 as maxlv, '001300020001' as std_code,
        '도로시설' as cate1,
        '터널' as cate2,
        '터널내 구간 (음영)' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170509')
    union
    select shape, 15 as minlv, 22 as maxlv, '001300030000' as std_code,
        '도로시설' as cate1,
        '고가(교량)' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170507')
    union
    select shape, 16 as minlv, 22 as maxlv, '001300040000' as std_code,
        '도로시설' as cate1,
        '지하주차장진입' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('170410')
    union
    select shape, 16 as minlv, 22 as maxlv, '001300050000' as std_code,
        '도로시설' as cate1,
        '지하보도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('171104')
    union
    select shape, 17 as minlv, 22 as maxlv, '001300060000' as std_code,
        '도로시설' as cate1,
        '시장경계' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('130400');
create index kor_standard_road_facility_polygon_sdix on kor_standard_road_facility_polygon using gist(shape);
create table kor_standard_road_polygon as
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
        where dp_code in ('171207','171208','081207','171236','171206')
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
    select shape, 15 as minlv, 22 as maxlv, '001000060000' as std_code,
        '도로실폭' as cate1,
        '공사중' as cate2,
        '일반' as cate3
        from k25_bg_thm_width_a
        where dp_code in ('210807', '210808', '210809', '210810', '210813')
    union
    select shape, 15 as minlv, 22 as maxlv, '001000070000' as std_code,
        '도로실폭' as cate1,
        '에버랜드' as cate2,
        '보행자도로' as cate3
    from k5_bg_rd_width_a
    where dp_code in ('171238')
    union
    select shape, 15 as minlv, 22 as maxlv, '001000070001' as std_code,
        '도로실폭' as cate1,
        '에버랜드' as cate2,
        '비보행자도로' as cate3
    from k5_bg_rd_width_a
    where dp_code in ('171239');
create index kor_standard_road_polygon_sdix on kor_standard_road_polygon using gist(shape);
--흐르는주기
create table kor_standard_label_path_sat as
    select -999 as angle, dp_name, shape, 6 as minlv, 9 as maxlv, '001400040000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반_페리' as cate3
        from k200_bg_ferry_l
        where dp_code in ('160200')
    union
    select -999 as angle, dp_name, shape, 10 as minlv, 22 as maxlv, '001400040000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반_페리' as cate3
        from k25_bg_ferry_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 12 as minlv, 22 as maxlv, '001400040000' as std_code,
        '시설라인' as cate1,
        '수상택시' as cate2,
        '일반_페리' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160205', '160211') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 7 as minlv, 10 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k50_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 11 as minlv, 12 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k25_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k5_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, road_name as dp_name, shape, 16 as minlv, 22 as maxlv, '001400010001' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '일반도로' as cate3
        from k5_bg_rd_label_general_l
        where dp_road_k in (3,4,5,6) and dp_link_k in (1,2) and road_name is not null and road_name not in ('')
    union
    select -999 as angle, road_name as dp_name, shape, 16 as minlv, 22 as maxlv, '001400010002' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '소로' as cate3
        from k5_bg_rd_label_general_l
        where wroad_k in (1) and road_name is not null and road_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030001' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '제주올레길코스-휠체어구간' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('081215')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030001' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '제주올레길코스-일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('081209')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400020001' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '공사중/예정' as cate3
        from k5_bg_subwayrail_label_l
    where dp_code in ('160304') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400020000' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '일반' as cate3
        from k5_bg_subwayrail_label_l
    where dp_code in ('160302') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400020136' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '고속철도' as cate3
        from k5_bg_subwayrail_label_l
    where dp_code in ('160301') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020101' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160401','160402') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020102' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160404') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020103' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160405') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020104' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160406') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020105' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울5호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160407') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020106' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울6호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160408') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020107' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울7호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160409') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020108' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울8호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160410') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020109' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울9호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160412') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020111' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160413') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020112' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160414') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020113' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160415') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020114' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160431') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020115' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160416') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020116' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160417') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020117' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160439') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020118' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160418') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020119' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160419') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020120' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '광주1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160420') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020121' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대전1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160421') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020122' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경춘선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160430') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020123' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김해경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160432') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020124' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '신분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160433') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020125' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '공항선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160303') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020126' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160436') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020127' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '용인경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160437') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020128' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160438') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020129' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rail_l
        where dp_code in ('160440') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020130' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경강선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160441') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020131' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '동해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160442') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020132' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '우이선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160443') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020133' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160444') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020134' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rail_l
        where dp_code in ('160445') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020135' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '수인분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160446') and dp_name is not null and dp_name not in ('');
create index kor_standard_label_path_sat_sdix on kor_standard_label_path_sat using gist(shape);
create table kor_standard_label_path as
    select -999 as angle, dp_name, shape, 6 as minlv, 9 as maxlv, '001400040000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반_페리' as cate3
        from k200_bg_ferry_l
        where dp_code in ('160200')
    union
    select -999 as angle, dp_name, shape, 10 as minlv, 22 as maxlv, '001400040000' as std_code,
        '시설라인' as cate1,
        '페리' as cate2,
        '일반_페리' as cate3
        from k25_bg_ferry_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 12 as minlv, 22 as maxlv, '001400040000' as std_code,
        '시설라인' as cate1,
        '수상택시' as cate2,
        '일반_페리' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160205', '160211') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, null as dp_name, shape, 17 as minlv, 22 as maxlv, '001400000000' as std_code,
        '흐르는주기' as cate1,
        '일방통행' as cate2,
        '주요도로' as cate3
        from k5_bg_oneway_l
        where dp_road_k In (1,2) AND dp_link_k In (3,4,8)
    union
    select -999 as angle, null as dp_name, shape, 17 as minlv, 22 as maxlv, '001400000001' as std_code,
        '흐르는주기' as cate1,
        '일방통행' as cate2,
        '일반도로' as cate3
        from k5_bg_oneway_l
        where (dp_road_k In (6) AND dp_link_k In (1,2,5,6,7,12)) AND dp_level In (3)
    union
    select -999 as angle, dp_name, shape, 7 as minlv, 10 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k50_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 11 as minlv, 12 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k25_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from k5_bg_rd_label_highway_l
    where dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, road_name as dp_name, shape, 16 as minlv, 22 as maxlv, '001400010001' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '일반도로' as cate3
        from k5_bg_rd_label_general_l
        where dp_road_k in (3,4,5,6) and dp_link_k in (1,2) and road_name is not null and road_name not in ('')
    union
    select -999 as angle, road_name as dp_name, shape, 16 as minlv, 22 as maxlv, '001400010002' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '소로' as cate3
        from k5_bg_rd_label_general_l
        where wroad_k in (1) and road_name is not null and road_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020000' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '일반' as cate3
        from k5_bg_subwayrail_label_l
    where dp_code in ('160302') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020136' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '고속철도' as cate3
        from k5_bg_subwayrail_label_l
    where dp_code in ('160301') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400020001' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '공사중/예정' as cate3
        from k5_bg_subwayrail_label_l
    where dp_code in ('160304') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020101' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160401','160402') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020102' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160404') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020103' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160405') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020104' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160406') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020105' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울5호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160407') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020106' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울6호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160408') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020107' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울7호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160409') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020108' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울8호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160410') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020109' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서울9호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160412') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020111' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160413') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020112' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160414') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020113' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160415') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020114' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '부산4호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160431') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020115' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160416') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020116' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160417') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020117' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대구3호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160439') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020118' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160418') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020119' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천2호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160419') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020120' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '광주1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160420') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020121' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '대전1호선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160421') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020122' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경춘선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160430') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020123' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김해경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160432') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020124' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '신분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160433') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020125' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '공항선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160303') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020126' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '의정부경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160436') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020127' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '용인경전철' as cate3
        from k5_bg_rail_l
        where dp_code in ('160437') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020128' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경의중앙선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160438') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020129' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '인천공항자기부상철도' as cate3
        from k5_bg_rail_l
        where dp_code in ('160440') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020130' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '경강선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160441') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020131' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '동해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160442') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020132' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '우이선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160443') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020133' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '서해선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160444') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020134' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '김포골드라인' as cate3
        from k5_bg_rail_l
        where dp_code in ('160445') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 13 as minlv, 22 as maxlv, '001400020135' as std_code,
        '지하철' as cate1,
        '한국지하철' as cate2,
        '수인분당선' as cate3
        from k5_bg_rail_l
        where dp_code in ('160446') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030001' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '제주올레길코스-휠체어구간' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('081215')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030001' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '제주올레길코스-일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('081209')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030000' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '스키장-초급' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('041805') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030000' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '스키장-초중급' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('041806') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030000' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '스키장-중급' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('041807') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030000' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '스키장-중상급' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('041808') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030000' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '스키장-상급' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('041809') and dp_name is not null and dp_name not in ('')
    union
    select -999 as angle, dp_name, shape, 14 as minlv, 22 as maxlv, '001400030000' as std_code,
        '흐르는주기' as cate1,
        '시설' as cate2,
        '스키장-최상급' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('041810') and dp_name is not null and dp_name not in ('');
create index kor_standard_label_path_sdix on kor_standard_label_path using gist(shape);