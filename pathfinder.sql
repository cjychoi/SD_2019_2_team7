DROP DATABASE PATHFINDER;
CREATE DATABASE PATHFINDER;
USE PATHFINDER;

CREATE TABLE TOURIST_DESTINATION(
   Dname VARCHAR(50) NOT NULL,
   Region VARCHAR(50) NOT NULL,
   Fee VARCHAR(30),
   PRIMARY KEY(Dname)
);

CREATE TABLE RESTAURANT(
   Rname VARCHAR(50) NOT NULL,
   Dname VARCHAR(50) NOT NULL,
   Rating VARCHAR(10) NOT NULL,
   PRIMARY KEY(Rname)
);

CREATE TABLE METRO(
   Dname VARCHAR(50) NOT NULL,
   Mline INT(2) NOT NULL,
   Mstation VARCHAR(30)
);

CREATE TABLE BUS(
   Dname VARCHAR(50) NOT NULL,
   Bnum VARCHAR(50) NOT NULL,
   Bstation VARCHAR(30) NOT NULL
);

desc TOURIST_DESTINATION;
desc RESTAURANT;


INSERT INTO TOURIST_DESTINATION VALUES ('경복궁','서울','Free ~ 3000');
INSERT INTO TOURIST_DESTINATION VALUES ('남산 타워','서울','9000 ~ 11000');
INSERT INTO TOURIST_DESTINATION VALUES ('반포 한강 공원','서울','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('롯데 월드','서울','15000 ~ 56000');
INSERT INTO TOURIST_DESTINATION VALUES ('통일 시장','서울','Free');

INSERT INTO TOURIST_DESTINATION VALUES ('광안리 해수욕장','부산','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('자갈치 시장','부산','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('감천 문화 마을','부산','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('해운대 해수욕장','부산','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('동백섬','부산','Free');

INSERT INTO TOURIST_DESTINATION VALUES ('이월드','대구','12000 ~ 42000');
INSERT INTO TOURIST_DESTINATION VALUES ('김광석 거리','대구','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('수성못','대구','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('앞산 전망대','대구','5500 ~ 10500');
INSERT INTO TOURIST_DESTINATION VALUES ('팔공산 갓바위','대구','Free');

INSERT INTO TOURIST_DESTINATION VALUES ('불국사','경주','2500 ~ 5000');
INSERT INTO TOURIST_DESTINATION VALUES ('경주 월드','경주','15000 ~ 44000');
INSERT INTO TOURIST_DESTINATION VALUES ('첨성대','경주','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('추억의 달동네','경주','5000 ~ 7000');
INSERT INTO TOURIST_DESTINATION VALUES ('보문 단지','경주','Free');

INSERT INTO TOURIST_DESTINATION VALUES ('한라산','제주','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('성산일출봉','제주','2500 ~ 5000');
INSERT INTO TOURIST_DESTINATION VALUES ('섭지코지','제주','Free');
INSERT INTO TOURIST_DESTINATION VALUES ('만장굴','제주','2000 ~ 4000');
INSERT INTO TOURIST_DESTINATION VALUES ('용두암','제주','Free');

INSERT INTO RESTAURANT VALUES ('리미니가든','이월드','3.5');
INSERT INTO RESTAURANT VALUES ('미루커피','이월드','4');
INSERT INTO RESTAURANT VALUES ('성당못빌','이월드','4.5');

INSERT INTO RESTAURANT VALUES ('코레아 경양식','김광석 거리','4');
INSERT INTO RESTAURANT VALUES ('바른면옥','김광석 거리','3');
INSERT INTO RESTAURANT VALUES ('바하의 선율','김광석 거리','3.8');

INSERT INTO RESTAURANT VALUES ('낭만쭈꾸미','수성못','5');
INSERT INTO RESTAURANT VALUES ('미즈컨테이너','수성못','4.3');
INSERT INTO RESTAURANT VALUES ('팜테이블','수성못','3');

INSERT INTO RESTAURANT VALUES ('장미찜닭','앞산 전망대','3.8');
INSERT INTO RESTAURANT VALUES ('지오네','앞산 전망대','3.3');
INSERT INTO RESTAURANT VALUES ('옥슬리 스튜디오','앞산 전망대','3');

INSERT INTO RESTAURANT VALUES ('탑골 식당','팔공산 갓바위','3.8');
INSERT INTO RESTAURANT VALUES ('브런치 달랏','팔공산 갓바위','4');
INSERT INTO RESTAURANT VALUES ('시크릿 가든','팔공산 갓바위','3.7');

INSERT INTO RESTAURANT VALUES ('후스테이블','경복궁','3.8');
INSERT INTO RESTAURANT VALUES ('미도인','경복궁','3');
INSERT INTO RESTAURANT VALUES ('경양카츠','경복궁','3.7');

INSERT INTO RESTAURANT VALUES ('라면','반포 한강 공원','5');
INSERT INTO RESTAURANT VALUES ('치킨','반포 한강 공원','5');
INSERT INTO RESTAURANT VALUES ('맥주','반포 한강 공원','5');

INSERT INTO RESTAURANT VALUES ('더백푸드트럭','남산 타워','3.3');
INSERT INTO RESTAURANT VALUES ('오리올','남산 타워','3.4');
INSERT INTO RESTAURANT VALUES ('더로열푸드앤드링크','남산 타워','3.1');

INSERT INTO RESTAURANT VALUES ('바이킹스워프','롯데 월드','3.6');
INSERT INTO RESTAURANT VALUES ('엘리스리틀이태리','롯데 월드','4.2');
INSERT INTO RESTAURANT VALUES ('뉴질랜드스토리','롯데 월드','4.1');

INSERT INTO RESTAURANT VALUES ('부촌육회','통일 시장','4.2');
INSERT INTO RESTAURANT VALUES ('은주정','통일 시장','3.8');
INSERT INTO RESTAURANT VALUES ('우래옥','통일 시장','3.9');

INSERT INTO RESTAURANT VALUES ('자매국밥','광안리 해수욕장','3.8');
INSERT INTO RESTAURANT VALUES ('할매재첩국','광안리 해수욕장','4');
INSERT INTO RESTAURANT VALUES ('고향카츠','광안리 해수욕장','4');

INSERT INTO RESTAURANT VALUES ('부산횟집','자갈치 시장','3.9');
INSERT INTO RESTAURANT VALUES ('키다리횟집','자갈치 시장','4.8');
INSERT INTO RESTAURANT VALUES ('고래사어묵','자갈치 시장','5');

INSERT INTO RESTAURANT VALUES ('아방가르드','감천 문화 마을','3.8');
INSERT INTO RESTAURANT VALUES ('계단위푸른집','감천 문화 마을','5');
INSERT INTO RESTAURANT VALUES ('감천달빛도너츠','감천 문화 마을','3.8');

INSERT INTO RESTAURANT VALUES ('금수복국','해운대 해수욕장','3.4');
INSERT INTO RESTAURANT VALUES ('옵스','해운대 해수욕장','3.5');
INSERT INTO RESTAURANT VALUES ('해운대소문난암소갈비집','해운대 해수욕장','3');

INSERT INTO RESTAURANT VALUES ('마리나블루키친','동백섬','3.9');
INSERT INTO RESTAURANT VALUES ('대도식당','동백섬','3.2');
INSERT INTO RESTAURANT VALUES ('헬로우스시','동백섬','3.7');

INSERT INTO RESTAURANT VALUES ('난식당1974','불국사','3.6');
INSERT INTO RESTAURANT VALUES ('카페메이플','불국사','4.3');
INSERT INTO RESTAURANT VALUES ('경춘재','불국사','4.8');

INSERT INTO RESTAURANT VALUES ('진수성찬','경주 월드','3.1');
INSERT INTO RESTAURANT VALUES ('아덴','경주 월드','3.5');
INSERT INTO RESTAURANT VALUES ('야드','경주 월드','4.3');

INSERT INTO RESTAURANT VALUES ('교리김밥','첨성대','3.3');
INSERT INTO RESTAURANT VALUES ('시즈닝','첨성대','3.2');
INSERT INTO RESTAURANT VALUES ('요석궁','첨성대','3.1');

INSERT INTO RESTAURANT VALUES ('궁림바지락칼국수보쌈','추억의 달동네','4');
INSERT INTO RESTAURANT VALUES ('블리스커피','추억의 달동네','3.5');
INSERT INTO RESTAURANT VALUES ('정수가성','추억의 달동네','3.4');

INSERT INTO RESTAURANT VALUES ('보문민속식당','보문 단지','4');
INSERT INTO RESTAURANT VALUES ('경주천년한우','보문 단지','3.2');
INSERT INTO RESTAURANT VALUES ('솔미가','보문 단지','3.5');

INSERT INTO RESTAURANT VALUES ('꽁양꽁양','한라산','4.7');
INSERT INTO RESTAURANT VALUES ('바람','한라산','3.9');
INSERT INTO RESTAURANT VALUES ('미스틱3도','한라산','5');

INSERT INTO RESTAURANT VALUES ('코코마마','성산일출봉','3.7');
INSERT INTO RESTAURANT VALUES ('성산옥탑','성산일출봉','4.5');
INSERT INTO RESTAURANT VALUES ('수마','성산일출봉','4.8');

INSERT INTO RESTAURANT VALUES ('흑돼지박스','섭지코지','3.9');
INSERT INTO RESTAURANT VALUES ('섭지해녀의집','섭지코지','3.5');
INSERT INTO RESTAURANT VALUES ('가시아방국수','섭지코지','3.3');

INSERT INTO RESTAURANT VALUES ('사굴식당','만장굴','4.5');
INSERT INTO RESTAURANT VALUES ('만월당','만장굴','3.9');
INSERT INTO RESTAURANT VALUES ('쪼끌락','만장굴','3.7');

INSERT INTO RESTAURANT VALUES ('앙뚜아네트','용두암','3.9');
INSERT INTO RESTAURANT VALUES ('돈대장','용두암','3.3');
INSERT INTO RESTAURANT VALUES ('용두암오메기떡','용두암','4.3');

INSERT INTO METRO VALUES ('경복궁','3','경복궁역');
INSERT INTO BUS VALUES ('경복궁','109','경복궁');
INSERT INTO BUS VALUES ('경복궁','171','경복궁');
INSERT INTO BUS VALUES ('경복궁','272','경복궁');
INSERT INTO BUS VALUES ('경복궁','601','경복궁');
INSERT INTO BUS VALUES ('경복궁','606','경복궁');
INSERT INTO BUS VALUES ('경복궁','710','경복궁');
INSERT INTO BUS VALUES ('경복궁','1020','경복궁');

INSERT INTO BUS VALUES ('남산 타워','순환 TOUR1','남산서울타워');
INSERT INTO BUS VALUES ('남산 타워','순환 TOUR4','남산서울타워');
INSERT INTO BUS VALUES ('남산 타워','순환 02','남산서울타워');
INSERT INTO BUS VALUES ('남산 타워','순환 03','남산서울타워');
INSERT INTO BUS VALUES ('남산 타워','순환 05','남산서울타워');

INSERT INTO METRO VALUES ('반포 한강 공원','9','신반포역');
INSERT INTO BUS VALUES ('반포 한강 공원','143','반포대교남단 한강시민공원입구');
INSERT INTO BUS VALUES ('반포 한강 공원','401','반포대교남단 한강시민공원입구');
INSERT INTO BUS VALUES ('반포 한강 공원','406','반포대교남단 한강시민공원입구');
INSERT INTO BUS VALUES ('반포 한강 공원','740','반포한강공원.세빛섬');

INSERT INTO METRO VALUES ('롯데 월드','2','잠실역');
INSERT INTO BUS VALUES ('롯데 월드','301','잠실역.롯데월드');
INSERT INTO BUS VALUES ('롯데 월드','341','잠실역.롯데월드');
INSERT INTO BUS VALUES ('롯데 월드','342','잠실역.롯데월드');
INSERT INTO BUS VALUES ('롯데 월드','360','잠실역.롯데월드');
INSERT INTO BUS VALUES ('롯데 월드','362','잠실역.롯데월드');

INSERT INTO METRO VALUES ('통일 시장','4','동대문역');
INSERT INTO BUS VALUES ('통일 시장','105','동대문역사문화공원');
INSERT INTO BUS VALUES ('통일 시장','144','동대문역사문화공원');
INSERT INTO BUS VALUES ('통일 시장','261','동대문역사문화공원');
INSERT INTO BUS VALUES ('통일 시장','301','동대문역사문화공원');
INSERT INTO BUS VALUES ('통일 시장','420','동대문역사문화공원');

INSERT INTO METRO VALUES ('광안리 해수욕장','2','광안역');
INSERT INTO BUS VALUES ('광안리 해수욕장','41','광안리해수욕장');
INSERT INTO BUS VALUES ('광안리 해수욕장','42','광안리해수욕장');

INSERT INTO METRO VALUES ('자갈치 시장','1','자갈치역');
INSERT INTO METRO VALUES ('자갈치 시장','1','남포역');
INSERT INTO BUS VALUES ('자갈치 시장','113','자갈치시장');
INSERT INTO BUS VALUES ('자갈치 시장','30','자갈치시장');
INSERT INTO BUS VALUES ('자갈치 시장','6','자갈치시장');
INSERT INTO BUS VALUES ('자갈치 시장','7','자갈치시장');
INSERT INTO BUS VALUES ('자갈치 시장','71','자갈치시장');

INSERT INTO BUS VALUES ('감천 문화 마을','사하구1','감정초등학교.감천문화마을');
INSERT INTO BUS VALUES ('감천 문화 마을','사하구1-1','감정초등학교.감천문화마을');
INSERT INTO BUS VALUES ('감천 문화 마을','서구2','감정초등학교.감천문화마을');
INSERT INTO BUS VALUES ('감천 문화 마을','서구2-2','감정초등학교.감천문화마을');

INSERT INTO METRO VALUES ('해운대 해수욕장','2','해운대역');
INSERT INTO BUS VALUES ('해운대 해수욕장','139','해운대해수욕장');
INSERT INTO BUS VALUES ('해운대 해수욕장','307','해운대해수욕장');
INSERT INTO BUS VALUES ('해운대 해수욕장','1003','해운대해수욕장');

INSERT INTO METRO VALUES ('동백섬','2','동백역');
INSERT INTO BUS VALUES ('동백섬','139','동백섬입구');
INSERT INTO BUS VALUES ('동백섬','307','동백섬입구');
INSERT INTO BUS VALUES ('동백섬','1003','동백섬입구');

INSERT INTO METRO VALUES ('이월드','2','두류역');
INSERT INTO BUS VALUES ('이월드','653','두류파출소앞');
INSERT INTO BUS VALUES ('이월드','달서 4-1','이월드후문건너');
INSERT INTO BUS VALUES ('이월드','서구 1-1','이월드후문건너');
INSERT INTO BUS VALUES ('이월드','달서4','이월드 후문앞');
INSERT INTO BUS VALUES ('이월드','서구1','이월드 후문앞');

INSERT INTO METRO VALUES ('김광석 거리','2','경대병원역');
INSERT INTO BUS VALUES ('김광석 거리','309','방청시장앞');
INSERT INTO BUS VALUES ('김광석 거리','403','방청시장앞');
INSERT INTO BUS VALUES ('김광석 거리','609','방청시장앞');
INSERT INTO BUS VALUES ('김광석 거리','649','방청시장앞');
INSERT INTO BUS VALUES ('김광석 거리','840','방청시장앞');

INSERT INTO BUS VALUES ('앞산 전망대','410-1','앞산공원관리사무소건너');
INSERT INTO BUS VALUES ('앞산 전망대','남구1','앞산공원관리사무소건너');
INSERT INTO BUS VALUES ('앞산 전망대','남구1-1','앞산공원관리사무소건너');
INSERT INTO BUS VALUES ('앞산 전망대','410','앞산공원관리사무소 앞');
INSERT INTO BUS VALUES ('앞산 전망대','300','앞산공원');

INSERT INTO METRO VALUES ('수성못','3','수성못역');
INSERT INTO BUS VALUES ('수성못','410-1','수성못건너');
INSERT INTO BUS VALUES ('수성못','410','수성못앞');
INSERT INTO BUS VALUES ('수성못','401','수성못앞');
INSERT INTO BUS VALUES ('수성못','449','수성랜드앞');
INSERT INTO BUS VALUES ('수성못','403','두산행정복지센터앞');

INSERT INTO BUS VALUES ('성산일출봉','201','성산일출봉입구');
INSERT INTO BUS VALUES ('성산일출봉','211','성산일출봉입구');
INSERT INTO BUS VALUES ('성산일출봉','213','성산일출봉입구');
INSERT INTO BUS VALUES ('성산일출봉','113','성산일출봉입구');

INSERT INTO BUS VALUES ('용두암','432','제주사대부설중학교');
INSERT INTO BUS VALUES ('용두암','431','제주사대부설중학교');
INSERT INTO BUS VALUES ('용두암','453','제주사대부설중학교');
INSERT INTO BUS VALUES ('용두암','434','제주사대부설중학교');

INSERT INTO BUS VALUES ('만장굴','711-1','만장굴');
INSERT INTO BUS VALUES ('만장굴','711-2','만장굴');

INSERT INTO BUS VALUES ('첨성대','60','첨성대');
INSERT INTO BUS VALUES ('첨성대','61','첨성대');
INSERT INTO BUS VALUES ('첨성대','609','월성동주민센타');
INSERT INTO BUS VALUES ('첨성대','10','첨성대');
INSERT INTO BUS VALUES ('첨성대','11','첨성대');

INSERT INTO BUS VALUES ('불국사','10','불국사');
INSERT INTO BUS VALUES ('불국사','700','불국사');
INSERT INTO BUS VALUES ('불국사','12','불국사');
INSERT INTO BUS VALUES ('불국사','12-1','불국사');
INSERT INTO BUS VALUES ('불국사','11','불국사');

INSERT INTO BUS VALUES ('보문 단지','100-1','경상북도문화관광공사');
INSERT INTO BUS VALUES ('보문 단지','10','경상북도문화관광공사');
INSERT INTO BUS VALUES ('보문 단지','16','경상북도문화관광공사');
INSERT INTO BUS VALUES ('보문 단지','700','경상북도문화관광공사');

INSERT INTO BUS VALUES ('경주 월드','100-1','경주월드.캘리포니아비치');
INSERT INTO BUS VALUES ('경주 월드','10','경주월드.캘리포니아비치');
INSERT INTO BUS VALUES ('경주 월드','16','경주월드.캘리포니아비치');
INSERT INTO BUS VALUES ('경주 월드','11','경주월드.캘리포니아비치');
INSERT INTO BUS VALUES ('경주 월드','700','경주월드.캘리포니아비치');

INSERT INTO BUS VALUES ('추억의 달동네','10','민속공예촌.신라역사과학관');
INSERT INTO BUS VALUES ('추억의 달동네','11','민속공예촌.신라역사과학관');
INSERT INTO BUS VALUES ('추억의 달동네','700','민속공예촌.신라역사과학관');



ALTER TABLE RESTAURANT ADD FOREIGN KEY (Dname) REFERENCES TOURIST_DESTINATION (Dname) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE METRO ADD FOREIGN KEY (Dname) REFERENCES TOURIST_DESTINATION (Dname) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE BUS ADD FOREIGN KEY (Dname) REFERENCES TOURIST_DESTINATION (Dname) ON DELETE CASCADE ON UPDATE CASCADE;