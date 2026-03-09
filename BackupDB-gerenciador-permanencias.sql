--
-- PostgreSQL database dump
--

\restrict 7XrI4ekr8ZZh9Yi4RHWfnOeEKEcEjgE182cV2xGnI3K3saM4UBIbJkx5QrKyVaW

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-03-09 17:29:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16454)
-- Name: permanencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permanencias (
    id integer NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fim time without time zone NOT NULL,
    sala character(4) NOT NULL,
    dia_da_semana character varying(20),
    status character varying(20) DEFAULT 'ativa'::character varying,
    CONSTRAINT permanencias_dia_da_semana_check CHECK (((dia_da_semana)::text = ANY ((ARRAY['Segunda-feira'::character varying, 'Terça-feira'::character varying, 'Quarta-feira'::character varying, 'Quinta-feira'::character varying, 'Sexta-feira'::character varying, 'Sábado'::character varying, 'Domingo'::character varying])::text[]))),
    CONSTRAINT permanencias_status_check CHECK (((status)::text = ANY ((ARRAY['ativa'::character varying, 'cancelada'::character varying, 'professor_ausente'::character varying])::text[])))
);


ALTER TABLE public.permanencias OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16453)
-- Name: permanencias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permanencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permanencias_id_seq OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 219
-- Name: permanencias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permanencias_id_seq OWNED BY public.permanencias.id;


--
-- TOC entry 4755 (class 2604 OID 16457)
-- Name: permanencias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permanencias ALTER COLUMN id SET DEFAULT nextval('public.permanencias_id_seq'::regclass);


--
-- TOC entry 4909 (class 0 OID 16454)
-- Dependencies: 220
-- Data for Name: permanencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permanencias (id, hora_inicio, hora_fim, sala, dia_da_semana, status) FROM stdin;
4	11:11:00	22:22:00	f211	Terça-feira	ativa
\.


--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 219
-- Name: permanencias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permanencias_id_seq', 4, true);


--
-- TOC entry 4760 (class 2606 OID 16466)
-- Name: permanencias permanencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permanencias
    ADD CONSTRAINT permanencias_pkey PRIMARY KEY (id);


-- Completed on 2026-03-09 17:29:47

--
-- PostgreSQL database dump complete
--

\unrestrict 7XrI4ekr8ZZh9Yi4RHWfnOeEKEcEjgE182cV2xGnI3K3saM4UBIbJkx5QrKyVaW

