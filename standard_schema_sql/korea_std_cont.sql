create table kor_standard_contour_line as
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
create index kor_standard_contour_line_sdix on kor_standard_contour_line using gist(shape);
create table kor_standard_contour_polygon as
    select shape, minlv, maxlv, rel_z, '001100010000' as std_code,
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
    select shape, minlv, maxlv, rel_z, '001100020000' as std_code,
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
create index kor_standard_contour_polygon_sdix on kor_standard_contour_polygon using gist(shape);