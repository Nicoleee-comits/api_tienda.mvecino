--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-11-11 21:20:54

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
-- TOC entry 225 (class 1259 OID 16527)
-- Name: DetalleVenta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DetalleVenta" (
    id integer NOT NULL,
    id_venta integer,
    id_producto integer,
    cantidad integer,
    subtotal numeric,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DetalleVenta" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16526)
-- Name: DetalleVenta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DetalleVenta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."DetalleVenta_id_seq" OWNER TO postgres;

--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 224
-- Name: DetalleVenta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DetalleVenta_id_seq" OWNED BY public."DetalleVenta".id;


--
-- TOC entry 221 (class 1259 OID 16509)
-- Name: Productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Productos" (
    id integer NOT NULL,
    nombre character varying(255),
    precio numeric,
    cantidad integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Productos" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16508)
-- Name: Productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Productos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Productos_id_seq" OWNER TO postgres;

--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 220
-- Name: Productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Productos_id_seq" OWNED BY public."Productos".id;


--
-- TOC entry 217 (class 1259 OID 16494)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16500)
-- Name: Usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuarios" (
    id integer NOT NULL,
    nombre character varying(255),
    email character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Usuarios" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16499)
-- Name: Usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Usuarios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Usuarios_id_seq" OWNER TO postgres;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuarios_id_seq" OWNED BY public."Usuarios".id;


--
-- TOC entry 223 (class 1259 OID 16518)
-- Name: Venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Venta" (
    id integer NOT NULL,
    fecha timestamp with time zone,
    total numeric,
    id_usuario integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Venta" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16517)
-- Name: Venta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Venta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Venta_id_seq" OWNER TO postgres;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 222
-- Name: Venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Venta_id_seq" OWNED BY public."Venta".id;


--
-- TOC entry 4764 (class 2604 OID 16530)
-- Name: DetalleVenta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetalleVenta" ALTER COLUMN id SET DEFAULT nextval('public."DetalleVenta_id_seq"'::regclass);


--
-- TOC entry 4762 (class 2604 OID 16512)
-- Name: Productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Productos" ALTER COLUMN id SET DEFAULT nextval('public."Productos_id_seq"'::regclass);


--
-- TOC entry 4761 (class 2604 OID 16503)
-- Name: Usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios" ALTER COLUMN id SET DEFAULT nextval('public."Usuarios_id_seq"'::regclass);


--
-- TOC entry 4763 (class 2604 OID 16521)
-- Name: Venta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Venta" ALTER COLUMN id SET DEFAULT nextval('public."Venta_id_seq"'::regclass);


--
-- TOC entry 4928 (class 0 OID 16527)
-- Dependencies: 225
-- Data for Name: DetalleVenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DetalleVenta" (id, id_venta, id_producto, cantidad, subtotal, "createdAt", "updatedAt") FROM stdin;
1	1	1	2	3.4	2025-11-11 00:00:00-05	2025-11-11 00:00:00-05
\.


--
-- TOC entry 4924 (class 0 OID 16509)
-- Dependencies: 221
-- Data for Name: Productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Productos" (id, nombre, precio, cantidad, "createdAt", "updatedAt") FROM stdin;
1	Arroz	1.25	3	2025-11-11 00:00:00-05	2025-11-11 00:00:00-05
\.


--
-- TOC entry 4920 (class 0 OID 16494)
-- Dependencies: 217
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20251110044005-create-usuario.js
20251110044020-create-producto.js
20251110044030-create-venta.js
20251110044039-create-detalle-venta.js
\.


--
-- TOC entry 4922 (class 0 OID 16500)
-- Dependencies: 219
-- Data for Name: Usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuarios" (id, nombre, email, password, "createdAt", "updatedAt") FROM stdin;
1	Nicole la montenegro	nick@mailag.com	holakenito2969	2005-04-23 00:00:00-05	2005-04-23 00:00:00-05
\.


--
-- TOC entry 4926 (class 0 OID 16518)
-- Dependencies: 223
-- Data for Name: Venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Venta" (id, fecha, total, id_usuario, "createdAt", "updatedAt") FROM stdin;
2	2024-12-13 00:00:00-05	9.8	1	2025-11-11 00:00:00-05	2025-11-11 00:00:00-05
\.


--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 224
-- Name: DetalleVenta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DetalleVenta_id_seq"', 1, true);


--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 220
-- Name: Productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Productos_id_seq"', 1, true);


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuarios_id_seq"', 1, true);


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 222
-- Name: Venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Venta_id_seq"', 2, true);


--
-- TOC entry 4774 (class 2606 OID 16534)
-- Name: DetalleVenta DetalleVenta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_pkey" PRIMARY KEY (id);


--
-- TOC entry 4770 (class 2606 OID 16516)
-- Name: Productos Productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_pkey" PRIMARY KEY (id);


--
-- TOC entry 4766 (class 2606 OID 16498)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 4768 (class 2606 OID 16507)
-- Name: Usuarios Usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id);


--
-- TOC entry 4772 (class 2606 OID 16525)
-- Name: Venta Venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Venta"
    ADD CONSTRAINT "Venta_pkey" PRIMARY KEY (id);


-- Completed on 2025-11-11 21:20:55

--
-- PostgreSQL database dump complete
--

