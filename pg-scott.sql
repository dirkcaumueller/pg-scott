SET default_transaction_read_only = off;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop schema and role
--

DROP SCHEMA IF EXISTS scott CASCADE;
DROP ROLE IF EXISTS scott;

--
-- Role
--

CREATE ROLE scott;
ALTER ROLE scott WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md5f5b3b8231a686f681fdee8f66bf91290';

--
-- Name: scott; Type: SCHEMA; Schema: -; Owner: scott
--

CREATE SCHEMA scott;

ALTER SCHEMA scott OWNER TO scott;

--
-- Name: bonus; Type: TABLE; Schema: scott; Owner: scott
--

CREATE TABLE scott.bonus (
    ename text,
    job text,
    sal integer,
    comm integer
);

ALTER TABLE scott.bonus OWNER TO scott;

--
-- Name: dept; Type: TABLE; Schema: scott; Owner: scott
--

CREATE TABLE scott.dept (
    deptno integer NOT NULL,
    dname text,
    loc text
);

ALTER TABLE scott.dept OWNER TO scott;

--
-- Name: emp; Type: TABLE; Schema: scott; Owner: scott
--

CREATE TABLE scott.emp (
    empno integer NOT NULL,
    ename text,
    job text,
    mgr integer,
    hiredate date,
    sal integer,
    comm integer,
    deptno integer
);

ALTER TABLE scott.emp OWNER TO scott;

--
-- Name: salgrade; Type: TABLE; Schema: scott; Owner: scott
--

CREATE TABLE scott.salgrade (
    grade integer NOT NULL,
    losal integer,
    hisal integer
);

ALTER TABLE scott.salgrade OWNER TO scott;

--
-- Data for Name: dept; Type: TABLE DATA; Schema: scott; Owner: scott
--

INSERT INTO scott.dept (deptno, dname, loc) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH',   'DALLAS'),
(30, 'SALES',      'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

--
-- Data for Name: emp; Type: TABLE DATA; Schema: scott; Owner: scott
--

INSERT INTO scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES
(7369, 'SMITH',  'CLERK',     7902, '1980-12-17',  800, NULL, 20),
(7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600,  300, 30),
(7521, 'WARD',   'SALESMAN',  7698, '1981-02-22', 1250,  500, 30),
(7566, 'JONES',  'MANAGER',   7839, '1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN',  7698, '1981-09-28', 1250, 1400, 30),
(7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK',  'MANAGER',   7839, '1981-06-09', 2450, NULL, 10),
(7788, 'SCOTT',  'ANALYST',   7566, '1982-12-09', 3000, NULL, 20),
(7839, 'KING',   'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
(7844, 'TURNER', 'SALESMAN',  7698, '1981-09-08', 1500,    0, 30),
(7876, 'ADAMS',  'CLERK',     7788, '1983-01-12', 1100, NULL, 20),
(7900, 'JAMES',  'CLERK',     7698, '1981-12-03',  950, NULL, 30),
(7902, 'FORD',   'ANALYST',   7566, '1981-12-03', 3000, NULL, 20),
(7934, 'MILLER', 'CLERK',     7782, '1982-01-23', 1300, NULL, 10);

--
-- Data for Name: salgrade; Type: TABLE DATA; Schema: scott; Owner: scott
--

INSERT INTO scott.salgrade (grade, losal, hisal) VALUES
(1,  700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);

--
-- Name: dept pk_dept; Type: CONSTRAINT; Schema: scott; Owner: scott
--

ALTER TABLE ONLY scott.dept
    ADD CONSTRAINT pk_dept PRIMARY KEY (deptno);

--
-- Name: emp pk_emp; Type: CONSTRAINT; Schema: scott; Owner: scott
--

ALTER TABLE ONLY scott.emp
    ADD CONSTRAINT pk_emp PRIMARY KEY (empno);

--
-- Name: salgrade pk_salgrade; Type: CONSTRAINT; Schema: scott; Owner: scott
--

ALTER TABLE ONLY scott.salgrade
    ADD CONSTRAINT pk_salgrade PRIMARY KEY (grade);

--
-- Name: emp fk_deptno; Type: FK CONSTRAINT; Schema: scott; Owner: scott
--

ALTER TABLE ONLY scott.emp
    ADD CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES scott.dept(deptno);

--
-- Name: emp fk_mgr; Type: FK CONSTRAINT; Schema: scott; Owner: scott
--

ALTER TABLE ONLY scott.emp
    ADD CONSTRAINT fk_mgr FOREIGN KEY (mgr) REFERENCES scott.emp(empno);

--
-- PostgreSQL database dump complete
--
