--
-- PostgreSQL database dump
--

\restrict N9FV66HCb9k3oKRs2lz35HbHss7PfRaMobEbmbYEs2dY78Rt7kcBDobqdN07WlE

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-07-28 08:32:07

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
-- TOC entry 226 (class 1259 OID 16479)
-- Name: acompanhantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acompanhantes (
    id_acompanhante integer NOT NULL,
    nome character varying(50),
    cpf character varying(14),
    id_paciente integer
);


ALTER TABLE public.acompanhantes OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16478)
-- Name: acompanhantes_id_acompanhante_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.acompanhantes_id_acompanhante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.acompanhantes_id_acompanhante_seq OWNER TO postgres;

--
-- TOC entry 4999 (class 0 OID 0)
-- Dependencies: 225
-- Name: acompanhantes_id_acompanhante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.acompanhantes_id_acompanhante_seq OWNED BY public.acompanhantes.id_acompanhante;


--
-- TOC entry 220 (class 1259 OID 16423)
-- Name: bloco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bloco (
    id_do_bloco integer NOT NULL,
    nome character varying(50) NOT NULL
);


ALTER TABLE public.bloco OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16422)
-- Name: bloco_id_do_bloco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bloco_id_do_bloco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bloco_id_do_bloco_seq OWNER TO postgres;

--
-- TOC entry 5000 (class 0 OID 0)
-- Dependencies: 219
-- Name: bloco_id_do_bloco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bloco_id_do_bloco_seq OWNED BY public.bloco.id_do_bloco;


--
-- TOC entry 222 (class 1259 OID 16440)
-- Name: leito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.leito (
    id_leito integer NOT NULL,
    numero_leito character varying(20),
    id_do_bloco integer
);


ALTER TABLE public.leito OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16439)
-- Name: leito_id_leito_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.leito_id_leito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.leito_id_leito_seq OWNER TO postgres;

--
-- TOC entry 5001 (class 0 OID 0)
-- Dependencies: 221
-- Name: leito_id_leito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.leito_id_leito_seq OWNED BY public.leito.id_leito;


--
-- TOC entry 224 (class 1259 OID 16466)
-- Name: pacientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pacientes (
    id_paciente integer NOT NULL,
    nome_paciente character varying(30),
    cpf character varying(14),
    endereco character varying(30),
    convenio character varying(30),
    id_do_leito integer
);


ALTER TABLE public.pacientes OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16465)
-- Name: pacientes_id_paciente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pacientes_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pacientes_id_paciente_seq OWNER TO postgres;

--
-- TOC entry 5002 (class 0 OID 0)
-- Dependencies: 223
-- Name: pacientes_id_paciente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pacientes_id_paciente_seq OWNED BY public.pacientes.id_paciente;


--
-- TOC entry 4827 (class 2604 OID 16482)
-- Name: acompanhantes id_acompanhante; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acompanhantes ALTER COLUMN id_acompanhante SET DEFAULT nextval('public.acompanhantes_id_acompanhante_seq'::regclass);


--
-- TOC entry 4824 (class 2604 OID 16426)
-- Name: bloco id_do_bloco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloco ALTER COLUMN id_do_bloco SET DEFAULT nextval('public.bloco_id_do_bloco_seq'::regclass);


--
-- TOC entry 4825 (class 2604 OID 16443)
-- Name: leito id_leito; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leito ALTER COLUMN id_leito SET DEFAULT nextval('public.leito_id_leito_seq'::regclass);


--
-- TOC entry 4826 (class 2604 OID 16469)
-- Name: pacientes id_paciente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes ALTER COLUMN id_paciente SET DEFAULT nextval('public.pacientes_id_paciente_seq'::regclass);


--
-- TOC entry 4993 (class 0 OID 16479)
-- Dependencies: 226
-- Data for Name: acompanhantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acompanhantes (id_acompanhante, nome, cpf, id_paciente) FROM stdin;
1	Ronaldo aparecido	\N	1
2	Kid bengala	\N	2
3	ted	\N	3
4	João Renato	\N	7
5	Livia	\N	8
\.


--
-- TOC entry 4987 (class 0 OID 16423)
-- Dependencies: 220
-- Data for Name: bloco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bloco (id_do_bloco, nome) FROM stdin;
1	Bloco 1
2	Bloco 2
3	Bloco 3/Pediatria
\.


--
-- TOC entry 4989 (class 0 OID 16440)
-- Dependencies: 222
-- Data for Name: leito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.leito (id_leito, numero_leito, id_do_bloco) FROM stdin;
1	100	1
2	101	1
3	200	2
\.


--
-- TOC entry 4991 (class 0 OID 16466)
-- Dependencies: 224
-- Data for Name: pacientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pacientes (id_paciente, nome_paciente, cpf, endereco, convenio, id_do_leito) FROM stdin;
1	Antônio Luiz Carvalho de Faria	11987953606	Rua Edson Lanes Barbosa	sus	1
3	Gustavo Felipe	99999999888	Rua teste da silva siqueira	sus	3
2	Arthur Henrique Campos	99999999999	Rua teste da silva	sus	2
7	Arthur Alves	45678198612	Rua domingues	unimed	\N
8	Pedro Lucas	15468795361	Rua frei galvao	Cassi	\N
\.


--
-- TOC entry 5003 (class 0 OID 0)
-- Dependencies: 225
-- Name: acompanhantes_id_acompanhante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acompanhantes_id_acompanhante_seq', 5, true);


--
-- TOC entry 5004 (class 0 OID 0)
-- Dependencies: 219
-- Name: bloco_id_do_bloco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bloco_id_do_bloco_seq', 3, true);


--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 221
-- Name: leito_id_leito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.leito_id_leito_seq', 3, true);


--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 223
-- Name: pacientes_id_paciente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pacientes_id_paciente_seq', 8, true);


--
-- TOC entry 4835 (class 2606 OID 16485)
-- Name: acompanhantes acompanhantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acompanhantes
    ADD CONSTRAINT acompanhantes_pkey PRIMARY KEY (id_acompanhante);


--
-- TOC entry 4829 (class 2606 OID 16430)
-- Name: bloco bloco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bloco
    ADD CONSTRAINT bloco_pkey PRIMARY KEY (id_do_bloco);


--
-- TOC entry 4831 (class 2606 OID 16446)
-- Name: leito leito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leito
    ADD CONSTRAINT leito_pkey PRIMARY KEY (id_leito);


--
-- TOC entry 4833 (class 2606 OID 16472)
-- Name: pacientes pacientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id_paciente);


--
-- TOC entry 4838 (class 2606 OID 16486)
-- Name: acompanhantes acompanhantes_id_paciente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acompanhantes
    ADD CONSTRAINT acompanhantes_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id_paciente);


--
-- TOC entry 4836 (class 2606 OID 16447)
-- Name: leito leito_id_do_bloco_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leito
    ADD CONSTRAINT leito_id_do_bloco_fkey FOREIGN KEY (id_do_bloco) REFERENCES public.bloco(id_do_bloco);


--
-- TOC entry 4837 (class 2606 OID 16473)
-- Name: pacientes pacientes_id_do_leito_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_id_do_leito_fkey FOREIGN KEY (id_do_leito) REFERENCES public.leito(id_leito);


-- Completed on 2026-07-28 08:32:07

--
-- PostgreSQL database dump complete
--

\unrestrict N9FV66HCb9k3oKRs2lz35HbHss7PfRaMobEbmbYEs2dY78Rt7kcBDobqdN07WlE

