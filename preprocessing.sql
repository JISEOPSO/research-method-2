create database mountain_db;

select mntiadd "주소(시)",  mntiadmin "소속", mntiadminnum "전화번호", mntihigh "해발고도(m)", mntilistno "산 코드", mntiname "이름" from mountain_info;

select CONTENTID "콘텐츠 ID", TITLE "제목", ADDR1 "주소", ADDR2 "상세주소", AREACODE "싱세주소", FIRSTIMAGE "대표이미지(원본)", FIRSTIMAGE2 "대표이미지(썸네일)", MAPX "GPS X좌표", MAPY "GPS Y좌표", MLEVEL "Map LEVEL",SIGUNGUCODE "시군구코드", ZIPCODE "우편번호", TEL "전화번호" from 20221028_전국명산음식점정보;

select * from 20221028_전국명산음식점정보 order by ADDR1 asc;

select * from courseinfo;
select COURS_IDNO "코스고유번호", COURS_NM "코스명", COURS_DSCRT "코스설명", COURS_CTPRV_NM "코스시도명", COURS_EMNDN_NM "코스읍면동명", COURS_ARA_NM "코스지역명", COURS_WEBS_ADDR "코스웹사이트주소", COURS_TOT_LNGTH "코스총길이", COURS_AVRG_GRDNT "코스평균경사도", COURS_TOP_HASLV "코스최고해발고도", COURS_LOWST_HASLV "코스최저해발고도", COURS_UPR_LNGTH "코스오름길이", COURS_FTL_LNGTH "코스평지길이", COURS_DST_LNGTH "코스내림길이", COURS_RQRMN_TM "코스소요시간" from courseinfo;
select * from course_track_relationship;
select COURSE_TRK_CONN_RLTN_IDNO "코스트랙연결관계고유번호", CONN_TRK_IDNO "연결트랙고유번호", CONN_COURS_IDNO "연결코스고유번호", COURS_TRK_ORDR "코스트랙순서" from course_track_relationship;
select * from pointtrack_info;
select TRK_PNT_IDNO "트랙포인트고유번호", PRNTS_TRK_IDNO "부모트랙고유번호", TRK_PNT_SRTNG_ORDR "트랙포인트정렬순서", TRK_PNT_LNGTD "트랙포인트경도", TRK_PNT_LTTD "트랙포인트위도", TRK_PNT_HASLV "트랙포인트해발고도", TRK_PNT_XCRD "트랙포인트X좌표", TRK_PNT_YCRD "트랙포인트Y좌표" from pointtrack_info;










