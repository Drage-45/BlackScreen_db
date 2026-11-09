--
-- PostgreSQL database dump
--

\restrict h7NgCD0nMU7z3UCZkGevW27FwDmNFSGoC198p9Pg1LrN6SgaGvPUlDO661cSBzg

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-09 11:26:18

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
-- TOC entry 224 (class 1259 OID 16473)
-- Name: compras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compras (
    id integer NOT NULL,
    id_funcion integer,
    nombre_cliente character varying(100) NOT NULL,
    cantidad_boleta integer NOT NULL,
    total numeric(10,2) NOT NULL,
    fecha_compra timestamp without time zone NOT NULL
);


ALTER TABLE public.compras OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16472)
-- Name: compras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.compras_id_seq OWNER TO postgres;

--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 223
-- Name: compras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compras_id_seq OWNED BY public.compras.id;


--
-- TOC entry 222 (class 1259 OID 16443)
-- Name: funciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funciones (
    id integer NOT NULL,
    id_pelicula integer,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    sala character varying(20) NOT NULL,
    precio numeric(10,2) NOT NULL,
    asientos_disponibles integer NOT NULL
);


ALTER TABLE public.funciones OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16442)
-- Name: funciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.funciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.funciones_id_seq OWNER TO postgres;

--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 221
-- Name: funciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funciones_id_seq OWNED BY public.funciones.id;


--
-- TOC entry 220 (class 1259 OID 16431)
-- Name: peliculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculas (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    genero character varying(15) NOT NULL,
    duracion character varying(10) NOT NULL,
    clasificacion character varying(5) NOT NULL
);


ALTER TABLE public.peliculas OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16430)
-- Name: peliculas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.peliculas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.peliculas_id_seq OWNER TO postgres;

--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 219
-- Name: peliculas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.peliculas_id_seq OWNED BY public.peliculas.id;


--
-- TOC entry 4868 (class 2604 OID 16476)
-- Name: compras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras ALTER COLUMN id SET DEFAULT nextval('public.compras_id_seq'::regclass);


--
-- TOC entry 4867 (class 2604 OID 16446)
-- Name: funciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funciones ALTER COLUMN id SET DEFAULT nextval('public.funciones_id_seq'::regclass);


--
-- TOC entry 4866 (class 2604 OID 16434)
-- Name: peliculas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculas ALTER COLUMN id SET DEFAULT nextval('public.peliculas_id_seq'::regclass);


--
-- TOC entry 5029 (class 0 OID 16473)
-- Dependencies: 224
-- Data for Name: compras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compras (id, id_funcion, nombre_cliente, cantidad_boleta, total, fecha_compra) FROM stdin;
\.


--
-- TOC entry 5027 (class 0 OID 16443)
-- Dependencies: 222
-- Data for Name: funciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funciones (id, id_pelicula, fecha, hora, sala, precio, asientos_disponibles) FROM stdin;
\.


--
-- TOC entry 5025 (class 0 OID 16431)
-- Dependencies: 220
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculas (id, titulo, genero, duracion, clasificacion) FROM stdin;
\.


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 223
-- Name: compras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compras_id_seq', 1, false);


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 221
-- Name: funciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funciones_id_seq', 1, false);


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 219
-- Name: peliculas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.peliculas_id_seq', 1, false);


--
-- TOC entry 4874 (class 2606 OID 16483)
-- Name: compras compras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (id);


--
-- TOC entry 4872 (class 2606 OID 16454)
-- Name: funciones funciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funciones
    ADD CONSTRAINT funciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4870 (class 2606 OID 16441)
-- Name: peliculas peliculas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_pkey PRIMARY KEY (id);


--
-- TOC entry 4876 (class 2606 OID 16484)
-- Name: compras compras_id_funcion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_id_funcion_fkey FOREIGN KEY (id_funcion) REFERENCES public.funciones(id) ON DELETE CASCADE;


--
-- TOC entry 4875 (class 2606 OID 16455)
-- Name: funciones funciones_id_pelicula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funciones
    ADD CONSTRAINT funciones_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.peliculas(id) ON DELETE CASCADE;


-- Completed on 2026-11-09 11:26:19

--
-- PostgreSQL database dump complete
--

\unrestrict h7NgCD0nMU7z3UCZkGevW27FwDmNFSGoC198p9Pg1LrN6SgaGvPUlDO661cSBzg

