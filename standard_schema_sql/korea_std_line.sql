--일반
create table kor_standard_union_line as
    select shape, 0 as minlv, 8 as maxlv, '000200010000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from k200_bg_adm_l
        where dp_code in ('011700') and ((mid < 105 or mid > 168) and mid not in (2,3,171,172,173))
    union
    select shape, 9 as minlv, 12 as maxlv, '000200010000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from k50_bg_adm_l
        where dp_code in ('011700') and mid > 20
    union
    select shape, 0 as minlv, 8 as maxlv, '000200020000' as std_code,
        '행정경계' as cate1,
        '시도경계' as cate2,
        '일반' as cate3
        from k200_bg_adm_l
        where dp_code in ('011303') and ((mid < 105 or mid > 168) and mid not in (2,3,171,172,173))
    union
    select shape, 9 as minlv, 12 as maxlv, '000200020000' as std_code,
        '행정경계' as cate1,
        '시도경계' as cate2,
        '일반' as cate3
        from k50_bg_adm_l
        where dp_code in ('011303','011304')
    union
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
    select shape, 17 as minlv, 22 as maxlv, '000500010000' as std_code,
        '시설라인' as cate1,
        '성곽' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('291012')
    union
    select shape, 16 as minlv, 16 as maxlv, '000500010000' as std_code,
        '시설라인' as cate1,
        '경기장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290000', '290001', '290002', '290003', '290004', '290005', '290006', '290007', '290100', '290103', '290104', '290105', '290200', '290203', '290400', '291011', '290105', '151510')
    union
    select shape, 17 as minlv, 22 as maxlv, '000500010000' as std_code,
        '시설라인' as cate1,
        '경기장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290000', '290001', '290002', '290003', '290004', '290005', '290006', '290007', '290100', '290101', '290102', '290103', '290104', '290105', '290200', '290201', '290202', '290203', '290400', '291011', '290105', '151510')
    union
    select shape, 18 as minlv, 22 as maxlv, '000500010000' as std_code,
        '시설라인' as cate1,
        '계단선' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171105')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500010000' as std_code,
        '시설라인' as cate1,
        '주차장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('151207', '151208')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500020000' as std_code,
        '시설라인' as cate1,
        '버스중앙정류장' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('160508')
    union
    select shape, 15 as minlv, 15 as maxlv, '000500030000' as std_code,
        '시설라인' as cate1,
        '교량' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170508')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500030000' as std_code,
        '시설라인' as cate1,
        '교량' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170701', '170702', '170704','170508')
    union
    select shape, 15 as minlv, 22 as maxlv, '000500040000' as std_code,
        '시설라인' as cate1,
        '터널' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170506')
    union
    select shape, 15 as minlv, 22 as maxlv, '000500040001' as std_code,
        '시설라인' as cate1,
        '터널' as cate2,
        '터널내구간(점선)' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170503')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500050000' as std_code,
        '시설라인' as cate1,
        '지하도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170407', '170408')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500060000' as std_code,
        '시설라인' as cate1,
        '횡단보도' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171001')
    union
    select shape, 15 as minlv, 22 as maxlv, '000500110000' as std_code,
        '시설라인' as cate1,
        '케이블카' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290501', '290502')
    union
    select shape, 17 as minlv, 22 as maxlv, '000500070000' as std_code,
        '시설라인' as cate1,
        '지하주차장 진입로' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('170411')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500080000' as std_code,
        '시설라인' as cate1,
        '고속도로 입체라인' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171201', '171202')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500090000' as std_code,
        '시설라인' as cate1,
        '주요도로 입체라인' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('171203', '171204', '171205')
    union
    select shape, 16 as minlv, 22 as maxlv, '000500100000' as std_code,
        '시설라인' as cate1,
        '모노레일' as cate2,
        '일반' as cate3
        from k5_bg_rd_sisul_l
        where dp_code in ('290401', '290402');
create index kor_standard_union_line_sdix on kor_standard_union_line using gist(shape);
--위성
create table kor_standard_union_line_sat as
    select shape, 0 as minlv, 8 as maxlv, '000200010000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from k200_bg_adm_l
        where dp_code in ('011700') and ((mid < 105 or mid > 168) and mid not in (2,3,171,172,173))
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
        '시도경계' as cate2,
        '일반' as cate3
        from k200_bg_adm_l
        where dp_code in ('011303') and ((mid < 105 or mid > 168) and mid not in (2,3,171,172,173))
    union
    select shape, 9 as minlv, 12 as maxlv, '000200020000' as std_code,
        '행정경계' as cate1,
        '시도경계' as cate2,
        '일반' as cate3
        from k50_bg_adm_l
        where dp_code in ('011303','011304')
    union
    select shape, 14 as minlv, 22 as maxlv, '000300010000' as std_code,
        '철도' as cate1,
        '공사중/예정' as cate2,
        '일반' as cate3
        from k5_bg_rail_l
        where dp_code in ('160304')
    union
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
        where dp_code in ('160301');
create index kor_standard_union_line_sat_sdix on kor_standard_union_line_sat using gist(shape);