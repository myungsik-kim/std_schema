create table kor_standard_poi_web as
    select * from poi_db_p_lod_web;


alter table kor_standard_poi_web
add column std_code varchar,
add column cate1 varchar,
add column cate2 varchar,
add column cate3 varchar;


update kor_standard_poi_web set std_code = '001600010000', cate1 = '음식점', cate2 = '일반', cate3 = null where dp_code in ('110100','110900');
update kor_standard_poi_web set std_code = '001600020000', cate1 = '음식점', cate2 = '카페', cate3 = null where dp_code in ('111100','110700');
update kor_standard_poi_web set std_code = '001600030000', cate1 = '음식점', cate2 = '주점및호프', cate3 = null where dp_code in ('120100');
update kor_standard_poi_web set std_code = '001600040000', cate1 = '음식점', cate2 = '베이커리', cate3 = null where dp_code in ('111200');
update kor_standard_poi_web set std_code = '001600050000', cate1 = '음식점', cate2 = '패스트푸드', cate3 = null where dp_code in ('111000');
update kor_standard_poi_web set std_code = '001600060000', cate1 = '음식점', cate2 = '치킨', cate3 = null where dp_code in ('111400');
update kor_standard_poi_web
set
    std_code = '001600070000',
    cate1 = '음식점',
    cate2 = '피자',
    cate3 = null where dp_code in ('110800');
update kor_standard_poi_web
set
    std_code = '001600080000',
    cate1 = '음식점',
    cate2 = '아이스크림',
    cate3 = null
where dp_code in ('111300');


update kor_standard_poi_web
set
    std_code = '001700010000',
    cate1 = '교육',
    cate2 = '초중고',
    cate3 = null
where dp_code in ('050600', '050700', '050704', '050800', '050602', '050607', '051000');
update kor_standard_poi_web
set
    std_code = '001700020000',
    cate1 = '교육',
    cate2 = '대학교',
    cate3 = null
where dp_code in ('050100', '050102', '050103', '050106', '050200', '050203', '050300', '050301');
update kor_standard_poi_web
set
    std_code = '001700030000',
    cate1 = '교육',
    cate2 = '도서관',
    cate3 = null
where dp_code in ('051100', '051101', '051102', '051103', '051104');
update kor_standard_poi_web
set
    std_code = '001700040000',
    cate1 = '교육',
    cate2 = '유치원및어린이집',
    cate3 = null
where dp_code in ('050900');
update kor_standard_poi_web
set
    std_code = '001700050000',
    cate1 = '교육',
    cate2 = '학원',
    cate3 = null
where dp_code in ('051204', '051414', '051419');





update kor_standard_poi_web
set
    std_code = '001800010001',
    cate1 = '모빌리티',
    cate2 = '자동차',
    cate3 = '주차장'
where dp_code in ('151200','163022');
update kor_standard_poi_web
set
    std_code = '001800010002',
    cate1 = '모빌리티',
    cate2 = '자동차',
    cate3 = '주유소'
where dp_code in ('151300', '151301', '151303', '151304', '151305', '151307', '151308', '151309', '151311', '151312', '151313', '151314', '151400', '151401', '151402', '151403', '151404', '151405', '151406');
update kor_standard_poi_web
set
    std_code = '001800010003',
    cate1 = '모빌리티',
    cate2 = '자동차',
    cate3 = '전기차충전소'
where dp_code in ('151600');
update kor_standard_poi_web
set
    std_code = '001800010004',
    cate1 = '모빌리티',
    cate2 = '자동차',
    cate3 = '세차' where dp_code in ('151100');
update kor_standard_poi_web
set
    std_code = '001800010005',
    cate1 = '모빌리티',
    cate2 = '자동차',
    cate3 = '렌터카' where dp_code in ('151000');
update kor_standard_poi_web
set
    std_code = '001800010006',
    cate1 = '모빌리티',
    cate2 = '자동차',
    cate3 = '정비센터' where dp_code in ('150101');
update kor_standard_poi_web
set
    std_code = '001800020000',
    cate1 = '모빌리티',
    cate2 = '자전거',
    cate3 = '자전거보관소' where dp_code in ('132906');
update kor_standard_poi_web
set
    std_code = '001800030000',
    cate1 = '모빌리티',
    cate2 = '철도',
    cate3 = '일반' where dp_code in ('160302','160303');
update kor_standard_poi_web
set
    std_code = '001800030001',
    cate1 = '모빌리티',
    cate2 = '철도',
    cate3 = '공사중' where dp_code in ('160425');
update kor_standard_poi_web
set
    std_code = '001800040000',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울1' where dp_code in ('160401');
update kor_standard_poi_web
set
    std_code = '001800040001',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울2' where dp_code in ('160404');
update kor_standard_poi_web
set
    std_code = '001800040002',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울3' where dp_code in ('160405');
update kor_standard_poi_web
set
    std_code = '001800040003',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울4' where dp_code in ('160406');
update kor_standard_poi_web
set
    std_code = '001800040004',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울5' where dp_code in ('160407');
update kor_standard_poi_web
set
    std_code = '001800040005',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울6' where dp_code in ('160408');
update kor_standard_poi_web
set
    std_code = '001800040006',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울7' where dp_code in ('160409');
update kor_standard_poi_web
set
    std_code = '001800040007',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울8' where dp_code in ('160410');
update kor_standard_poi_web
set
    std_code = '001800040008',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서울9' where dp_code in ('160412');
update kor_standard_poi_web
set
    std_code = '001800040009',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '수인분당' where dp_code in ('160446');
update kor_standard_poi_web
set
    std_code = '001800040010',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '신분당' where dp_code in ('160433');
update kor_standard_poi_web
set
    std_code = '001800040011',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '경강' where dp_code in ('160441');
update kor_standard_poi_web
set
    std_code = '001800040012',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '공항' where dp_code in ('160303');
update kor_standard_poi_web
set
    std_code = '001800040013',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '자기부상' where dp_code in ('160440');
update kor_standard_poi_web
set
    std_code = '001800040014',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '인천1' where dp_code in ('160418');
update kor_standard_poi_web
set
    std_code = '001800040015',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '인천2' where dp_code in ('160419');
update kor_standard_poi_web
set
    std_code = '001800040016',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '의정부' where dp_code in ('160436');
update kor_standard_poi_web
set
    std_code = '001800040017',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '우이신설' where dp_code in ('160443');
update kor_standard_poi_web
set
    std_code = '001800040018',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '에버라인' where dp_code in ('160437');
update kor_standard_poi_web
set
    std_code = '001800040019',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '경의중앙' where dp_code in ('160438');
update kor_standard_poi_web
set
    std_code = '001800040020',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '경춘' where dp_code in ('160430');
update kor_standard_poi_web
set
    std_code = '001800040021',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '서해' where dp_code in ('160444');
update kor_standard_poi_web
set
    std_code = '001800040022',
    cate1 = '모빌리티',
    cate2 = '수도권철도',
    cate3 = '김포골드' where dp_code in ('160445');
update kor_standard_poi_web
set
    std_code = '001800050000',
    cate1 = '모빌리티',
    cate2 = '부산철도',
    cate3 = '부산1' where dp_code in ('160413');
update kor_standard_poi_web
set
    std_code = '001800050001',
    cate1 = '모빌리티',
    cate2 = '부산철도',
    cate3 = '부산2' where dp_code in ('160414');
update kor_standard_poi_web
set
    std_code = '001800050002',
    cate1 = '모빌리티',
    cate2 = '부산철도',
    cate3 = '부산3' where dp_code in ('160415');
update kor_standard_poi_web
set
    std_code = '001800050003',
    cate1 = '모빌리티',
    cate2 = '부산철도',
    cate3 = '부산4' where dp_code in ('160431');
update kor_standard_poi_web
set
    std_code = '001800050004',
    cate1 = '모빌리티',
    cate2 = '부산철도',
    cate3 = '부산김해' where dp_code in ('160432');
update kor_standard_poi_web
set
    std_code = '001800050005',
    cate1 = '모빌리티',
    cate2 = '부산철도',
    cate3 = '동해' where dp_code in ('160442');
update kor_standard_poi_web
set
    std_code = '001800060000',
    cate1 = '모빌리티',
    cate2 = '대구철도',
    cate3 = '대구1' where dp_code in ('160416');
update kor_standard_poi_web
set
    std_code = '001800060001',
    cate1 = '모빌리티',
    cate2 = '대구철도',
    cate3 = '대구2' where dp_code in ('160417');
update kor_standard_poi_web
set
    std_code = '001800060002',
    cate1 = '모빌리티',
    cate2 = '대구철도',
    cate3 = '대구3' where dp_code in ('160439');
update kor_standard_poi_web
set
    std_code = '001800070000',
    cate1 = '모빌리티',
    cate2 = '광주철도',
    cate3 = '광주1' where dp_code in ('160420');
update kor_standard_poi_web
set
    std_code = '001800080000',
    cate1 = '모빌리티',
    cate2 = '대전철도',
    cate3 = '대전1' where dp_code in ('160421');
update kor_standard_poi_web
set
    std_code = '001800090000',
    cate1 = '모빌리티',
    cate2 = '고속철도',
    cate3 = 'KTX' where dp_code in ('160301');
update kor_standard_poi_web
set
    std_code = '001800090001',
    cate1 = '모빌리티',
    cate2 = '고속철도',
    cate3 = 'SRT' where dp_code in ('160311');
update kor_standard_poi_web
set
    std_code = '001800100000',
    cate1 = '모빌리티',
    cate2 = '철도출구번호',
    cate3 = '1자릿수' where dp_code in ('160601', '160602','160603','160604','160605','160606','160607','160608','160609','160610','160611','160612','160613','160614','160615','160616','160617','160618','160619','160620','160621','160622','160623');
update kor_standard_poi_web
set
    std_code = '001800100001',
    cate1 = '모빌리티',
    cate2 = '철도출구번호',
    cate3 = '3자릿수' where dp_code in ('160624','160626','160627','160628','160629','160630','160631','160632','160633','160634','160635','160637');
update kor_standard_poi_web
set
    std_code = '001800110000',
    cate1 = '모빌리티',
    cate2 = '공항',
    cate3 = '일반' where dp_code in ('160101','160103');
update kor_standard_poi_web
set
    std_code = '001800110001',
    cate1 = '모빌리티',
    cate2 = '공항',
    cate3 = '1출국장' where dp_code in ('163023');
update kor_standard_poi_web
set
    std_code = '001800110002',
    cate1 = '모빌리티',
    cate2 = '공항',
    cate3 = '2출국장' where dp_code in ('163024');
update kor_standard_poi_web
set
    std_code = '001800110003',
    cate1 = '모빌리티',
    cate2 = '공항',
    cate3 = '4출국장' where dp_code in ('163025');
update kor_standard_poi_web
set
    std_code = '001800110004',
    cate1 = '모빌리티',
    cate2 = '공항',
    cate3 = '4출국장' where dp_code in ('163026');
update kor_standard_poi_web
set
    std_code = '001800110005',
    cate1 = '모빌리티',
    cate2 = '공항',
    cate3 = '5출국장' where dp_code in ('163027');
update kor_standard_poi_web
set
    std_code = '001800110006',
    cate1 = '모빌리티',
    cate2 = '공항',
    cate3 = '6출국장' where dp_code in ('163028');
update kor_standard_poi_web
set
    std_code = '001800120000',
    cate1 = '모빌리티',
    cate2 = '버스터미널',
    cate3 = '일반' where dp_code in ('160501','160502','160503');
update kor_standard_poi_web
set
    std_code = '001800130000',
    cate1 = '모빌리티',
    cate2 = '페리/해운',
    cate3 = '일반' where dp_code in ('160200','160202','160203','160204','160205','160211','160212','160213','160215','160216');
update kor_standard_poi_web
set
    std_code = '001800140000',
    cate1 = '모빌리티',
    cate2 = '선착장',
    cate3 = '일반' where dp_code in ('160201');
update kor_standard_poi_web
set
    std_code = '001800150000',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = '휴게소' where dp_code in ('170306','170307');
update kor_standard_poi_web
set
    std_code = '001800150001',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = '졸음쉼터' where dp_code in ('170308','170309');
update kor_standard_poi_web
set
    std_code = '001800150002',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = 'jc' where dp_code in ('170301');
update kor_standard_poi_web
set
    std_code = '001800150003',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = 'ic' where dp_code in ('170303','170304');
update kor_standard_poi_web
set
    std_code = '001800150004',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = 'tg' where dp_code in ('170305');
update kor_standard_poi_web
set
    std_code = '001800150005',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = '고속도로1' where dp_code in ('170201');
update kor_standard_poi_web
set
    std_code = '001800150006',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = '고속도로2' where dp_code in ('170202');
update kor_standard_poi_web
set
    std_code = '001800150007',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = '국도' where dp_code in ('170203');
update kor_standard_poi_web
set
    std_code = '001800150008',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = '일반도로1' where dp_code in ('170204');
update kor_standard_poi_web
set
    std_code = '001800150009',
    cate1 = '모빌리티',
    cate2 = '도로시설',
    cate3 = '일반도로2' where dp_code in ('170205');
update kor_standard_poi_web
set
    std_code = '001800160000',
    cate1 = '모빌리티',
    cate2 = '철도시설',
    cate3 = '휠체어리프트' where dp_code in ('133102');
update kor_standard_poi_web
set
    std_code = '001800160001',
    cate1 = '모빌리티',
    cate2 = '철도시설',
    cate3 = '에스컬레이터' where dp_code in ('133103');
update kor_standard_poi_web
set
    std_code = '001800170000',
    cate1 = '모빌리티',
    cate2 = '일반시설',
    cate3 = '엘레베이터' where dp_code in ('133101');
update kor_standard_poi_web
set
    std_code = '001800170001',
    cate1 = '모빌리티',
    cate2 = '일반시설',
    cate3 = '개방화장실' where dp_code in ('133000','133003','133004','133005');



update kor_standard_poi_web
set
    std_code = '001900000000',
    cate1 = '금융',
    cate2 = 'ATM',
    cate3 = '일반' where dp_code in ('070700');
update kor_standard_poi_web
set
    std_code = '001900010000',
    cate1 = '금융',
    cate2 = '은행',
    cate3 = '일반' where dp_code in ('070100');


update kor_standard_poi_web
set
    std_code = '002000000000',
    cate1 = '의료/건강',
    cate2 = '병원',
    cate3 = '일반' where dp_code in ('140100', '140101', '140102', '140103', '140105', '140106', '140107', '140108', '140111', '140114', '140115', '140116', '140200', '140300', '140401', '140500');
update kor_standard_poi_web
set
    std_code = '002000010000',
    cate1 = '의료/건강',
    cate2 = '한의원',
    cate3 = '일반' where dp_code in ('140600');
update kor_standard_poi_web
set
    std_code = '002000020000',
    cate1 = '의료/건강',
    cate2 = '약국',
    cate3 = '일반' where dp_code in ('140700');
update kor_standard_poi_web
set
    std_code = '002000030000',
    cate1 = '의료/건강',
    cate2 = '동물병원',
    cate3 = '일반' where dp_code in ('140802');



update kor_standard_poi_web
set
    std_code = '002100000000',
    cate1 = '유흥및문화예술',
    cate2 = '영화관',
    cate3 = '일반' where dp_code in ('080400','080403');
update kor_standard_poi_web
set
    std_code = '002100010000',
    cate1 = '유흥및문화예술',
    cate2 = '공연/연극',
    cate3 = '일반' where dp_code in ('080500','080501','080503','080500');
update kor_standard_poi_web
set
    std_code = '002100020000',
    cate1 = '유흥및문화예술',
    cate2 = '노래방',
    cate3 = '일반' where dp_code in ('120400');
update kor_standard_poi_web
set
    std_code = '002100030000',
    cate1 = '유흥및문화예술',
    cate2 = 'PC방',
    cate3 = '일반' where dp_code in ('132205');
update kor_standard_poi_web
set
    std_code = '002100040000',
    cate1 = '유흥및문화예술',
    cate2 = '사진관',
    cate3 = '일반' where dp_code in ('132300');


update kor_standard_poi_web
set
    std_code = '002200000000',
    cate1 = '공공건물',
    cate2 = '관공서',
    cate3 = '일반' where dp_code in ('021000','021001','021100','021300','020100','020300','020400','020700','020900','021400');
update kor_standard_poi_web
set
    std_code = '002200010000',
    cate1 = '공공건물',
    cate2 = '법원',
    cate3 = '일반' where dp_code in ('030100','030101','030102','030103','030104');
update kor_standard_poi_web
set
    std_code = '002200020000',
    cate1 = '공공건물',
    cate2 = '검찰청',
    cate3 = '일반' where dp_code in ('030200','030201','030202','030203');
update kor_standard_poi_web
set
    std_code = '002200030000',
    cate1 = '공공건물',
    cate2 = '경찰서',
    cate3 = '일반' where dp_code in ('030300','030301','030302');
update kor_standard_poi_web
set
    std_code = '002200040000',
    cate1 = '공공건물',
    cate2 = '우체국',
    cate3 = '일반' where dp_code in ('021500','021502','021503');
update kor_standard_poi_web
set
    std_code = '002200050000',
    cate1 = '공공건물',
    cate2 = '소방서',
    cate3 = '일반' where dp_code in ('030600','030602','030603','030607');



update kor_standard_poi_web
set
    std_code = '002300000000',
    cate1 = '종교',
    cate2 = '기독교',
    cate3 = '교회,성당' where dp_code in ('100100','100200');
update kor_standard_poi_web
set
    std_code = '002300010000',
    cate1 = '종교',
    cate2 = '불교',
    cate3 = '일반' where dp_code in ('100300','100301');
update kor_standard_poi_web
set
    std_code = '002300010001',
    cate1 = '종교',
    cate2 = '불교',
    cate3 = '원불교' where dp_code in ('100400');
update kor_standard_poi_web
set
    std_code = '002300020000',
    cate1 = '종교',
    cate2 = '천도교',
    cate3 = '일반' where dp_code in ('100500');



update kor_standard_poi_web
set
    std_code = '002400000000',
    cate1 = '건물',
    cate2 = '아파트',
    cate3 = '일반' where dp_code in ('200100');
update kor_standard_poi_web
set
    std_code = '002400010000',
    cate1 = '건물',
    cate2 = '주택',
    cate3 = '일반' where dp_code in ('200200','200206');
update kor_standard_poi_web
set
    std_code = '002400020000',
    cate1 = '건물',
    cate2 = '천문대',
    cate3 = '일반' where dp_code in ('082500');
update kor_standard_poi_web
set
    std_code = '002400030000',
    cate1 = '건물',
    cate2 = '방송국',
    cate3 = '일반' where dp_code in ('060100');
update kor_standard_poi_web
set
    std_code = '002400040001',
    cate1 = '건물',
    cate2 = '회사',
    cate3 = '신문사' where dp_code in ('060300');
update kor_standard_poi_web
set
    std_code = '002400040002',
    cate1 = '건물',
    cate2 = '회사',
    cate3 = '기업' where dp_code in ('023000', '180101', '180100', '180103', '180104', '070300', '070400', '070500');
update kor_standard_poi_web
set
    std_code = '002400040003',
    cate1 = '건물',
    cate2 = '회사',
    cate3 = '이사업체' where dp_code in ('132700');
update kor_standard_poi_web
set
    std_code = '002400040004',
    cate1 = '건물',
    cate2 = '회사',
    cate3 = '통신기기' where dp_code in ('131000');
update kor_standard_poi_web
set
    std_code = '002400040004',
    cate1 = '건물',
    cate2 = '회사',
    cate3 = '자동차영업소' where dp_code in ('150900');
update kor_standard_poi_web
set
    std_code = '002400050000',
    cate1 = '건물',
    cate2 = '공장/제조업',
    cate3 = '일반' where dp_code in ('190100');
update kor_standard_poi_web
set
    std_code = '002400060000',
    cate1 = '건물',
    cate2 = '예식장',
    cate3 = '일반' where dp_code in ('131900');
update kor_standard_poi_web
set
    std_code = '002400070000',
    cate1 = '건물',
    cate2 = '장례식장',
    cate3 = '일반' where dp_code in ('132102');
update kor_standard_poi_web
set
    std_code = '002400080000',
    cate1 = '건물',
    cate2 = '오피스텔',
    cate3 = '일반' where dp_code in ('200300');




update kor_standard_poi_web
set
    std_code = '002500000000',
    cate1 = '관광',
    cate2 = '호텔',
    cate3 = '일반' where dp_code in ('090101','090100','090106','090107','090108','090109','090110');
update kor_standard_poi_web
set
    std_code = '002500010000',
    cate1 = '관광',
    cate2 = '일반숙박',
    cate3 = '일반' where dp_code in ('090200','090500','090501','090600');
update kor_standard_poi_web
set
    std_code = '002500020000',
    cate1 = '관광',
    cate2 = '리조트',
    cate3 = '일반' where dp_code in ('042400');
update kor_standard_poi_web
set
    std_code = '002500030000',
    cate1 = '관광',
    cate2 = '박물관',
    cate3 = '일반' where dp_code in ('080100','080101','080300','080302');
update kor_standard_poi_web
set
    std_code = '002500040000',
    cate1 = '관광',
    cate2 = '미술관',
    cate3 = '일반' where dp_code in ('080200','080201','080202');
update kor_standard_poi_web
set
    std_code = '002500050000',
    cate1 = '관광',
    cate2 = '놀이동산',
    cate3 = '일반' where dp_code in ('081400','081401','270905','270906','270907','270908','270909');
update kor_standard_poi_web
set
    std_code = '002500060000',
    cate1 = '관광',
    cate2 = '동물원',
    cate3 = '일반' where dp_code in ('081901');
update kor_standard_poi_web
set
    std_code = '002500070000',
    cate1 = '관광',
    cate2 = '아쿠아리움',
    cate3 = '일반' where dp_code in ('082001');
update kor_standard_poi_web
set
    std_code = '002500080000',
    cate1 = '관광',
    cate2 = '유명관광지',
    cate3 = '일반' where dp_code in ('081600','080700','080701','080703');
update kor_standard_poi_web
set
    std_code = '002500090000',
    cate1 = '관광',
    cate2 = '유적지',
    cate3 = '일반' where dp_code in ('080600','080601','080602','080603','080604');
update kor_standard_poi_web
set
    std_code = '002500100000',
    cate1 = '관광',
    cate2 = '능/묘',
    cate3 = '일반' where dp_code in ('082300','082301');
update kor_standard_poi_web
set
    std_code = '002500110000',
    cate1 = '관광',
    cate2 = '식물원',
    cate3 = '일반' where dp_code in ('081000');
update kor_standard_poi_web
set
    std_code = '002500120000',
    cate1 = '관광',
    cate2 = '캠프장',
    cate3 = '일반' where dp_code in ('040901');
update kor_standard_poi_web
set
    std_code = '002600000000',
    cate1 = '레져/스포츠',
    cate2 = '낚시터',
    cate3 = '일반' where dp_code in ('042100');
update kor_standard_poi_web
set
    std_code = '002600010000',
    cate1 = '레져/스포츠',
    cate2 = '운동장,경기장',
    cate3 = '일반' where dp_code in ('040200','040201','040202','040300','040301','040302','040303','040304','040400','040401','040402','040403');
update kor_standard_poi_web
set
    std_code = '002600020000',
    cate1 = '레져/스포츠',
    cate2 = '스포츠센터',
    cate3 = '일반' where dp_code in ('040700', '040701', '040702', '040703', '040704', '040707', '040708');
update kor_standard_poi_web
set
    std_code = '002600030000',
    cate1 = '레져/스포츠',
    cate2 = '수영장',
    cate3 = '일반' where dp_code in ('041700');
update kor_standard_poi_web
set
    std_code = '002600040000',
    cate1 = '레져/스포츠',
    cate2 = '워터파크',
    cate3 = '일반' where dp_code in ('041701');
update kor_standard_poi_web
set
    std_code = '002600050000',
    cate1 = '레져/스포츠',
    cate2 = '수상스포츠',
    cate3 = '일반' where dp_code in ('041400');
update kor_standard_poi_web
set
    std_code = '002600060000',
    cate1 = '레져/스포츠',
    cate2 = '스키장',
    cate3 = '일반' where dp_code in ('041800');
update kor_standard_poi_web
set
    std_code = '002600060001',
    cate1 = '레져/스포츠',
    cate2 = '스키장',
    cate3 = '스키리프트' where dp_code in ('041803');
update kor_standard_poi_web
set
    std_code = '002600060002',
    cate1 = '레져/스포츠',
    cate2 = '스키장',
    cate3 = '스키곤돌라' where dp_code in ('041804');
update kor_standard_poi_web
set
    std_code = '002600070000',
    cate1 = '레져/스포츠',
    cate2 = '썰매장',
    cate3 = '일반' where dp_code in ('041801');
update kor_standard_poi_web
set
    std_code = '002600080000',
    cate1 = '레져/스포츠',
    cate2 = '볼링장',
    cate3 = '일반' where dp_code in ('042301');
update kor_standard_poi_web
set
    std_code = '002600090000',
    cate1 = '레져/스포츠',
    cate2 = '당구장',
    cate3 = '일반' where dp_code in ('042304');
update kor_standard_poi_web
set
    std_code = '002600100000',
    cate1 = '레져/스포츠',
    cate2 = '골프장',
    cate3 = '일반' where dp_code in ('041900', '041901', '041902', '041904', '041908');
update kor_standard_poi_web
set
    std_code = '002600110000',
    cate1 = '레져/스포츠',
    cate2 = '아이스링크',
    cate3 = '일반' where dp_code in ('042200','042201');
update kor_standard_poi_web
set
    std_code = '002600120000',
    cate1 = '레져/스포츠',
    cate2 = '공원',
    cate3 = '일반' where dp_code in ('040100', '040101', '040103', '040104', '040106', '040108', '040117');
update kor_standard_poi_web
set
    std_code = '002600130000',
    cate1 = '레져/스포츠',
    cate2 = '온천/목욕탕',
    cate3 = '일반' where dp_code in ('081500','132002','132003');



update kor_standard_poi_web
set
    std_code = '002700000000',
    cate1 = '자연',
    cate2 = '호수/저수지',
    cate3 = '일반' where dp_code in ('010300','010400');
update kor_standard_poi_web
set
    std_code = '002700010000',
    cate1 = '자연',
    cate2 = '계곡/폭포',
    cate3 = '일반' where dp_code in ('010500','010600');
update kor_standard_poi_web
set
    std_code = '002700020000',
    cate1 = '자연',
    cate2 = '해수욕장',
    cate3 = '일반' where dp_code in ('082400');
update kor_standard_poi_web
set
    std_code = '002700030000',
    cate1 = '자연',
    cate2 = '동굴',
    cate3 = '일반' where dp_code in ('010800');
update kor_standard_poi_web
set
    std_code = '002700040000',
    cate1 = '자연',
    cate2 = '산/숲',
    cate3 = '일반' where dp_code in ('010100', '010101', '010103', '010104','081902');



update kor_standard_poi_web
set
    std_code = '002800000000',
    cate1 = '상점',
    cate2 = '잡화',
    cate3 = '백화점' where dp_code in ('130100', '130101', '130300', '130301', '130302','130303');
update kor_standard_poi_web
set
    std_code = '002800000001',
    cate1 = '상점',
    cate2 = '잡화',
    cate3 = '편의점' where dp_code in ('130500');
update kor_standard_poi_web
set
    std_code = '002800000002',
    cate1 = '상점',
    cate2 = '잡화',
    cate3 = '대형마트' where dp_code in ('130200');
update kor_standard_poi_web
set
    std_code = '002800000003',
    cate1 = '상점',
    cate2 = '잡화',
    cate3 = '쇼핑마트및시장' where dp_code in ('130201', '130224', '130304', '130305', '130306', '130213', '130800', '130801', '130802', '130803', '130804');
update kor_standard_poi_web
set
    std_code = '002800000004',
    cate1 = '상점',
    cate2 = '잡화',
    cate3 = '슈퍼마켓' where dp_code in ('130600','130400','130403');
update kor_standard_poi_web
set
    std_code = '002800010000',
    cate1 = '상점',
    cate2 = '건강/미용',
    cate3 = '헤어' where dp_code in ('131500');
update kor_standard_poi_web
set
    std_code = '002800010001',
    cate1 = '상점',
    cate2 = '건강/미용',
    cate3 = '네일' where dp_code in ('132816');
update kor_standard_poi_web
set
    std_code = '002800010002',
    cate1 = '상점',
    cate2 = '건강/미용',
    cate3 = '미용및피부미용' where dp_code in ('132817');
update kor_standard_poi_web
set
    std_code = '002800020000',
    cate1 = '상점',
    cate2 = '의류신발악세사리',
    cate3 = '패션잡화' where dp_code in ('131400');
update kor_standard_poi_web
set
    std_code = '002800030000',
    cate1 = '상점',
    cate2 = '기타',
    cate3 = '반려용품' where dp_code in ('132820');
update kor_standard_poi_web
set
    std_code = '002800030001',
    cate1 = '상점',
    cate2 = '기타',
    cate3 = '세탁및수선' where dp_code in ('132800');
update kor_standard_poi_web
set
    std_code = '002800030002',
    cate1 = '상점',
    cate2 = '기타',
    cate3 = '매표소' where dp_code in ('082200');



update kor_standard_poi_web
set
    std_code = '002900000000',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '기업' where dp_code in ('070109');
update kor_standard_poi_web
set
    std_code = '002900000001',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '국민' where dp_code in ('070102');
update kor_standard_poi_web
set
    std_code = '002900000002',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '신한' where dp_code in ('070105');
update kor_standard_poi_web
set
    std_code = '002900000003',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '우리' where dp_code in ('070103');
update kor_standard_poi_web
set
    std_code = '002900000004',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '하나' where dp_code in ('070121');
update kor_standard_poi_web
set
    std_code = '002900000005',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '농협' where dp_code in ('070201');
update kor_standard_poi_web
set
    std_code = '002900000006',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '전북' where dp_code in ('070112');
update kor_standard_poi_web
set
    std_code = '002900000007',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '대구' where dp_code in ('070113');
update kor_standard_poi_web
set
    std_code = '002900000008',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '부산' where dp_code in ('070114');
update kor_standard_poi_web
set
    std_code = '002900000009',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '제주' where dp_code in ('070115');
update kor_standard_poi_web
set
    std_code = '002900000010',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '경남' where dp_code in ('070116');
update kor_standard_poi_web
set
    std_code = '002900000011',
    cate1 = 'CI',
    cate2 = '금융',
    cate3 = '전북' where dp_code in ('070117');
update kor_standard_poi_web
set
    std_code = '002900010000',
    cate1 = 'CI',
    cate2 = '편의점',
    cate3 = '711' where dp_code in ('130501');
update kor_standard_poi_web
set
    std_code = '002900010001',
    cate1 = 'CI',
    cate2 = '편의점',
    cate3 = 'gs25' where dp_code in ('130502');
update kor_standard_poi_web
set
    std_code = '002900010002',
    cate1 = 'CI',
    cate2 = '편의점',
    cate3 = 'cu' where dp_code in ('130503');
update kor_standard_poi_web
set
    std_code = '002900010003',
    cate1 = 'CI',
    cate2 = '편의점',
    cate3 = 'ministop' where dp_code in ('130505');
update kor_standard_poi_web
set
    std_code = '002900010004',
    cate1 = 'CI',
    cate2 = '편의점',
    cate3 = 'emart24' where dp_code in ('130515');



update kor_standard_poi_web
set
    std_code = '003000000000',
    cate1 = '기타',
    cate2 = '기타',
    cate3 = '기타' where dp_code in ('020200','020401','021600','021601','021700','021701','021702','021800','021801','021802','021803','021804','021805','021806','022000','022100','022200','022700','022800','022802','022803','022900','022901','023100','023200','023212','023300','023400','023500','030105','040500','040600','022500','160306','162500','100603','081800','081803','081300','130700','131301','131600','132200','132915','151224','140801','151501','151503','151505','151506','040800','041000','041001','041100','041200','041201','041300','042000','042101','042001','042002','042003','042300','011500','011200','011210','171101','132105','132106','133104','133108','133109','133110','133111','133112','133113','133116','133117','133118','133119','133120','190200','190601','191000','210102','210202','210301','210602','231800');
update kor_standard_poi_web
set
    std_code = '003000010000',
    cate1 = '등산로',
    cate2 = '일반',
    cate3 = '출발점' where dp_code in ('240201','240202','240204','240211','240212','240214','240221','240222','240224');
update kor_standard_poi_web
set
    std_code = '003000010001',
    cate1 = '등산로',
    cate2 = '일반',
    cate3 = '기점' where dp_code in ('240205','240206','240208','240215','240216','240218','240225','240226','240228');
update kor_standard_poi_web
set
    std_code = '003000010002',
    cate1 = '등산로',
    cate2 = '일반',
    cate3 = '해발고도' where dp_code in ('240301');
update kor_standard_poi_web
set
    std_code = '003000020000',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '약수터/샘터' where dp_code in ('240502');
update kor_standard_poi_web
set
    std_code = '003000020001',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '안내소' where dp_code in ('240601');
update kor_standard_poi_web
set
    std_code = '003000020002',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '대피소' where dp_code in ('240602');
update kor_standard_poi_web
set
    std_code = '003000020003',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '휴게소' where dp_code in ('240603');
update kor_standard_poi_web
set
    std_code = '003000020004',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '감시초소' where dp_code in ('240604');
update kor_standard_poi_web
set
    std_code = '003000020005',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '화장실' where dp_code in ('240605');
update kor_standard_poi_web
set
    std_code = '003000020006',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '계단' where dp_code in ('240606');
update kor_standard_poi_web
set
    std_code = '003000020007',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '쉼터/벤치' where dp_code in ('240607');
update kor_standard_poi_web
set
    std_code = '003000020008',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '체육시설' where dp_code in ('240608');
update kor_standard_poi_web
set
    std_code = '003000020009',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '철탑/송전탑' where dp_code in ('240609');
update kor_standard_poi_web
set
    std_code = '003000020010',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '이정표' where dp_code in ('240610');
update kor_standard_poi_web
set
    std_code = '003000020011',
    cate1 = '등산로',
    cate2 = '시설',
    cate3 = '기타' where dp_code in ('240600');



update kor_standard_poi_web
set
    std_code = '003100000000',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '오이도' where mid in ('4153113');
update kor_standard_poi_web
set
    std_code = '003100000001',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '수원' where mid in ('4520096');
update kor_standard_poi_web
set
    std_code = '003100000002',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '검암' where mid in ('6057420');
update kor_standard_poi_web
set
    std_code = '003100000003',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '교대' where mid in ('2108346');
update kor_standard_poi_web
set
    std_code = '003100000004',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '모란' where mid in ('2107776');
update kor_standard_poi_web
set
    std_code = '003100000005',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '불광' where mid in ('2108070');
update kor_standard_poi_web
set
    std_code = '003100000006',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '태릉' where mid in ('2108066');
update kor_standard_poi_web
set
    std_code = '003100000007',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '약수' where mid in ('2108056');
update kor_standard_poi_web
set
    std_code = '003100000008',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '총신대입구' where mid in ('2108053');
update kor_standard_poi_web
set
    std_code = '003100000009',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '잠실' where mid in ('2107773');
update kor_standard_poi_web
set
    std_code = '003100000010',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '김포공항' where mid in ('2108344');
update kor_standard_poi_web
set
    std_code = '003100000011',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '양재' where mid in ('3729807');
update kor_standard_poi_web
set
    std_code = '003100000012',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '정자' where mid in ('3729806');
update kor_standard_poi_web
set
    std_code = '003100000013',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '인천국제공항' where mid in ('4955703');
update kor_standard_poi_web
set
    std_code = '003100000014',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '선정릉' where mid in ('4715503');
update kor_standard_poi_web
set
    std_code = '003100000015',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '중랑' where mid in ('6294538');
update kor_standard_poi_web
set
    std_code = '003100000016',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '도곡' where mid in ('2107787');
update kor_standard_poi_web
set
    std_code = '003100000017',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '영등포구청' where mid in ('2108064');
update kor_standard_poi_web
set
    std_code = '003100000018',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '을지로3가' where mid in ('2108063');
update kor_standard_poi_web
set
    std_code = '003100000019',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '망우' where mid in ('3424964');
update kor_standard_poi_web
set
    std_code = '003100000020',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '여의도' where mid in ('2107763');
update kor_standard_poi_web
set
    std_code = '003100000021',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '종합운동장' where mid in ('4715517');
update kor_standard_poi_web
set
    std_code = '003100000022',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '판교' where mid in ('6289998');
update kor_standard_poi_web
set
    std_code = '003100000023',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '창동' where mid in ('2108068');
update kor_standard_poi_web
set
    std_code = '003100000024',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '을지로4가' where mid in ('2107766');
update kor_standard_poi_web
set
    std_code = '003100000025',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '구로' where mid in ('2072410');
update kor_standard_poi_web
set
    std_code = '003100000026',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '사당' where mid in ('2108052');
update kor_standard_poi_web
set
    std_code = '003100000027',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '복정' where mid in ('2108051');
update kor_standard_poi_web
set
    std_code = '003100000028',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '석계' where mid in ('2108067');
update kor_standard_poi_web
set
    std_code = '003100000029',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '용산' where mid in ('2265430');
update kor_standard_poi_web
set
    std_code = '003100000030',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '신당' where mid in ('2107782');
update kor_standard_poi_web
set
    std_code = '003100000031',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '강남' where mid in ('3729809');
update kor_standard_poi_web
set
    std_code = '003100000032',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '부평구청' where mid in ('4248044');
update kor_standard_poi_web
set
    std_code = '003100000033',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '서울' where mid in ('2108073');
update kor_standard_poi_web
set
    std_code = '003100000034',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '금정' where mid in ('2108060');
update kor_standard_poi_web
set
    std_code = '003100000035',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '까치산' where mid in ('2107771');
update kor_standard_poi_web
set
    std_code = '003100000036',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '선릉' where mid in ('2107778');
update kor_standard_poi_web
set
    std_code = '003100000037',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '수서' where mid in ('2108061');
update kor_standard_poi_web
set
    std_code = '003100000038',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '오금' where mid in ('2310818');
update kor_standard_poi_web
set
    std_code = '003100000039',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '옥수' where mid in ('2107528');
update kor_standard_poi_web
set
    std_code = '003100000040',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '노량진' where mid in ('2108055');
update kor_standard_poi_web
set
    std_code = '003100000041',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '동대문역사문화공원' where mid in ('2107784');
update kor_standard_poi_web
set
    std_code = '003100000042',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '회룡' where mid in ('4154832');
update kor_standard_poi_web
set
    std_code = '003100000043',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '효창공원' where mid in ('5781292');
update kor_standard_poi_web
set
    std_code = '003100000044',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '금천구청' where mid in ('2308359');
update kor_standard_poi_web
set
    std_code = '003100000045',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '병점'
where mid in ('2310083');
update kor_standard_poi_web
set
    std_code = '003100000046',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '신도림' where mid in ('2107764');
update kor_standard_poi_web
set
    std_code = '003100000047',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '동작' where mid in ('2107765');
update kor_standard_poi_web
set
    std_code = '003100000048',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '공덕' where mid in ('2107769');
update kor_standard_poi_web
set
    std_code = '003100000049',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '당산' where mid in ('2107777');
update kor_standard_poi_web
set
    std_code = '003100000050',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '부평' where mid in ('2108059');
update kor_standard_poi_web
set
    std_code = '003100000051',
    cate1 = '환승역',
    cate2 = '수도권환승역',
    cate3 = '충정로' where mid in ('2108071');
update kor_standard_poi_web set std_code = '003100000052', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '충무로' where mid in ('2108072');
update kor_standard_poi_web set std_code = '003100000053', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '홍대입구' where mid in ('3425078');
update kor_standard_poi_web set std_code = '003100000054', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '인천시청' where mid in ('6058387');
update kor_standard_poi_web set std_code = '003100000055', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '회기' where mid in ('2107774');
update kor_standard_poi_web set std_code = '003100000056', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '동묘' where mid in ('2107783');
update kor_standard_poi_web set std_code = '003100000057', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '계양' where mid in ('2108351');
update kor_standard_poi_web set std_code = '003100000058', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '성수' where mid in ('2308358');
update kor_standard_poi_web set std_code = '003100000059', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '연신내' where mid in ('2107770');
update kor_standard_poi_web set std_code = '003100000060', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '이촌' where mid in ('2108075');
update kor_standard_poi_web set std_code = '003100000061', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '시청' where mid in ('2108348');
update kor_standard_poi_web set std_code = '003100000062', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '삼각지' where mid in ('2107768');
update kor_standard_poi_web set std_code = '003100000063', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '가산디지털단지' where mid in ('2108352');
update kor_standard_poi_web set std_code = '003100000064', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '원인재' where mid in ('4153114');
update kor_standard_poi_web set std_code = '003100000065', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '주안' where mid in ('6057419');
update kor_standard_poi_web set std_code = '003100000066', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '인천' where mid in ('4946312');
update kor_standard_poi_web set std_code = '003100000067', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '신설동' where mid in ('2107779');
update kor_standard_poi_web set std_code = '003100000068', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '노원' where mid in ('2108345');
update kor_standard_poi_web set std_code = '003100000069', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '종로3가' where mid in ('2107767');
update kor_standard_poi_web set std_code = '003100000070', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '상봉' where mid in ('2310393');
update kor_standard_poi_web set std_code = '003100000071', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '기흥' where mid in ('4350576');
update kor_standard_poi_web set std_code = '003100000072', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '고속버스터미널' where mid in ('2108350');
update kor_standard_poi_web set std_code = '003100000073', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '도봉산' where mid in ('2108054');
update kor_standard_poi_web set std_code = '003100000074', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '합정' where mid in ('2108058');
update kor_standard_poi_web set std_code = '003100000075', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '동대문' where mid in ('2107785');
update kor_standard_poi_web set std_code = '003100000076', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '천호' where mid in ('2107786');
update kor_standard_poi_web set std_code = '003100000077', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '대곡' where mid in ('2265762');
update kor_standard_poi_web set std_code = '003100000078', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '신길' where mid in ('2108057');
update kor_standard_poi_web set std_code = '003100000079', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '청량리' where mid in ('3293076');
update kor_standard_poi_web set std_code = '003100000080', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '강남구청' where mid in ('4245084');
update kor_standard_poi_web set std_code = '003100000081', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '이매' where mid in ('6289999');
update kor_standard_poi_web set std_code = '003100000082', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '청구' where mid in ('2108069');
update kor_standard_poi_web set std_code = '003100000083', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '건대입구' where mid in ('2108077');
update kor_standard_poi_web set std_code = '003100000084', cate1 = '환승역', cate2 = '수도권환승역', cate3 = 'DMC' where mid in ('2265764');
update kor_standard_poi_web set std_code = '003100000085', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '온수' where mid in ('2108065');
update kor_standard_poi_web set std_code = '003100000086', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '군자' where mid in ('2107780');
update kor_standard_poi_web set std_code = '003100000087', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '가락시장' where mid in ('2310667');
update kor_standard_poi_web set std_code = '003100000088', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '왕십리' where mid in ('2107781');
update kor_standard_poi_web set std_code = '003100000089', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '대림' where mid in ('2108078');
update kor_standard_poi_web set std_code = '003100000090', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '성신여대입구' where mid in ('6894316');
update kor_standard_poi_web set std_code = '003100000091', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '마곡나루' where mid in ('7722052');
update kor_standard_poi_web set std_code = '003100000092', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '미금' where mid in ('7340815');
update kor_standard_poi_web set std_code = '003100000093', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '소사' where mid in ('7476209');
update kor_standard_poi_web set std_code = '003100000094', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '초지' where mid in ('7476235');
update kor_standard_poi_web set std_code = '003100000095', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '석촌' where mid in ('9529380');
update kor_standard_poi_web set std_code = '003100000096', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '올림픽공원' where mid in ('9529407');
update kor_standard_poi_web set std_code = '003100000097', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '보문' where mid in ('6894317');
update kor_standard_poi_web set std_code = '003100000098', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '신내' where mid in ('12621831');
update kor_standard_poi_web set std_code = '003100000099', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '문산' where mid in ('13133265');
update kor_standard_poi_web set std_code = '003100000100', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '강동' where mid in ('10211348');
update kor_standard_poi_web set std_code = '003100000101', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '광운대' where mid in ('4518168');
update kor_standard_poi_web set std_code = '003100000102', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '정왕' where mid in ('14307414');
update kor_standard_poi_web set std_code = '003100000103', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '신길온천' where mid in ('14307420');
update kor_standard_poi_web set std_code = '003100000104', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '안산' where mid in ('14307424');
update kor_standard_poi_web set std_code = '003100000105', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '고잔' where mid in ('14307435');
update kor_standard_poi_web set std_code = '003100000106', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '중앙' where mid in ('14307442');
update kor_standard_poi_web set std_code = '003100000107', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '한양대' where mid in ('14307445');
update kor_standard_poi_web set std_code = '003100000108', cate1 = '환승역', cate2 = '수도권환승역', cate3 = '성남' where mid in ('15259165');
update kor_standard_poi_web set std_code = '003100010000', cate1 = '환승역', cate2 = '대구환승역', cate3 = '반월당' where mid in ('2108076');
update kor_standard_poi_web set std_code = '003100010001', cate1 = '환승역', cate2 = '대구환승역', cate3 = '신남' where mid in ('4747094');
update kor_standard_poi_web set std_code = '003100010002', cate1 = '환승역', cate2 = '대구환승역', cate3 = '명덕' where mid in ('4726838');
update kor_standard_poi_web set std_code = '003100020000', cate1 = '환승역', cate2 = '부산환승역', cate3 = '동래' where mid in ('3589942');
update kor_standard_poi_web set std_code = '003100020001', cate1 = '환승역', cate2 = '부산환승역', cate3 = '서면' where mid in ('2108347');
update kor_standard_poi_web set std_code = '003100020002', cate1 = '환승역', cate2 = '부산환승역', cate3 = '사상' where mid in ('3691681');
update kor_standard_poi_web set std_code = '003100020003', cate1 = '환승역', cate2 = '부산환승역', cate3 = '교대(부산)' where mid in ('6397085');
update kor_standard_poi_web set std_code = '003100020004', cate1 = '환승역', cate2 = '부산환승역', cate3 = '거제' where mid in ('6397084');
update kor_standard_poi_web set std_code = '003100020005', cate1 = '환승역', cate2 = '부산환승역', cate3 = '벡스코' where mid in ('6397086');
update kor_standard_poi_web set std_code = '003100020006', cate1 = '환승역', cate2 = '부산환승역', cate3 = '연산' where mid in ('2107772');
update kor_standard_poi_web set std_code = '003100020007', cate1 = '환승역', cate2 = '부산환승역', cate3 = '대저' where mid in ('3691680');
update kor_standard_poi_web set std_code = '003100020008', cate1 = '환승역', cate2 = '부산환승역', cate3 = '수영' where mid in ('2108349');
update kor_standard_poi_web set std_code = '003100020009', cate1 = '환승역', cate2 = '부산환승역', cate3 = '덕천' where mid in ('2108062');
update kor_standard_poi_web set std_code = '003100020010', cate1 = '환승역', cate2 = '부산환승역', cate3 = '미남' where mid in ('3592297');




update kor_standard_poi_web set std_code = '003200000013', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '어트랙션' where dp_code in ('272101') and mid not in ('827554','1327489','2118196','12417087','4794252','12417155','4794237','12417232','4407757','4794235','3891860','1549466','2118164','51987','2118228','4794206');
update kor_standard_poi_web set std_code = '003200000014', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '레스토랑' where dp_code in ('272102');
update kor_standard_poi_web set std_code = '003200000015', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '쇼핑' where dp_code in ('272103');
update kor_standard_poi_web set std_code = '003200000016', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '인포데스크' where dp_code in ('272106');
update kor_standard_poi_web set std_code = '003200000017', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '티켓박스' where dp_code in ('272107');
update kor_standard_poi_web set std_code = '003200000018', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '화장실' where dp_code in ('272108');
update kor_standard_poi_web set std_code = '003200000019', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '흡연구역' where dp_code in ('272109');
update kor_standard_poi_web set std_code = '003200000020', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '유모차대여소' where dp_code in ('272110');
update kor_standard_poi_web set std_code = '003200000021', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '의료시설' where dp_code in ('272111');
update kor_standard_poi_web set std_code = '003200000022', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = 'AED' where dp_code in ('272112');
update kor_standard_poi_web set std_code = '003200000023', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '락커' where dp_code in ('272113');
update kor_standard_poi_web set std_code = '003200000024', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '분실물보관소' where dp_code in ('272114');
update kor_standard_poi_web set std_code = '003200000025', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '공연장' where dp_code in ('272116');
update kor_standard_poi_web set std_code = '003200000000', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '에버랜드' where mid in ('1010205');
update kor_standard_poi_web set std_code = '003200000001', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '아마존익스프레스' where mid in ('827554');
update kor_standard_poi_web set std_code = '003200000002', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '포시즌스가든' where mid in ('1327489');
update kor_standard_poi_web set std_code = '003200000003', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '곤돌라' where mid in ('2118196','12417087');
update kor_standard_poi_web set std_code = '003200000004', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '리프트' where mid in ('4794252','12417155','4794237','12417232');
update kor_standard_poi_web set std_code = '003200000005', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '로스트벨리' where mid in ('4407757');
update kor_standard_poi_web set std_code = '003200000006', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '매직트리' where mid in ('4794235');
update kor_standard_poi_web set std_code = '003200000007', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '판다월드' where mid in ('3891860');
update kor_standard_poi_web set std_code = '003200000008', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '롤링x트레인' where mid in ('1549466');
update kor_standard_poi_web set std_code = '003200000009', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '로즈가든' where mid in ('2118164');
update kor_standard_poi_web set std_code = '003200000010', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '사파리월드' where mid in ('51987');
update kor_standard_poi_web set std_code = '003200000011', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '티익스프레스' where mid in ('2118228');
update kor_standard_poi_web set std_code = '003200000012', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '썬더폴스' where mid in ('4794206');
update kor_standard_poi_web set std_code = '003200000027', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '매직랜드' where mid in ('462654');
update kor_standard_poi_web set std_code = '003200000028', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '글로벌페어' where mid in ('918074');
update kor_standard_poi_web set std_code = '003200000029', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '아메리칸어드벤처' where mid in ('963548');
update kor_standard_poi_web set std_code = '003200000030', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '유러피안어드벤처' where mid in ('1236837');
update kor_standard_poi_web set std_code = '003200000031', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '주토피아' where mid in ('978579');
update kor_standard_poi_web set std_code = '003200000026', cate1 = '랜드마크', cate2 = '에버랜드', cate3 = '기타편의시설' where mid in ('272105');









update kor_standard_poi_web set std_code = '003200010000', cate1 = '랜드마크', cate2 = '모빌리티', cate3 = '서울역' where mid in ('285838');
update kor_standard_poi_web set std_code = '003200020000', cate1 = '랜드마크', cate2 = '유흥및문화예술', cate3 = '예술의전당' where mid in ('913950');
update kor_standard_poi_web set std_code = '003200020001', cate1 = '랜드마크', cate2 = '유흥및문화예술', cate3 = '국립국악원' where mid in ('580065');
update kor_standard_poi_web set std_code = '003200020002', cate1 = '랜드마크', cate2 = '유흥및문화예술', cate3 = '국립한글박물관' where mid in ('3956431');
update kor_standard_poi_web set std_code = '003200020003', cate1 = '랜드마크', cate2 = '유흥및문화예술', cate3 = '국립중앙박물관' where mid in ('382510');
update kor_standard_poi_web set std_code = '003200020004', cate1 = '랜드마크', cate2 = '유흥및문화예술', cate3 = '국립극장' where mid in ('458539');
update kor_standard_poi_web set std_code = '003200032000', cate1 = '랜드마크', cate2 = '공공건물', cate3 = '대법원' where mid in ('751565');
update kor_standard_poi_web set std_code = '003200032001', cate1 = '랜드마크', cate2 = '공공건물', cate3 = '국회의사당' where mid in ('1511110');
update kor_standard_poi_web set std_code = '003200040000', cate1 = '랜드마크', cate2 = '종교', cate3 = '명동성당' where mid in ('261501');
update kor_standard_poi_web set std_code = '003200050000', cate1 = '랜드마크', cate2 = '건물', cate3 = '네이버' where mid in ('1585929');
update kor_standard_poi_web set std_code = '003200050001', cate1 = '랜드마크', cate2 = '건물', cate3 = '63빌딩' where mid in ('1018498');
update kor_standard_poi_web set std_code = '003200050002', cate1 = '랜드마크', cate2 = '건물', cate3 = 'AT센터' where mid in ('509126');
update kor_standard_poi_web set std_code = '003200050003', cate1 = '랜드마크', cate2 = '건물', cate3 = '벡스코' where mid in ('893832');
update kor_standard_poi_web set std_code = '003200050004', cate1 = '랜드마크', cate2 = '건물', cate3 = '코엑스' where mid in ('440842');
update kor_standard_poi_web set std_code = '003200050005', cate1 = '랜드마크', cate2 = '건물', cate3 = '누리마루' where mid in ('962704');
update kor_standard_poi_web set std_code = '003200050006', cate1 = '랜드마크', cate2 = '건물', cate3 = '김대중센터' where mid in ('155072');
update kor_standard_poi_web set std_code = '003200060000', cate1 = '랜드마크', cate2 = '관광', cate3 = '부산타워' where mid in ('481320');
update kor_standard_poi_web set std_code = '003200060001', cate1 = '랜드마크', cate2 = '관광', cate3 = '첨성대' where mid in ('1198067');
update kor_standard_poi_web set std_code = '003200060002', cate1 = '랜드마크', cate2 = '관광', cate3 = '천마총' where mid in ('621033');
update kor_standard_poi_web set std_code = '003200060003', cate1 = '랜드마크', cate2 = '관광', cate3 = '다보탑' where mid in ('280956');
update kor_standard_poi_web set std_code = '003200060004', cate1 = '랜드마크', cate2 = '관광', cate3 = 'DDP' where mid in ('2250753');
update kor_standard_poi_web set std_code = '003200060005', cate1 = '랜드마크', cate2 = '관광', cate3 = '덕수궁' where mid in ('813201');
update kor_standard_poi_web set std_code = '003200060006', cate1 = '랜드마크', cate2 = '관광', cate3 = '덕수궁석조전' where mid in ('4269674');
update kor_standard_poi_web set std_code = '003200060007', cate1 = '랜드마크', cate2 = '관광', cate3 = '광화문' where mid in ('810794');
update kor_standard_poi_web set std_code = '003200060008', cate1 = '랜드마크', cate2 = '관광', cate3 = '경복궁' where mid in ('445939');
update kor_standard_poi_web set std_code = '003200060009', cate1 = '랜드마크', cate2 = '관광', cate3 = '한빛타워' where mid in ('1039301');
update kor_standard_poi_web set std_code = '003200060010', cate1 = '랜드마크', cate2 = '관광', cate3 = '현충원' where mid in ('68877');
update kor_standard_poi_web set std_code = '003200060011', cate1 = '랜드마크', cate2 = '관광', cate3 = '독립문' where mid in ('337338');
update kor_standard_poi_web set std_code = '003200060012', cate1 = '랜드마크', cate2 = '관광', cate3 = '종묘' where mid in ('1125971');
update kor_standard_poi_web set std_code = '003200060013', cate1 = '랜드마크', cate2 = '관광', cate3 = '세종대왕상' where mid in ('2505997');
update kor_standard_poi_web set std_code = '003200060014', cate1 = '랜드마크', cate2 = '관광', cate3 = '이순신장군상' where mid in ('2109410');
update kor_standard_poi_web set std_code = '003200060015', cate1 = '랜드마크', cate2 = '관광', cate3 = '롯데월드' where mid in ('1341401');
update kor_standard_poi_web set std_code = '003200060016', cate1 = '랜드마크', cate2 = '관광', cate3 = '롯데타워' where mid in ('4056210');
update kor_standard_poi_web set std_code = '003200060017', cate1 = '랜드마크', cate2 = '관광', cate3 = '남산타워' where mid in ('4964121');
update kor_standard_poi_web set std_code = '003200060018', cate1 = '랜드마크', cate2 = '관광', cate3 = '숭례문' where mid in ('1253654');
update kor_standard_poi_web set std_code = '003200060019', cate1 = '랜드마크', cate2 = '관광', cate3 = '석굴암' where mid in ('537309');
update kor_standard_poi_web set std_code = '003200060020', cate1 = '랜드마크', cate2 = '관광', cate3 = '평화의손' where mid in ('879696');
update kor_standard_poi_web set std_code = '003200070000', cate1 = '랜드마크', cate2 = '레져/스포츠', cate3 = '올림픽공원' where mid in ('869627');
update kor_standard_poi_web set std_code = '003200080000', cate1 = '랜드마크', cate2 = '기타', cate3 = '마린시티' where mid in ('3186664');