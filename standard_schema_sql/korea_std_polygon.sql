--일반
create table kor_standard_buld_polygon as
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
        where (dp_code In ('050100', '050200', '040200') OR (dp_code In ('140000','160000','020000','030000','040000','050000','060000','070000','080000','090000','100000','110000','120000','130000','150000','170000','180000','190000','200000') and minlevel in (10,11))) and st_area(shape) > 624
    union
    select shape, 15 as minlv, 15 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where (dp_code In ('050100', '050200', '050600', '050700', '050800', '040200') OR (dp_code In ('140000','160000','020000','030000','040000','050000','060000','070000','080000','090000','100000','110000','120000','130000','150000','170000','180000','200000') and minlevel in (10,11))) and st_area(shape) > 133
    union
    select shape, 16 as minlv, 22 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_building_a
        where dp_code in ('050100','050200','040200','050600','050700','050800','140000','160000','020000','030000','040000','050000','060000','070000','080000','090000','100000','110000','120000','130000','150000','170000','180000','190000','200000','200200')
    union
    select shape, 15 as minlv, 22 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('160300')
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
create index kor_standard_buld_polygon_sdix on kor_standard_buld_polygon using gist(shape);
create table kor_standard_complex_polygon as
    select shape, 11 as minlv, 13 as maxlv, '000900010000' as std_code,
        '단지' as cate1,
        '스포츠시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('042509') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '000900010000' as std_code,
        '단지' as cate1,
        '스포츠시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('042509','040500')
    union
    select shape, 16 as minlv, 22 as maxlv, '000900010001' as std_code,
        '단지' as cate1,
        '스포츠시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293003')
    union
    select shape, 11 as minlv, 13 as maxlv, '000900020000' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('080506') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '000900020000' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('080506','080000')
    union
    select shape, 16 as minlv, 22 as maxlv, '000900020001' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293005')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900030001' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '상세-초급' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('041805')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900030001' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '상세-초중급' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('041806')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900030001' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '상세-중급' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('041807')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900030001' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '상세-중상급' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('041808')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900030001' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '상세-상급' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('041809')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900030001' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '상세-최상급' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('041810')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900030000' as std_code,
        '단지' as cate1,
        '스키장시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('041800')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900040000' as std_code,
        '단지' as cate1,
        '해수욕장' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('082400')
    union
    select shape, 11 as minlv, 13 as maxlv, '000900050000' as std_code,
        '단지' as cate1,
        '상업시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('130307') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '000900050000' as std_code,
        '단지' as cate1,
        '상업시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('130000','130403','130307')
    union
    select shape, 16 as minlv, 22 as maxlv, '000900050001' as std_code,
        '단지' as cate1,
        '상업시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293007')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900060000' as std_code,
        '단지' as cate1,
        '의료시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('140000','140803')
    union
    select shape, 16 as minlv, 22 as maxlv, '000900060001' as std_code,
        '단지' as cate1,
        '의료시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293008')
    union
    select shape, 11 as minlv, 12 as maxlv, '000900070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('162500') and minlevel in (7,8,9,10)
    union
    select shape, 13 as minlv, 13 as maxlv, '000900070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('162500','023504','020000') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '000900070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('160424','160000','162500','023504','020000')
    union
    select shape, 14 as minlv, 15 as maxlv, '000900070001' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293009')
    union
    select shape, 16 as minlv, 22 as maxlv, '000900070001' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293009','293001')
    union
    select shape, 11 as minlv, 13 as maxlv, '000900080000' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('050105','050100','050200') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '000900080000' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('050100','050200','050105','050600','050700','050800','050605','050000')
    union
    select shape, 16 as minlv, 22 as maxlv, '000900080001' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293004','293012')
    union
    select shape, 15 as minlv, 22 as maxlv, '000900090000' as std_code,
        '단지' as cate1,
        '운동장' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('040200','040000')
    union
    select shape, 15 as minlv, 22 as maxlv, '000900090001' as std_code,
        '단지' as cate1,
        '운동장' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('290200','290302','290400','290401','290402','291001','291002','291003','291004','291008','291009','290800','290801','291005','291006','290900','290901','290902','290903')
    union
    select shape, 11 as minlv, 11 as maxlv, '000900100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300') and minlevel in (7)
    union
    select shape, 12 as minlv, 12 as maxlv, '000900100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300') and minlevel in (7)
    union
    select shape, 13 as minlv, 13 as maxlv, '000900100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300') and minlevel in (7,8,9)
    union
    select shape, 14 as minlv, 22 as maxlv, '000900100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3
        from k25_bg_thm_jigu_a
        where dp_code in ('190000', '190300') and minlevel in (7,8,9)
    union
    select shape, 16 as minlv, 22 as maxlv, '000900110000' as std_code,
        '단지' as cate1,
        '주차장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('292001','292002','292003','292004','292005','292006','292007')
    union
    select shape, 14 as minlv, 22 as maxlv, '000900120000' as std_code,
        '단지' as cate1,
        '아파트' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('200100','200114')
    union
    select shape, 12 as minlv, 22 as maxlv, '000900130000' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('081200');
create index kor_standard_complex_polygon_sdix on kor_standard_complex_polygon using gist(shape);
create table kor_standard_complex_everland_polygon as
    select shape, 13 as minlv, 22 as maxlv, '000900130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '아메리칸어드벤처'as color
        from k5_bg_danji_a
        where dp_code in ('270908')
    union
    select shape, 13 as minlv, 22 as maxlv, '000900130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '글로벌페어'as color
        from k5_bg_danji_a
        where dp_code in ('270909')
    union
    select shape, 13 as minlv, 22 as maxlv, '000900130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '매직랜드'as color
        from k5_bg_danji_a
        where dp_code in ('270906')
    union
    select shape, 13 as minlv, 22 as maxlv, '000900130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '주토피아'as color
        from k5_bg_danji_a
        where dp_code in ('270905')
    union
    select shape, 13 as minlv, 22 as maxlv, '000900130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '유러피안어드벤처'as color
        from k5_bg_danji_a
        where dp_code in ('270907')
    union
    select shape, 13 as minlv, 22 as maxlv, '000900130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '주차장'as color
        from k5_bg_danji_a
        where dp_code in ('270911')
    union
    select shape, 13 as minlv, 15 as maxlv, '000900130001' as std_code,
        '단지' as cate1,
        '테마스팟' as cate2,
        '에버랜드' as cate3,
        '아웃라인'as color
        from k5_bg_danji_a
        where dp_code in ('270910');
create index kor_standard_complex_everland_polygon_sdix on kor_standard_complex_everland_polygon using gist(shape);
create table kor_standard_green_polygon as
    select shape, 7 as minlv, 10 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k50_bg_park_a
        where dp_code in ('040101','040102')
    union
    select shape, 11 as minlv, 11 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040101','040102') or (dp_code in ('040105') and minlevel in (8))
    union
    select shape, 12 as minlv, 13 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040104','040120') or (dp_code in ('040105') and minlevel in (8))
    union
    select shape, 14 as minlv, 22 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_park_a
        where dp_code in ('040104','040120','040105','040106','040108')
    union
    select shape, 11 as minlv, 12 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code In ('040112','080702','081402','081404') and minlevel In (7,8,9,10)
    union
    select shape, 13 as minlv, 13 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('040112','081404','080702','081402') and minlevel in (7,8,9,10)
    union
    select shape, 14 as minlv, 22 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k5_bg_danji_a
        where dp_code in ('040112','081404','080702','081402')
    union
    select shape, 14 as minlv, 22 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3
        from k25_bg_thm_ydo_a
        where dp_code In ('222702','224202','224802','226202','226302','226602')
    union
    select shape, 16 as minlv, 22 as maxlv, '001100020003' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '공원구획' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('293002','293006')
    union
    select shape, 16 as minlv, 22 as maxlv, '001100020001' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세' as cate3
        from k5_bg_rd_sisul_a
        where dp_code in ('290700','290701','290702','290703','290704','290705','290706','291011')
    union
    select shape, 16 as minlv, 22 as maxlv, '001100020001' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세' as cate3
        from k5_bg_danji_a
        where dp_code in ('040110','040210','132104','132105','132106','132107')
    union
    select shape, 15 as minlv, 22 as maxlv, '001100020001' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세' as cate3
        from k5_bg_park_a
        where dp_code in ('040109','040110','040111','040206')
    union
    select shape, 11 as minlv, 22 as maxlv, '001100020002' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세_실폭위' as cate3
        from k5_bg_danji_a
        where dp_code in ('010700')
    union
    select shape, 16 as minlv, 22 as maxlv, '001100020002' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '상세_실폭위' as cate3
        from k5_bg_park_a
        where dp_code in ('171003','171005');
create index kor_standard_green_polygon_sdix on kor_standard_green_polygon using gist(shape);
create table kor_standard_golf_polygon as
    select 3 as rel_z_golf, 
        '녹지' as cate1,
        '골프장' as cate2,
        '한국' as cate3,
        '001100030001' as std_code,
         15 as minlv, 22 as maxlv, shape from k5_bg_park_a where dp_code in ('041905')
    union
    select 2 as rel_z_golf, 
        '녹지' as cate1,
        '골프장' as cate2,
        '한국' as cate3,
        '001100030001' as std_code,
        14 as minlv, 22 as maxlv, shape from k5_bg_park_a where dp_code in ('041907')
    union
    select 1 as rel_z_golf, 
        '녹지' as cate1,
        '골프장' as cate2,
        '한국' as cate3,
        '001100030001' as std_code,
        12 as minlv, 22 as maxlv, shape from k5_bg_park_a where dp_code in ('041900');
create index kor_standard_golf_polygon_sdix on kor_standard_golf_polygon using gist(shape);
create table kor_standard_water_polygon as
    select shape, 6 as minlv, 8 as maxlv, '001500010000' as std_code,
        '수계' as cate1,
        '하천' as cate2,
        '일반' as cate3
        from k50_bg_water_a
        where dp_code in ('010200')
    union
    select shape, 9 as minlv, 13 as maxlv, '001500010000' as std_code,
        '수계' as cate1,
        '하천' as cate2,
        '일반' as cate3
        from k25_bg_water_a
        where dp_code in ('010200','010300','010500')
    union
    select shape, 14 as minlv, 22 as maxlv, '001500010000' as std_code,
        '수계' as cate1,
        '하천' as cate2,
        '일반' as cate3
        from k5_bg_water_a
    union
    select shape, 7 as minlv, 10 as maxlv, '001500020000' as std_code,
        '수계' as cate1,
        '해상공원' as cate2,
        '일반' as cate3
        from k50_bg_park_a
        where dp_code in ('040107');
create index kor_standard_water_polygon_sdix on kor_standard_water_polygon using gist(shape);