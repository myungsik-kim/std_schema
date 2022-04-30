--일반
create table kor_standard_point_annotation as
    select angle, null as dp_name, shape, 17 as minlv, 22 as maxlv, '001400000002' as std_code,
        'Annotation' as cate1,
        '유턴' as cate2,
        '일반' as cate3
    from k5_uturn_p
	union
    select null::float as angle, name_dp as dp_name, shape, 18 as minlv, 22 as maxlv, '001400020000' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '일반' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180401')
	union
    select null::float as angle, name_dp as dp_name, shape, 18 as minlv, 22 as maxlv, '001400020001' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '건물군1' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180403')
	union
    select null::float as angle, name_dp as dp_name, shape, 18 as minlv, 22 as maxlv, '001400020002' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '건물군2' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180404')
	union
    select null::float as angle, name_dp as dp_name, shape, 18 as minlv, 22 as maxlv, '001400020003' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '건물군3' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180405')
	union
    select null::float as angle, name_dp as dp_name, shape, 19 as minlv, 22 as maxlv, '001400020004' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '출입구' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180402');
create index kor_standard_point_annotation_sdix on kor_standard_point_annotation using gist(shape);



--위성
create table kor_standard_point_annotation_sat as
    select null::float as angle, name_dp as dp_name, shape, 18 as minlv, 22 as maxlv, '001400020000' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '일반' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180401')
    union
    select null::float as angle, name_dp as dp_name, shape, 18 as minlv, 22 as maxlv, '001400020001' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '건물군1' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180403')
    union
    select null::float as angle, name_dp as dp_name, shape, 18 as minlv, 22 as maxlv, '001400020002' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '건물군2' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180404')
    union
    select null::float as angle, name_dp as dp_name, shape, 18 as minlv, 22 as maxlv, '001400020003' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '건물군3' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180405')
    union
    select null::float as angle, name_dp as dp_name, shape, 19 as minlv, 22 as maxlv, '001400020004' as std_code,
        'Annotation' as cate1,
        '새주소건물번호' as cate2,
        '출입구' as cate3
    from k5_na_poi_db_p
    where dp_code in ('180402');
create index kor_standard_point_annotation_sat_sdix on kor_standard_point_annotation_sat using gist(shape);