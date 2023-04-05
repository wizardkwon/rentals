INSERT INTO client VALUES ('aaaa', '1111','가가가가','2023-04-04');
INSERT INTO `client` VALUES ('bbbb', '2222','나나나나','2023-04-02');
INSERT INTO `client` VALUES ('cccc', '3333','다다다다','2023-04-01');
INSERT INTO `client` VALUES ('dddd', '4444','라라라라','2023-03-30');
INSERT INTO `client` VALUES ('eeee', '5555','마마마마','2023-03-28');

CREATE VIEW client_sort AS
select * from `client` order by date_time;
select * from client_sort;

INSERT INTO venue VALUES (1001,'천호역 공영주차장 지하2층','2023-03-01');
INSERT INTO venue VALUES (1002,'홍익대학교 지하주차장','2023-03-01');
INSERT INTO venue VALUES (1003,'강남역 지하주차장','2023-03-01');
INSERT INTO venue VALUES (1004,'EZEN 주차장','2023-03-01');
INSERT INTO venue VALUES (1005,'연남동 노상 공영주차장','2023-03-01');

INSERT INTO vehicle VALUES (1000,1001,'1000','2023-03-01');
INSERT INTO vehicle VALUES (2200,1001,'1500','2023-03-01');
INSERT INTO vehicle VALUES (3300,1002,'2000','2023-03-01');
INSERT INTO vehicle VALUES (4400,1002,'3000','2023-03-01');
INSERT INTO vehicle VALUES (5500,1003,'2500','2023-03-01');
INSERT INTO vehicle VALUES (6600,1003,'1000','2023-03-01');
INSERT INTO vehicle VALUES (7700,1004,'1500','2023-03-01');
INSERT INTO vehicle VALUES (8800,1004,'1500','2023-03-01');
INSERT INTO vehicle VALUES (9900,1004,'2000','2023-03-01');
INSERT INTO vehicle VALUES (1100,1005,'3000','2023-03-01');

INSERT INTO board (client_id,post_title,contents,date_time) VALUES ('aaaa','잘 사용했습니다.','차량 내부가 깨끗해서 좋았습니다.','2023-04-04');
INSERT INTO board (client_id,post_title,contents,date_time) VALUES ('dddd','좋은 드라이브였습니다.','새 차라 성능이 좋았습니다..','2023-04-04');
INSERT INTO board (client_id,post_title,contents,date_time) VALUES ('bbbb','최악이다...','담배냄새에 엔진소리..거의 폐차수준...여친이랑 헤어짐...','2023-04-04');
INSERT INTO board (client_id,post_title,contents,date_time) VALUES ('eeee','그린카가 낫다','여기서 랜트하지 마세요','2023-04-04');
INSERT INTO board (client_id,post_title,contents,date_time) VALUES ('cccc','최고의 시간이었습니다..','내부청소도 잘되있고 주유도 가득차있고 아주 좋았습니다.','2023-04-04');


CREATE VIEW car_count AS
select  
venue_id,
venue_name,
(select COUNT(venue_id) from vehicle where v.venue_id = venue_id group by venue_id) as car_count
from venue v;
10:09