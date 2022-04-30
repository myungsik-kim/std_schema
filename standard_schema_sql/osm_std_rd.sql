create table osm_standard_road_line as
    select geometry, 6 as minlv, 6 as maxlv, z_order as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres4
        where type in ('motorway')
    union
    select geometry, 7 as minlv, 7 as maxlv, z_order as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres6
        where type in ('motorway')
    union
    select geometry, 8 as minlv, 8 as maxlv, z_order as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres7
        where type in ('motorway')
    union
    select geometry, 9 as minlv, 10 as maxlv, z_order as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres9
        where type in ('motorway')
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres10
        where type in ('motorway') and tunnel = 0
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres11
        where type in ('motorway') and tunnel = 0
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000000010000' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from osm_roads
        where type in ('motorway') and tunnel = 0
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '터널' as cate3
        from back_osm_roads_zres10
        where type in ('motorway') and tunnel = 1
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '터널' as cate3
        from back_osm_roads_zres11
        where type in ('motorway') and tunnel = 1
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000000010001' as std_code,
        '도로실선' as cate1,
        '고속(도시고속)도로' as cate2,
        '터널' as cate3
        from osm_roads
        where type in ('motorway') and tunnel = 1
    union
    select geometry, 8 as minlv, 8 as maxlv, z_order as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from back_osm_roads_zres7
        where type in ('trunk')
    union
    select geometry, 9 as minlv, 10 as maxlv, z_order as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from back_osm_roads_zres9
        where type in ('trunk')
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from back_osm_roads_zres10
        where type in ('trunk') and tunnel = 0
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from back_osm_roads_zres11
        where type in ('trunk') and tunnel = 0
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000000020001' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도' as cate3
        from osm_roads
        where type in ('trunk') and tunnel = 0
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_터널' as cate3
        from back_osm_roads_zres10
        where type in ('trunk') and tunnel = 1
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_터널' as cate3
        from back_osm_roads_zres11
        where type in ('trunk') and tunnel = 1
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000000020003' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '국도_터널' as cate3
        from osm_roads
        where type in ('trunk') and tunnel = 1
    union
    select geometry, 9 as minlv, 10 as maxlv, z_order as rel_z_road, '000000020002' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from back_osm_roads_zres9
        where type in ('primary')
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000020002' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from back_osm_roads_zres10
        where type in ('primary')
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000020002' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from back_osm_roads_zres10
        where type in ('primary') and tunnel = 0
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000020002' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from back_osm_roads_zres11
        where type in ('primary') and tunnel = 0
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000000020002' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도' as cate3
        from osm_roads
        where type in ('primary') and tunnel = 0
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000020004' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도_터널' as cate3
        from back_osm_roads_zres10
        where type in ('primary') and tunnel = 1
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000020004' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도_터널' as cate3
        from back_osm_roads_zres11
        where type in ('primary') and tunnel = 1
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000000020004' as std_code,
        '도로실선' as cate1,
        '주요도로' as cate2,
        '지방도_터널' as cate3
        from osm_roads
        where type in ('primary') and tunnel = 1
    union
    select geometry, 9 as minlv, 10 as maxlv, z_order as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from back_osm_roads_zres9
        where type in ('secondary')
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from back_osm_roads_zres10
        where type in ('secondary') and tunnel = 0
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from back_osm_roads_zres11
        where type in ('secondary') and tunnel = 0
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000000030001' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '대로' as cate3
        from osm_roads
        where type in ('secondary') and tunnel = 0
    union
    select geometry, 12 as minlv, 12 as maxlv, z_order as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from back_osm_roads_zres10
        where type in ('tertiary') and tunnel = 0
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from back_osm_roads_zres11
        where type in ('tertiary') and tunnel = 0
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000000030002' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '중로' as cate3
        from osm_roads
        where type in ('tertiary') and tunnel = 0
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000030003' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로' as cate3
        from osm_roads
        where type in ('road','residential') and tunnel = 0
    union
    select geometry, 14 as minlv, 14 as maxlv, z_order as rel_z_road, '000000030003' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로' as cate3
        from osm_roads
        where type in ('road','residential','unclassified') and tunnel = 0
    union
    select geometry, 15 as minlv, 22 as maxlv, z_order as rel_z_road, '000000030003' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '소로' as cate3
        from osm_roads
        where type in ('road','residential','unclassified','living_street') and tunnel = 0
    union
    select geometry, 11 as minlv, 12 as maxlv, z_order as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '터널' as cate3
        from back_osm_roads_zres10
        where type in ('secondary','tertiary') and tunnel = 1
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '터널' as cate3
        from back_osm_roads_zres11
        where type in ('secondary','tertiary') and tunnel = 1
    union
    select geometry, 14 as minlv, 14 as maxlv, z_order as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '터널' as cate3
        from osm_roads
        where type in ('secondary','tertiary','road','residential','unclassified') and tunnel = 1
    union
    select geometry, 15 as minlv, 22 as maxlv, z_order as rel_z_road, '000000030004' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '터널' as cate3
        from osm_roads
        where type in ('secondary','tertiary','road','residential','unclassified','living_street') and tunnel = 1
    union
    select geometry, 14 as minlv, 15 as maxlv, z_order as rel_z_road, '000000040000' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '단지내도로' as cate3
        from osm_roads
        where type in ('service','steps','track','footway','bridleway','path','pedestrian') and class not in ('railway')
    union
    select geometry, 16 as minlv, 22 as maxlv, z_order as rel_z_road, '000000040000' as std_code,
        '도로실선' as cate1,
        '일반도로' as cate2,
        '단지내도로' as cate3
        from osm_roads
        where type not in ('motorway',',motorway_link','trunk','trunk_link','primary','primary_link','secondary','secondary_link','tertiary','tertiary_link','road','residential','unclassified','living_street') and class not in ('railway')
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000100010000' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres11
        where type in ('motorway_link')
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000100010000' as std_code,
        '도로실선램프' as cate1,
        '고속(도시고속)도로' as cate2,
        '일반' as cate3
        from osm_roads
        where type in ('motorway_link')
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000100020000' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres11
        where type in ('trunk_link','primary_link')
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000100020000' as std_code,
        '도로실선램프' as cate1,
        '주요도로' as cate2,
        '일반' as cate3
        from osm_roads
        where type in ('trunk_link','primary_link')
    union
    select geometry, 13 as minlv, 13 as maxlv, z_order as rel_z_road, '000100020000' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from back_osm_roads_zres11
        where type in ('secondary_link','tertiary_link')
    union
    select geometry, 14 as minlv, 22 as maxlv, z_order as rel_z_road, '000100020000' as std_code,
        '도로실선램프' as cate1,
        '일반도로' as cate2,
        '일반' as cate3
        from osm_roads
        where type in ('secondary_link','tertiary_link');
alter table osm_standard_road_line rename column geometry to shape;
--북한split
alter table osm_standard_road_line add column iso_country_code varchar;
update osm_standard_road_line a set iso_country_code = 'PRK' from  nkorea b where st_intersects(a.shape, b.geometry);
--위성 (글로벌은 Line으로 진행되기 때문에 한국용 데이터만 Merge 하면 됨)
--pk
alter table osm_standard_road_line ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_road_line_sdix on osm_standard_road_line using gist(shape);