create table osm_standard_buld_polygon as
    select geometry, 13 as minlv, 22 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from osm_transport_areas
        where lower(type) similar to '%apron%'
    union
    select geometry, 13 as minlv, 13 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from osm_buildings
        where lower(type) similar to '%station%|transportation%|%terminal%'
    union
    select geometry, 14 as minlv, 14 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from osm_buildings
        where lower(type) similar to '%station%|transportation%|%terminal%|%school%|%college%|%university%|%campus%|%education%|%academic%|%commercial%|%hospital%|%medical%|%health%|%civic%|%community%|%goverment%'
    union
    select geometry, 15 as minlv, 22 as maxlv, '000800000000' as std_code,
        '건물' as cate1,
        '건물' as cate2,
        '일반건물' as cate3
        from osm_buildings
        where lower(type) not similar to '%condo%|%apartment%|%dormitory%'
    union
    select geometry, 14 as minlv, 22 as maxlv, '000800010000' as std_code,
        '건물' as cate1,
        '아파트' as cate2,
        '일반' as cate3
        from osm_buildings
        where lower(type) similar to '%condo%|%apartment%|%dormitory%';
alter table osm_standard_buld_polygon rename column geometry to shape;
--북한split
alter table osm_standard_buld_polygon add column iso_country_code varchar;
update osm_standard_buld_polygon a set iso_country_code = 'PRK' from  nkorea b where st_intersects(a.shape, b.geometry);
--pk
alter table osm_standard_buld_polygon ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_buld_polygon_sdix on osm_standard_buld_polygon using gist(shape);



create table osm_standard_complex_polygon as
    select geometry, 14 as minlv, 22 as maxlv, '000900000000' as std_code,
        '단지' as cate1,
        '일반' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_amenities_polygon
    union
    select geometry, 11 as minlv, 22 as maxlv, '000900010000' as std_code,
        '단지' as cate1,
        '스포츠시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%playground%|%recreation_ground%|%sports_centre%|%stadium%'
    union
    select geometry, 11 as minlv, 22 as maxlv, '000900020000' as std_code,
        '단지' as cate1,
        '문화시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%cinema%|%library%|%theatre%|%zoo%|%place_of_worship%'
    union
    select geometry, 11 as minlv, 22 as maxlv, '000900050000' as std_code,
        '단지' as cate1,
        '상업시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%retail%|%commercial%'
    union
    select geometry, 14 as minlv, 22 as maxlv, '000900060000' as std_code,
        '단지' as cate1,
        '의료시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%hospital%'
    union
    select geometry, 11 as minlv, 12 as maxlv, '000900070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_transport_areas
        where lower(type) similar to '%aerodrome%'
    union
    select geometry, 13 as minlv, 14 as maxlv, '000900070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_transport_areas
        where lower(type) similar to '%aerodrome%|%helipad%|%railway%'
    union
    select geometry, 15 as minlv, 15 as maxlv, '000900070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_transport_areas
        where lower(type) similar to '%aerodrome%|%helipad%|%railway%|%platform%|%station%'
    union
    select geometry, 16 as minlv, 22 as maxlv, '000900070000' as std_code,
        '단지' as cate1,
        '교통시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_transport_areas
        where lower(type) similar to '%aerodrome%|%helipad%|%railway%|%platform%|%station%|%runway%|%taxiway%|%footway%'
    union
    select geometry, 11 as minlv, 22 as maxlv, '000900080000' as std_code,
        '단지' as cate1,
        '학교시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%college%|%school%|%university%'
    union
    select geometry, 15 as minlv, 22 as maxlv, '000900090000' as std_code,
        '단지' as cate1,
        '운동장' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%pitch%'
    union
    select geometry, 11 as minlv, 22 as maxlv, '000900100000' as std_code,
        '단지' as cate1,
        '농공시설' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%quarry%|%industrial%|%fuel%|%pier%'
    union
    select geometry, 15 as minlv, 22 as maxlv, '000900110000' as std_code,
        '단지' as cate1,
        '주차장' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%parking%|%pedestrian%'
    union
    select geometry, 14 as minlv, 22 as maxlv, '000900120000' as std_code,
        '단지' as cate1,
        '아파트' as cate2,
        '일반' as cate3,
        -999 as z_order
        from osm_landusages
        where lower(type) similar to '%residential%';
alter table osm_standard_complex_polygon rename column geometry to shape;
--북한split
alter table osm_standard_complex_polygon add column iso_country_code varchar;
update osm_standard_complex_polygon a set iso_country_code = 'PRK' from  nkorea b where st_intersects(a.shape, b.geometry);
--st_subdivide
with osm_standard_complex_polygon as
    (delete from osm_standard_complex_polygon
    where ST_NPoints(shape) > 255
    returning shape, minlv, maxlv, std_code,
        cate1, cate2, cate3, z_order, iso_country_code)
insert into osm_standard_complex_polygon
    (shape, minlv, maxlv, std_code,
        cate1, cate2, cate3, z_order, iso_country_code)
    select
        ST_Subdivide(shape, 255) as shape,
        minlv, maxlv, std_code,
        cate1, cate2, cate3, z_order, iso_country_code
    from osm_standard_complex_polygon;
--pk
alter table osm_standard_complex_polygon ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_complex_polygon_sdix on osm_standard_complex_polygon using gist(shape);


create table osm_standard_golf_polygon as
    select 3 as rel_z_golf, 
        '녹지' as cate1,
        '골프장' as cate2,
        '일반' as cate3,
        '001100030000' as std_code,
         12 as minlv, 22 as maxlv, geometry
         from osm_landusages
         where lower(type) similar to '%golf_course%';
alter table osm_standard_golf_polygon rename column geometry to shape;
--북한split
alter table osm_standard_golf_polygon add column iso_country_code varchar;
update osm_standard_golf_polygon  set iso_country_code = 'PRK' from  nkorea b where st_intersects(shape, b.geometry);
--st_subdivide
with osm_standard_golf_polygon as
    (delete from osm_standard_golf_polygon
    where ST_NPoints(shape) > 255
    returning shape, rel_z_golf, minlv, maxlv, std_code,
        cate1, cate2, cate3, iso_country_code)
insert into osm_standard_golf_polygon
    (shape, rel_z_golf, minlv, maxlv, std_code,
        cate1, cate2, cate3, iso_country_code)
    select
        ST_Subdivide(shape, 255) as shape,
        rel_z_golf, minlv, maxlv, std_code,
        cate1, cate2, cate3, iso_country_code
    from osm_standard_golf_polygon;
--pk
alter table osm_standard_golf_polygon ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_golf_polygon_sdix on osm_standard_golf_polygon using gist(shape);


create table osm_standard_green_polygon as
    select geometry, 7 as minlv, 7 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3,
        -999 as z_order
        from back_osm_green_landusages_gen_z7
        where st_geometrytype(geometry) not in ('ST_MultiLineString','ST_LineString','ST_GeometryCollection')
    union
    select geometry, 8 as minlv, 8 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3,
        -999 as z_order
        from back_osm_green_landusages_gen_z8
        where st_geometrytype(geometry) not in ('ST_MultiLineString','ST_LineString','ST_GeometryCollection')
    union
    select geometry, 9 as minlv, 9 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3,
        -999 as z_order
        from back_osm_green_landusages_gen_z9
        where st_geometrytype(geometry) not in ('ST_MultiLineString','ST_LineString','ST_GeometryCollection')
    union
    select geometry, 10 as minlv, 10 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3,
        -999 as z_order
        from back_osm_green_landusages_gen_z10
        where st_geometrytype(geometry) not in ('ST_MultiLineString','ST_LineString','ST_GeometryCollection')
    union
    select geometry, 11 as minlv, 11 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3,
        -999 as z_order
        from back_osm_green_landusages_gen_z11
        where st_geometrytype(geometry) not in ('ST_MultiLineString','ST_LineString','ST_GeometryCollection')
    union
    select geometry, 12 as minlv, 12 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3,
        -999 as z_order
        from back_osm_green_landusages_gen_z12
        where st_geometrytype(geometry) not in ('ST_MultiLineString','ST_LineString','ST_GeometryCollection')
    union
    select geometry, 13 as minlv, 13 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3,
        -999 as z_order
        from back_osm_green_landusages_gen_z13
        where st_geometrytype(geometry) not in ('ST_MultiLineString','ST_LineString','ST_GeometryCollection')
    union
    select geometry, 14 as minlv, 22 as maxlv, '001100020000' as std_code,
        '녹지' as cate1,
        '공원' as cate2,
        '일반' as cate3,
        z_order
        from osm_landusages
        where (lower(type) similar to '%allotments%|%cemetery%|%farm%|%farmland%|%farmyard%|%garden%|%grass%|%heath%|%hedge%|%meadow%|%nature_reserve%|%orchard%|%park%|%playground%|%vineyard%|%wood%|%forest%') and st_geometrytype(geometry) not in ('ST_MultiLineString','ST_LineString','ST_GeometryCollection');
alter table osm_standard_green_polygon rename column geometry to shape;
--북한split (intersection : 시간 걸리기 때문에 intersects로 대신)
alter table osm_standard_green_polygon add column iso_country_code varchar;
update osm_standard_green_polygon a set iso_country_code = 'PRK' from  nkorea b where st_intersects(a.shape, b.geometry);
--st_subdivide
with osm_standard_green_polygon as
    (delete from osm_standard_green_polygon
    where ST_NPoints(shape) > 255 returning shape, minlv, maxlv, std_code, cate1, cate2, cate3, z_order, iso_country_code)
insert into osm_standard_green_polygon
    (shape, minlv, maxlv, std_code, cate1, cate2, cate3, z_order, iso_country_code)
    select
        ST_Subdivide(shape, 255) as shape, minlv, maxlv, std_code, cate1, cate2, cate3, z_order, iso_country_code 
    from osm_standard_green_polygon;
--pk
alter table osm_standard_green_polygon ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_green_polygon_sdix on osm_standard_green_polygon using gist(shape);