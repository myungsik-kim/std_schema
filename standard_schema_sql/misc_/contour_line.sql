drop table if exists "000600010000", "000600020000";
create table "000600010000" as
    select shape, 13 as minlv, 22 as maxlv, '000600010000' as std_code,
        '등고선' as cate1,
        '계곡선' as cate2,
        '일반' as cate3
        from k25_bg_contour_l
        where dp_code in ('240312', '240307');
create table "000600020000" as
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
create index "000600010000_sdix" on "000600010000" using gist(shape);
create index "000600020000_sdix" on "000600020000" using gist(shape);