create table osm_standard_subway_line as
    select geometry, 11 as minlv, 22 as maxlv, '000400000000' as std_code,
        '지하철' as cate1,
        '일반지하철' as cate2,
        '일반' as cate3
        from osm_roads
        where class in ('railway') and type in ('subway');
alter table osm_standard_subway_line rename column geometry to shape;
--북한split
alter table osm_standard_subway_line add column iso_country_code varchar;
update osm_standard_subway_line a set iso_country_code = 'PRK' from  nkorea b where st_intersects(a.shape, b.geometry);
--pk
alter table osm_standard_subway_line ADD COLUMN fid SERIAL PRIMARY KEY;
--spatial index
create index osm_standard_subway_line_sdix on osm_standard_subway_line using gist(shape);