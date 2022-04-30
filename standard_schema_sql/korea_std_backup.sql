--기테이블백업
drop table if exists backup_kor_standard_union_line;
create table backup_kor_standard_union_line as 
    select * from kor_standard_union_line;
drop table if exists kor_standard_union_line;
drop table if exists backup_kor_standard_label_path;
create table backup_kor_standard_label_path as 
    select * from kor_standard_label_path;
drop table if exists kor_standard_label_path;
drop table if exists backup_kor_standard_label_path_sat;
create table backup_kor_standard_label_path_sat as 
    select * from kor_standard_label_path_sat;
drop table if exists kor_standard_label_path_sat;
drop table if exists backup_kor_standard_union_line_sat;
create table backup_kor_standard_union_line_sat as 
    select * from kor_standard_union_line_sat;
drop table if exists kor_standard_union_line_sat;
--기테이블 백업
drop table if exists backup_kor_standard_point_annotation;
create table backup_kor_standard_point_annotation as 
	select * from kor_standard_point_annotation;
drop table if exists kor_standard_point_annotation;
--기테이블 백업
drop table if exists backup_kor_standard_subway_line;
create table backup_kor_standard_subway_line as 
    select * from kor_standard_subway_line;
drop table if exists kor_standard_subway_line;
drop table if exists backup_kor_standard_subway_station;
create table backup_kor_standard_subway_station as 
    select * from kor_standard_subway_station;
drop table if exists kor_standard_subway_station;
--기테이블 백업
drop table if exists backup_kor_standard_road_line;
create table backup_kor_standard_road_line as 
    select * from kor_standard_road_line;
drop table if exists kor_standard_road_line;
drop table if exists backup_kor_standard_road_line_sat;
create table backup_kor_standard_road_line_sat as 
    select * from kor_standard_road_line_sat;
drop table if exists kor_standard_road_line_sat;
--기테이블 백업
drop table if exists backup_kor_standard_buld_polygon;
create table backup_kor_standard_buld_polygon as 
    select * from kor_standard_buld_polygon;
drop table if exists kor_standard_buld_polygon;
drop table if exists backup_kor_standard_complex_polygon;
create table backup_kor_standard_complex_polygon as 
    select * from kor_standard_complex_polygon;
drop table if exists kor_standard_complex_polygon;
drop table if exists backup_kor_standard_complex_everland_polygon;
create table backup_kor_standard_complex_everland_polygon as 
    select * from kor_standard_complex_everland_polygon;
drop table if exists kor_standard_complex_everland_polygon;
drop table if exists backup_kor_standard_green_polygon;
create table backup_kor_standard_green_polygon as 
    select * from kor_standard_green_polygon;
drop table if exists kor_standard_green_polygon;
drop table if exists backup_kor_standard_golf_polygon;
create table backup_kor_standard_golf_polygon as 
    select * from kor_standard_golf_polygon;
drop table if exists kor_standard_golf_polygon;
drop table if exists backup_kor_standard_water_polygon;
create table backup_kor_standard_water_polygon as 
    select * from kor_standard_water_polygon;
drop table if exists kor_standard_water_polygon;
drop table if exists backup_kor_standard_road_facility_polygon;
create table backup_kor_standard_road_facility_polygon as 
    select * from kor_standard_road_facility_polygon;
drop table if exists kor_standard_road_facility_polygon;
drop table if exists backup_kor_standard_road_polygon;
create table backup_kor_standard_road_polygon as 
    select * from kor_standard_road_polygon;
drop table if exists kor_standard_road_polygon;