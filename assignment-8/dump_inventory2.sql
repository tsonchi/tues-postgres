--
-- PostgreSQL database dump
--

\restrict prgEbuFQaF7tg5AumGxq3HUfDPEhMSkTB5OzYiVIgabMgbSVnlt5kYZ98CEaOuE

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.6 (Debian 18.6-1.pgdg13+2)

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
-- Name: equipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipment (
    inventory_number character varying(50) NOT NULL,
    kind character varying(50) NOT NULL,
    model character varying(100) NOT NULL,
    room_id integer,
    purchase_date date NOT NULL
);


ALTER TABLE public.equipment OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    room_id integer NOT NULL,
    room_name character varying(50) NOT NULL
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: rooms_room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rooms_room_id_seq OWNER TO postgres;

--
-- Name: rooms_room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_room_id_seq OWNED BY public.rooms.room_id;


--
-- Name: rooms room_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms ALTER COLUMN room_id SET DEFAULT nextval('public.rooms_room_id_seq'::regclass);


--
-- Data for Name: equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipment (inventory_number, kind, model, room_id, purchase_date) FROM stdin;
INV-001	Computer	Dell OptiPlex 3060	1	2018-05-10
INV-002	Monitor	Dell E2418H	1	2018-06-15
INV-003	Projector	Epson EB-S41	2	2019-01-20
INV-004	Printer	HP LaserJet Pro M404n	2	2024-02-10
INV-005	Computer	Lenovo ThinkCentre M70q	3	2023-05-12
INV-006	Monitor	HP P22v G4	3	2023-05-12
INV-009	Printer	Brother HL-L2350DW	1	2021-08-30
INV-010	Computer	ASUS ExpertCenter D5	2	2024-09-01
INV-007	Projector	BenQ MW560	\N	2022-11-05
INV-008	Computer	Apple Mac Mini M2	\N	2025-01-10
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (room_id, room_name) FROM stdin;
1	Room 101
2	Room 102
3	Room 103
\.


--
-- Name: rooms_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_room_id_seq', 1, false);


--
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (inventory_number);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (room_id);


--
-- Name: rooms rooms_room_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_room_name_key UNIQUE (room_name);


--
-- Name: equipment equipment_room_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_room_id_fkey FOREIGN KEY (room_id) REFERENCES public.rooms(room_id);


--
-- PostgreSQL database dump complete
--

\unrestrict prgEbuFQaF7tg5AumGxq3HUfDPEhMSkTB5OzYiVIgabMgbSVnlt5kYZ98CEaOuE

