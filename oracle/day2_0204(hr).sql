--��������
--�ۼ���:�̿쿵
--1.<jobs ���̺� ����>
--1)min_salary �÷��� 10000�̻��� job_title ��ȸ
SELECT JOB_TITLE  FROM JOBS WHERE MIN_SALARY >=10000 ;

--2)job_title �÷��� programmer�� ���� ��� �÷� ��ȸ
SELECT JOB_TITLE FROM JOBS WHERE JOB_TITLE = 'programmer';
SELECT JOB_TITLE FROM JOBS WHERE JOB_TITLE = 'Programmer';
										   --��ҹ��� ������� �Ѵٸ� ���ڿ� ���� ����Ŭ �Լ�:upper(),lower()
SELECT * FROM JOBS j WHERE upper(job_title) = 'PROGRAMMER';
SELECT * FROM JOBS j WHERE lower(job_title) = 'programmer';

--3)max_salary �÷��� �ִ밪 ��ȸ
SELECT max(MAX_SALARY) FROM JOBS ;

--<���ذ�>�߰� : min_salary �� ��հ����� ���� ���� job_id, job_title �÷� ��ȸ -> group���� �Ŀ� �ٽ� �غ��ϴ�.
SELECT job_id,job_title FROM JOBS j WHERE MIN_SALARY < AVG(MIN_SALARY); 



--2.<locations ���̺� ����>
--1)city �÷��� London�� postal_code �÷� ��ȸ  
SELECT POSTAL_CODE FROM LOCATIONS l WHERE city = 'London';
SELECT POSTAL_CODE FROM LOCATIONS l WHERE city = 'Seattle';

--2)LOCATION_ID �÷��� 1700, 2700, 2500�� �ƴϰ� city �÷��� Tokyo�� ���� ��� �÷� ��ȸ
SELECT * FROM LOCATIONS l WHERE LOCATION_ID NOT IN (1700,2700,2500) AND city ='Tokyo';