--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-07-31 15:23:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3422 (class 0 OID 17228)
-- Dependencies: 263
-- Data for Name: bba_admin_adminmenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_adminmenu (id, admin_menu_id, admin_menu_name, can_add, can_edit, can_view, can_delete, update_permission, created_at, updated_at, parent_id_id, menu_url, menu_icon) FROM stdin;
28	28	Enquiries	t	t	t	t	f	2024-02-13 12:28:00.144765+05:30	2024-03-14 18:11:03.060214+05:30	27	manage-enquiries	pe-7s-mail-open-file
30	30	Locations	t	t	t	t	f	2024-02-13 12:33:03.863737+05:30	2024-03-14 18:13:07.958785+05:30	29	manage-location	pe-7s-map-marker
24	24	Manage Corporate Banners	t	t	t	t	f	2024-02-13 12:01:47.065487+05:30	2024-03-27 13:51:28.673851+05:30	22	manage-banners	pe-7s-photo
17	17	DASHBOARD	f	f	f	f	f	2024-02-13 11:49:30.247411+05:30	2024-02-13 12:16:05.398406+05:30	\N	\N	\N
22	22	CONTENT MANAGEMENT	f	f	f	f	f	2024-02-13 11:55:43.618417+05:30	2024-02-13 12:16:41.071855+05:30	\N	\N	\N
19	19	USER MANAGEMENT	f	f	f	f	f	2024-02-13 11:54:43.816136+05:30	2024-02-13 12:17:01.608209+05:30	\N	\N	\N
27	27	MANAGE ENQUIRIES	f	f	f	f	f	2024-02-13 12:27:32.205889+05:30	2024-02-13 12:27:32.205909+05:30	\N	\N	\N
29	29	SETTINGS	f	f	f	f	f	2024-02-13 12:32:32.180965+05:30	2024-02-13 12:32:32.180985+05:30	\N	\N	\N
31	31	General Settings	t	t	t	t	f	2024-02-13 12:33:41.798948+05:30	2024-03-10 15:15:34.967527+05:30	29	manage-settings	pe-7s-settings
25	25	Manage Corporate Menu	t	t	t	t	f	2024-02-13 12:02:19.553081+05:30	2024-03-10 15:16:46.451455+05:30	22	manage-corporate-menu	pe-7s-display2
26	26	Manage Location Websites	t	t	t	t	f	2024-02-13 12:26:47.151955+05:30	2024-03-10 15:17:14.283733+05:30	22	manage-location-website	pe-7s-display1
21	21	Manage Role & Permission	t	t	t	t	t	2024-02-13 11:55:20.220684+05:30	2024-03-10 15:17:41.364208+05:30	19	admin-role	pe-7s-lock
20	20	Manage Admin Users	t	t	t	t	f	2024-02-13 11:55:00.070407+05:30	2024-03-10 15:18:02.137373+05:30	19	admin-users	pe-7s-users
18	18	Dashboard	t	t	t	t	f	2024-02-13 11:54:15.601411+05:30	2024-03-10 15:20:56.320267+05:30	17	dashboard	pe-7s-culture
23	23	Manage Corporate Pages	t	t	t	t	f	2024-02-13 12:01:09.880556+05:30	2024-03-10 15:24:33.503761+05:30	22	manage-pages	pe-7s-news-paper
32	32	Manage Home Blocks	t	t	t	t	f	2024-03-05 19:23:48.3749+05:30	2024-03-14 15:10:37.565717+05:30	22	manage-home-blocks	pe-7s-home
33	33	Career	t	t	t	t	f	2024-03-14 17:32:14.605851+05:30	2024-03-14 17:32:14.605869+05:30	27	manage-career	pe-7s-id
34	34	Manage Blog	t	t	t	t	f	2024-03-14 17:33:31.686423+05:30	2024-03-14 17:33:31.68644+05:30	22	manage-blog	pe-7s-comment
\.


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 262
-- Name: bba_admin_adminmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_adminmenu_id_seq', 34, true);


-- Completed on 2024-07-31 15:23:27

--
-- PostgreSQL database dump complete
--

