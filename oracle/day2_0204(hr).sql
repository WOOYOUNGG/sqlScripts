--연습문제
--작성자:이우영
--1.<jobs 테이블 문제>
--1)min_salary 컬럼이 10000이상인 job_title 조회
SELECT JOB_TITLE  FROM JOBS WHERE MIN_SALARY >=10000 ;

--2)job_title 컬럼이 programmer인 행의 모든 컬럼 조회
SELECT JOB_TITLE FROM JOBS WHERE JOB_TITLE = 'programmer';
SELECT JOB_TITLE FROM JOBS WHERE JOB_TITLE = 'Programmer';
										   --대소문자 상관없이 한다면 문자열 관련 오라클 함수:upper(),lower()
SELECT * FROM JOBS j WHERE upper(job_title) = 'PROGRAMMER';
SELECT * FROM JOBS j WHERE lower(job_title) = 'programmer';

--3)max_salary 컬럼의 최대값 조회
SELECT max(MAX_SALARY) FROM JOBS ;

--<미해결>추가 : min_salary 의 평균값보다 작은 행의 job_id, job_title 컬럼 조회 -> group진도 후에 다시 해봅니다.
SELECT job_id,job_title FROM JOBS j WHERE MIN_SALARY < AVG(MIN_SALARY); 



--2.<locations 테이블 문제>
--1)city 컬럼이 London인 postal_code 컬럼 조회  
SELECT POSTAL_CODE FROM LOCATIONS l WHERE city = 'London';
SELECT POSTAL_CODE FROM LOCATIONS l WHERE city = 'Seattle';

--2)LOCATION_ID 컬럼이 1700, 2700, 2500이 아니고 city 컬럼이 Tokyo인 행의 모든 컬럼 조회
SELECT * FROM LOCATIONS l WHERE LOCATION_ID NOT IN (1700,2700,2500) AND city ='Tokyo';