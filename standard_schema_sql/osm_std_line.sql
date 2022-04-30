create table osm_standard_union_line as
    select a.shape as geometry, 0 as minlv, 4 as maxlv, '000200010000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from ne_50m_admin_0_boundary_lines_land a, skorea b
        where st_intersects(a.shape, b.geometry) = 'f'
    union
    select shape as geometry, 5 as minlv, 7 as maxlv, '000200010000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from ne_10m_admin_0_boundary_lines_land
        where name not in ('Korean Demilitarized Zone','Military Demarcation Line 1953') or name is null
    union
    select geometry, 8 as minlv, 12 as maxlv, '000200010000' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '일반' as cate3
        from osmborder_lines
        where maritime = false and admin_level = 2 and disputed = false
    union
    select geometry, 8 as minlv, 12 as maxlv, '000200010001' as std_code,
        '행정경계' as cate1,
        '국가경계' as cate2,
        '분쟁' as cate3
        from osmborder_lines
        where maritime = false and admin_level = 2 and disputed = true
    union
    select shape as geometry, 0 as minlv, 4 as maxlv, '000200020000' as std_code,
        '행정경계' as cate1,
        '시도경계' as cate2,
        '일반' as cate3
        from ne_50m_admin_1_states_provinces_lines
    union
    select shape as geometry, 5 as minlv, 5 as maxlv, '000200020000' as std_code,
        '행정경계' as cate1,
        '시도경계' as cate2,
        '일반' as cate3
        from ne_10m_admin_1_states_provinces_lines
        where adm0_a3 not in ('KOR')
    union
    select geometry, 6 as minlv, 12 as maxlv, '000200020000' as std_code,
        '행정경계' as cate1,
        '시도경계' as cate2,
        '일반' as cate3
        from osmborder_lines
        where maritime = false and admin_level in (3,4) and disputed = false
    union
    select geometry, 6 as minlv, 12 as maxlv, '000200020001' as std_code,
        '행정경계' as cate1,
        '시도경계' as cate2,
        '분쟁' as cate3
        from osmborder_lines
        where maritime = false and admin_level in (3,4) and disputed = true
    union
    select geometry, 11 as minlv, 22 as maxlv, '000500120000' as std_code,
        '시설라인' as cate1,
        '공항' as cate2,
        '활주로' as cate3
        from osm_aeroways
        where type in ('runway')
    union
    select geometry, 13 as minlv, 22 as maxlv, '000500120001' as std_code,
        '시설라인' as cate1,
        '공항' as cate2,
        '유도로' as cate3
        from osm_aeroways
        where type in ('taxiway')
    union
    select geometry, 15 as minlv, 22 as maxlv, '000500100000' as std_code,
        '시설라인' as cate1,
        '모노레일' as cate2,
        '일반' as cate3
        from osm_roads
        where class in ('railway') and type in ('tram','light_rail')
    union
    select geometry, 11 as minlv, 12 as maxlv, '000300000000' as std_code,
        '철도' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from osm_roads
        where class in ('railway') and type in ('rail') and service not in ('spur','siding','yard')
    union
    select geometry, 13 as minlv, 13 as maxlv, '000300000000' as std_code,
        '철도' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from osm_roads
        where class in ('railway') and type in ('rail','narrow_gauge','light_rail','funicular','disused') and service not in ('spur','siding','yard')
    union
    select geometry, 14 as minlv, 15 as maxlv, '000300000000' as std_code,
        '철도' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from osm_roads
        where class in ('railway') and type in ('rail','narrow_gauge','light_rail','funicular','disused') and service not in ('spur','siding','yard')
    union
    select geometry, 16 as minlv, 22 as maxlv, '000300000000' as std_code,
        '철도' as cate1,
        '일반' as cate2,
        '일반' as cate3
        from osm_roads
        where class in ('railway') and type in ('rail','narrow_gauge','light_rail','funicular','disused');
alter table osm_standard_union_line rename column geometry to shape;
--북한Split
alter table osm_standard_union_line add column iso_country_code varchar;
update osm_standard_union_line set iso_country_code = 'PRK' from  nkorea b where st_intersects(shape, b.geometry);
--pk
alter table osm_standard_union_line ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_union_line_sdix on osm_standard_union_line using gist(shape);




create table osm_standard_label_path as
    select oneway as angle, null as dp_name, geometry, 15 as minlv, 22 as maxlv, '001400000000' as std_code,
        '흐르는주기' as cate1,
        '일방통행' as cate2,
        '주요도로' as cate3
        from osm_roads
        where type in ('trunk','primary') and oneway in (1)
    union
    select oneway as angle, null as dp_name, geometry, 15 as minlv, 22 as maxlv, '001400000001' as std_code,
        '흐르는주기' as cate1,
        '일방통행' as cate2,
        '일반도로' as cate3
        from osm_roads
        where type in ('secondary','tertiary','road','residential','unclassified','living_street') and oneway in (1)
    union
    select -999 as angle, name as dp_name, geometry, 7 as minlv, 7 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres6
        where type in ('motorway') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 8 as minlv, 8 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres7
        where type in ('motorway') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 9 as minlv, 10 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres9
        where type in ('motorway') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 11 as minlv, 12 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres10
        where type in ('motorway') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 13 as minlv, 13 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres11
        where type in ('motorway') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 14 as minlv, 22 as maxlv, '001400010000' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '고속도로' as cate3
        from osm_roads
        where type in ('motorway') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 14 as minlv, 22 as maxlv, '001400010001' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '일반도로' as cate3
        from osm_roads
        where type in ('primary','secondary','tertiary') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 15 as minlv, 22 as maxlv, '001400010002' as std_code,
        '흐르는주기' as cate1,
        '도로명' as cate2,
        '소로' as cate3
        from osm_roads
        where type in ('road','residential','unclassified','living_street') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 13 as minlv, 13 as maxlv, '001400020001' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '일반' as cate3
        from back_osm_roads_zres11
        where type in ('rail') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 14 as minlv, 22 as maxlv, '001400020001' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '일반' as cate3
        from osm_roads
        where type in ('rail') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 13 as minlv, 13 as maxlv, '001400020002' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '지하철' as cate3
        from back_osm_roads_zres11
        where type in ('subway') and (name is not null and name not in (''))
    union
    select -999 as angle, name as dp_name, geometry, 14 as minlv, 22 as maxlv, '001400020002' as std_code,
        '흐르는주기' as cate1,
        '철도' as cate2,
        '지하철' as cate3
        from osm_roads
        where type in ('subway') and (name is not null and name not in (''));
alter table osm_standard_label_path rename column geometry to shape;
--북한Split
alter table osm_standard_label_path add column iso_country_code varchar;
update osm_standard_label_path a set iso_country_code = 'PRK' from  nkorea b where st_intersects(a.shape, b.geometry);
--pk
alter table osm_standard_label_path ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_label_path_sdix on osm_standard_label_path using gist(shape);
--위성 (글로벌은 Line으로 진행되기 때문에 한국용 데이터만 Merge 하면 됨)





create table osm_standard_shield_label_path as
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 7 as minlv, 7 as maxlv, '001400040000' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres6
        where type in ('motorway') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 8 as minlv, 8 as maxlv, '001400040000' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres7
        where type in ('motorway') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 9 as minlv, 10 as maxlv, '001400040000' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres9
        where type in ('motorway') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 11 as minlv, 12 as maxlv, '001400040000' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres10
        where type in ('motorway') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 13 as minlv, 13 as maxlv, '001400040000' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '고속도로' as cate3
        from back_osm_roads_zres11
        where type in ('motorway') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 14 as minlv, 22 as maxlv, '001400040000' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '고속도로' as cate3
        from osm_roads
        where type in ('motorway') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 8 as minlv, 8 as maxlv, '001400040001' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '주요도로' as cate3
        from back_osm_roads_zres7
        where type in ('trunk') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 9 as minlv, 10 as maxlv, '001400040001' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '주요도로' as cate3
        from back_osm_roads_zres9
        where type in ('trunk','primary') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 11 as minlv, 12 as maxlv, '001400040001' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '주요도로' as cate3
        from back_osm_roads_zres10
        where type in ('trunk','primary') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 13 as minlv, 13 as maxlv, '001400040001' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '주요도로' as cate3
        from back_osm_roads_zres11
        where type in ('trunk','primary') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 14 as minlv, 22 as maxlv, '001400040001' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '주요도로' as cate3
        from osm_roads
        where type in ('trunk','primary') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 9 as minlv, 10 as maxlv, '001400040002' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '일반도로' as cate3
        from back_osm_roads_zres9
        where type in ('secondary') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 11 as minlv, 11 as maxlv, '001400040002' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '일반도로' as cate3
        from back_osm_roads_zres10
        where type in ('secondary') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 12 as minlv, 12 as maxlv, '001400040002' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '일반도로' as cate3
        from back_osm_roads_zres10
        where type in ('secondary','tertiary') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 13 as minlv, 13 as maxlv, '001400040002' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '일반도로' as cate3
        from back_osm_roads_zres11
        where type in ('secondary','tertiary') and (ref is not null and ref not in (''))
    union
    select distinct(osm_id) as osm_id, -999 as angle, ref as dp_name, geometry as shape, 14 as minlv, 22 as maxlv, '001400040002' as std_code,
        '흐르는주기' as cate1,
        '도로쉴드' as cate2,
        '일반도로' as cate3
        from osm_roads
        where type in ('secondary','tertiary') and (ref is not null and ref not in (''));
--북한Split
alter table osm_standard_shield_label_path add column iso_country_code varchar;
update osm_standard_shield_label_path set iso_country_code = 'PRK' from  nkorea b where st_intersects(shape, b.geometry);
--pk
alter table osm_standard_shield_label_path ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_shield_label_path_sdix on osm_standard_shield_label_path using gist(shape);