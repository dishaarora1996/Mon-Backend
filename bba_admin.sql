--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2024-07-31 17:51:15

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
-- TOC entry 3659 (class 0 OID 16677)
-- Dependencies: 222
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3655 (class 0 OID 16663)
-- Dependencies: 218
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	bba_admin	employee
8	bba_admin	location
9	bba_admin	menu
10	bba_admin	role
11	bba_admin	menupermission
12	bba_admin	employeelocationassignment
13	bba_admin	country
14	bba_admin	state
15	bba_admin	city
16	bba_admin	corporatepages
17	bba_admin	corporatebanners
18	bba_admin	locationwebsite
19	bba_admin	locationmenuassignment
20	bba_admin	pagesmenuassignment
21	bba_admin	enquiry
22	bba_admin	adminmenu
23	bba_admin	adminmenupermission
24	bba_admin	settings
26	knox	authtoken
27	bba_admin	locationmenumaster
28	bba_admin	locationpostalcodemapping
25	bba_admin	homeblocksection
29	bba_admin	career
30	bba_admin	blog
\.


--
-- TOC entry 3657 (class 0 OID 16671)
-- Dependencies: 220
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add employee	7	add_employee
26	Can change employee	7	change_employee
27	Can delete employee	7	delete_employee
28	Can view employee	7	view_employee
29	Can add location	8	add_location
30	Can change location	8	change_location
31	Can delete location	8	delete_location
32	Can view location	8	view_location
33	Can add menu	9	add_menu
34	Can change menu	9	change_menu
35	Can delete menu	9	delete_menu
36	Can view menu	9	view_menu
37	Can add role	10	add_role
38	Can change role	10	change_role
39	Can delete role	10	delete_role
40	Can view role	10	view_role
41	Can add menu permission	11	add_menupermission
42	Can change menu permission	11	change_menupermission
43	Can delete menu permission	11	delete_menupermission
44	Can view menu permission	11	view_menupermission
45	Can add employee location assignment	12	add_employeelocationassignment
46	Can change employee location assignment	12	change_employeelocationassignment
47	Can delete employee location assignment	12	delete_employeelocationassignment
48	Can view employee location assignment	12	view_employeelocationassignment
49	Can add country	13	add_country
50	Can change country	13	change_country
51	Can delete country	13	delete_country
52	Can view country	13	view_country
53	Can add state	14	add_state
54	Can change state	14	change_state
55	Can delete state	14	delete_state
56	Can view state	14	view_state
57	Can add city	15	add_city
58	Can change city	15	change_city
59	Can delete city	15	delete_city
60	Can view city	15	view_city
61	Can add corporate pages	16	add_corporatepages
62	Can change corporate pages	16	change_corporatepages
63	Can delete corporate pages	16	delete_corporatepages
64	Can view corporate pages	16	view_corporatepages
65	Can add corporate banners	17	add_corporatebanners
66	Can change corporate banners	17	change_corporatebanners
67	Can delete corporate banners	17	delete_corporatebanners
68	Can view corporate banners	17	view_corporatebanners
69	Can add location website	18	add_locationwebsite
70	Can change location website	18	change_locationwebsite
71	Can delete location website	18	delete_locationwebsite
72	Can view location website	18	view_locationwebsite
73	Can add location menu assignment	19	add_locationmenuassignment
74	Can change location menu assignment	19	change_locationmenuassignment
75	Can delete location menu assignment	19	delete_locationmenuassignment
76	Can view location menu assignment	19	view_locationmenuassignment
77	Can add pages menu assignment	20	add_pagesmenuassignment
78	Can change pages menu assignment	20	change_pagesmenuassignment
79	Can delete pages menu assignment	20	delete_pagesmenuassignment
80	Can view pages menu assignment	20	view_pagesmenuassignment
81	Can add enquiry	21	add_enquiry
82	Can change enquiry	21	change_enquiry
83	Can delete enquiry	21	delete_enquiry
84	Can view enquiry	21	view_enquiry
85	Can add admin menu	22	add_adminmenu
86	Can change admin menu	22	change_adminmenu
87	Can delete admin menu	22	delete_adminmenu
88	Can view admin menu	22	view_adminmenu
89	Can add admin menu permission	23	add_adminmenupermission
90	Can change admin menu permission	23	change_adminmenupermission
91	Can delete admin menu permission	23	delete_adminmenupermission
92	Can view admin menu permission	23	view_adminmenupermission
93	Can add settings	24	add_settings
94	Can change settings	24	change_settings
95	Can delete settings	24	delete_settings
96	Can view settings	24	view_settings
97	Can add block section	25	add_blocksection
98	Can change block section	25	change_blocksection
99	Can delete block section	25	delete_blocksection
100	Can view block section	25	view_blocksection
101	Can add auth token	26	add_authtoken
102	Can change auth token	26	change_authtoken
103	Can delete auth token	26	delete_authtoken
104	Can view auth token	26	view_authtoken
105	Can add location menu master	27	add_locationmenumaster
106	Can change location menu master	27	change_locationmenumaster
107	Can delete location menu master	27	delete_locationmenumaster
108	Can view location menu master	27	view_locationmenumaster
109	Can add location postal code mapping	28	add_locationpostalcodemapping
110	Can change location postal code mapping	28	change_locationpostalcodemapping
111	Can delete location postal code mapping	28	delete_locationpostalcodemapping
112	Can view location postal code mapping	28	view_locationpostalcodemapping
113	Can add home block section	25	add_homeblocksection
114	Can change home block section	25	change_homeblocksection
115	Can delete home block section	25	delete_homeblocksection
116	Can view home block section	25	view_homeblocksection
117	Can add career	29	add_career
118	Can change career	29	change_career
119	Can delete career	29	delete_career
120	Can view career	29	view_career
121	Can add blog	30	add_blog
122	Can change blog	30	change_blog
123	Can delete blog	30	delete_blog
124	Can view blog	30	view_blog
\.


--
-- TOC entry 3661 (class 0 OID 16685)
-- Dependencies: 224
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3663 (class 0 OID 16691)
-- Dependencies: 226
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
5	pbkdf2_sha256$600000$yuAukjipbombdFpAEUXG91$NOgMD6t1/X7Dk8i5m1Gl+tMUsXjXGg4Cjop3xgcZlUQ=	\N	f	john.paul@gmail.com			john.paul@gmail.com	f	t	2024-02-01 18:36:48.585427+05:30
3	pbkdf2_sha256$600000$OYfDM7nEZbzknYLH7N8VR8$tyw4zzzKFMABZNWo9/TjLsaKcaA5URQH1XYRjLrtf2M=	\N	f	disha@gmail.com			disha@gmail.com	f	t	2024-01-28 13:44:52.770083+05:30
1	pbkdf2_sha256$600000$D1nwPJOvssYR3ouAAnO7D2$CdnvVgKVWtYtO7fxLQGlx1TRY4sa809iJQjDyQgZPPk=	2024-04-05 20:06:39.212551+05:30	t	admin@gmail.com			admin@gmail.com	t	t	2024-01-24 16:03:58.895504+05:30
4	pbkdf2_sha256$600000$c0dUcNzKx6JSQyOUeBVKA2$6aVK0aY5evb5bpBFn4+enfaKjL4olEW+DZxfb1A6adY=	\N	f	joyk@gmail.com			joyk@gmail.com	f	t	2024-01-30 19:43:19.104456+05:30
\.


--
-- TOC entry 3665 (class 0 OID 16699)
-- Dependencies: 228
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3667 (class 0 OID 16705)
-- Dependencies: 230
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3700 (class 0 OID 17228)
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
-- TOC entry 3677 (class 0 OID 16816)
-- Dependencies: 240
-- Data for Name: bba_admin_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_role (id, name, description, status, created_at, updated_at) FROM stdin;
1	Sub Admin	Sub Admin Role	Active	2024-01-25 18:52:13.062093+05:30	2024-01-25 18:52:13.062113+05:30
2	Location Admin	For the location they have access	Active	2024-01-30 19:48:41.399867+05:30	2024-01-30 19:48:41.399893+05:30
3	Content Uploader	for the contents	Active	2024-02-01 18:38:09.806282+05:30	2024-02-01 18:38:09.806308+05:30
4	Super Admin	Super Admin	Active	2024-02-12 10:38:32.162232+05:30	2024-02-12 10:38:32.162255+05:30
\.


--
-- TOC entry 3702 (class 0 OID 17234)
-- Dependencies: 265
-- Data for Name: bba_admin_adminmenupermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_adminmenupermission (id, can_add, can_edit, can_view, can_delete, update_permission, created_at, updated_at, admin_menu_id_id, created_by_id, updated_by_id, role_id_id) FROM stdin;
243	f	t	t	f	f	2024-03-05 19:25:08.74714+05:30	2024-03-05 19:25:08.747158+05:30	32	\N	\N	4
244	t	t	t	t	f	2024-03-14 17:43:15.683666+05:30	2024-03-14 17:43:15.683685+05:30	33	\N	\N	4
245	t	t	t	t	t	2024-03-14 17:43:36.575364+05:30	2024-03-14 17:43:36.575383+05:30	34	\N	\N	4
233	t	t	f	t	f	2024-02-13 12:33:51.404986+05:30	2024-02-13 12:33:51.665763+05:30	20	\N	\N	4
234	t	t	t	t	t	2024-02-13 12:33:51.792568+05:30	2024-02-13 12:33:52.290563+05:30	21	\N	\N	4
235	t	t	f	t	f	2024-02-13 12:33:52.411419+05:30	2024-02-13 12:33:52.654231+05:30	28	\N	\N	4
236	t	t	t	t	f	2024-02-13 12:33:52.776194+05:30	2024-02-13 12:33:53.147618+05:30	30	\N	\N	4
237	t	t	t	t	f	2024-02-13 12:33:53.269903+05:30	2024-02-13 12:33:53.637693+05:30	31	\N	\N	4
238	t	t	t	t	f	2024-02-13 12:33:53.768473+05:30	2024-02-13 12:33:54.156202+05:30	18	\N	\N	4
239	t	t	t	t	f	2024-02-13 12:33:54.288353+05:30	2024-02-13 12:33:54.672136+05:30	25	\N	\N	4
240	t	t	t	t	f	2024-02-13 12:33:54.794403+05:30	2024-02-13 12:33:55.158024+05:30	24	\N	\N	4
241	t	t	t	t	f	2024-02-13 12:33:55.279094+05:30	2024-02-13 12:33:55.643888+05:30	23	\N	\N	4
242	t	t	t	t	f	2024-02-13 12:33:55.765099+05:30	2024-02-13 12:33:56.13429+05:30	26	\N	\N	4
\.


--
-- TOC entry 3681 (class 0 OID 16899)
-- Dependencies: 244
-- Data for Name: bba_admin_country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_country (id, name) FROM stdin;
1	USA
\.


--
-- TOC entry 3683 (class 0 OID 16905)
-- Dependencies: 246
-- Data for Name: bba_admin_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_state (id, name, country_id) FROM stdin;
1	New York	1
2	California	1
3	Illinois	1
4	Texas	1
5	Pennsylvania	1
6	Arizona	1
7	Florida	1
8	Indiana	1
9	Ohio	1
10	North Carolina	1
11	Michigan	1
12	Tennessee	1
13	Massachusetts	1
14	Washington	1
15	Colorado	1
16	District of Columbia	1
17	Maryland	1
18	Kentucky	1
19	Oregon	1
20	Oklahoma	1
21	Wisconsin	1
22	Nevada	1
23	New Mexico	1
24	Missouri	1
25	Virginia	1
26	Georgia	1
27	Nebraska	1
28	Minnesota	1
29	Kansas	1
30	Louisiana	1
31	Hawaii	1
32	Alaska	1
33	New Jersey	1
34	Idaho	1
35	Alabama	1
36	Iowa	1
37	Arkansas	1
38	Utah	1
39	Rhode Island	1
40	Mississippi	1
41	South Dakota	1
42	Connecticut	1
43	South Carolina	1
44	New Hampshire	1
45	North Dakota	1
46	Montana	1
47	Delaware	1
48	Maine	1
49	Wyoming	1
50	West Virginia	1
51	Vermont	1
\.


--
-- TOC entry 3685 (class 0 OID 16911)
-- Dependencies: 248
-- Data for Name: bba_admin_city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_city (id, name, state_id) FROM stdin;
1	New York	1
2	Buffalo	1
3	Rochester	1
4	Yonkers	1
5	Syracuse	1
6	Albany	1
7	New Rochelle	1
8	Mount Vernon	1
9	Schenectady	1
10	Utica	1
11	White Plains	1
12	Hempstead	1
13	Troy	1
14	Niagara Falls	1
15	Binghamton	1
16	Freeport	1
17	Valley Stream	1
18	Los Angeles	2
19	San Diego	2
20	San Jose	2
21	San Francisco	2
22	Fresno	2
23	Sacramento	2
24	Long Beach	2
25	Oakland	2
26	Bakersfield	2
27	Anaheim	2
28	Santa Ana	2
29	Riverside	2
30	Stockton	2
31	Chula Vista	2
32	Irvine	2
33	Fremont	2
34	San Bernardino	2
35	Modesto	2
36	Fontana	2
37	Oxnard	2
38	Moreno Valley	2
39	Huntington Beach	2
40	Glendale	2
41	Santa Clarita	2
42	Garden Grove	2
43	Oceanside	2
44	Rancho Cucamonga	2
45	Santa Rosa	2
46	Ontario	2
47	Lancaster	2
48	Elk Grove	2
49	Corona	2
50	Palmdale	2
51	Salinas	2
52	Pomona	2
53	Hayward	2
54	Escondido	2
55	Torrance	2
56	Sunnyvale	2
57	Orange	2
58	Fullerton	2
59	Pasadena	2
60	Thousand Oaks	2
61	Visalia	2
62	Simi Valley	2
63	Concord	2
64	Roseville	2
65	Victorville	2
66	Santa Clara	2
67	Vallejo	2
68	Berkeley	2
69	El Monte	2
70	Downey	2
71	Costa Mesa	2
72	Inglewood	2
73	Carlsbad	2
74	San Buenaventura (Ventura)	2
75	Fairfield	2
76	West Covina	2
77	Murrieta	2
78	Richmond	2
79	Norwalk	2
80	Antioch	2
81	Temecula	2
82	Burbank	2
83	Daly City	2
84	Rialto	2
85	Santa Maria	2
86	El Cajon	2
87	San Mateo	2
88	Clovis	2
89	Compton	2
90	Jurupa Valley	2
91	Vista	2
92	South Gate	2
93	Mission Viejo	2
94	Vacaville	2
95	Carson	2
96	Hesperia	2
97	Santa Monica	2
98	Westminster	2
99	Redding	2
100	Santa Barbara	2
101	Chico	2
102	Newport Beach	2
103	San Leandro	2
104	San Marcos	2
105	Whittier	2
106	Hawthorne	2
107	Citrus Heights	2
108	Tracy	2
109	Alhambra	2
110	Livermore	2
111	Buena Park	2
112	Menifee	2
113	Hemet	2
114	Lakewood	2
115	Merced	2
116	Chino	2
117	Indio	2
118	Redwood City	2
119	Lake Forest	2
120	Napa	2
121	Tustin	2
122	Bellflower	2
123	Mountain View	2
124	Chino Hills	2
125	Baldwin Park	2
126	Alameda	2
127	Upland	2
128	San Ramon	2
129	Folsom	2
130	Pleasanton	2
131	Union City	2
132	Perris	2
133	Manteca	2
134	Lynwood	2
135	Apple Valley	2
136	Redlands	2
137	Turlock	2
138	Milpitas	2
139	Redondo Beach	2
140	Rancho Cordova	2
141	Yorba Linda	2
142	Palo Alto	2
143	Davis	2
144	Camarillo	2
145	Walnut Creek	2
146	Pittsburg	2
147	South San Francisco	2
148	Yuba City	2
149	San Clemente	2
150	Laguna Niguel	2
151	Pico Rivera	2
152	Montebello	2
153	Lodi	2
154	Madera	2
155	Santa Cruz	2
156	La Habra	2
157	Encinitas	2
158	Monterey Park	2
159	Tulare	2
160	Cupertino	2
161	Gardena	2
162	National City	2
163	Rocklin	2
164	Petaluma	2
165	Huntington Park	2
166	San Rafael	2
167	La Mesa	2
168	Arcadia	2
169	Fountain Valley	2
170	Diamond Bar	2
171	Woodland	2
172	Santee	2
173	Lake Elsinore	2
174	Porterville	2
175	Paramount	2
176	Eastvale	2
177	Rosemead	2
178	Hanford	2
179	Highland	2
180	Brentwood	2
181	Novato	2
182	Colton	2
183	Cathedral City	2
184	Delano	2
185	Yucaipa	2
186	Watsonville	2
187	Placentia	2
188	Glendora	2
189	Gilroy	2
190	Palm Desert	2
191	Cerritos	2
192	West Sacramento	2
193	Aliso Viejo	2
194	Poway	2
195	La Mirada	2
196	Rancho Santa Margarita	2
197	Cypress	2
198	Dublin	2
199	Covina	2
200	Azusa	2
201	Palm Springs	2
202	San Luis Obispo	2
203	Ceres	2
204	San Jacinto	2
205	Lincoln	2
206	Newark	2
207	Lompoc	2
208	El Centro	2
209	Danville	2
210	Bell Gardens	2
211	Coachella	2
212	Rancho Palos Verdes	2
213	San Bruno	2
214	Rohnert Park	2
215	Brea	2
216	La Puente	2
217	Campbell	2
218	San Gabriel	2
219	Beaumont	2
220	Morgan Hill	2
221	Culver City	2
222	Calexico	2
223	Stanton	2
224	La Quinta	2
225	Pacifica	2
226	Montclair	2
227	Oakley	2
228	Monrovia	2
229	Los Banos	2
230	Martinez	2
231	Chicago	3
232	Aurora	3
233	Rockford	3
234	Joliet	3
235	Naperville	3
236	Springfield	3
237	Peoria	3
238	Elgin	3
239	Waukegan	3
240	Cicero	3
241	Champaign	3
242	Bloomington	3
243	Arlington Heights	3
244	Evanston	3
245	Decatur	3
246	Schaumburg	3
247	Bolingbrook	3
248	Palatine	3
249	Skokie	3
250	Des Plaines	3
251	Orland Park	3
252	Tinley Park	3
253	Oak Lawn	3
254	Berwyn	3
255	Mount Prospect	3
256	Normal	3
257	Wheaton	3
258	Hoffman Estates	3
259	Oak Park	3
260	Downers Grove	3
261	Elmhurst	3
262	Glenview	3
263	DeKalb	3
264	Lombard	3
265	Belleville	3
266	Moline	3
267	Buffalo Grove	3
268	Bartlett	3
269	Urbana	3
270	Quincy	3
271	Crystal Lake	3
272	Plainfield	3
273	Streamwood	3
274	Carol Stream	3
275	Romeoville	3
276	Rock Island	3
277	Hanover Park	3
278	Carpentersville	3
279	Wheeling	3
280	Park Ridge	3
281	Addison	3
282	Calumet City	3
283	Houston	4
284	San Antonio	4
285	Dallas	4
286	Austin	4
287	Fort Worth	4
288	El Paso	4
289	Arlington	4
290	Corpus Christi	4
291	Plano	4
292	Laredo	4
293	Lubbock	4
294	Garland	4
295	Irving	4
296	Amarillo	4
297	Grand Prairie	4
298	Brownsville	4
299	Pasadena	4
300	McKinney	4
301	Mesquite	4
302	McAllen	4
303	Killeen	4
304	Frisco	4
305	Waco	4
306	Carrollton	4
307	Denton	4
308	Midland	4
309	Abilene	4
310	Beaumont	4
311	Round Rock	4
312	Odessa	4
313	Wichita Falls	4
314	Richardson	4
315	Lewisville	4
316	Tyler	4
317	College Station	4
318	Pearland	4
319	San Angelo	4
320	Allen	4
321	League City	4
322	Sugar Land	4
323	Longview	4
324	Edinburg	4
325	Mission	4
326	Bryan	4
327	Baytown	4
328	Pharr	4
329	Temple	4
330	Missouri City	4
331	Flower Mound	4
332	Harlingen	4
333	North Richland Hills	4
334	Victoria	4
335	Conroe	4
336	New Braunfels	4
337	Mansfield	4
338	Cedar Park	4
339	Rowlett	4
340	Port Arthur	4
341	Euless	4
342	Georgetown	4
343	Pflugerville	4
344	DeSoto	4
345	San Marcos	4
346	Grapevine	4
347	Bedford	4
348	Galveston	4
349	Cedar Hill	4
350	Texas City	4
351	Wylie	4
352	Haltom City	4
353	Keller	4
354	Coppell	4
355	Rockwall	4
356	Huntsville	4
357	Duncanville	4
358	Sherman	4
359	The Colony	4
360	Burleson	4
361	Hurst	4
362	Lancaster	4
363	Texarkana	4
364	Friendswood	4
365	Weslaco	4
366	Philadelphia	5
367	Pittsburgh	5
368	Allentown	5
369	Erie	5
370	Reading	5
371	Scranton	5
372	Bethlehem	5
373	Lancaster	5
374	Harrisburg	5
375	Altoona	5
376	York	5
377	State College	5
378	Wilkes-Barre	5
379	Phoenix	6
380	Tucson	6
381	Mesa	6
382	Chandler	6
383	Glendale	6
384	Scottsdale	6
385	Gilbert	6
386	Tempe	6
387	Peoria	6
388	Surprise	6
389	Yuma	6
390	Avondale	6
391	Goodyear	6
392	Flagstaff	6
393	Buckeye	6
394	Lake Havasu City	6
395	Casa Grande	6
396	Sierra Vista	6
397	Maricopa	6
398	Oro Valley	6
399	Prescott	6
400	Bullhead City	6
401	Prescott Valley	6
402	Marana	6
403	Apache Junction	6
404	Jacksonville	7
405	Miami	7
406	Tampa	7
407	Orlando	7
408	St. Petersburg	7
409	Hialeah	7
410	Tallahassee	7
411	Fort Lauderdale	7
412	Port St. Lucie	7
413	Cape Coral	7
414	Pembroke Pines	7
415	Hollywood	7
416	Miramar	7
417	Gainesville	7
418	Coral Springs	7
419	Miami Gardens	7
420	Clearwater	7
421	Palm Bay	7
422	Pompano Beach	7
423	West Palm Beach	7
424	Lakeland	7
425	Davie	7
426	Miami Beach	7
427	Sunrise	7
428	Plantation	7
429	Boca Raton	7
430	Deltona	7
431	Largo	7
432	Deerfield Beach	7
433	Palm Coast	7
434	Melbourne	7
435	Boynton Beach	7
436	Lauderhill	7
437	Weston	7
438	Fort Myers	7
439	Kissimmee	7
440	Homestead	7
441	Tamarac	7
442	Delray Beach	7
443	Daytona Beach	7
444	North Miami	7
445	Wellington	7
446	North Port	7
447	Jupiter	7
448	Ocala	7
449	Port Orange	7
450	Margate	7
451	Coconut Creek	7
452	Sanford	7
453	Sarasota	7
454	Pensacola	7
455	Bradenton	7
456	Palm Beach Gardens	7
457	Pinellas Park	7
458	Coral Gables	7
459	Doral	7
460	Bonita Springs	7
461	Apopka	7
462	Titusville	7
463	North Miami Beach	7
464	Oakland Park	7
465	Fort Pierce	7
466	North Lauderdale	7
467	Cutler Bay	7
468	Altamonte Springs	7
469	St. Cloud	7
470	Greenacres	7
471	Ormond Beach	7
472	Ocoee	7
473	Hallandale Beach	7
474	Winter Garden	7
475	Aventura	7
476	Indianapolis	8
477	Fort Wayne	8
478	Evansville	8
479	South Bend	8
480	Carmel	8
481	Bloomington	8
482	Fishers	8
483	Hammond	8
484	Gary	8
485	Muncie	8
486	Lafayette	8
487	Terre Haute	8
488	Kokomo	8
489	Anderson	8
490	Noblesville	8
491	Greenwood	8
492	Elkhart	8
493	Mishawaka	8
494	Lawrence	8
495	Jeffersonville	8
496	Columbus	8
497	Portage	8
498	Columbus	9
499	Cleveland	9
500	Cincinnati	9
501	Toledo	9
502	Akron	9
503	Dayton	9
504	Parma	9
505	Canton	9
506	Youngstown	9
507	Lorain	9
508	Hamilton	9
509	Springfield	9
510	Kettering	9
511	Elyria	9
512	Lakewood	9
513	Cuyahoga Falls	9
514	Middletown	9
515	Euclid	9
516	Newark	9
517	Mansfield	9
518	Mentor	9
519	Beavercreek	9
520	Cleveland Heights	9
521	Strongsville	9
522	Dublin	9
523	Fairfield	9
524	Findlay	9
525	Warren	9
526	Lancaster	9
527	Lima	9
528	Huber Heights	9
529	Westerville	9
530	Marion	9
531	Grove City	9
532	Charlotte	10
533	Raleigh	10
534	Greensboro	10
535	Durham	10
536	Winston-Salem	10
537	Fayetteville	10
538	Cary	10
539	Wilmington	10
540	High Point	10
541	Greenville	10
542	Asheville	10
543	Concord	10
544	Gastonia	10
545	Jacksonville	10
546	Chapel Hill	10
547	Rocky Mount	10
548	Burlington	10
549	Wilson	10
550	Huntersville	10
551	Kannapolis	10
552	Apex	10
553	Hickory	10
554	Goldsboro	10
555	Detroit	11
556	Grand Rapids	11
557	Warren	11
558	Sterling Heights	11
559	Ann Arbor	11
560	Lansing	11
561	Flint	11
562	Dearborn	11
563	Livonia	11
564	Westland	11
565	Troy	11
566	Farmington Hills	11
567	Kalamazoo	11
568	Wyoming	11
569	Southfield	11
570	Rochester Hills	11
571	Taylor	11
572	Pontiac	11
573	St. Clair Shores	11
574	Royal Oak	11
575	Novi	11
576	Dearborn Heights	11
577	Battle Creek	11
578	Saginaw	11
579	Kentwood	11
580	East Lansing	11
581	Roseville	11
582	Portage	11
583	Midland	11
584	Lincoln Park	11
585	Muskegon	11
586	Memphis	12
587	Nashville-Davidson	12
588	Knoxville	12
589	Chattanooga	12
590	Clarksville	12
591	Murfreesboro	12
592	Jackson	12
593	Franklin	12
594	Johnson City	12
595	Bartlett	12
596	Hendersonville	12
597	Kingsport	12
598	Collierville	12
599	Cleveland	12
600	Smyrna	12
601	Germantown	12
602	Brentwood	12
603	Boston	13
604	Worcester	13
605	Springfield	13
606	Lowell	13
607	Cambridge	13
608	New Bedford	13
609	Brockton	13
610	Quincy	13
611	Lynn	13
612	Fall River	13
613	Newton	13
614	Lawrence	13
615	Somerville	13
616	Waltham	13
617	Haverhill	13
618	Malden	13
619	Medford	13
620	Taunton	13
621	Chicopee	13
622	Weymouth Town	13
623	Revere	13
624	Peabody	13
625	Methuen	13
626	Barnstable Town	13
627	Pittsfield	13
628	Attleboro	13
629	Everett	13
630	Salem	13
631	Westfield	13
632	Leominster	13
633	Fitchburg	13
634	Beverly	13
635	Holyoke	13
636	Marlborough	13
637	Woburn	13
638	Chelsea	13
639	Seattle	14
640	Spokane	14
641	Tacoma	14
642	Vancouver	14
643	Bellevue	14
644	Kent	14
645	Everett	14
646	Renton	14
647	Yakima	14
648	Federal Way	14
649	Spokane Valley	14
650	Bellingham	14
651	Kennewick	14
652	Auburn	14
653	Pasco	14
654	Marysville	14
655	Lakewood	14
656	Redmond	14
657	Shoreline	14
658	Richland	14
659	Kirkland	14
660	Burien	14
661	Sammamish	14
662	Olympia	14
663	Lacey	14
664	Edmonds	14
665	Bremerton	14
666	Puyallup	14
667	Denver	15
668	Colorado Springs	15
669	Aurora	15
670	Fort Collins	15
671	Lakewood	15
672	Thornton	15
673	Arvada	15
674	Westminster	15
675	Pueblo	15
676	Centennial	15
677	Boulder	15
678	Greeley	15
679	Longmont	15
680	Loveland	15
681	Grand Junction	15
682	Broomfield	15
683	Castle Rock	15
684	Commerce City	15
685	Parker	15
686	Littleton	15
687	Northglenn	15
688	Washington	16
689	Baltimore	17
690	Frederick	17
691	Rockville	17
692	Gaithersburg	17
693	Bowie	17
694	Hagerstown	17
695	Annapolis	17
696	Louisville/Jefferson County	18
697	Lexington-Fayette	18
698	Bowling Green	18
699	Owensboro	18
700	Covington	18
701	Portland	19
702	Eugene	19
703	Salem	19
704	Gresham	19
705	Hillsboro	19
706	Beaverton	19
707	Bend	19
708	Medford	19
709	Springfield	19
710	Corvallis	19
711	Albany	19
712	Tigard	19
713	Lake Oswego	19
714	Keizer	19
715	Oklahoma City	20
716	Tulsa	20
717	Norman	20
718	Broken Arrow	20
719	Lawton	20
720	Edmond	20
721	Moore	20
722	Midwest City	20
723	Enid	20
724	Stillwater	20
725	Muskogee	20
726	Milwaukee	21
727	Madison	21
728	Green Bay	21
729	Kenosha	21
730	Racine	21
731	Appleton	21
732	Waukesha	21
733	Eau Claire	21
734	Oshkosh	21
735	Janesville	21
736	West Allis	21
737	La Crosse	21
738	Sheboygan	21
739	Wauwatosa	21
740	Fond du Lac	21
741	New Berlin	21
742	Wausau	21
743	Brookfield	21
744	Greenfield	21
745	Beloit	21
746	Las Vegas	22
747	Henderson	22
748	Reno	22
749	North Las Vegas	22
750	Sparks	22
751	Carson City	22
752	Albuquerque	23
753	Las Cruces	23
754	Rio Rancho	23
755	Santa Fe	23
756	Roswell	23
757	Farmington	23
758	Clovis	23
759	Kansas City	24
760	St. Louis	24
761	Springfield	24
762	Independence	24
763	Columbia	24
764	Lee's Summit	24
765	O'Fallon	24
766	St. Joseph	24
767	St. Charles	24
768	St. Peters	24
769	Blue Springs	24
770	Florissant	24
771	Joplin	24
772	Chesterfield	24
773	Jefferson City	24
774	Cape Girardeau	24
775	Virginia Beach	25
776	Norfolk	25
777	Chesapeake	25
778	Richmond	25
779	Newport News	25
780	Alexandria	25
781	Hampton	25
782	Roanoke	25
783	Portsmouth	25
784	Suffolk	25
785	Lynchburg	25
786	Harrisonburg	25
787	Leesburg	25
788	Charlottesville	25
789	Danville	25
790	Blacksburg	25
791	Manassas	25
792	Atlanta	26
793	Columbus	26
794	Augusta-Richmond County	26
795	Savannah	26
796	Athens-Clarke County	26
797	Sandy Springs	26
798	Roswell	26
799	Macon	26
800	Johns Creek	26
801	Albany	26
802	Warner Robins	26
803	Alpharetta	26
804	Marietta	26
805	Valdosta	26
806	Smyrna	26
807	Dunwoody	26
808	Omaha	27
809	Lincoln	27
810	Bellevue	27
811	Grand Island	27
812	Minneapolis	28
813	St. Paul	28
814	Rochester	28
815	Duluth	28
816	Bloomington	28
817	Brooklyn Park	28
818	Plymouth	28
819	St. Cloud	28
820	Eagan	28
821	Woodbury	28
822	Maple Grove	28
823	Eden Prairie	28
824	Coon Rapids	28
825	Burnsville	28
826	Blaine	28
827	Lakeville	28
828	Minnetonka	28
829	Apple Valley	28
830	Edina	28
831	St. Louis Park	28
832	Mankato	28
833	Maplewood	28
834	Moorhead	28
835	Shakopee	28
836	Wichita	29
837	Overland Park	29
838	Kansas City	29
839	Olathe	29
840	Topeka	29
841	Lawrence	29
842	Shawnee	29
843	Manhattan	29
844	Lenexa	29
845	Salina	29
846	Hutchinson	29
847	New Orleans	30
848	Baton Rouge	30
849	Shreveport	30
850	Lafayette	30
851	Lake Charles	30
852	Kenner	30
853	Bossier City	30
854	Monroe	30
855	Alexandria	30
856	Honolulu	31
857	Anchorage	32
858	Newark	33
859	Jersey City	33
860	Paterson	33
861	Elizabeth	33
862	Clifton	33
863	Trenton	33
864	Camden	33
865	Passaic	33
866	Union City	33
867	Bayonne	33
868	East Orange	33
869	Vineland	33
870	New Brunswick	33
871	Hoboken	33
872	Perth Amboy	33
873	West New York	33
874	Plainfield	33
875	Hackensack	33
876	Sayreville	33
877	Kearny	33
878	Linden	33
879	Atlantic City	33
880	Boise City	34
881	Nampa	34
882	Meridian	34
883	Idaho Falls	34
884	Pocatello	34
885	Caldwell	34
886	Coeur d'Alene	34
887	Twin Falls	34
888	Birmingham	35
889	Montgomery	35
890	Mobile	35
891	Huntsville	35
892	Tuscaloosa	35
893	Hoover	35
894	Dothan	35
895	Auburn	35
896	Decatur	35
897	Madison	35
898	Florence	35
899	Gadsden	35
900	Des Moines	36
901	Cedar Rapids	36
902	Davenport	36
903	Sioux City	36
904	Iowa City	36
905	Waterloo	36
906	Council Bluffs	36
907	Ames	36
908	West Des Moines	36
909	Dubuque	36
910	Ankeny	36
911	Urbandale	36
912	Cedar Falls	36
913	Little Rock	37
914	Fort Smith	37
915	Fayetteville	37
916	Springdale	37
917	Jonesboro	37
918	North Little Rock	37
919	Conway	37
920	Rogers	37
921	Pine Bluff	37
922	Bentonville	37
923	Salt Lake City	38
924	West Valley City	38
925	Provo	38
926	West Jordan	38
927	Orem	38
928	Sandy	38
929	Ogden	38
930	St. George	38
931	Layton	38
932	Taylorsville	38
933	South Jordan	38
934	Lehi	38
935	Logan	38
936	Murray	38
937	Draper	38
938	Bountiful	38
939	Riverton	38
940	Roy	38
941	Providence	39
942	Warwick	39
943	Cranston	39
944	Pawtucket	39
945	East Providence	39
946	Woonsocket	39
947	Jackson	40
948	Gulfport	40
949	Southaven	40
950	Hattiesburg	40
951	Biloxi	40
952	Meridian	40
953	Sioux Falls	41
954	Rapid City	41
955	Bridgeport	42
956	New Haven	42
957	Stamford	42
958	Hartford	42
959	Waterbury	42
960	Norwalk	42
961	Danbury	42
962	New Britain	42
963	Meriden	42
964	Bristol	42
965	West Haven	42
966	Milford	42
967	Middletown	42
968	Norwich	42
969	Shelton	42
970	Columbia	43
971	Charleston	43
972	North Charleston	43
973	Mount Pleasant	43
974	Rock Hill	43
975	Greenville	43
976	Summerville	43
977	Sumter	43
978	Goose Creek	43
979	Hilton Head Island	43
980	Florence	43
981	Spartanburg	43
982	Manchester	44
983	Nashua	44
984	Concord	44
985	Fargo	45
986	Bismarck	45
987	Grand Forks	45
988	Minot	45
989	Billings	46
990	Missoula	46
991	Great Falls	46
992	Bozeman	46
993	Wilmington	47
994	Dover	47
995	Portland	48
996	Cheyenne	49
997	Casper	49
998	Charleston	50
999	Huntington	50
1000	Burlington	51
\.


--
-- TOC entry 3673 (class 0 OID 16800)
-- Dependencies: 236
-- Data for Name: bba_admin_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_location (id, loc_name, city_id, state_id, country_id, address, latitude, longitude, status, created_at, updated_at, type) FROM stdin;
7	Corporate	\N	\N	\N	Corporate	\N	\N	Active	2024-03-12 14:51:21.87574+05:30	2024-03-12 14:51:21.875761+05:30	Corporate
8	Wilston	599	12	1	Wilston	12.8989	34.8909	Active	2024-03-12 15:07:34.186887+05:30	2024-03-12 15:07:34.186908+05:30	Location
9	Salvador Avenue	655	14	1	Salvador Avenue	19.8989	36.7642	Active	2024-03-12 15:09:09.53128+05:30	2024-03-12 15:09:09.531301+05:30	Location
10	Baltimore	689	17	1	123 main st	39.280831232541324	-76.86519387428179	Active	2024-04-05 20:09:54.067225+05:30	2024-04-05 20:09:54.067245+05:30	Location
\.


--
-- TOC entry 3715 (class 0 OID 40980)
-- Dependencies: 278
-- Data for Name: bba_admin_blog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_blog (id, blog_title, blog_slug, short_description, long_description, blog_image, meta_title, meta_description, meta_keyword, status, created_at, updated_at, location_id, loc_all) FROM stdin;
3	Applying to College as a Junior in High School – Is it the Right Step?	applying-to-college-as-a-junior-in-high-school-is-it-the-right-step	                                    \r\n                                	<p>At first glance, applying to a college during the junior year of high school looks highly exciting. It holds the potential to gain an edge over its peers and complete high school sooner than expected. However, the truth is that it comes with a rigorous course load, timeframe, and additional stress. To apply to a college as a junior, it is crucial for a student to have a proper plan ahead of time to meet each school&rsquo;s requirements. Time management and proper organization are crucial during this time.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Can You Apply to College as a Junior?</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Most college applications don&rsquo;t specify that the applicants should be seniors in high school to apply. Therefore, technically, high school juniors can apply. The question is, should they?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The answer to the above question will vary depending on every individual&rsquo;s ability to manage the workload and their goals. Before making this decision, it is crucial for a student to speak to a guidance counselor and analyze their knowledge. This is where Bright Brains Academy comes in. Our uniquely tailored education software offers personalized tutoring by analyzing the strengths and weaknesses of the school students.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If a high school junior is accepted into their dream college, they will be able to finish high school a year earlier than their peers. This also allows high school juniors to prepare for their future career before their peers of the same age. However, applying to the college during junior year will not give the applicant a competitive edge.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To be competitive, the junior must complete the same academic and extracurricular feats as the seniors who are applying for the same college. This can leave the students at a disadvantage because they have less time than other students to prepare. This can be highly stressful for the juniors since the courseload will be higher than other high school students.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Working on an accelerated timeline will leave less time for the students to improve their GPAs. This can increase the pressure that students put on themselves to excel in every class. On top of the rigorous workload, the juniors should research the admission requirements for the chosen schools. Some schools might require applicants to submit standardized test scores. The applicants must consider the required score and aim for a score that is high enough to work for all schools. Due to the timeline, the students will have less time to retake the tests if they earn an unsatisfactory score.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>What do Colleges Consider While Choosing Applicants?</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>College admission teams must conduct holistic reviews while scanning applicants. This creates a well-rounded image of an applicant, and it showcases how they can enrich the campus beyond academics. While selecting students for the incoming class, the college admission team will look at the following:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Academics</strong> &ndash; Maintaining a high GPA in rigorous courses showcases a strong work ethic and commitment to academics. College admissions teams consider grades from the applicant&rsquo;s freshman year till the fall of the senior year.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Test Scores</strong>&mdash;Even with the test-optional policies, high standardized test scores will tip the scales in an applicant&rsquo;s favor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Extracurriculars</strong>&mdash;Extracurricular activities, including sports, community services, volunteer opportunities, or passion projects, will offer an insight into the applicants&#39; character and interests beyond academics.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Personal essay</strong> &ndash; This allows the applicants to tell their story directly to the admission team of the college. It offers an in-depth look into the applicant&rsquo;s motivations and the reasons to choose a specific college.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>In Conclusion</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>High school students should start to apply to colleges during the fall of their senior year. This offers students ample time to gain leadership experience and enhance overall grades. Also, it allows students the time to gather outstanding documents necessary for their application. Students should start to prepare for their college application during the summer before the senior year. It offers extra time to focus on drafting, editing, and revising their personal statement. It helps to reduce stress during senior year.</p>\r\n	blog/blog1.jpg		Is it the right decision to apply to college during junior year of high school? If you are facing this dilemma, let us clarify it for you through this blog.		Active	2024-03-18 20:09:17.773847+05:30	2024-03-18 20:09:17.773865+05:30	7	f
4	Best Ways to Improve Your College Admission	best-ways-to-improve-your-college-admission	                                    \r\n                                	<p>College admissions are more competitive than ever for students to get accepted into their dream schools. Strong grades, top test scores, and impressive course rigor are the key factors to getting accepted by the top schools. Now the question is, what else can the students do to stand out? Here are the best ways to strengthen your college application.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Explore Your Options</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>It is crucial to explore all your options. There are around 4000 colleges in the U.S., so it is important not to limit yourself to just a handful of big-name schools. Have an open mind because often, the school that you end up choosing might be the one that you haven&rsquo;t heard of till you started researching. Try to visit the campuses. Visit the big schools, urban schools, small schools, rural schools, schools you love, and the ones that you have never heard of. This will help you realize what you really love or don&rsquo;t love, especially about school.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Take the Tests</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At the test optional schools, good test scores enhance your chances of admission. If you are not applying to college for a while, it is best to assume you won&rsquo;t have the option to skip testing at all the schools on your checklist. Thus, the better alternative is to plan and prepare for taking the SAT and the ACT. This is a crucial way to strengthen the college application.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Making the Right Course Choices</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Early spring is likely when you choose your classes for the next school year. You must give it a lot of thought and make a purposeful decision. Opt for a challenging course that you can handle. Make sure NOT to tank your GPA, but the course should also be a bit challenging. If the school doesn&rsquo;t offer the course rigor that you are hoping for, you should look elsewhere.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Maximize the GPA</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There is no denying that grades are the most important part of the application because, without good grades, none of the other components of the application will get you through the admission process. Evaluate what&rsquo;s working and what&rsquo;s not. What classes are you doing well? What subjects are your strengths? These factors can help you to succeed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Make yourself a realistic study schedule and get organized. If you are struggling, don&rsquo;t hesitate to ask for help. This is where you must get in touch with Bright Brains Academy. Get the proper education you deserve in a methodical way. It is applicable for the parents as well. Our uniquely tailored education software offers personalized tutoring by analyzing the strengths and weaknesses of every student.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Being Passionate About Your Interests</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The activities that a student is involved in reflect a student&rsquo;s interests. Therefore, you must do what you love. Dive deep into your favorite extracurricular activities without thinking about &ldquo;what the colleges want to see.&rdquo; Remember, what a college really wants to see is for the students who have explored and developed their interests so that they can bring passion to the campus. Showing your passion is the best way to strengthen your college application.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Craft Stellar Essays</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You must take time to create stellar essays. Remember that you are not creating a doctoral thesis &ndash; you have to create a compelling story. Thus, you must be yourself &ndash; along with perfect spelling and grammar. You will need support in the process. Your fellow students &ndash; the ones who write well and tutors &ndash; are the people who can offer you support and feedback.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Make the Interviews Count</strong></p>\r\n\r\n<p>You have to prepare yourself ahead of time. Research the type of questions that the interviewer might ask. Communicate with previously admitted students about the interview expectations.</p>\r\n\r\n<p>Know how to answer the common interview questions like &ldquo;What is your greatest weakness?&rdquo; but don&rsquo;t write a script. Remember, the interview is a way for the school to get to know you better.</p>\r\n\r\n<p>Finally, remember the person interviewing you is a dedicated alumni, staff, or current student. They shall have a passion for their school. Thus, they shall appreciate your more if you share the same passion.</p>\r\n	blog/blog2.jpg		It is crucial to consider certain factors when it comes to improving your college admission. Here are the details you must know to improve your college admission.		Active	2024-03-18 20:12:19.474526+05:30	2024-03-18 20:12:19.474544+05:30	7	f
\.


--
-- TOC entry 3713 (class 0 OID 40972)
-- Dependencies: 276
-- Data for Name: bba_admin_career; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_career (id, name, email, phone, career_file, message, created_at, updated_at, location_id) FROM stdin;
1	test	test@gmail.com	8778877887	career/SOURAV_SAMANTA_CV.pdf	Test Here	2024-03-20 17:43:16.358543+05:30	2024-03-20 17:43:16.358564+05:30	7
2	test	test@gmail.com	8778877887	career/SOURAV_SAMANTA_CV_Kd05MvT.pdf	Test Here	2024-03-20 17:44:45.850551+05:30	2024-03-20 17:44:45.850579+05:30	7
\.


--
-- TOC entry 3688 (class 0 OID 17007)
-- Dependencies: 251
-- Data for Name: bba_admin_corporatepages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_corporatepages (id, status, description, meta_title, meta_keywords, meta_description, created_at, updated_at, created_by_id, updated_by_id, page_title, location_id, page_slug) FROM stdin;
50	Active	<section class="why-us-sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="hdr-sec">\r\n                <h6>Why Us</h6>\r\n                <h3>Prepping students to achieve their academic goals!</h3>\r\n            </div>\r\n            <div class="count_para">\r\n                <p>Every student is unique. The right education is the foundation for a better future of a school\r\n                    student. At Bright Brains Academy, students get personalized tutoring. Education cannot be “one size\r\n                    fits all.” It is imperative to get to know the child, his strengths, and weaknesses, and only then\r\n                    customize our solutions to your child’s unique requirements. This is where Bright Brains Academy\r\n                    makes a difference. Our tailored education software shares a questionnaire with the students based\r\n                    on their curriculum. Depending on the answers, their assessment, and evaluation, every student will\r\n                    be provided with customized tutoring by certified and professional teachers.</p>\r\n            </div>\r\n            <div class="missn-sec">\r\n                <div class="line-s"> </div>\r\n                <div class="row">\r\n                    <div class="col-lg-6 col-md-6">\r\n                        <h4>Our Mission</h4>\r\n                        <p>The proper education opens up a world of possibilities for your kid. We are committed to\r\n                            ensuring quality education for every kid in the best way. Bright Brains Academy is dedicated\r\n                            to bringing the most out of every school kid and supporting the child’s academic journey, be\r\n                            it inside or outside of the classroom.</p>\r\n                    </div>\r\n                    <div class="col-lg-6 col-md-6">\r\n                        <h4>Our Vision</h4>\r\n                        <p>At Bright Brains Academy, our vision is to consistently empower students to not only achieve\r\n                            the highest level of academic success but also to become the people who are capable of\r\n                            learning on their own. Our goal is to offer customized solutions to the problems faced by\r\n                            the global student community and ensure academic excellence among every student.</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n<div class="descrip_sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-md-6">\r\n                <div class="des_box">\r\n                    <p>We are the desired learning center for every child. Based on the assessment, every student is\r\n                        provided with individualized attention by certified teachers. Teachers work 1-on-1 with students\r\n                        in small groups to make sure that every child gets the necessary personal attention. The\r\n                        curriculum is customized according to the child’s requirements to make the optimal use of our\r\n                        time and teach students with the concepts needed to succeed academically.</p>\r\n\r\n                    <p>Every decision at Bright Brains Academy is taken keeping in mind the necessary support for the\r\n                        child’s academic journey so that they can be their best version. We believe that regular\r\n                        practice at a constant pace ensures the best results. We prepare school students to become\r\n                        capable of achieving their academic goals. From younger students who need to develop a solid\r\n                        foundation to high school students facing intensely challenging career courses while navigating\r\n                        the college admission processes.</p>\r\n                </div>\r\n            </div>\r\n            <div class="col-md-6">\r\n                <div class="des_box">\r\n                    <p>Our certified teachers can help you get the necessary personalized support to improve test\r\n                        scores, enhance GPAs, and develop winning college applications. Every comprehensive program is\r\n                        designed to support students. From the initial assessment, we obtain a baseline concept of\r\n                        strengths and weaknesses, which we use to tailor our approach to test and prepare the tutoring\r\n                        efforts. Our expert academic team will not only support students academically but also serve as\r\n                        mentors to motivate and guide and motivate them to get admitted to their dream college.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<section class="aboutimg">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-md-6">\r\n                <div class="abtimg_left">\r\n                    <p>Our teachers are state/provincial board certified professionals with years of proven experience\r\n                        and effectiveness in the classroom. They are dedicated to improve education for the students and\r\n                        empower them in achieving academic success. They are available for conferences with parents.\r\n\r\n                        Every program is developed by real teachers. Multiple teachers throughout the organization peer\r\n                        review the programs. We make sure that every program is held to the same standard of excellence.\r\n                        Regardless of whether a student is behind or above their grade level, our teachers can help them\r\n                        in improving them academically.</p>\r\n                    <p>We at Bright Brains Academy are well known for our unparalleled quality. We deliver the highest\r\n                        level of instruction, curriculum, and individualized attention to offer students an academic\r\n                        edge. Rest assured that you can opt for the programs online as well. Regardless of where you\r\n                        are, you can access the programs. Students can attend weekly classes instructed by a real and\r\n                        certified teacher, work on daily assignments, and get feedback on their progress. Students will\r\n                        work on daily homework assignments that are customized specifically for them, and they shall\r\n                        receive feedback on their progress.</p>\r\n                    <p>We at Bright Brains Academy are well known for our unparalleled quality. We deliver the highest\r\n                        level of instruction, curriculum, and individualized attention to offer students an academic\r\n                        edge. Rest assured that you can opt for the programs online as well. Regardless of where you\r\n                        are, you can access the programs. Students can attend weekly classes instructed by a real and\r\n                        certified teacher, work on daily assignments, and get feedback on their progress. Students will\r\n                        work on daily homework assignments that are customized specifically for them, and they shall\r\n                        receive feedback on their progress.</p>\r\n                </div>\r\n            </div>\r\n            <div class="col-md-6">\r\n                <div class="abtimg_right"><img src="https://bright-brain.netlify.app/images/abtimg.png"\r\n                        class="img-fluid" alt=""></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>				2024-03-27 17:29:27.044276+05:30	2024-03-27 17:29:27.044291+05:30	\N	\N	ABOUT US	8	about-us
51	Active					2024-03-27 17:29:27.065031+05:30	2024-03-27 17:29:27.065044+05:30	\N	\N	PROGRAMS	8	programs
52	Active					2024-03-27 17:29:27.071454+05:30	2024-03-27 17:29:27.071467+05:30	\N	\N	OUR TEAM	8	our-team
53	Active	<section class="get-start-sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>01</h2>\r\n                    </div>\r\n                    <h6>Find a Location</h6>\r\n                    <p>Good scores are not enough – students require excellent scores to stand out. That’s where Bright\r\n                        Brains Academy comes in. Are you ready to enroll your child at Bright Brains Academy? The steps\r\n                        are simple! The first step is to enter the postal/zip code of the area that you are in. Once you\r\n                        enter the zip code, our system will show the centers closest to your location. You can enroll\r\n                        your kids to the nearest center.</p>\r\n                </div>\r\n            </div>\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>02</h2>\r\n                    </div>\r\n                    <h6>Schedule an Assessment</h6>\r\n                    <p>Once you have located the nearest center in your area, you can easily schedule an appointment in\r\n                        a few clicks. You can give us a call or you can fill up the form. We shall get in touch with you\r\n                        shortly to discuss your requirements and share our ways to achieve your goals. Bright Brains\r\n                        Academy supports the academic requirements of every student while also empowering them to\r\n                        further excel in their studies.</p>\r\n                </div>\r\n            </div>\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>03</h2>\r\n                    </div>\r\n                    <h6>Book Your Sessions</h6>\r\n                    <p>Booking your sessions is simple. Once your appointment is scheduled, you can visit us and book\r\n                        your sessions. You can also book your sessions online. Personalized tutoring is available in\r\n                        different subjects, and it is conducted by tutors who are certified experts in each subject.\r\n                        Also, they understand the local school system, course curriculum, and grading expectations. Our\r\n                        certified counselors are specially trained to enhance every student’s potential.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n\r\n<div class="descrip_sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-md-12">\r\n                <h3>Our Customized Attention and Tutoring Guarantee</h3>\r\n                <p>With Bright Brains tutoring program, we can assure you of the following:</p>\r\n                <ul>\r\n                    <li>Using Bright Brains software for initial assessment and analysis, our team of certified and\r\n                        professional teachers will get to know the students and create education programs specifically\r\n                        crafted to cater to their needs. Our state-of-the-art software enables us to create accurate\r\n                        questionnaires for students with different curricula, and it helps us to understand exactly\r\n                        where the student needs help. This is why we can ensure that the student gets tailored guidance\r\n                        that will work for them.\r\n                    </li>\r\n                    <li>\r\n                        The student will learn to master new skills. Our professional teachers know how to make the\r\n                        sessions engaging, effective, and fun. Balancing instruction with independence, we don’t stop\r\n                        till the students have become capable enough to master every concept.\r\n                    </li>\r\n                    <li>\r\n                        Students will learn from the curriculum that aligns with the state/provincial educational\r\n                        institutions. The teachers at Bright Brains Academy are always updating our learning materials\r\n                        to cater to the changing education needs of the present day. Our tutoring will help in improving\r\n                        the report cards of a student and prepares them for the future.\r\n                    </li>\r\n                    <li>\r\n                        We make sure that the students are on the path to long-term success. We are so confident in our\r\n                        teaching methods and programs that we can show you exactly how a child is progressing at any\r\n                        time.\r\n                    </li>\r\n\r\n\r\n                </ul>\r\n                <p>Are you ready to propel your child towards academic excellence? Call us today or fill out the form to\r\n                    book an appointment.</p>\r\n            </div>\r\n            <!-- <div class="col-md-6">\r\n                <div class="des_box">\r\n                    <p>Donec tempus felis fermentum, finibus nisi et, sollicitudin metus. Cras imperdiet augue sed\r\n                        viverra faucibus. Donec in mi luctus, ullamcorper nibh non, pellentesque ipsum. Aliquam sit amet\r\n                        lacus nisl. Vivamus tempor magna sed dui vestibulum, at sollicitudin purus rutrum. Pellentesque\r\n                        vel tellus ligula. Quisque lacus leo, fermentum sit amet tempus et, pretium a nisl. Fusce\r\n                        faucibus metus a sem fringilla, ut ultricies nunc hendrerit. Nullam vestibulum est nunc, eget\r\n                        porta turpis cursus a. Etiam porttitor a orci non mattis. Curabitur a ornare sapien. Vestibulum\r\n                        ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam quis purus\r\n                        ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel eros pulvinar,\r\n                        imperdiet leo eget, fringilla augue.</p>\r\n                </div>\r\n            </div> -->\r\n        </div>\r\n    </div>\r\n</div>				2024-03-27 17:29:27.077972+05:30	2024-03-27 17:29:27.077985+05:30	\N	\N	GET STARTED	8	get-started
54	Active					2024-03-27 17:29:27.084849+05:30	2024-03-27 17:29:27.084862+05:30	\N	\N	LOCATIONS	8	locations
55	Active	<p>Why Us</p>\r\n\r\n<h3>Prepping students to achieve their academic goals!</h3>\r\n\r\n<p>Every student is unique. The right education is the foundation for a better future of a school student. At Bright Brains Academy, students get personalized tutoring. Education cannot be &ldquo;one size fits all.&rdquo; It is imperative to get to know the child, his strengths, and weaknesses, and only then customize our solutions to your child&rsquo;s unique requirements. This is where Bright Brains Academy makes a difference. Our tailored education software shares a questionnaire with the students based on their curriculum. Depending on the answers, their assessment, and evaluation, every student will be provided with customized tutoring by certified and professional teachers.</p>\r\n\r\n<p>Our Mission</p>\r\n\r\n<p>The proper education opens up a world of possibilities for your kid. We are committed to ensuring quality education for every kid in the best way. Bright Brains Academy is dedicated to bringing the most out of every school kid and supporting the child&rsquo;s academic journey, be it inside or outside of the classroom.</p>\r\n\r\n<p>Our Vision</p>\r\n\r\n<p>At Bright Brains Academy, our vision is to consistently empower students to not only achieve the highest level of academic success but also to become the people who are capable of learning on their own. Our goal is to offer customized solutions to the problems faced by the global student community and ensure academic excellence among every student.</p>\r\n\r\n<p>We are the desired learning center for every child. Based on the assessment, every student is provided with individualized attention by certified teachers. Teachers work 1-on-1 with students in small groups to make sure that every child gets the necessary personal attention. The curriculum is customized according to the child&rsquo;s requirements to make the optimal use of our time and teach students with the concepts needed to succeed academically.</p>\r\n\r\n<p>Every decision at Bright Brains Academy is taken keeping in mind the necessary support for the child&rsquo;s academic journey so that they can be their best version. We believe that regular practice at a constant pace ensures the best results. We prepare school students to become capable of achieving their academic goals. From younger students who need to develop a solid foundation to high school students facing intensely challenging career courses while navigating the college admission processes.</p>\r\n\r\n<p>Our certified teachers can help you get the necessary personalized support to improve test scores, enhance GPAs, and develop winning college applications. Every comprehensive program is designed to support students. From the initial assessment, we obtain a baseline concept of strengths and weaknesses, which we use to tailor our approach to test and prepare the tutoring efforts. Our expert academic team will not only support students academically but also serve as mentors to motivate and guide and motivate them to get admitted to their dream college.</p>\r\n\r\n<p>Our teachers are state/provincial board certified professionals with years of proven experience and effectiveness in the classroom. They are dedicated to improve education for the students and empower them in achieving academic success. They are available for conferences with parents. Every program is developed by real teachers. Multiple teachers throughout the organization peer review the programs. We make sure that every program is held to the same standard of excellence. Regardless of whether a student is behind or above their grade level, our teachers can help them in improving them academically.</p>\r\n\r\n<p>We at Bright Brains Academy are well known for our unparalleled quality. We deliver the highest level of instruction, curriculum, and individualized attention to offer students an academic edge. Rest assured that you can opt for the programs online as well. Regardless of where you are, you can access the programs. Students can attend weekly classes instructed by a real and certified teacher, work on daily assignments, and get feedback on their progress. Students will work on daily homework assignments that are customized specifically for them, and they shall receive feedback on their progress.</p>\r\n\r\n<p>We at Bright Brains Academy are well known for our unparalleled quality. We deliver the highest level of instruction, curriculum, and individualized attention to offer students an academic edge. Rest assured that you can opt for the programs online as well. Regardless of where you are, you can access the programs. Students can attend weekly classes instructed by a real and certified teacher, work on daily assignments, and get feedback on their progress. Students will work on daily homework assignments that are customized specifically for them, and they shall receive feedback on their progress.</p>\r\n\r\n<p><img alt="" src="https://bright-brain.netlify.app/images/abtimg.png" /></p>\r\n\r\n<p>Take Assesment</p>\r\n				2024-04-05 20:17:41.201934+05:30	2024-04-05 20:17:41.201947+05:30	\N	\N	ABOUT US	10	about-us
56	Active					2024-04-05 20:17:41.222738+05:30	2024-04-05 20:17:41.222753+05:30	\N	\N	PROGRAMS	10	programs
57	Active					2024-04-05 20:17:41.229274+05:30	2024-04-05 20:17:41.229287+05:30	\N	\N	OUR TEAM	10	our-team
58	Active	<section class="get-start-sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>01</h2>\r\n                    </div>\r\n                    <h6>Find a Location</h6>\r\n                    <p>Good scores are not enough – students require excellent scores to stand out. That’s where Bright\r\n                        Brains Academy comes in. Are you ready to enroll your child at Bright Brains Academy? The steps\r\n                        are simple! The first step is to enter the postal/zip code of the area that you are in. Once you\r\n                        enter the zip code, our system will show the centers closest to your location. You can enroll\r\n                        your kids to the nearest center.</p>\r\n                </div>\r\n            </div>\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>02</h2>\r\n                    </div>\r\n                    <h6>Schedule an Assessment</h6>\r\n                    <p>Once you have located the nearest center in your area, you can easily schedule an appointment in\r\n                        a few clicks. You can give us a call or you can fill up the form. We shall get in touch with you\r\n                        shortly to discuss your requirements and share our ways to achieve your goals. Bright Brains\r\n                        Academy supports the academic requirements of every student while also empowering them to\r\n                        further excel in their studies.</p>\r\n                </div>\r\n            </div>\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>03</h2>\r\n                    </div>\r\n                    <h6>Book Your Sessions</h6>\r\n                    <p>Booking your sessions is simple. Once your appointment is scheduled, you can visit us and book\r\n                        your sessions. You can also book your sessions online. Personalized tutoring is available in\r\n                        different subjects, and it is conducted by tutors who are certified experts in each subject.\r\n                        Also, they understand the local school system, course curriculum, and grading expectations. Our\r\n                        certified counselors are specially trained to enhance every student’s potential.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n\r\n<div class="descrip_sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-md-12">\r\n                <h3>Our Customized Attention and Tutoring Guarantee</h3>\r\n                <p>With Bright Brains tutoring program, we can assure you of the following:</p>\r\n                <ul>\r\n                    <li>Using Bright Brains software for initial assessment and analysis, our team of certified and\r\n                        professional teachers will get to know the students and create education programs specifically\r\n                        crafted to cater to their needs. Our state-of-the-art software enables us to create accurate\r\n                        questionnaires for students with different curricula, and it helps us to understand exactly\r\n                        where the student needs help. This is why we can ensure that the student gets tailored guidance\r\n                        that will work for them.\r\n                    </li>\r\n                    <li>\r\n                        The student will learn to master new skills. Our professional teachers know how to make the\r\n                        sessions engaging, effective, and fun. Balancing instruction with independence, we don’t stop\r\n                        till the students have become capable enough to master every concept.\r\n                    </li>\r\n                    <li>\r\n                        Students will learn from the curriculum that aligns with the state/provincial educational\r\n                        institutions. The teachers at Bright Brains Academy are always updating our learning materials\r\n                        to cater to the changing education needs of the present day. Our tutoring will help in improving\r\n                        the report cards of a student and prepares them for the future.\r\n                    </li>\r\n                    <li>\r\n                        We make sure that the students are on the path to long-term success. We are so confident in our\r\n                        teaching methods and programs that we can show you exactly how a child is progressing at any\r\n                        time.\r\n                    </li>\r\n\r\n\r\n                </ul>\r\n                <p>Are you ready to propel your child towards academic excellence? Call us today or fill out the form to\r\n                    book an appointment.</p>\r\n            </div>\r\n            <!-- <div class="col-md-6">\r\n                <div class="des_box">\r\n                    <p>Donec tempus felis fermentum, finibus nisi et, sollicitudin metus. Cras imperdiet augue sed\r\n                        viverra faucibus. Donec in mi luctus, ullamcorper nibh non, pellentesque ipsum. Aliquam sit amet\r\n                        lacus nisl. Vivamus tempor magna sed dui vestibulum, at sollicitudin purus rutrum. Pellentesque\r\n                        vel tellus ligula. Quisque lacus leo, fermentum sit amet tempus et, pretium a nisl. Fusce\r\n                        faucibus metus a sem fringilla, ut ultricies nunc hendrerit. Nullam vestibulum est nunc, eget\r\n                        porta turpis cursus a. Etiam porttitor a orci non mattis. Curabitur a ornare sapien. Vestibulum\r\n                        ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam quis purus\r\n                        ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel eros pulvinar,\r\n                        imperdiet leo eget, fringilla augue.</p>\r\n                </div>\r\n            </div> -->\r\n        </div>\r\n    </div>\r\n</div>				2024-04-05 20:17:41.236126+05:30	2024-04-05 20:17:41.23614+05:30	\N	\N	GET STARTED	10	get-started
59	Active					2024-04-05 20:17:41.245555+05:30	2024-04-05 20:17:41.245569+05:30	\N	\N	EVENTS	10	events
60	Active					2024-04-05 20:17:41.251886+05:30	2024-04-05 20:17:41.251899+05:30	\N	\N	REVIEWS	10	reviews
61	Active					2024-04-05 20:17:41.258819+05:30	2024-04-05 20:17:41.258831+05:30	\N	\N	BLOG	10	blog
62	Active	<section class="heading_block">\r\n    <div class="container">\r\n        <h3 class="heading_title">Apply Online for an Extraordinary Career</h3>\r\n        <p class="heading_para">If you are a qualified, certified, and professional tutor, Bright Brains Academy brings\r\n            you a great opportunity to join hundreds of educators. At Bright Brains Academy, you shall be able to\r\n            connect with numerous children in your local community to offer the customized education and tutoring they\r\n            need in different subjects based on their strengths and weaknesses. Our experienced staff comes from a\r\n            diverse background of certified and trained educators, dedicated administrators, and industry professionals\r\n            who offer the utmost dedication to help improve the lives of countless children through 1-on-1 education,\r\n            instruction, and supportive feedback.</p>\r\n    </div>\r\n</section>				2024-04-05 20:17:41.265065+05:30	2024-04-05 20:17:41.265079+05:30	\N	\N	CAREER	10	career
63	Active					2024-04-05 20:17:41.271187+05:30	2024-04-05 20:17:41.2712+05:30	\N	\N	CONTACT US	10	contact-us
64	Active	<p>asdfg123456</p>\r\n				2024-04-05 20:29:38.898998+05:30	2024-04-05 20:29:38.899017+05:30	1	1	fortestaruppage	7	fortestaruppage
35	Active	<section class="get-start-sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>01</h2>\r\n                    </div>\r\n                    <h6>Find a Location</h6>\r\n                    <p>Good scores are not enough – students require excellent scores to stand out. That’s where Bright\r\n                        Brains Academy comes in. Are you ready to enroll your child at Bright Brains Academy? The steps\r\n                        are simple! The first step is to enter the postal/zip code of the area that you are in. Once you\r\n                        enter the zip code, our system will show the centers closest to your location. You can enroll\r\n                        your kids to the nearest center.</p>\r\n                </div>\r\n            </div>\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>02</h2>\r\n                    </div>\r\n                    <h6>Schedule an Assessment</h6>\r\n                    <p>Once you have located the nearest center in your area, you can easily schedule an appointment in\r\n                        a few clicks. You can give us a call or you can fill up the form. We shall get in touch with you\r\n                        shortly to discuss your requirements and share our ways to achieve your goals. Bright Brains\r\n                        Academy supports the academic requirements of every student while also empowering them to\r\n                        further excel in their studies.</p>\r\n                </div>\r\n            </div>\r\n            <div class="col-lg-4">\r\n                <div class="s-box">\r\n                    <div class="num-box">\r\n                        <h2>03</h2>\r\n                    </div>\r\n                    <h6>Book Your Sessions</h6>\r\n                    <p>Booking your sessions is simple. Once your appointment is scheduled, you can visit us and book\r\n                        your sessions. You can also book your sessions online. Personalized tutoring is available in\r\n                        different subjects, and it is conducted by tutors who are certified experts in each subject.\r\n                        Also, they understand the local school system, course curriculum, and grading expectations. Our\r\n                        certified counselors are specially trained to enhance every student’s potential.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n\r\n<div class="descrip_sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="col-md-12">\r\n                <h3>Our Customized Attention and Tutoring Guarantee</h3>\r\n                <p>With Bright Brains tutoring program, we can assure you of the following:</p>\r\n                <ul>\r\n                    <li>Using Bright Brains software for initial assessment and analysis, our team of certified and\r\n                        professional teachers will get to know the students and create education programs specifically\r\n                        crafted to cater to their needs. Our state-of-the-art software enables us to create accurate\r\n                        questionnaires for students with different curricula, and it helps us to understand exactly\r\n                        where the student needs help. This is why we can ensure that the student gets tailored guidance\r\n                        that will work for them.\r\n                    </li>\r\n                    <li>\r\n                        The student will learn to master new skills. Our professional teachers know how to make the\r\n                        sessions engaging, effective, and fun. Balancing instruction with independence, we don’t stop\r\n                        till the students have become capable enough to master every concept.\r\n                    </li>\r\n                    <li>\r\n                        Students will learn from the curriculum that aligns with the state/provincial educational\r\n                        institutions. The teachers at Bright Brains Academy are always updating our learning materials\r\n                        to cater to the changing education needs of the present day. Our tutoring will help in improving\r\n                        the report cards of a student and prepares them for the future.\r\n                    </li>\r\n                    <li>\r\n                        We make sure that the students are on the path to long-term success. We are so confident in our\r\n                        teaching methods and programs that we can show you exactly how a child is progressing at any\r\n                        time.\r\n                    </li>\r\n\r\n\r\n                </ul>\r\n                <p>Are you ready to propel your child towards academic excellence? Call us today or fill out the form to\r\n                    book an appointment.</p>\r\n            </div>\r\n            <!-- <div class="col-md-6">\r\n                <div class="des_box">\r\n                    <p>Donec tempus felis fermentum, finibus nisi et, sollicitudin metus. Cras imperdiet augue sed\r\n                        viverra faucibus. Donec in mi luctus, ullamcorper nibh non, pellentesque ipsum. Aliquam sit amet\r\n                        lacus nisl. Vivamus tempor magna sed dui vestibulum, at sollicitudin purus rutrum. Pellentesque\r\n                        vel tellus ligula. Quisque lacus leo, fermentum sit amet tempus et, pretium a nisl. Fusce\r\n                        faucibus metus a sem fringilla, ut ultricies nunc hendrerit. Nullam vestibulum est nunc, eget\r\n                        porta turpis cursus a. Etiam porttitor a orci non mattis. Curabitur a ornare sapien. Vestibulum\r\n                        ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam quis purus\r\n                        ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel eros pulvinar,\r\n                        imperdiet leo eget, fringilla augue.</p>\r\n                </div>\r\n            </div> -->\r\n        </div>\r\n    </div>\r\n</div>				2024-03-12 14:53:44.404255+05:30	2024-03-12 14:53:44.404282+05:30	1	1	GET STARTED	7	get-started
40	Active	<section class="heading_block">\r\n    <div class="container">\r\n        <h3 class="heading_title">Apply Online for an Extraordinary Career</h3>\r\n        <p class="heading_para">If you are a qualified, certified, and professional tutor, Bright Brains Academy brings\r\n            you a great opportunity to join hundreds of educators. At Bright Brains Academy, you shall be able to\r\n            connect with numerous children in your local community to offer the customized education and tutoring they\r\n            need in different subjects based on their strengths and weaknesses. Our experienced staff comes from a\r\n            diverse background of certified and trained educators, dedicated administrators, and industry professionals\r\n            who offer the utmost dedication to help improve the lives of countless children through 1-on-1 education,\r\n            instruction, and supportive feedback.</p>\r\n    </div>\r\n</section>				2024-03-12 14:54:33.795094+05:30	2024-03-12 14:54:33.795114+05:30	1	1	CAREER	7	career
32	Active	<p>Why Us</p>\r\n\r\n<h3>Prepping students to achieve their academic goals!</h3>\r\n\r\n<p>Every student is unique. The right education is the foundation for a better future of a school student. At Bright Brains Academy, students get personalized tutoring. Education cannot be &ldquo;one size fits all.&rdquo; It is imperative to get to know the child, his strengths, and weaknesses, and only then customize our solutions to your child&rsquo;s unique requirements. This is where Bright Brains Academy makes a difference. Our tailored education software shares a questionnaire with the students based on their curriculum. Depending on the answers, their assessment, and evaluation, every student will be provided with customized tutoring by certified and professional teachers.</p>\r\n\r\n<p>Our Mission</p>\r\n\r\n<p>The proper education opens up a world of possibilities for your kid. We are committed to ensuring quality education for every kid in the best way. Bright Brains Academy is dedicated to bringing the most out of every school kid and supporting the child&rsquo;s academic journey, be it inside or outside of the classroom.</p>\r\n\r\n<p>Our Vision</p>\r\n\r\n<p>At Bright Brains Academy, our vision is to consistently empower students to not only achieve the highest level of academic success but also to become the people who are capable of learning on their own. Our goal is to offer customized solutions to the problems faced by the global student community and ensure academic excellence among every student.</p>\r\n\r\n<p>We are the desired learning center for every child. Based on the assessment, every student is provided with individualized attention by certified teachers. Teachers work 1-on-1 with students in small groups to make sure that every child gets the necessary personal attention. The curriculum is customized according to the child&rsquo;s requirements to make the optimal use of our time and teach students with the concepts needed to succeed academically.</p>\r\n\r\n<p>Every decision at Bright Brains Academy is taken keeping in mind the necessary support for the child&rsquo;s academic journey so that they can be their best version. We believe that regular practice at a constant pace ensures the best results. We prepare school students to become capable of achieving their academic goals. From younger students who need to develop a solid foundation to high school students facing intensely challenging career courses while navigating the college admission processes.</p>\r\n\r\n<p>Our certified teachers can help you get the necessary personalized support to improve test scores, enhance GPAs, and develop winning college applications. Every comprehensive program is designed to support students. From the initial assessment, we obtain a baseline concept of strengths and weaknesses, which we use to tailor our approach to test and prepare the tutoring efforts. Our expert academic team will not only support students academically but also serve as mentors to motivate and guide and motivate them to get admitted to their dream college.</p>\r\n\r\n<p>Our teachers are state/provincial board certified professionals with years of proven experience and effectiveness in the classroom. They are dedicated to improve education for the students and empower them in achieving academic success. They are available for conferences with parents. Every program is developed by real teachers. Multiple teachers throughout the organization peer review the programs. We make sure that every program is held to the same standard of excellence. Regardless of whether a student is behind or above their grade level, our teachers can help them in improving them academically.</p>\r\n\r\n<p>We at Bright Brains Academy are well known for our unparalleled quality. We deliver the highest level of instruction, curriculum, and individualized attention to offer students an academic edge. Rest assured that you can opt for the programs online as well. Regardless of where you are, you can access the programs. Students can attend weekly classes instructed by a real and certified teacher, work on daily assignments, and get feedback on their progress. Students will work on daily homework assignments that are customized specifically for them, and they shall receive feedback on their progress.</p>\r\n\r\n<p>We at Bright Brains Academy are well known for our unparalleled quality. We deliver the highest level of instruction, curriculum, and individualized attention to offer students an academic edge. Rest assured that you can opt for the programs online as well. Regardless of where you are, you can access the programs. Students can attend weekly classes instructed by a real and certified teacher, work on daily assignments, and get feedback on their progress. Students will work on daily homework assignments that are customized specifically for them, and they shall receive feedback on their progress.</p>\r\n\r\n<p><img alt="" src="https://bright-brain.netlify.app/images/abtimg.png" /></p>\r\n\r\n<p>Take Assesment</p>\r\n				2024-03-12 14:52:57.56601+05:30	2024-03-12 14:52:57.566031+05:30	1	1	ABOUT US	7	about-us
33	Active					2024-03-12 14:53:16.669325+05:30	2024-03-12 14:53:16.669344+05:30	1	1	PROGRAMS	7	programs
34	Active					2024-03-12 14:53:27.037691+05:30	2024-03-12 14:53:27.037713+05:30	1	1	OUR TEAM	7	our-team
36	Active					2024-03-12 14:53:54.795483+05:30	2024-03-12 14:53:54.795503+05:30	1	1	LOCATIONS	7	locations
37	Active					2024-03-12 14:54:09.555847+05:30	2024-03-12 14:54:09.555868+05:30	1	1	EVENTS	7	events
38	Active					2024-03-12 14:54:20.675211+05:30	2024-03-12 14:54:20.675229+05:30	1	1	REVIEWS	7	reviews
39	Active					2024-03-12 14:54:28.052212+05:30	2024-03-12 14:54:28.052232+05:30	1	1	BLOG	7	blog
41	Active					2024-03-12 14:54:48.163615+05:30	2024-03-12 14:54:48.163634+05:30	1	1	CONTACT US	7	contact-us
\.


--
-- TOC entry 3690 (class 0 OID 17027)
-- Dependencies: 253
-- Data for Name: bba_admin_corporatebanners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_corporatebanners (id, banner_image, status, created_at, updated_at, created_by_id, updated_by_id, page_title_id, location_id) FROM stdin;
12	banner_image/MicrosoftTeams-image_3.png	Active	2024-03-14 12:49:08.376021+05:30	2024-03-14 12:49:08.376066+05:30	\N	\N	32	7
13	banner_image/breadcrmp-img_1.png	Active	2024-03-20 16:34:34.018142+05:30	2024-03-20 16:34:34.018161+05:30	\N	\N	39	7
14	banner_image/breadcrmp-img_1_WrqcHmq.png	Active	2024-03-20 17:07:29.014176+05:30	2024-03-20 17:07:29.014195+05:30	\N	\N	40	7
15	banner_image/breadcrmp-img_1_K50ckS8.png	Active	2024-03-20 18:10:17.106551+05:30	2024-03-20 18:10:17.106573+05:30	\N	\N	38	7
16	banner_image/breadcrmp-img_1_qgNM5Jr.png	Active	2024-03-20 18:10:35.167493+05:30	2024-03-20 18:10:35.167513+05:30	\N	\N	34	7
17	banner_image/breadcrmp-img_1_2V7dyeZ.png	Active	2024-03-20 18:11:03.451322+05:30	2024-03-20 18:11:03.45134+05:30	\N	\N	33	7
18	banner_image/breadcrmp-img_1_DXkyU4s.png	Active	2024-03-20 18:11:24.252474+05:30	2024-03-20 18:11:24.252492+05:30	\N	\N	35	7
19	banner_image/breadcrmp-img_1_G3WmWAD.png	Active	2024-03-20 18:12:07.718796+05:30	2024-03-20 18:12:07.718813+05:30	\N	\N	36	7
21	banner_image/breadcrmp-img_1_G3WmWAD_2NFFmOP.png	Active	2024-04-01 17:54:04.700088+05:30	2024-04-01 17:54:04.700105+05:30	\N	\N	37	7
\.


--
-- TOC entry 3671 (class 0 OID 16792)
-- Dependencies: 234
-- Data for Name: bba_admin_employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_employee (id, name, email, profile_image, emp_address, phone, status, created_at, updated_at, role_id, user_id) FROM stdin;
4	John Paul	john.paul@gmail.com			9099999999	Active	2024-02-01 18:36:49.012378+05:30	2024-02-01 18:36:49.012397+05:30	1	5
5	Super Admin	admin@gmail.com		Kolkata	\N	Active	2024-02-12 10:38:56.393394+05:30	2024-02-12 15:12:14.767187+05:30	4	1
2	Disha Arora	disha@gmail.com	profile_image/admin-logo.png_7lcBo3m.png	Kolkata	9835467823	Active	2024-01-28 13:44:53.197165+05:30	2024-01-28 13:44:53.197183+05:30	2	3
3	Joy Karmakar	joyk@gmail.com			8909999999	Active	2024-01-30 19:43:19.59703+05:30	2024-01-30 19:43:19.597054+05:30	2	4
\.


--
-- TOC entry 3679 (class 0 OID 16830)
-- Dependencies: 242
-- Data for Name: bba_admin_employeelocationassignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_employeelocationassignment (id, created_at, updated_at, employee_id_id, location_id_id) FROM stdin;
14	2024-03-12 15:07:56.235514+05:30	2024-03-12 15:07:56.235537+05:30	2	7
15	2024-03-12 15:07:56.239428+05:30	2024-03-12 15:07:56.239445+05:30	2	8
18	2024-04-05 20:13:46.700769+05:30	2024-04-05 20:13:46.700789+05:30	3	8
19	2024-04-05 20:13:46.706826+05:30	2024-04-05 20:13:46.706841+05:30	3	9
20	2024-04-05 20:13:46.710179+05:30	2024-04-05 20:13:46.710194+05:30	3	7
21	2024-04-05 20:13:46.714003+05:30	2024-04-05 20:13:46.714018+05:30	3	10
\.


--
-- TOC entry 3698 (class 0 OID 17204)
-- Dependencies: 261
-- Data for Name: bba_admin_enquiry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_enquiry (id, first_name, last_name, email, street_address, postal_code, phone, message, created_at, updated_at, location_id) FROM stdin;
1	Aman	Mishra	aman@gmail.com	Kolkata	711109	9835467823	Hello	2024-02-13 13:03:51.121372+05:30	2024-02-13 13:03:51.121396+05:30	\N
2	Hiarth	Hamani	hirath@gmail.com	Arabinda Road	711106	9876543210	How to fix the issue?	2024-02-26 13:22:44.993484+05:30	2024-02-26 13:22:44.993508+05:30	\N
3	sfd	asFd	sd@gmail.com	qshdu	23543	3144365758	ADE	2024-02-27 11:44:05.150458+05:30	2024-02-27 11:44:05.150483+05:30	\N
4	sfd	asFd	sd@gmail.com	qshdu	23543	3144365758	ADE	2024-02-27 11:44:51.700853+05:30	2024-02-27 11:44:51.70088+05:30	\N
5	sfd	asFd	sd@gmail.com	qshdu	23543	3144365758	ADE	2024-02-27 11:45:31.101911+05:30	2024-02-27 11:45:31.101934+05:30	\N
6	sfd	asFd	sd@gmail.com	qshdu	23543	3144365758	ADE	2024-02-27 11:46:02.503882+05:30	2024-02-27 11:46:02.503905+05:30	\N
7	Hiarth	Hamani	hirath@gmail.com	Arabinda Road	711106	9876543210	How to fix the issue?	2024-02-28 14:36:18.790847+05:30	2024-02-28 14:36:18.790874+05:30	\N
8	SzDS	sdsd	SDS@gmail.com	asftf	3434343	4656566565	adSDSA	2024-03-18 19:35:55.582437+05:30	2024-03-18 19:35:55.582459+05:30	\N
9	\N	\N	test@gmail.com	sdbu	345455	8977897887	ADSAD	2024-04-01 19:09:37.3953+05:30	2024-04-01 19:09:37.395324+05:30	\N
10	\N	\N	AD@gmail.com	ery8yt	232332	2242444422	ADasd	2024-04-01 19:12:16.726296+05:30	2024-04-01 19:12:16.726319+05:30	8
11	\N	\N	daD@gmail.com	egrfugu	3443434	2454545454	SADSD	2024-04-01 19:13:17.168161+05:30	2024-04-01 19:13:17.168183+05:30	9
12	john	doe	john.doe@gmail.com	newtown	700156	9614751641	Please test my success story	2024-04-01 19:25:38.467904+05:30	2024-04-01 19:25:38.467925+05:30	8
13	ADad	adAD	adAD@gmail.com	dagdfg	245545	1354254545	ASDSFD	2024-04-08 11:16:52.484943+05:30	2024-04-08 11:16:52.484965+05:30	8
\.


--
-- TOC entry 3706 (class 0 OID 24605)
-- Dependencies: 269
-- Data for Name: bba_admin_homeblocksection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_homeblocksection (id, block_name, slug, description, meta_title, meta_keywords, meta_description, status, created_at, updated_at, created_by_id, location_id, updated_by_id) FROM stdin;
6	service-sec	service-sec	<section class="service-sec">\r\n    <div class="s-side"><img src="https://bright-brain.netlify.app/images/s-side.png" alt=""></div>\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="top-hdr-s">\r\n                <h3>Give your child the head-start towards educational excellence.</h3>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class="servc-bottom">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-8 col-md-8">\r\n                    <div class="row">\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>What results can I expect?</h5>\r\n                                <p>A tailored educational system that helps students to improve grades, become confident, and participate more in the classroom.</p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>What Are Other Parents Saying?</h5>\r\n                                <p>9 Out of 10 parents agree that enrolling in Bright Brains Academy was the right decision.\r\n                                </p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>How Much Does Cost?</h5>\r\n                                <p>Sed erat orci, vulputate in rhoncus in, volutpat ac lectus. Interdum et fames ac ante\r\n                                    ipsum primis.</p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class="col-lg-4 col-md-4"></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>	\N	\N	\N	Active	2024-03-18 18:45:59.601917+05:30	2024-03-26 17:36:13.827576+05:30	\N	7	\N
7	why-us	why-us	<section class="why-us-sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="hdr-sec">\r\n                <h6>Why Us</h6>\r\n                <h3>We are your best investment to unlock your child’s academic potential.</h3>\r\n            </div>\r\n            <div>\r\n                <div class="count-sec">\r\n                    <div class="row">\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u1.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>65+</h3>\r\n                                    <p>Affiliated Centers</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u2.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>1500+</h3>\r\n                                    <p>Happy Students</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u3.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>300+</h3>\r\n                                    <p>Trained Teachers</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u4.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>30+</h3>\r\n                                    <p>Top Programs</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="missn-sec">\r\n                <div class="line-s"> </div>\r\n                <div class="row">\r\n                    <div class="col-lg-6 col-md-6">\r\n                        <h4>Our Mission</h4>\r\n                        <p>The proper education opens up a world of possibilities for your kid. We are committed to\r\n                            ensuring quality education for every kid in the best way. Bright Brains Academy is dedicated\r\n                            to bringing the most out of every school kid and supporting the child’s academic journey, be\r\n                            it inside or outside of the classroom.</p>\r\n                    </div>\r\n                    <div class="col-lg-6 col-md-6">\r\n                        <h4>Our Vision</h4>\r\n                        <p>At Bright Brains Academy, our vision is to consistently empower students to not only achieve the highest level of academic success but also to become the people who are capable of learning on their own. Our goal is to offer customized solutions to the problems faced by the global student community and ensure academic excellence among every student.</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>	\N	\N	\N	Active	2024-03-27 17:29:27.093654+05:30	2024-03-27 17:29:27.093667+05:30	\N	8	\N
8	service-sec	service-sec	<section class="service-sec">\r\n    <div class="s-side"><img src="https://bright-brain.netlify.app/images/s-side.png" alt=""></div>\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="top-hdr-s">\r\n                <h3>Give your child the head-start towards educational excellence.</h3>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class="servc-bottom">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-8 col-md-8">\r\n                    <div class="row">\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>What results can I expect?</h5>\r\n                                <p>A tailored educational system that helps students to improve grades, become confident, and participate more in the classroom.</p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>What Are Other Parents Saying?</h5>\r\n                                <p>9 Out of 10 parents agree that enrolling in Bright Brains Academy was the right decision.\r\n                                </p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>How Much Does Cost?</h5>\r\n                                <p>Sed erat orci, vulputate in rhoncus in, volutpat ac lectus. Interdum et fames ac ante\r\n                                    ipsum primis.</p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class="col-lg-4 col-md-4"></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>	\N	\N	\N	Active	2024-03-27 17:29:27.095515+05:30	2024-03-27 17:29:27.095528+05:30	\N	8	\N
5	why-us	why-us	<section class="why-us-sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="hdr-sec">\r\n                <h6>Why Us</h6>\r\n                <h3>We are your best investment to unlock your child’s academic potential.</h3>\r\n            </div>\r\n            <div>\r\n                <div class="count-sec">\r\n                    <div class="row">\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u1.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>65+</h3>\r\n                                    <p>Affiliated Centers</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u2.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>1500+</h3>\r\n                                    <p>Happy Students</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u3.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>300+</h3>\r\n                                    <p>Trained Teachers</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u4.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>30+</h3>\r\n                                    <p>Top Programs</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="missn-sec">\r\n                <div class="line-s"> </div>\r\n                <div class="row">\r\n                    <div class="col-lg-6 col-md-6">\r\n                        <h4>Our Mission</h4>\r\n                        <p>The proper education opens up a world of possibilities for your kid. We are committed to\r\n                            ensuring quality education for every kid in the best way. Bright Brains Academy is dedicated\r\n                            to bringing the most out of every school kid and supporting the child’s academic journey, be\r\n                            it inside or outside of the classroom.</p>\r\n                    </div>\r\n                    <div class="col-lg-6 col-md-6">\r\n                        <h4>Our Vision</h4>\r\n                        <p>At Bright Brains Academy, our vision is to consistently empower students to not only achieve the highest level of academic success but also to become the people who are capable of learning on their own. Our goal is to offer customized solutions to the problems faced by the global student community and ensure academic excellence among every student.</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>	\N	\N	\N	Active	2024-03-18 18:41:22.906786+05:30	2024-03-18 18:41:36.633204+05:30	\N	7	\N
9	why-us	why-us	<section class="why-us-sec">\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="hdr-sec">\r\n                <h6>Why Us</h6>\r\n                <h3>We are your best investment to unlock your child’s academic potential.</h3>\r\n            </div>\r\n            <div>\r\n                <div class="count-sec">\r\n                    <div class="row">\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u1.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>65+</h3>\r\n                                    <p>Affiliated Centers</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u2.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>1500+</h3>\r\n                                    <p>Happy Students</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u3.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>300+</h3>\r\n                                    <p>Trained Teachers</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-3 col-md-6">\r\n                            <div class="count-box">\r\n                                <div class="c-img"><img src="https://bright-brain.netlify.app/images/u4.png" alt="">\r\n                                </div>\r\n                                <div class="cntnt">\r\n                                    <h3>30+</h3>\r\n                                    <p>Top Programs</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="missn-sec">\r\n                <div class="line-s"> </div>\r\n                <div class="row">\r\n                    <div class="col-lg-6 col-md-6">\r\n                        <h4>Our Mission</h4>\r\n                        <p>The proper education opens up a world of possibilities for your kid. We are committed to\r\n                            ensuring quality education for every kid in the best way. Bright Brains Academy is dedicated\r\n                            to bringing the most out of every school kid and supporting the child’s academic journey, be\r\n                            it inside or outside of the classroom.</p>\r\n                    </div>\r\n                    <div class="col-lg-6 col-md-6">\r\n                        <h4>Our Vision</h4>\r\n                        <p>At Bright Brains Academy, our vision is to consistently empower students to not only achieve the highest level of academic success but also to become the people who are capable of learning on their own. Our goal is to offer customized solutions to the problems faced by the global student community and ensure academic excellence among every student.</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>	\N	\N	\N	Active	2024-04-05 20:17:41.280405+05:30	2024-04-05 20:17:41.280418+05:30	\N	10	\N
10	service-sec	service-sec	<section class="service-sec">\r\n    <div class="s-side"><img src="https://bright-brain.netlify.app/images/s-side.png" alt=""></div>\r\n    <div class="container">\r\n        <div class="row">\r\n            <div class="top-hdr-s">\r\n                <h3>Give your child the head-start towards educational excellence.</h3>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class="servc-bottom">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-8 col-md-8">\r\n                    <div class="row">\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>What results can I expect?</h5>\r\n                                <p>A tailored educational system that helps students to improve grades, become confident, and participate more in the classroom.</p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>What Are Other Parents Saying?</h5>\r\n                                <p>9 Out of 10 parents agree that enrolling in Bright Brains Academy was the right decision.\r\n                                </p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-lg-4 col-md-6 col-sm-12">\r\n                            <div class="servc-card">\r\n                                <h5>How Much Does Cost?</h5>\r\n                                <p>Sed erat orci, vulputate in rhoncus in, volutpat ac lectus. Interdum et fames ac ante\r\n                                    ipsum primis.</p>\r\n                                <div class="bottom-crdd"><img src="https://bright-brain.netlify.app/images/arroww.png"\r\n                                        alt=""><img src="https://bright-brain.netlify.app/images/card-dot.png" alt="">\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class="col-lg-4 col-md-4"></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>	\N	\N	\N	Active	2024-04-05 20:17:41.288118+05:30	2024-04-05 20:17:41.288132+05:30	\N	10	\N
\.


--
-- TOC entry 3709 (class 0 OID 32783)
-- Dependencies: 272
-- Data for Name: bba_admin_locationmenumaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_locationmenumaster (id, location_menu_name, created_at, updated_at) FROM stdin;
1	ABOUT US	2024-03-10 15:22:21.436179+05:30	2024-03-10 15:22:21.436198+05:30
2	PROGRAMS	2024-03-10 15:22:32.604209+05:30	2024-03-10 15:22:32.604227+05:30
3	OUR TEAM	2024-03-10 15:22:37.374984+05:30	2024-03-10 15:22:37.375003+05:30
4	GET STARTED	2024-03-10 15:22:43.44223+05:30	2024-03-10 15:22:43.442251+05:30
5	LOCATIONS	2024-03-10 15:22:53.257173+05:30	2024-03-10 15:22:53.257192+05:30
6	EVENTS	2024-03-10 15:22:58.236158+05:30	2024-03-10 15:22:58.236178+05:30
7	REVIEWS	2024-03-10 15:23:05.455758+05:30	2024-03-10 15:23:05.455778+05:30
8	BLOG	2024-03-10 15:23:15.802545+05:30	2024-03-10 15:23:15.802563+05:30
9	CAREER	2024-03-10 15:23:19.565693+05:30	2024-03-10 15:23:19.565711+05:30
10	CONTACT US	2024-03-10 15:23:32.21076+05:30	2024-03-10 15:23:32.210779+05:30
11	HOME	2024-03-11 17:57:05.54993+05:30	2024-03-11 17:57:05.54995+05:30
\.


--
-- TOC entry 3675 (class 0 OID 16810)
-- Dependencies: 238
-- Data for Name: bba_admin_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_menu (id, name, created_at, updated_at, group_name, menu_position, menu_sub_position, menu_link_type, menu_link_url, bottom_ordering, top_ordering, location_id, page_id, location_menu_id_id) FROM stdin;
69	HOME	2024-03-12 14:55:47.94297+05:30	2024-03-12 14:55:47.942992+05:30	\N	Top	0	External	http://myhome.com	\N	1	7	\N	\N
70	ABOUT US	2024-03-12 14:56:34.188563+05:30	2024-03-12 14:56:34.188583+05:30	\N	Both	1	Internal	about-us	1	2	7	32	\N
71	PROGRAMS	2024-03-12 14:57:12.246601+05:30	2024-03-12 14:57:12.246625+05:30	\N	Top	0	Internal	programs	\N	3	7	33	\N
72	OUR TEAM	2024-03-12 14:57:55.348321+05:30	2024-03-12 14:57:55.348343+05:30	\N	Both	1	Internal	our-team	3	4	7	34	\N
73	GET STARTED	2024-03-12 14:58:55.405509+05:30	2024-03-12 14:58:55.40553+05:30	\N	Both	1	Internal	get-started	3	5	7	35	\N
75	EVENTS	2024-03-12 15:01:25.254744+05:30	2024-03-12 15:01:25.254766+05:30	\N	Top	0	Internal	events	\N	7	7	37	\N
76	REVIEWS	2024-03-12 15:02:04.853075+05:30	2024-03-12 15:02:04.853097+05:30	\N	Both	2	Internal	reviews	5	8	7	38	\N
77	BLOG	2024-03-12 15:03:09.565639+05:30	2024-03-12 15:03:09.565664+05:30	\N	Top	0	Internal	blog	\N	9	7	39	\N
78	CAREER	2024-03-12 15:04:14.365422+05:30	2024-03-12 15:04:14.365445+05:30	\N	Top	0	Internal	career	\N	1	7	40	\N
79	CONTACT US	2024-03-12 15:05:13.660149+05:30	2024-03-12 15:05:13.660171+05:30	\N	Both	1	Internal	contact-us	6	10	7	41	\N
90	\N	2024-03-27 17:29:27.054202+05:30	2024-03-27 17:29:27.054215+05:30	\N	Top	0	Internal	about-us	\N	\N	8	50	1
91	\N	2024-03-27 17:29:27.066557+05:30	2024-03-27 17:29:27.06657+05:30	\N	Top	0	Internal	programs	\N	\N	8	51	2
92	\N	2024-03-27 17:29:27.072925+05:30	2024-03-27 17:29:27.072937+05:30	\N	Top	0	Internal	our-team	\N	\N	8	52	3
93	\N	2024-03-27 17:29:27.080236+05:30	2024-03-27 17:29:27.080248+05:30	\N	Top	0	Internal	get-started	\N	\N	8	53	4
94	\N	2024-03-27 17:29:27.086436+05:30	2024-03-27 17:29:27.086448+05:30	\N	Top	0	Internal	locations	\N	\N	8	54	5
95	\N	2024-03-27 17:29:27.090169+05:30	2024-03-27 17:29:27.090182+05:30	\N	Top	0	External	http://myhome.com	\N	\N	8	\N	11
74	LOCATIONS	2024-03-12 15:01:00.27822+05:30	2024-03-12 15:01:00.278243+05:30	\N	Both	0	Internal	locations	4	6	7	36	\N
96	\N	2024-04-05 20:17:41.212316+05:30	2024-04-05 20:17:41.21233+05:30	\N	Top	0	Internal	about-us	\N	\N	10	55	1
97	\N	2024-04-05 20:17:41.224472+05:30	2024-04-05 20:17:41.224484+05:30	\N	Top	0	Internal	programs	\N	\N	10	56	2
98	\N	2024-04-05 20:17:41.230953+05:30	2024-04-05 20:17:41.230966+05:30	\N	Top	0	Internal	our-team	\N	\N	10	57	3
99	\N	2024-04-05 20:17:41.240739+05:30	2024-04-05 20:17:41.240756+05:30	\N	Top	0	Internal	get-started	\N	\N	10	58	4
100	\N	2024-04-05 20:17:41.247054+05:30	2024-04-05 20:17:41.247067+05:30	\N	Top	0	Internal	events	\N	\N	10	59	6
101	\N	2024-04-05 20:17:41.253903+05:30	2024-04-05 20:17:41.253916+05:30	\N	Top	0	Internal	reviews	\N	\N	10	60	7
102	\N	2024-04-05 20:17:41.260277+05:30	2024-04-05 20:17:41.26029+05:30	\N	Top	0	Internal	blog	\N	\N	10	61	8
103	\N	2024-04-05 20:17:41.266461+05:30	2024-04-05 20:17:41.266474+05:30	\N	Top	0	Internal	career	\N	\N	10	62	9
104	\N	2024-04-05 20:17:41.272724+05:30	2024-04-05 20:17:41.272736+05:30	\N	Top	0	Internal	contact-us	\N	\N	10	63	10
105	\N	2024-04-05 20:17:41.277149+05:30	2024-04-05 20:17:41.277162+05:30	\N	Top	0	External	http://myhome.com	\N	\N	10	\N	11
106	testarup	2024-04-05 20:26:15.694542+05:30	2024-04-05 20:26:15.694558+05:30	\N	Top	0	Internal	fortestaruppage	\N	10	7	40	\N
\.


--
-- TOC entry 3694 (class 0 OID 17152)
-- Dependencies: 257
-- Data for Name: bba_admin_locationmenuassignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_locationmenuassignment (id, created_at, updated_at, location_id_id, menu_id_id) FROM stdin;
\.


--
-- TOC entry 3711 (class 0 OID 32811)
-- Dependencies: 274
-- Data for Name: bba_admin_locationpostalcodemapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_locationpostalcodemapping (id, postal_code, created_at, updated_at, location_id_id) FROM stdin;
1	711101	2024-03-12 15:07:34.189543+05:30	2024-03-12 15:07:34.189558+05:30	8
2	711102	2024-03-12 15:07:34.192268+05:30	2024-03-12 15:07:34.192285+05:30	8
3	711104	2024-03-12 15:09:09.533611+05:30	2024-03-12 15:09:09.533626+05:30	9
4	711107	2024-03-12 15:09:09.535531+05:30	2024-03-12 15:09:09.535549+05:30	9
5	21075	2024-04-05 20:09:54.090628+05:30	2024-04-05 20:09:54.090647+05:30	10
\.


--
-- TOC entry 3692 (class 0 OID 17046)
-- Dependencies: 255
-- Data for Name: bba_admin_locationwebsite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_locationwebsite (id, url_abbr, location_admin_id, status, created_at, updated_at, created_by_id, updated_by_id, location_id, deleted) FROM stdin;
9	wilston	2	Active	2024-03-27 17:29:27.034417+05:30	2024-03-27 17:29:27.034436+05:30	\N	\N	8	f
10	NorthBaltimore	3	Active	2024-04-05 20:17:41.190282+05:30	2024-04-05 20:17:41.190299+05:30	\N	\N	10	f
\.


--
-- TOC entry 3696 (class 0 OID 17170)
-- Dependencies: 259
-- Data for Name: bba_admin_pagesmenuassignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_pagesmenuassignment (id, created_at, updated_at, menu_id_id, page_id_id, menu_link_type, menu_link_url) FROM stdin;
\.


--
-- TOC entry 3704 (class 0 OID 24585)
-- Dependencies: 267
-- Data for Name: bba_admin_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bba_admin_settings (id, corporate_site_title, footer_copyright, logo, phone, email, facebook, instagram, youtube, twitter, created_at, updated_at) FROM stdin;
1	BRIGHT BRAIN ACADEMY	2023 © Natural Exchange. All Rights Reserved.		+1 123 456	inquiry@brightbrainacademy.com	#	#	#	#	2024-03-14 17:44:30.971131+05:30	2024-03-14 17:44:30.990875+05:30
\.


--
-- TOC entry 3669 (class 0 OID 16763)
-- Dependencies: 232
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-01-25 18:50:25.332536+05:30	1	admin@gmail.com	2	[{"changed": {"fields": ["password"]}}]	4	1
2	2024-01-31 19:09:35.809647+05:30	1	HOME	1	[{"added": {}}]	9	1
3	2024-02-01 14:16:36.575724+05:30	10	CorporatePages object (10)	3		16	1
4	2024-02-01 14:16:36.578313+05:30	9	CorporatePages object (9)	3		16	1
5	2024-02-01 14:16:36.580013+05:30	8	CorporatePages object (8)	3		16	1
6	2024-02-01 14:16:36.581546+05:30	7	CorporatePages object (7)	3		16	1
7	2024-02-01 14:16:36.583369+05:30	6	CorporatePages object (6)	3		16	1
8	2024-02-01 14:16:36.585039+05:30	5	CorporatePages object (5)	3		16	1
9	2024-02-01 14:16:36.586691+05:30	4	CorporatePages object (4)	3		16	1
10	2024-02-01 14:16:36.588215+05:30	3	CorporatePages object (3)	3		16	1
11	2024-02-01 14:16:36.589898+05:30	2	CorporatePages object (2)	3		16	1
12	2024-02-01 14:16:36.591544+05:30	1	CorporatePages object (1)	3		16	1
13	2024-02-01 14:16:44.364868+05:30	2	CorporateBanners object (2)	3		17	1
14	2024-02-01 14:16:44.367168+05:30	1	CorporateBanners object (1)	3		17	1
15	2024-02-01 14:21:03.629484+05:30	3	Corporate	1	[{"added": {}}]	8	1
16	2024-02-01 14:21:29.877844+05:30	2	CAREER	3		16	1
17	2024-02-01 14:21:29.880487+05:30	1	HOME	3		16	1
18	2024-02-01 15:37:23.689727+05:30	1	Park Avenue	3		18	1
19	2024-02-01 15:40:18.404621+05:30	2	PROGRAMS	1	[{"added": {}}]	9	1
20	2024-02-01 15:40:27.729957+05:30	3	CAREER	1	[{"added": {}}]	9	1
21	2024-02-01 17:56:05.257085+05:30	3	CAREER	3		9	1
22	2024-02-01 17:56:05.259427+05:30	2	PROGRAMS	3		9	1
23	2024-02-01 17:56:05.261044+05:30	1	HOME	3		9	1
24	2024-02-01 18:06:40.368772+05:30	4	ABOUT US	1	[{"added": {}}]	9	1
25	2024-02-01 18:06:55.609356+05:30	5	PROGRAMS	1	[{"added": {}}]	9	1
26	2024-02-01 18:07:07.969842+05:30	6	OUR TEAM	1	[{"added": {}}]	9	1
27	2024-02-01 18:07:17.457928+05:30	7	GET STARTED	1	[{"added": {}}]	9	1
28	2024-02-01 18:07:27.881133+05:30	8	LOCATIONS	1	[{"added": {}}]	9	1
29	2024-02-01 18:07:38.874709+05:30	9	EVENTS	1	[{"added": {}}]	9	1
30	2024-02-01 18:07:49.850403+05:30	10	REVIEWS	1	[{"added": {}}]	9	1
31	2024-02-01 18:07:54.377343+05:30	11	BLOG	1	[{"added": {}}]	9	1
32	2024-02-01 18:07:58.345716+05:30	12	CAREER	1	[{"added": {}}]	9	1
33	2024-02-01 18:08:06.722713+05:30	13	CONTACT US	1	[{"added": {}}]	9	1
34	2024-02-01 18:14:05.01939+05:30	2	Park Avenue	3		18	1
35	2024-02-02 16:17:55.043398+05:30	14	ABOUT US	1	[{"added": {}}]	9	1
36	2024-02-02 16:18:05.052965+05:30	15	HOME	1	[{"added": {}}]	9	1
37	2024-02-02 16:19:32.691778+05:30	16	PROGRAMS	1	[{"added": {}}]	9	1
38	2024-02-02 16:19:43.115413+05:30	17	OUR TEAM	1	[{"added": {}}]	9	1
39	2024-02-02 16:20:02.381029+05:30	18	GET STARTED	1	[{"added": {}}]	9	1
40	2024-02-02 16:20:07.55013+05:30	19	LOCATIONS	1	[{"added": {}}]	9	1
41	2024-02-02 16:20:17.355379+05:30	20	EVENTS	1	[{"added": {}}]	9	1
42	2024-02-02 16:20:30.746138+05:30	21	REVIEWS	1	[{"added": {}}]	9	1
43	2024-02-02 16:20:36.300781+05:30	22	BLOG	1	[{"added": {}}]	9	1
44	2024-02-02 16:20:48.266484+05:30	23	CAREER	1	[{"added": {}}]	9	1
45	2024-02-02 16:20:53.87531+05:30	24	CONTACT US	1	[{"added": {}}]	9	1
46	2024-02-06 11:18:37.441028+05:30	24	CONTACT US	3		9	1
47	2024-02-06 11:18:37.443741+05:30	23	CAREER	3		9	1
48	2024-02-06 11:18:37.44545+05:30	22	BLOG	3		9	1
49	2024-02-06 11:18:37.446985+05:30	21	REVIEWS	3		9	1
50	2024-02-06 11:18:37.448846+05:30	20	EVENTS	3		9	1
51	2024-02-06 11:18:37.450469+05:30	19	LOCATIONS	3		9	1
52	2024-02-06 11:18:37.452615+05:30	18	GET STARTED	3		9	1
53	2024-02-06 11:18:37.454234+05:30	17	OUR TEAM	3		9	1
54	2024-02-06 11:18:37.455695+05:30	16	PROGRAMS	3		9	1
55	2024-02-06 11:18:37.457275+05:30	15	HOME	3		9	1
56	2024-02-06 11:18:37.45899+05:30	14	ABOUT US	3		9	1
57	2024-02-06 11:18:37.460603+05:30	13	CONTACT US	3		9	1
58	2024-02-06 11:18:37.462195+05:30	12	CAREER	3		9	1
59	2024-02-06 11:18:37.464987+05:30	11	BLOG	3		9	1
60	2024-02-06 11:18:37.466682+05:30	10	REVIEWS	3		9	1
61	2024-02-06 11:18:37.468091+05:30	9	EVENTS	3		9	1
62	2024-02-06 11:18:37.469566+05:30	8	LOCATIONS	3		9	1
63	2024-02-06 11:18:37.471222+05:30	7	GET STARTED	3		9	1
64	2024-02-06 11:18:37.472813+05:30	6	OUR TEAM	3		9	1
65	2024-02-06 11:18:37.474585+05:30	5	PROGRAMS	3		9	1
66	2024-02-06 11:18:37.476086+05:30	4	ABOUT US	3		9	1
67	2024-02-07 18:57:10.623334+05:30	26	CAREERS	3		9	1
68	2024-02-07 18:57:10.627668+05:30	25	HOME	3		9	1
69	2024-02-12 10:38:32.163266+05:30	4	Super Admin	1	[{"added": {}}]	10	1
70	2024-02-12 10:38:56.394472+05:30	5	Admin	1	[{"added": {}}]	7	1
71	2024-02-12 10:42:10.633276+05:30	1	DASHBOARD	1	[{"added": {}}]	22	1
72	2024-02-12 10:42:46.003882+05:30	2	Dashboard	1	[{"added": {}}]	22	1
73	2024-02-12 10:43:02.192672+05:30	3	USER MANAGEMENT	1	[{"added": {}}]	22	1
74	2024-02-12 10:43:41.706773+05:30	4	Manage Admin Users	1	[{"added": {}}]	22	1
75	2024-02-12 10:44:41.537455+05:30	5	Manage Role & Permission	1	[{"added": {}}]	22	1
76	2024-02-12 10:45:07.970334+05:30	6	Manage Role & Permission	1	[{"added": {}}]	22	1
77	2024-02-12 10:45:27.559356+05:30	7	CONTENT MANAGEMENT	1	[{"added": {}}]	22	1
78	2024-02-12 10:46:06.729614+05:30	8	Manage Corporate Pages	1	[{"added": {}}]	22	1
79	2024-02-12 10:46:57.321153+05:30	9	Manage Location Websites	1	[{"added": {}}]	22	1
80	2024-02-12 10:47:33.881744+05:30	10	Manage Corporate Banners	1	[{"added": {}}]	22	1
81	2024-02-12 10:48:13.625046+05:30	11	Manage Corporate Menu	1	[{"added": {}}]	22	1
82	2024-02-12 10:48:45.263666+05:30	12	MANAGE ENQUIRIES	1	[{"added": {}}]	22	1
83	2024-02-12 10:49:14.303543+05:30	12	MANAGE ENQUIRIES	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
84	2024-02-12 10:49:33.199636+05:30	12	MANAGE ENQUIRIES	2	[]	22	1
85	2024-02-12 10:50:14.304238+05:30	13	Enquiries	1	[{"added": {}}]	22	1
86	2024-02-12 10:51:25.814091+05:30	14	SETTINGS	1	[{"added": {}}]	22	1
87	2024-02-12 10:51:58.736806+05:30	15	Locations	1	[{"added": {}}]	22	1
88	2024-02-12 10:52:36.528072+05:30	16	General Settings	1	[{"added": {}}]	22	1
89	2024-02-12 10:53:14.990013+05:30	1	AdminMenuPermission object (1)	1	[{"added": {}}]	23	1
90	2024-02-12 10:53:29.402725+05:30	2	AdminMenuPermission object (2)	1	[{"added": {}}]	23	1
91	2024-02-12 10:54:07.178869+05:30	6	Manage Role & Permission	3		22	1
92	2024-02-12 10:54:50.563141+05:30	3	AdminMenuPermission object (3)	1	[{"added": {}}]	23	1
93	2024-02-12 10:55:09.557074+05:30	4	AdminMenuPermission object (4)	1	[{"added": {}}]	23	1
94	2024-02-12 10:55:19.444316+05:30	5	AdminMenuPermission object (5)	1	[{"added": {}}]	23	1
95	2024-02-12 10:55:43.866865+05:30	6	AdminMenuPermission object (6)	1	[{"added": {}}]	23	1
96	2024-02-12 10:55:57.201872+05:30	7	AdminMenuPermission object (7)	1	[{"added": {}}]	23	1
97	2024-02-12 10:59:56.241096+05:30	8	AdminMenuPermission object (8)	1	[{"added": {}}]	23	1
98	2024-02-12 11:01:11.272846+05:30	17	AdminMenuPermission object (17)	1	[{"added": {}}]	23	1
99	2024-02-12 11:01:20.467438+05:30	18	AdminMenuPermission object (18)	1	[{"added": {}}]	23	1
100	2024-02-12 11:01:41.153256+05:30	19	AdminMenuPermission object (19)	1	[{"added": {}}]	23	1
101	2024-02-12 15:07:29.319714+05:30	122	AdminMenuPermission object (122)	3		23	1
102	2024-02-12 15:07:29.322219+05:30	121	AdminMenuPermission object (121)	3		23	1
103	2024-02-12 15:07:29.323904+05:30	120	AdminMenuPermission object (120)	3		23	1
104	2024-02-12 15:07:29.325536+05:30	119	AdminMenuPermission object (119)	3		23	1
105	2024-02-12 15:07:29.327046+05:30	118	AdminMenuPermission object (118)	3		23	1
106	2024-02-12 15:07:29.328716+05:30	117	AdminMenuPermission object (117)	3		23	1
107	2024-02-12 15:07:29.330433+05:30	116	AdminMenuPermission object (116)	3		23	1
108	2024-02-12 15:07:29.332054+05:30	115	AdminMenuPermission object (115)	3		23	1
109	2024-02-12 15:07:29.33371+05:30	114	AdminMenuPermission object (114)	3		23	1
110	2024-02-12 15:07:29.335253+05:30	113	AdminMenuPermission object (113)	3		23	1
111	2024-02-12 15:07:29.336807+05:30	16	AdminMenuPermission object (16)	3		23	1
112	2024-02-12 15:07:29.338353+05:30	15	AdminMenuPermission object (15)	3		23	1
113	2024-02-12 15:07:29.339812+05:30	14	AdminMenuPermission object (14)	3		23	1
114	2024-02-12 15:07:29.341314+05:30	13	AdminMenuPermission object (13)	3		23	1
115	2024-02-12 15:07:29.342849+05:30	12	AdminMenuPermission object (12)	3		23	1
116	2024-02-12 15:07:29.34446+05:30	11	AdminMenuPermission object (11)	3		23	1
117	2024-02-12 15:07:29.346192+05:30	10	AdminMenuPermission object (10)	3		23	1
118	2024-02-12 15:07:29.34769+05:30	9	AdminMenuPermission object (9)	3		23	1
119	2024-02-12 15:12:14.768586+05:30	5	Super Admin	2	[{"changed": {"fields": ["Name"]}}]	7	1
120	2024-02-12 15:30:14.784843+05:30	156	AdminMenuPermission object (156)	1	[{"added": {}}]	23	1
121	2024-02-13 11:48:28.560755+05:30	16	General Settings	3		22	1
122	2024-02-13 11:48:28.563203+05:30	15	Locations	3		22	1
123	2024-02-13 11:48:28.564897+05:30	14	SETTINGS	3		22	1
124	2024-02-13 11:48:28.566658+05:30	13	Enquiries	3		22	1
125	2024-02-13 11:48:28.568222+05:30	12	MANAGE ENQUIRIES	3		22	1
126	2024-02-13 11:48:28.570022+05:30	11	Manage Corporate Menu	3		22	1
127	2024-02-13 11:48:28.571575+05:30	10	Manage Corporate Banners	3		22	1
128	2024-02-13 11:48:28.573081+05:30	9	Manage Location Websites	3		22	1
129	2024-02-13 11:48:28.574645+05:30	8	Manage Corporate Pages	3		22	1
130	2024-02-13 11:48:28.576265+05:30	7	CONTENT MANAGEMENT	3		22	1
131	2024-02-13 11:48:28.577767+05:30	5	Manage Role & Permission	3		22	1
132	2024-02-13 11:48:28.579324+05:30	4	Manage Admin Users	3		22	1
133	2024-02-13 11:48:28.580996+05:30	3	USER MANAGEMENT	3		22	1
134	2024-02-13 11:48:28.582335+05:30	2	Dashboard	3		22	1
135	2024-02-13 11:48:28.583762+05:30	1	DASHBOARD	3		22	1
136	2024-02-13 11:49:30.31141+05:30	17	DASHBOARD	1	[{"added": {}}]	22	1
137	2024-02-13 11:54:15.633456+05:30	18	Dashboard	1	[{"added": {}}]	22	1
138	2024-02-13 11:54:43.881896+05:30	19	USER MANAGEMENT	1	[{"added": {}}]	22	1
139	2024-02-13 11:55:00.102844+05:30	20	Manage Admin Users	1	[{"added": {}}]	22	1
140	2024-02-13 11:55:20.252738+05:30	21	Manage Role & Permission	1	[{"added": {}}]	22	1
141	2024-02-13 11:55:43.682406+05:30	22	CONTENT MANAGEMENT	1	[{"added": {}}]	22	1
142	2024-02-13 12:01:09.913086+05:30	23	Manage Corporate Pages	1	[{"added": {}}]	22	1
143	2024-02-13 12:01:47.093085+05:30	24	Manage Corporate Banners	1	[{"added": {}}]	22	1
144	2024-02-13 12:02:19.585055+05:30	25	Manage Corporate Menu	1	[{"added": {}}]	22	1
145	2024-02-13 12:03:17.300121+05:30	226	AdminMenuPermission object (226)	1	[{"added": {}}]	23	1
146	2024-02-13 12:15:56.298446+05:30	17	DASHBOARD	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
147	2024-02-13 12:16:00.703665+05:30	17	DASHBOARD	2	[]	22	1
148	2024-02-13 12:16:05.399677+05:30	17	DASHBOARD	2	[]	22	1
149	2024-02-13 12:16:15.46698+05:30	18	Dashboard	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
150	2024-02-13 12:16:24.283847+05:30	25	Manage Corporate Menu	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
151	2024-02-13 12:16:29.755141+05:30	24	Manage Corporate Banners	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
152	2024-02-13 12:16:35.139692+05:30	23	Manage Corporate Pages	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
153	2024-02-13 12:16:41.073181+05:30	22	CONTENT MANAGEMENT	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
154	2024-02-13 12:16:47.132438+05:30	21	Manage Role & Permission	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
155	2024-02-13 12:16:54.232956+05:30	20	Manage Admin Users	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
156	2024-02-13 12:17:01.609871+05:30	19	USER MANAGEMENT	2	[{"changed": {"fields": ["Admin menu id"]}}]	22	1
157	2024-02-13 12:17:53.667441+05:30	227	AdminMenuPermission object (227)	1	[{"added": {}}]	23	1
158	2024-02-13 12:18:00.834813+05:30	21	Manage Role & Permission	2	[{"changed": {"fields": ["Update permission"]}}]	22	1
159	2024-02-13 12:18:51.989058+05:30	228	AdminMenuPermission object (228)	1	[{"added": {}}]	23	1
160	2024-02-13 12:26:47.152918+05:30	26	Manage Location Websites	1	[{"added": {}}]	22	1
161	2024-02-13 12:27:32.207154+05:30	27	MANAGE ENQUIRIES	1	[{"added": {}}]	22	1
162	2024-02-13 12:28:00.145836+05:30	28	Enquiries	1	[{"added": {}}]	22	1
163	2024-02-13 12:30:05.900066+05:30	28	Enquiries	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
164	2024-02-13 12:31:45.866336+05:30	28	Enquiries	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
165	2024-02-13 12:32:32.182201+05:30	29	SETTINGS	1	[{"added": {}}]	22	1
166	2024-02-13 12:33:03.864885+05:30	30	Locations	1	[{"added": {}}]	22	1
167	2024-02-13 12:33:41.799983+05:30	31	Settings	1	[{"added": {}}]	22	1
168	2024-02-13 13:03:51.122864+05:30	1	Hello	1	[{"added": {}}]	21	1
169	2024-02-22 15:44:57.858637+05:30	31	Settings	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
170	2024-02-22 15:45:10.291622+05:30	31	Settings	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
171	2024-02-23 14:37:02.399061+05:30	5	PROGRAMS	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
172	2024-02-23 14:37:28.472922+05:30	4	ABOUT US	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
173	2024-02-23 14:37:44.310204+05:30	13	CONTACT US	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
174	2024-02-23 14:37:55.835984+05:30	12	CAREER	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
175	2024-02-23 14:38:14.767666+05:30	11	BLOG	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
176	2024-02-23 14:38:27.510826+05:30	10	REVIEWS	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
177	2024-02-23 14:38:39.436411+05:30	9	EVENTS	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
178	2024-02-23 14:38:51.706136+05:30	8	LOCATIONS	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
179	2024-02-23 14:39:05.213396+05:30	7	GET STARTED	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
180	2024-02-23 14:39:17.935993+05:30	6	OUR TEAM	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
181	2024-02-23 14:39:46.322128+05:30	3	HOME	2	[{"changed": {"fields": ["Page slug"]}}]	16	1
182	2024-02-26 12:20:55.316242+05:30	27	HOME	3		9	1
183	2024-02-26 13:35:02.30687+05:30	4	ABOUT US	2	[{"changed": {"fields": ["Description", "Meta title", "Meta keywords", "Meta description"]}}]	16	1
184	2024-02-28 17:44:23.102801+05:30	31	General Settings	2	[{"changed": {"fields": ["Admin menu name"]}}]	22	1
185	2024-03-05 19:23:48.415631+05:30	32	Corporate Home Blocks	1	[{"added": {}}]	22	1
186	2024-03-05 19:25:08.75842+05:30	243	AdminMenuPermission object (243)	1	[{"added": {}}]	23	1
187	2024-03-05 19:26:45.731287+05:30	32	Corporate Home Blocks	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
188	2024-03-05 20:04:27.818393+05:30	1	Why us Corporate	1	[{"added": {}}]	25	1
189	2024-03-06 11:21:43.027065+05:30	2	Home Statistics Corporate	1	[{"added": {}}]	25	1
190	2024-03-06 11:23:42.360072+05:30	3	Mission and Vision Corporate	1	[{"added": {}}]	25	1
191	2024-03-06 11:24:55.914895+05:30	4	Services Corporate	1	[{"added": {}}]	25	1
192	2024-03-07 16:44:45.230442+05:30	13	CONTACT US	3		16	1
193	2024-03-07 16:44:45.282077+05:30	12	CAREER	3		16	1
194	2024-03-07 16:44:45.283672+05:30	11	BLOG	3		16	1
195	2024-03-07 16:44:45.300404+05:30	10	REVIEWS	3		16	1
196	2024-03-07 16:44:45.301943+05:30	9	EVENTS	3		16	1
197	2024-03-07 16:44:45.304085+05:30	8	LOCATIONS	3		16	1
198	2024-03-07 16:44:45.328467+05:30	7	GET STARTED	3		16	1
199	2024-03-07 16:44:45.340545+05:30	6	OUR TEAM	3		16	1
200	2024-03-07 16:44:45.343471+05:30	5	PROGRAMS	3		16	1
201	2024-03-07 16:44:45.372813+05:30	4	ABOUT US	3		16	1
202	2024-03-07 16:44:45.393783+05:30	3	HOME	3		16	1
203	2024-03-08 13:15:36.841083+05:30	14	ABOUT US	3		16	1
204	2024-03-08 13:16:02.140368+05:30	31	GET STARTED	3		9	1
205	2024-03-08 13:16:02.142462+05:30	30	OUR TEAM	3		9	1
206	2024-03-08 13:16:02.14386+05:30	29	PROGRAMS	3		9	1
207	2024-03-08 13:16:02.145185+05:30	28	ABOUT US	3		9	1
208	2024-03-08 14:37:26.895161+05:30	16	PROGRAMS	3		16	1
209	2024-03-08 14:37:26.897611+05:30	15	ABOUT US	3		16	1
210	2024-03-08 14:48:54.562276+05:30	23	REVIEWS	3		16	1
211	2024-03-08 15:00:36.327356+05:30	34	OUR TEAM	3		9	1
212	2024-03-08 15:00:36.329502+05:30	33	PROGRAMS	3		9	1
213	2024-03-08 15:00:36.33116+05:30	32	ABOUT US	3		9	1
214	2024-03-10 15:15:34.968799+05:30	31	General Settings	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
215	2024-03-10 15:15:50.425877+05:30	30	Locations	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
216	2024-03-10 15:16:14.893933+05:30	28	Enquiries	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
217	2024-03-10 15:16:31.62097+05:30	26	Manage Location Websites	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
218	2024-03-10 15:16:46.452784+05:30	25	Manage Corporate Menu	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
219	2024-03-10 15:17:00.303444+05:30	24	Manage Corporate Banners	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
220	2024-03-10 15:17:14.285024+05:30	26	Manage Location Websites	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
221	2024-03-10 15:17:27.444336+05:30	23	Manage Corporate Pages	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
222	2024-03-10 15:17:41.365522+05:30	21	Manage Role & Permission	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
223	2024-03-10 15:18:02.139115+05:30	20	Manage Admin Users	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
224	2024-03-10 15:18:33.170488+05:30	32	Corporate Home Blocks	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
225	2024-03-10 15:20:56.321484+05:30	18	Dashboard	2	[{"changed": {"fields": ["Menu icon"]}}]	22	1
226	2024-03-10 15:22:21.437446+05:30	1	ABOUT US	1	[{"added": {}}]	27	1
227	2024-03-10 15:22:32.60525+05:30	2	PROGRAMS	1	[{"added": {}}]	27	1
228	2024-03-10 15:22:37.376005+05:30	3	OUR TEAM	1	[{"added": {}}]	27	1
229	2024-03-10 15:22:43.44331+05:30	4	GET STARTED	1	[{"added": {}}]	27	1
230	2024-03-10 15:22:53.258152+05:30	5	LOCATIONS	1	[{"added": {}}]	27	1
231	2024-03-10 15:22:58.237203+05:30	6	EVENTS	1	[{"added": {}}]	27	1
232	2024-03-10 15:23:05.456792+05:30	7	REVIEWS	1	[{"added": {}}]	27	1
233	2024-03-10 15:23:15.803578+05:30	8	BLOG	1	[{"added": {}}]	27	1
234	2024-03-10 15:23:19.566679+05:30	9	CAREER	1	[{"added": {}}]	27	1
235	2024-03-10 15:23:32.211794+05:30	10	CONTACT US	1	[{"added": {}}]	27	1
236	2024-03-10 15:24:33.504981+05:30	23	Manage Corporate Pages	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
237	2024-03-11 16:49:55.522176+05:30	57	OUR TEAM	3		9	1
238	2024-03-11 16:49:55.52712+05:30	56	PROGRAMS	3		9	1
239	2024-03-11 16:49:55.528777+05:30	55	ABOUT US	3		9	1
240	2024-03-11 16:49:55.53039+05:30	54	CAREER	3		9	1
241	2024-03-11 16:49:55.532052+05:30	53	BLOG	3		9	1
242	2024-03-11 16:49:55.533585+05:30	52	EVENTS	3		9	1
243	2024-03-11 16:49:55.535382+05:30	51	LOCATIONS	3		9	1
244	2024-03-11 16:49:55.536906+05:30	50	GET STARTED	3		9	1
245	2024-03-11 16:49:55.538593+05:30	49	OUR TEAM	3		9	1
246	2024-03-11 16:49:55.540086+05:30	48	PROGRAMS	3		9	1
247	2024-03-11 16:49:55.541658+05:30	47	ABOUT US	3		9	1
248	2024-03-11 16:49:55.543209+05:30	46	ABOUT US	3		9	1
249	2024-03-11 16:49:55.544678+05:30	45	CONTACT US	3		9	1
250	2024-03-11 16:49:55.546043+05:30	43	CAREER	3		9	1
251	2024-03-11 16:49:55.547605+05:30	42	BLOG	3		9	1
252	2024-03-11 16:49:55.549454+05:30	41	REVIEWS	3		9	1
253	2024-03-11 16:49:55.550942+05:30	40	EVENTS	3		9	1
254	2024-03-11 16:49:55.552576+05:30	39	LOCATIONS	3		9	1
255	2024-03-11 16:49:55.554343+05:30	38	GET STARTED	3		9	1
256	2024-03-11 16:49:55.556238+05:30	37	OUR TEAM	3		9	1
257	2024-03-11 16:49:55.557978+05:30	36	PROGRAMS	3		9	1
258	2024-03-11 16:49:55.559535+05:30	35	ABOUT US	3		9	1
259	2024-03-11 17:57:05.550982+05:30	11	HOME	1	[{"added": {}}]	27	1
260	2024-03-11 18:35:45.723921+05:30	6	West Side	3		18	1
261	2024-03-11 18:35:45.726324+05:30	5	Willston	3		18	1
262	2024-03-11 18:35:45.727789+05:30	4	Salvador Avenue	3		18	1
263	2024-03-11 18:35:45.729158+05:30	3	Park Avenue	3		18	1
264	2024-03-12 14:49:07.255157+05:30	6	West Side	3		8	1
265	2024-03-12 14:49:07.260606+05:30	5	Willston	3		8	1
266	2024-03-12 14:49:07.262118+05:30	4	Kennilworth	3		8	1
267	2024-03-12 14:49:07.26379+05:30	3	Corporate	3		8	1
268	2024-03-12 14:49:07.265373+05:30	2	Salvador Avenue	3		8	1
269	2024-03-12 14:49:07.267016+05:30	1	Park Avenue	3		8	1
270	2024-03-12 14:51:21.880685+05:30	7	Corporate	1	[{"added": {}}]	8	1
271	2024-03-14 15:10:37.56694+05:30	32	Manage Home Blocks	2	[{"changed": {"fields": ["Admin menu name", "Menu url"]}}]	22	1
272	2024-03-14 17:32:14.609914+05:30	33	Career	1	[{"added": {}}]	22	1
273	2024-03-14 17:33:31.687276+05:30	34	Manage Blog	1	[{"added": {}}]	22	1
274	2024-03-14 17:43:15.693187+05:30	244	AdminMenuPermission object (244)	1	[{"added": {}}]	23	1
275	2024-03-14 17:43:36.576453+05:30	245	AdminMenuPermission object (245)	1	[{"added": {}}]	23	1
276	2024-03-14 18:10:55.577117+05:30	30	Locations	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
277	2024-03-14 18:11:03.061405+05:30	28	Enquiries	2	[]	22	1
278	2024-03-14 18:13:07.959902+05:30	30	Locations	2	[]	22	1
279	2024-03-18 18:41:22.916039+05:30	5	why-us None	1	[{"added": {}}]	25	1
280	2024-03-18 18:41:30.579091+05:30	5	why-us Corporate	2	[{"changed": {"fields": ["Location"]}}]	25	1
281	2024-03-18 18:41:36.634666+05:30	5	why-us Corporate	2	[]	25	1
282	2024-03-18 18:45:59.603352+05:30	6	service-sec None	1	[{"added": {}}]	25	1
283	2024-03-18 18:46:21.455658+05:30	6	service-sec Corporate	2	[{"changed": {"fields": ["Location"]}}]	25	1
284	2024-03-26 17:36:13.828934+05:30	6	service-sec Corporate	2	[]	25	1
285	2024-03-27 13:51:28.675013+05:30	24	Manage Corporate Banners	2	[{"changed": {"fields": ["Menu url"]}}]	22	1
286	2024-03-27 17:27:44.521893+05:30	89	HOME	3		9	1
287	2024-03-27 17:27:44.528149+05:30	88	BLOG	3		9	1
288	2024-03-27 17:27:44.52976+05:30	87	REVIEWS	3		9	1
289	2024-03-27 17:27:44.531381+05:30	86	EVENTS	3		9	1
290	2024-03-27 17:27:44.532849+05:30	85	LOCATIONS	3		9	1
291	2024-03-27 17:27:44.534422+05:30	84	ABOUT US	3		9	1
292	2024-03-27 17:27:44.535923+05:30	83	HOME	3		9	1
293	2024-03-27 17:27:44.53741+05:30	82	OUR TEAM	3		9	1
294	2024-03-27 17:27:44.538829+05:30	81	PROGRAMS	3		9	1
295	2024-03-27 17:27:44.540835+05:30	80	ABOUT US	3		9	1
296	2024-03-27 17:28:02.642591+05:30	49	BLOG	3		16	1
297	2024-03-27 17:28:02.645309+05:30	48	REVIEWS	3		16	1
298	2024-03-27 17:28:02.647108+05:30	47	EVENTS	3		16	1
299	2024-03-27 17:28:02.648623+05:30	46	LOCATIONS	3		16	1
300	2024-03-27 17:28:02.650215+05:30	45	ABOUT US	3		16	1
301	2024-03-27 17:28:02.651973+05:30	44	OUR TEAM	3		16	1
302	2024-03-27 17:28:02.653565+05:30	43	PROGRAMS	3		16	1
303	2024-03-27 17:28:02.65568+05:30	42	ABOUT US	3		16	1
304	2024-03-27 17:29:01.364628+05:30	8	Salvador Avenue	3		18	1
305	2024-03-27 17:29:01.367095+05:30	7	Wilston	3		18	1
\.


--
-- TOC entry 3653 (class 0 OID 16655)
-- Dependencies: 216
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-01-24 16:03:09.76673+05:30
2	auth	0001_initial	2024-01-24 16:03:09.880261+05:30
3	admin	0001_initial	2024-01-24 16:03:09.908909+05:30
4	admin	0002_logentry_remove_auto_add	2024-01-24 16:03:09.918425+05:30
5	admin	0003_logentry_add_action_flag_choices	2024-01-24 16:03:09.929868+05:30
6	contenttypes	0002_remove_content_type_name	2024-01-24 16:03:09.949991+05:30
7	auth	0002_alter_permission_name_max_length	2024-01-24 16:03:09.959986+05:30
8	auth	0003_alter_user_email_max_length	2024-01-24 16:03:09.971563+05:30
9	auth	0004_alter_user_username_opts	2024-01-24 16:03:09.98064+05:30
10	auth	0005_alter_user_last_login_null	2024-01-24 16:03:09.990576+05:30
11	auth	0006_require_contenttypes_0002	2024-01-24 16:03:09.993576+05:30
12	auth	0007_alter_validators_add_error_messages	2024-01-24 16:03:10.003934+05:30
13	auth	0008_alter_user_username_max_length	2024-01-24 16:03:10.021604+05:30
14	auth	0009_alter_user_last_name_max_length	2024-01-24 16:03:10.032751+05:30
15	auth	0010_alter_group_name_max_length	2024-01-24 16:03:10.044975+05:30
16	auth	0011_update_proxy_permissions	2024-01-24 16:03:10.054692+05:30
17	auth	0012_alter_user_first_name_max_length	2024-01-24 16:03:10.067317+05:30
18	bba_admin	0001_initial	2024-01-24 16:03:10.189374+05:30
19	bba_admin	0002_rename_employeelocationmapping_employeelocationassignment	2024-01-24 16:03:10.214933+05:30
20	bba_admin	0003_rename_add_op_menupermission_can_add_and_more	2024-01-24 16:03:10.286571+05:30
21	bba_admin	0004_remove_menu_parent_menu	2024-01-24 16:03:10.312314+05:30
22	bba_admin	0005_country_state_city	2024-01-24 16:03:10.369596+05:30
23	bba_admin	0006_rename_address_employee_emp_address	2024-01-24 16:03:10.387555+05:30
24	bba_admin	0007_alter_location_city_alter_location_country_and_more	2024-01-24 16:03:10.495676+05:30
25	bba_admin	0008_remove_employee_location	2024-01-24 16:03:10.522369+05:30
26	bba_admin	0009_alter_employee_profile_image	2024-01-24 16:03:10.537998+05:30
27	bba_admin	0010_alter_city_state_alter_state_country	2024-01-24 16:03:10.595082+05:30
28	sessions	0001_initial	2024-01-24 16:03:10.617265+05:30
29	bba_admin	0011_corporatepages	2024-01-25 10:56:05.323945+05:30
30	bba_admin	0012_corporatebanners	2024-01-25 18:45:05.243739+05:30
31	bba_admin	0013_alter_corporatebanners_banner_image	2024-01-30 11:38:05.746828+05:30
32	bba_admin	0014_alter_corporatebanners_banner_image	2024-01-30 11:38:05.765595+05:30
33	bba_admin	0015_alter_employee_role	2024-01-30 11:38:05.786357+05:30
34	bba_admin	0016_alter_corporatebanners_status_and_more	2024-01-31 13:55:08.01755+05:30
35	bba_admin	0017_locationwebsite	2024-01-31 19:07:15.171856+05:30
36	bba_admin	0018_remove_locationwebsite_location_name_and_more	2024-01-31 19:07:15.209365+05:30
37	bba_admin	0019_rename_location_id_locationwebsite_location_and_more	2024-01-31 19:07:15.270678+05:30
38	bba_admin	0020_menu_type	2024-01-31 19:07:15.278176+05:30
39	bba_admin	0021_remove_corporatebanners_page_name_and_more	2024-02-01 14:13:47.410345+05:30
40	bba_admin	0022_alter_corporatepages_menu_title	2024-02-01 14:13:47.449803+05:30
41	bba_admin	0023_alter_corporatepages_menu_title	2024-02-01 14:13:47.490161+05:30
42	bba_admin	0024_rename_menu_title_corporatepages_page_title	2024-02-01 14:13:47.510813+05:30
43	bba_admin	0025_corporatepages_location_location_type_and_more	2024-02-01 14:13:47.582692+05:30
44	bba_admin	0026_alter_corporatebanners_page_title	2024-02-01 14:13:47.607995+05:30
45	bba_admin	0027_locationmenuassignment	2024-02-01 15:36:58.532273+05:30
46	bba_admin	0028_locationwebsite_deleted	2024-02-01 17:36:38.517058+05:30
47	bba_admin	0029_alter_locationwebsite_deleted	2024-02-01 17:36:38.536759+05:30
48	bba_admin	0030_pagesmenuassignment	2024-02-02 16:22:54.707678+05:30
49	bba_admin	0031_alter_pagesmenuassignment_unique_together	2024-02-02 16:22:54.725483+05:30
50	bba_admin	0032_alter_pagesmenuassignment_unique_together	2024-02-02 16:22:54.745219+05:30
51	bba_admin	0033_alter_pagesmenuassignment_unique_together	2024-02-02 16:22:54.762888+05:30
52	bba_admin	0034_menu_group_name_menu_menu_position_and_more	2024-02-05 16:10:32.875478+05:30
53	bba_admin	0035_menu_link_type_menu_link_url	2024-02-05 16:10:32.889322+05:30
54	bba_admin	0036_alter_menu_link_type_alter_menu_menu_sub_position	2024-02-05 16:10:32.9006+05:30
55	bba_admin	0037_alter_pagesmenuassignment_unique_together_and_more	2024-02-06 12:57:09.182032+05:30
56	bba_admin	0038_alter_menu_type	2024-02-07 18:58:39.707264+05:30
57	bba_admin	0038_enquiry_alter_menu_type	2024-02-07 19:00:33.840054+05:30
58	bba_admin	0039_rename_comment_enquiry_message	2024-02-07 19:00:33.846961+05:30
59	bba_admin	0040_alter_enquiry_location	2024-02-07 19:00:33.881788+05:30
60	bba_admin	0041_alter_menu_unique_together	2024-02-07 19:00:33.894527+05:30
61	bba_admin	0042_alter_menu_unique_together	2024-02-07 19:00:33.906944+05:30
62	bba_admin	0043_alter_menu_unique_together	2024-02-07 19:00:33.918231+05:30
63	bba_admin	0044_merge_20240207_1330	2024-02-07 19:00:33.92163+05:30
64	bba_admin	0044_adminmenu_adminmenupermission_delete_menupermission	2024-02-12 10:40:29.140647+05:30
65	bba_admin	0045_remove_adminmenupermission_employee_id_and_more	2024-02-12 10:40:29.200598+05:30
66	bba_admin	0046_adminmenu_menu_url	2024-02-12 10:40:29.210592+05:30
67	bba_admin	0047_merge_20240212_0510	2024-02-12 10:40:29.213813+05:30
68	bba_admin	0047_menu_bottom_ordering_menu_top_ordering_and_more	2024-02-22 10:57:44.732162+05:30
69	bba_admin	0048_alter_menu_menu_sub_position	2024-02-22 10:57:44.892868+05:30
70	bba_admin	0049_merge_20240222_0527	2024-02-22 10:57:44.993561+05:30
71	bba_admin	0049_alter_menu_link_type_alter_menu_type	2024-02-22 15:42:04.726928+05:30
72	bba_admin	0050_settings	2024-02-22 15:42:05.139076+05:30
73	bba_admin	0051_rename_banner_image_settings_logo	2024-02-22 15:42:05.261047+05:30
74	bba_admin	0052_merge_20240222_1011	2024-02-22 15:42:05.303418+05:30
75	bba_admin	0052_remove_enquiry_location_enquiry_location_name	2024-02-23 13:50:32.997779+05:30
76	bba_admin	0053_corporatepages_page_slug	2024-02-23 13:50:33.085375+05:30
77	bba_admin	0054_merge_20240223_0820	2024-02-23 13:50:33.089369+05:30
78	bba_admin	0054_remove_enquiry_location_name_enquiry_location	2024-02-28 15:02:55.758135+05:30
79	bba_admin	0055_merge_20240228_0932	2024-02-28 15:02:55.834961+05:30
80	bba_admin	0056_alter_menu_type	2024-03-05 15:43:06.087898+05:30
81	bba_admin	0002_alter_corporatepages_created_by_and_more	2024-03-05 19:19:36.854105+05:30
82	knox	0001_initial	2024-03-06 15:35:50.190013+05:30
83	knox	0002_auto_20150916_1425	2024-03-06 15:35:50.243293+05:30
84	knox	0003_auto_20150916_1526	2024-03-06 15:35:50.273666+05:30
85	knox	0004_authtoken_expires	2024-03-06 15:35:50.296668+05:30
86	knox	0005_authtoken_token_key	2024-03-06 15:35:50.322322+05:30
87	knox	0006_auto_20160818_0932	2024-03-06 15:35:50.361521+05:30
88	knox	0007_auto_20190111_0542	2024-03-06 15:35:50.377305+05:30
89	knox	0008_remove_authtoken_salt	2024-03-06 15:35:50.395239+05:30
90	bba_admin	0003_corporatebanners_location	2024-03-08 14:29:32.233496+05:30
91	bba_admin	0004_locationmenumaster_and_more	2024-03-10 15:13:02.235558+05:30
92	bba_admin	0005_remove_location_pincode_locationpostalcodemapping	2024-03-12 14:40:15.582863+05:30
93	bba_admin	0006_rename_blocksection_homeblocksection_and_more	2024-03-14 17:44:31.110537+05:30
94	bba_admin	0007_blog_loc_all_alter_blog_blog_slug_and_more	2024-03-18 16:55:13.333566+05:30
95	bba_admin	0008_rename_parent_first_name_enquiry_first_name_and_more	2024-04-01 18:59:45.748448+05:30
\.


--
-- TOC entry 3686 (class 0 OID 16995)
-- Dependencies: 249
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4q86l9bavq9q6qtfw9ilregpekedzxb0	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rZTRl:_y4k7PFgb-rEmHmiRCAyQJ1iJTmfvBohizscqjmWv-s	2024-02-26 15:51:57.629386+05:30
yf7vcz68xppwxheop5eph460d5vcmz1j	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rZlRO:FPImKhjgEvp1U6lx6btpfTW9F4GAdLq1Cwb8abWcf9I	2024-02-27 11:04:46.970197+05:30
yw8gk005sm88s0pgqq7kd8ugzyef5t5j	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rZmMT:J-O7MBE5dFS0VBcgCc2PhuZiPFvjqqamJif3ZFrYdEk	2024-02-27 12:03:45.083779+05:30
tkv6dp1ukwen7f3nhbi1fxzv92sdx2n9	.eJxVjL0KwjAYAN8ls4Q0SW3q6O4zlO_XVCWFpp3Ed5dAB13vjnubCfYtT3uVdZrZXExnTr8MgZ5SmuAHlPtiaSnbOqNtiT1stbeF5XU92r9BhprbdvRIzNIjUQeE0REOqknFadSI5DUldT4OKipjSHD23ieIDjlw6M3nCy0DOUs:1rStsb:JUbaJUUqckcLcMGlXuj6UnIxwX7dDD38JGhZ7WGsDTs	2024-02-08 12:40:29.584156+05:30
4xtfyvpakwqvtglx6e52nr64blouhvrn	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rd65J:Ky_jIGPNqSYoVJOohytn_K9uRSqrneB8LHOhlzeqW3U	2024-03-07 15:43:45.505295+05:30
m66difieq4ictneys3v7yq0vubhcj1q0	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rdQtf:UEO__7ZwMjMF7-VGq-vcAX_Hod4TOaZ5zYQv0leOM04	2024-03-08 13:57:07.372481+05:30
pv0wmdrmz52i28hgfo114svv1cc53kh4	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1reUor:rBFD8pYxXW8Gm9dAE1gjNwXhM-Pf2qfyA4lZulcWyOw	2024-03-11 12:20:33.21527+05:30
wqes9m20frf089hmoy7r26yi5uxtrwzk	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1refrY:eTuOyiKIafo3mtf1RAv1wvFL6VBAEY82RSCPYr-Z5WE	2024-03-12 00:08:04.388631+05:30
grv4yp4zq4344y775zj4ljfiy50fh9m8	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1revm6:wi6nuxjxX0WeoMNPTKUstmeWMYyMGDaNv-HGZJ6-Ekk	2024-03-12 17:07:30.356805+05:30
4lt4hbw7j5skkozqht9j5a6i4fdwmb7n	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rfDF2:Lb4cEzRHoB685IwZjmCTyT0rtUsFwZaFEYa4NWqVqI4	2024-03-13 11:46:32.21854+05:30
8aw5j10tfkr0sy6zy3dnu2nxuj1ex5oe	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rfDtP:1twxVzFfd134FaX1IcXmrMO-rE-T-K3RUcEI426f6l4	2024-03-13 12:28:15.625985+05:30
lqckkv332nbyzn9mm1zt4q54r31g1k7q	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rU3kE:SAqyEjuz96vLZjKNDonrRA78xdhgOL_aeA7YzVqw024	2024-02-11 17:24:38.639267+05:30
upc9rqemp4x650iqr7sn2r1oqrfk0lg3	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rfDvP:zL6W-CfMmjXm8dp9P6QV6fEX8nUetzmQ8LxvhxqrXs8	2024-03-13 12:30:19.078038+05:30
2bp81gj0fdi7bt893xu8evtegybbykcq	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rfFnK:NZaZesxNFol3AcdyV6nsPcbIFWUgwH9JuFQVeOsnz7I	2024-03-13 14:30:06.101311+05:30
18u09tnfo49rr87j155shycxchygs34w	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rfH2B:601dus5gMbQBX_M1Vr7W8cpjIQ0a-nQQnlviKb4JJ48	2024-03-13 15:49:31.865365+05:30
ka0jprvdt0kurkaupzt823z5nhq1mybc	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rfIoV:crbZHBSP_ZPDhHUiz9LaPWOXPdlRJjNWjMbmKNxOVX0	2024-03-13 17:43:31.828851+05:30
0z5jkymk1lkyq1m2bw4a87kzlt5h8pay	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rfJhR:ggLsQ_9ERAW3_eoJ15CXL9NN7gtQ8m5bAX1zV2pBkYU	2024-03-13 18:40:17.302158+05:30
iaet0j4kfz95ciytg9hrpeeanrfea427	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rh8rL:I5ruGESCb7CzRGMhFCuxm_pcht2fga2vVVGth5nu2tg	2024-03-18 19:30:03.592442+05:30
qx6484x1fbm36jckum86870yt8m31zxa	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1ri7v1:zpJbJij8HIVqz0e5BzqqD6UF6S4Cv5pL-7050uVVAD4	2024-03-21 12:41:55.698784+05:30
p9aazukkuiiy2m5pcs76mvrh5kf1p0oz	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1riB1Q:DOykPvTJT_EhJYKg8ZgtrXJK91ZK5lvrHKxz9zJFFV8	2024-03-21 16:00:44.970975+05:30
fp6gcxlxmlueu04owpb03bslhfux54ga	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rVXOF:lBVgK7qmNzeVV5pUZ2xU6gjbQuU2icvcLY87UIxVjJ4	2024-02-15 19:16:03.711788+05:30
ivtpmskmjtkausavvgpfpmeiex5tzq25	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rVv0h:GN_Nw35n4fCknQabFBWpPVg8cjBRYPiaPUXIr-9E0KE	2024-02-16 20:29:19.84534+05:30
jawqnekycg89mkbhofnm8qey6n240wm8	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rWwPM:x80EFwWT8C6K8Pr8pq34JhPxSA-5DE-Go5SAC7fvemE	2024-02-19 16:11:00.492713+05:30
wihd0i1fm0c4q2a9w9ycxdjhb9g0ug1t	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rWxeS:0qYo-aD-yikOhnERQSaYx7nbojbqcohueeIFAjRVpmw	2024-02-19 17:30:40.275779+05:30
275xsceb6n03h1f4uudpozxy5ru09gof	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rZOsa:OR7fYdHXBSHAcf1rXL33qxi0twuZYNdCxuayuDQ8mVs	2024-02-26 10:59:20.655994+05:30
geja6om6cxtgut0eu3q35pwt569t021k	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1riUMC:ijGD9FUgclkfKVkeJ3q1ayjxhlLeHr60dKYK9WsW0a0	2024-03-22 12:39:28.616575+05:30
1blok2700yw7z40rhpkguug1xhnlxyi0	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1riZG9:jwRNs5brrprY56gRFtWlbAd63wE3XsY266H3n8dn2-A	2024-03-22 17:53:33.657219+05:30
7amgjwn3qw51mz2zhrhk2enjf49zjrhl	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rjcAy:FqYBVDCr6XMnalDg-rZ144aBHkTgwQDdDam1tVFOuc4	2024-03-25 15:12:32.11238+05:30
yi7vlxo4wtk42awv7ikvtjylslqldq9a	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rkPHQ:mvAy5FLgheeD7YaXMnEisxWtNFcqSVtyTjXFHtuKTJg	2024-03-27 19:38:28.62808+05:30
z1bvqj25xz609c6nhj5cm6vh9cp2kb09	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rmtYk:zvO-sS19PB2FkkoKf4ojYuCQOUoaE5jNsnnpssfQ0uQ	2024-04-03 16:22:38.533254+05:30
1yokgql3cu14jkgkhyy7d0k2ersxbqx8	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rp4Ke:x_L4kV-TNNMU-CttOKooHdAeChoHoYiKqAhbs738UFk	2024-04-09 16:17:04.484271+05:30
ljkvgc9o424kfh159oay6a37qnqomoz3	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rrHjv:Gk9BXyn-s6MwMiBaBQxEZuX_tywjeT9QzN0Noa9T5Q4	2024-04-15 19:00:19.515289+05:30
vnm3rtn05j0b97ulo909gdnei9n922fc	.eJxVjDsOwjAQBe_iGlnxL3Yo6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2_tNGD21qLLpEyAMJAbvfLotQWNZJUbkrGZLaes0JlAjkbNE-kpsVbi_QHhkDf2:1rskgJ:YOax0qenBh9YW76s_jwXiQLEnVsRX55YOdAlDh7MoCU	2024-04-19 20:06:39.217793+05:30
\.


--
-- TOC entry 3707 (class 0 OID 24646)
-- Dependencies: 270
-- Data for Name: knox_authtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knox_authtoken (digest, created, user_id, expiry, token_key) FROM stdin;
\.


--
-- TOC entry 3721 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3722 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 124, true);


--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3727 (class 0 OID 0)
-- Dependencies: 262
-- Name: bba_admin_adminmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_adminmenu_id_seq', 34, true);


--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 264
-- Name: bba_admin_adminmenupermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_adminmenupermission_id_seq', 245, true);


--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 277
-- Name: bba_admin_blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_blog_id_seq', 4, true);


--
-- TOC entry 3730 (class 0 OID 0)
-- Dependencies: 275
-- Name: bba_admin_career_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_career_id_seq', 2, true);


--
-- TOC entry 3731 (class 0 OID 0)
-- Dependencies: 247
-- Name: bba_admin_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_city_id_seq', 1000, true);


--
-- TOC entry 3732 (class 0 OID 0)
-- Dependencies: 252
-- Name: bba_admin_corporatebanners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_corporatebanners_id_seq', 21, true);


--
-- TOC entry 3733 (class 0 OID 0)
-- Dependencies: 250
-- Name: bba_admin_corporatepages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_corporatepages_id_seq', 64, true);


--
-- TOC entry 3734 (class 0 OID 0)
-- Dependencies: 243
-- Name: bba_admin_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_country_id_seq', 1, false);


--
-- TOC entry 3735 (class 0 OID 0)
-- Dependencies: 233
-- Name: bba_admin_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_employee_id_seq', 5, true);


--
-- TOC entry 3736 (class 0 OID 0)
-- Dependencies: 241
-- Name: bba_admin_employeelocationmapping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_employeelocationmapping_id_seq', 21, true);


--
-- TOC entry 3737 (class 0 OID 0)
-- Dependencies: 260
-- Name: bba_admin_enquiry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_enquiry_id_seq', 13, true);


--
-- TOC entry 3738 (class 0 OID 0)
-- Dependencies: 235
-- Name: bba_admin_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_location_id_seq', 10, true);


--
-- TOC entry 3739 (class 0 OID 0)
-- Dependencies: 256
-- Name: bba_admin_locationmenuassignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_locationmenuassignment_id_seq', 45, true);


--
-- TOC entry 3740 (class 0 OID 0)
-- Dependencies: 271
-- Name: bba_admin_locationmenumaster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_locationmenumaster_id_seq', 11, true);


--
-- TOC entry 3741 (class 0 OID 0)
-- Dependencies: 273
-- Name: bba_admin_locationpostalcodemapping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_locationpostalcodemapping_id_seq', 5, true);


--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 254
-- Name: bba_admin_locationwebsite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_locationwebsite_id_seq', 10, true);


--
-- TOC entry 3743 (class 0 OID 0)
-- Dependencies: 237
-- Name: bba_admin_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_menu_id_seq', 106, true);


--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 258
-- Name: bba_admin_pagesmenuassignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_pagesmenuassignment_id_seq', 22, true);


--
-- TOC entry 3745 (class 0 OID 0)
-- Dependencies: 239
-- Name: bba_admin_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_role_id_seq', 4, true);


--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 266
-- Name: bba_admin_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_settings_id_seq', 1, false);


--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 245
-- Name: bba_admin_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bba_admin_state_id_seq', 51, true);


--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 268
-- Name: block_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.block_section_id_seq', 10, true);


--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 305, true);


--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 30, true);


--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 215
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 95, true);


-- Completed on 2024-07-31 17:51:20

--
-- PostgreSQL database dump complete
--

