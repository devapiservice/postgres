--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

-- Started on 2019-05-06 22:46:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2156 (class 1262 OID 435335)
-- Name: RSPLANES; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "RSPLANES" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_GB.UTF8' LC_CTYPE = 'en_GB.UTF8';


ALTER DATABASE "RSPLANES" OWNER TO postgres;

\connect "RSPLANES"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12278)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 435628)
-- Name: plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plan (
    id_plan bigint NOT NULL,
    fecha_registro timestamp without time zone,
    plan jsonb
);


ALTER TABLE public.plan OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 435626)
-- Name: plan_id_plan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plan_id_plan_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plan_id_plan_seq OWNER TO postgres;

--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 196
-- Name: plan_id_plan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plan_id_plan_seq OWNED BY public.plan.id_plan;


--
-- TOC entry 2025 (class 2604 OID 435631)
-- Name: plan id_plan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan ALTER COLUMN id_plan SET DEFAULT nextval('public.plan_id_plan_seq'::regclass);


--
-- TOC entry 2150 (class 0 OID 435628)
-- Dependencies: 197
-- Data for Name: plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.plan (id_plan, fecha_registro, plan) VALUES (1, '2019-05-06 22:42:14.977', '{"filtro": {"estado": ["Booked", "Confirmed"], "centros": [{"id": "ec8d5ccd-a5bf-4196-9182-a5f800212ca2", "name": "Centro Médico y Dental CONCHALI"}], "horaCita": [], "servicios": [{"id": "3c17fff9-c8c9-45f8-bdb7-a5f800a0defd", "name": "Abceso sacroxigeo"}, {"id": "1b46061f-bd56-4995-9078-a7e500e5c908", "name": "Aberrometria"}, {"id": "a14d6e88-1646-494e-a72a-a5f800844aa6", "name": "Abseso o hematoma de mama"}], "sobrecupo": [], "profesionales": [], "canalAgendamiento": ["ThirdPartyService", "CallCenter"]}, "periocidad": {"diaDescarga": [0, 1, 2, 3, 4, 5, 6, 7], "horaDescarga": ["8:00", "9:00"]}, "nombreCampana": "plan z"}');
INSERT INTO public.plan (id_plan, fecha_registro, plan) VALUES (2, '2019-05-06 22:42:15.144', '{"filtro": {"estado": [], "centros": [{"id": "6d184e12-d490-4479-9df1-a9650135d13e", "name": "SUBCENTRO METRO ESCUELA MILITAR"}], "horaCita": [], "servicios": [{"id": "11c71235-36d4-4555-8f5c-a9650136e956", "name": "EXAMEN DE SANGRE CON AYUNO"}, {"id": "a87b4625-3db6-4f3f-99f3-a965013729de", "name": "EXAMEN DE SANGRE SIN AYUNO"}, {"id": "bc0575b3-3351-4aeb-b771-a96501376f37", "name": "EXAMEN DE SANGRE-ORINA SIN AYUNO"}], "sobrecupo": [true, false], "profesionales": [{"id": "87d645ea-e55e-4ed3-b8a9-a9650142e12b", "name": "JAVIERA VARGAS VALDES"}], "canalAgendamiento": []}, "periocidad": {"diaDescarga": [], "horaDescarga": ["10:00"]}, "nombreCampana": "plan z2"}');


--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 196
-- Name: plan_id_plan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plan_id_plan_seq', 2, true);


--
-- TOC entry 2027 (class 2606 OID 435636)
-- Name: plan plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan
    ADD CONSTRAINT plan_pkey PRIMARY KEY (id_plan);


-- Completed on 2019-05-06 22:46:40

--
-- PostgreSQL database dump complete
--

