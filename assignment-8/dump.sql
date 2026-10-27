--
-- PostgreSQL database dump
--

\restrict HGeRIYVg9WPv37PVyqz99VyHTCEbzh0lLb4sYCFu5YK4jm7Tm9g7d4NiAuaHrFv

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
    room character varying(50),
    purchase_date date NOT NULL
);


ALTER TABLE public.equipment OWNER TO postgres;

--
-- Data for Name: equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipment (inventory_number, kind, model, room, purchase_date) FROM stdin;
INV-001	Computer	Dell OptiPlex 3060	Room 101	2018-05-10
INV-002	Monitor	Dell E2418H	Room 101	2018-06-15
INV-003	Projector	Epson EB-S41	Room 102	2019-01-20
INV-004	Printer	HP LaserJet Pro M404n	Room 102	2024-02-10
INV-005	Computer	Lenovo ThinkCentre M70q	Room 103	2023-05-12
INV-006	Monitor	HP P22v G4	Room 103	2023-05-12
INV-009	Printer	Brother HL-L2350DW	Room 101	2021-08-30
INV-010	Computer	ASUS ExpertCenter D5	Room 102	2024-09-01
INV-007	Projector	BenQ MW560	\N	2022-11-05
INV-008	Computer	Apple Mac Mini M2	\N	2025-01-10
\.


--
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (inventory_number);


--
-- PostgreSQL database dump complete
--

\unrestrict HGeRIYVg9WPv37PVyqz99VyHTCEbzh0lLb4sYCFu5YK4jm7Tm9g7d4NiAuaHrFv

