--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: osm_favorites; Type: TABLE; Schema: public; Owner: elmachine
--

CREATE TABLE public.osm_favorites (
    id integer NOT NULL,
    name text NOT NULL,
    area text NOT NULL,
    route_num text,
    route_box text,
    long numeric NOT NULL,
    lat numeric NOT NULL,
    notes text
);


ALTER TABLE public.osm_favorites OWNER TO elmachine;

--
-- Name: osm_favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: elmachine
--

CREATE SEQUENCE public.osm_favorites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.osm_favorites_id_seq OWNER TO elmachine;

--
-- Name: osm_favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmachine
--

ALTER SEQUENCE public.osm_favorites_id_seq OWNED BY public.osm_favorites.id;


--
-- Name: osm_favorites id; Type: DEFAULT; Schema: public; Owner: elmachine
--

ALTER TABLE ONLY public.osm_favorites ALTER COLUMN id SET DEFAULT nextval('public.osm_favorites_id_seq'::regclass);


--
-- Data for Name: osm_favorites; Type: TABLE DATA; Schema: public; Owner: elmachine
--

COPY public.osm_favorites (id, name, area, route_num, route_box, long, lat, notes) FROM stdin;
1	1001 NE 24TH - RAYBON	Guymon	N/A	N/A	-101.4689988	36.7019398	No description entered.
2	101 ALLISON, RR 1 Box 116 - KIRKLAND	Texhoma	1	116	-101.7938951	36.5046726	KIRKLAND, ADRIANNE AND JIM\n580-817-0834\n580-817-0835\n\nSTREET ADDRESS IS 101 ALLISON ST \nAT THE CORNER OF W MAIN AND ALLISON ST.
3	101 SE FRONT ST - MORALES , SANTANA	Hardesty	N/A	N/A	-101.1911268	36.6149431	Sandra
4	1013 N LORENZ ST - MARTENS	Hooker	N/A	N/A	-101.2212823	36.8696193	No description entered.
5	10135 CR M - THOMAS	Spearman	N/A	N/A	-101.2671041	36.329352	No description entered.
6	102 SE CRAWFORD - SIBILLE	Hardesty	N/A	N/A	-101.1917941	36.6141282	No description entered.
7	102 STICKNEY - MUNGIA	Stratford	N/A	N/A	-102.0809673	36.3356549	No description entered.
8	1050 MILE 48 - HAIRFORD	Hooker	N/A	N/A	-101.1641407	36.855478	No description entered.
9	10830 McClary - Fox	Dumas	N/A	N/A	-101.9574456	35.8939064	Adobe house
10	1109 E EAGLE - HOSS	Goodwell	N/A	N/A	-101.6195792	36.5949666	No description entered.
11	1115 NE 24TH	Guymon	N/A	N/A	-101.4677376	36.7023294	No description entered.
12	114 S TERRY	Texhoma	N/A	N/A	-101.7929127	36.5039095	No description entered.
13	11441 FM 1923 - SHIELDS	Morse	N/A	N/A	-101.5461543	35.9565868	No description entered.
14	1151 MILE 45 , Box 1111 - HUMBLE	Hooker	N/A	N/A	-101.2235047	36.841197	No description entered.
15	11571 Texas Beef - Sunray Gas Plant	Sunray	N/A	N/A	-101.8155652	35.9626185	No description entered.
16	11700 CR 27 - BETZEN	Sunray	N/A	N/A	-101.7036876	35.9804138	No description entered.
17	11800 HwY 287N - MOORE COUNTY GIN	Dumas	N/A	N/A	-101.9948917	35.9964763	No description entered.
18	12250 CR 25 - Cartrite	Sunray	N/A	N/A	-101.7386522	36.0592842	No description entered.
19	12295 CR 11 - LARSEN FARMS	Dalhart	N/A	N/A	-102.8763224	36.077866	deliver to trailer 1
20	12350 HWY 287 - RK HALL CONSTRUCTION	Stratford	N/A	N/A	-102.0096205	36.0754261	No description entered.
21	12385 CR 3 - GREEN GAS , MAAS	Stratford	N/A	N/A	-102.1231679	36.0810213	No description entered.
22	12425 County Road 3 - BURTON	Stratford	N/A	N/A	-102.1229782	36.0863686	No description entered.
23	12425 CR 23 - CROWNOVER	Sunray	N/A	N/A	-101.7779933	36.0828225	No description entered.
24	1245 MILE 42 - KLETECKA	Hooker	N/A	N/A	-101.2781345	36.8272787	No description entered.
25	12472 CR 23 - CARTRITE	Sunray	N/A	N/A	-101.7679612	36.088773	No description entered.
26	12495 CR 23 - RITCHEY	Sunray	N/A	N/A	-101.7761995	36.0953217	No description entered.
27	12501 FM 119 - BROWDER	Sunray	N/A	N/A	-101.8001349	36.0949087	No description entered.
28	12700 CR 25 - DOUGHTY CRAIG	Sunray	N/A	N/A	-101.73894	36.1272247	No description entered.
29	12846 FM 3110 - BEZNER BEEF	Texline	N/A	N/A	-102.870151	36.1619941	No description entered.
30	12873 CR 2 - MATTHEWS	Gruver	N/A	N/A	-101.606724	36.1635207	No description entered.
31	12875 CR 2 - MATTHEWS	Gruver	N/A	N/A	-101.6064052	36.1639265	No description entered.
32	12885 CR 16 - Rogers	Stratford	N/A	N/A	-101.9034846	36.1523848	No description entered.
33	12890 Highway 287	Stratford	N/A	N/A	-102.0243199	36.153866	No description entered.
34	12901 FM 119 - CARAWAY	Sunray	N/A	N/A	-101.8254157	36.1543817	No description entered.
35	12969 CR 17 - LAW	Stratford	N/A	N/A	-101.8833345	36.1646797	No description entered.
36	12969 FM 119 -CARTER	Sunray	N/A	N/A	-101.8248855	36.1640588	No description entered.
37	12970 FM 119 - MOORE	Sunray	N/A	N/A	-101.8243004	36.1642395	No description entered.
38	12971 CR 17 - SPURLOCK	Stratford	N/A	N/A	-101.8835494	36.1638953	No description entered.
39	12971 FM 119 - HEIDENREICH	Sunray	N/A	N/A	-101.8250126	36.1651552	No description entered.
40	1301 MILE 18 - HINES	Guymon	N/A	N/A	-101.7078095	36.8199597	No description entered.
41	1301 NE 24TH	Guymon	N/A	N/A	-101.4658205	36.7033705	No description entered.
42	13051 FM 119 - WILSON	Sunray	N/A	N/A	-101.8249654	36.1751944	No description entered.
43	13051 FM 3110 - GIESBRECHT	Texline	N/A	N/A	-102.8718733	36.19218	No description entered.
44	13060 Highway 287	Stratford	N/A	N/A	-102.0289071	36.1773913	No description entered.
45	13109 Highway 287	Stratford	N/A	N/A	-102.0324346	36.1847455	No description entered.
46	1311 MILE 22 - JONE	Guymon	N/A	N/A	-101.6380413	36.8170922	No description entered.
47	13143 MCCLELLAN RD - WANN	Texline	N/A	N/A	-103.0171742	36.2068289	No description entered.
48	13156 MCCLELLAN RD	Texline	N/A	N/A	-103.0163941	36.209793	No description entered.
49	13200 , 13202 CR 24 - SEILER	Gruver	N/A	N/A	-101.7515217	36.1977656	No description entered.
50	13301 US 87 - JBS , PORK	Dalhart	N/A	N/A	-102.7873509	36.2260785	No description entered.
51	1334 MILE 42 - ARCHER DANIELS MIDLAND COMPANY	Hooker	N/A	N/A	-101.2798843	36.8141848	ADM, VERAVENT
52	13350 CR 24 - KOEHN	Gruver	N/A	N/A	-101.7513721	36.2189825	No description entered.
53	13365 CR 24	Gruver	N/A	N/A	-101.7519367	36.2237767	No description entered.
54	13390 FM 2014 - KILLIAN	Stratford	N/A	N/A	-102.1099529	36.2292116	No description entered.
55	13400 FM 2014 - PRONGER	Stratford	N/A	N/A	-102.1099283	36.228866	No description entered.
56	13401 HWY 385 - DEER CREEK FEEDING	Dalhart	N/A	N/A	-102.5246417	36.2410419	No description entered.
57	13410 FM 2014 - PRONGER	Stratford	N/A	N/A	-102.1097281	36.2282886	No description entered.
58	13425 FM 296 - KOEHN	Texline	N/A	N/A	-103.0398931	36.2452723	No description entered.
59	13449 CR 8 - REID	Gruver	N/A	N/A	-101.4984893	36.247943	No description entered.
60	13500 CR 24 - COLDWATER RANCH	Gruver	N/A	N/A	-101.751305	36.2411206	No description entered.
61	13515 HWY 287 - BUCKLES FARM	Stratford	N/A	N/A	-102.043966	36.2397982	No description entered.
62	13580 FM 3110 - BEZNER	Texline	N/A	N/A	-102.8683081	36.2675255	No description entered.
63	13589 FM 2014 - ZAPIEN	Stratford	N/A	N/A	-102.1163058	36.2527455	No description entered.
64	13595 FM 2014 - TILLERY	Stratford	N/A	N/A	-102.1165552	36.2538568	No description entered.
65	13600, 13602 CR 24 - FREEMAN COLDWATER RANCH	Gruver	N/A	N/A	-101.7511568	36.2604462	No description entered.
66	13610 FM 296 - ARROW CATTLE	Texline	N/A	N/A	-103.0426258	36.2750296	No description entered.
67	13635 FM 119 -  RAMSEY ,  BUTLER	Sunray	N/A	N/A	-101.8628033	36.2554648	No description entered.
68	13650 CR 16 - TILTON , DELGADO	Stratford	N/A	N/A	-101.9004137	36.262715	No description entered.
69	13700 FM 119 - CATHEY	Sunray	N/A	N/A	-101.8227435	36.2711252	No description entered.
70	13710 FM 296 - ENSZ	Texline	N/A	N/A	-103.0408459	36.2969092	No description entered.
71	13750 CR 15 - Haile	Stratford	N/A	N/A	-101.9093704	36.2784805	13750 CO RD 15\nHAILE, BARBARA\nPrivate Road 15
72	13774 FM 2014 - SANCHEZ	Stratford	N/A	N/A	-102.1155929	36.2836366	No description entered.
73	13794 CR 2 - PORTER	Stratford	N/A	N/A	-102.1530067	36.2729828	No description entered.
74	13800 CR 24 - JOHNSON	Gruver	N/A	N/A	-101.7508666	36.2843162	No description entered.
75	13898 CR 17 - MOORE	Stratford	N/A	N/A	-101.8823631	36.2989523	No description entered.
76	13898 FM 119 - Nickel	Sunray	N/A	N/A	-101.8229381	36.2988097	No description entered.
77	14 MAIN ST - HAMM	Adams	N/A	N/A	-101.0749218	36.7560769	No description entered.
78	14000 CR 17 - Gaeda	Sunray	N/A	N/A	-101.8645782	36.3132706	No description entered.
79	14005 FM 119	Sunray	N/A	N/A	-101.8260273	36.306889	No description entered.
80	14026 HWY 287 - STRATFORD ANIMAL HOSPITAL	Stratford	N/A	N/A	-102.0646603	36.3231446	No description entered.
81	14030 287 - Miller	Stratford	N/A	N/A	-102.0648931	36.3247669	No description entered.
82	1405 MILE 30 , RR 2 Box 74D - BAALMAN	Guymon	2	74D	-101.4907949	36.805266	No description entered.
83	14069 287 - Hobbiebrunken	Stratford	N/A	N/A	-102.0702204	36.327694	No description entered.
84	14125 CR 17 - Lowe	Sunray	N/A	N/A	-101.8767734	36.337663	14125 County Road 17\nIF ROAD IS WET DO NOT GET ON IT. \nCALL DALLAS LOWE AT ‭(806) 390-9136‬ AND SHE WILL MEET
85	14156 CR 16 - Orrantia , GRIMES	Stratford	N/A	N/A	-101.9002413	36.3363396	No description entered.
86	14208 CR 8 - WELLS	Stratford	N/A	N/A	-102.0444463	36.3432407	No description entered.
87	14233 FM 119 - WALTER LASLEY AND SONS	Stratford	N/A	N/A	-101.8327486	36.3480251	No description entered.
88	14244 CR 26 - KOEHN	Gruver	N/A	N/A	-101.7140297	36.3478757	No description entered.
89	14250 CR 24 - WILLIS	Gruver	N/A	N/A	-101.750486	36.3510545	No description entered.
90	14250 FM 2677 - BELL	Stratford	N/A	N/A	-102.0620435	36.345483	No description entered.
91	14256 CR 8 - ANDERTON	Stratford	N/A	N/A	-102.0445518	36.351675	No description entered.
92	14259 FM 1290 - ACEVEDO	Gruver	N/A	N/A	-101.7510162	36.3510801	No description entered.
93	14315 FM 2677 - ELLISON	Stratford	N/A	N/A	-102.0641649	36.3592917	No description entered.
94	14320 CR 24 - BRIDWELL	Gruver	N/A	N/A	-101.7507661	36.3606354	No description entered.
95	1435 HWY 54 - SCHREPEL	Texhoma	N/A	N/A	-101.7738833	36.5050804	No description entered.
96	14350 CR 26 - DYCK	Gruver	N/A	N/A	-101.7043545	36.360673	No description entered.
97	14360 - DRAPER RD - Walker	Texline	N/A	N/A	-102.8905529	36.379954	No description entered.
98	14405 FM 2677 ,PO Box 1294 - RUSSELL	Stratford	N/A	N/A	-102.0638609	36.3727126	No description entered.
99	14445 WINDMILL LN - BECKER	Texline	N/A	N/A	-102.9630723	36.3907642	No description entered.
100	14462 COULTER RD - COULTER *BIG DOG*	Texline	N/A	N/A	-102.9338955	36.3928126	No description entered.
101	14475 FM 1262 - STEDJE	Gruver	N/A	N/A	-101.5139426	36.397841	No description entered.
102	14494 HURBERT RD - HERBERT	Dalhart	N/A	N/A	-102.8590027	36.4065123	No description entered.
103	14500 CR 9	Stratford	N/A	N/A	-102.0130914	36.3890479	No description entered.
104	14596 fm 2677 - H S FARMS	Stratford	N/A	N/A	-102.060703	36.400283	No description entered.
105	14682 COULTER RD - SCHMIDT	Texline	N/A	N/A	-102.9336642	36.427336	No description entered.
106	1469 HWY 54 - WATER RIGHT IRRIGATION	Texhoma	N/A	N/A	-101.7668669	36.5110181	No description entered.
107	14695 FM 1261 - FRONTIER FEEDYARD	Spearman	N/A	N/A	-101.2407232	36.4774567	No description entered.
108	14698 FM 119 - Sangster	Sunray	N/A	N/A	-101.8131021	36.4143462	No description entered.
109	14740 CR 15 - Mcadams	Stratford	N/A	N/A	-101.9188104	36.4208875	No description entered.
110	14777 CR 19 - Roach	Sunray	N/A	N/A	-101.8430855	36.4258403	No description entered.
111	14801 CR 3, PO Box 87- Cagle	Stratford	N/A	N/A	-102.1349167	36.4297485	No description entered.
112	14801 FM 1261 , HANSFORD STATION, PANHANDLE EASTERN	Spearman	N/A	N/A	-101.2208339	36.4753725	No description entered.
113	14864 FM 296 - COULTER	Texline	N/A	N/A	-102.9225278	36.3841193	No description entered.
114	14959 BALLEW RD - UNGER	Dalhart	N/A	N/A	-102.6828056	36.4640342	No description entered.
115	14998 CR 13 - REEDER CATTLE	Stratford	N/A	N/A	-101.9564303	36.4559893	No description entered.
116	15003 FM 1290 - MURPHY	Gruver	N/A	N/A	-101.7519534	36.4587832	No description entered.
117	15010 FM 1290 - SCHAFER	Gruver	N/A	N/A	-101.749354	36.4601054	No description entered.
118	15130 CR 22 - MEYER	Texhoma	N/A	N/A	-101.7865806	36.47774	MEYER, MICHAEL D\n\nGO SOUTH ON 2ND ST UNTIL IT CURVES TO WEST. \nWHEN YOU SEE BIG CLUSTER OF TREES MAKE LEFT (CR 22)\nGO FOR 1 MILE TO ONLY HOUSE ON LEFT.
119	15152 SANDY TRAIL - SANDY TRAIL FARMS	Kerrick	N/A	N/A	-102.3195647	36.4952018	No description entered.
120	15166 FM 1290 - ROSS	Gruver	N/A	N/A	-101.749631	36.4822961	No description entered.
121	15270 BERRY RD, RR 1 Box 101A - TEXHOMA FIRESTONE CATTLE RANCH	Texhoma	1	101A	-101.9317517	36.4927562	TEXHOMA FIRESTONE CATTLE RANCH\n\n7 MILES WEST  FROM TEXHOMA ON STATELINE ROAD. ON SOUTH SIDE OF ROAD AFTER YOU PASS MILE 15. \n \n36°29'34.3"N 101°55'54.9"W\nhttps://goo.gl/maps/316yPPQNMHE2
122	15675 FM 296 - SMITH	Dalhart	N/A	N/A	-102.7971325	36.4113802	No description entered.
123	1621 mile 30	Guymon	N/A	N/A	-101.4894946	36.7731433	No description entered.
124	1641 MILE 38 - SEABOARD GRAIN	Optima	N/A	N/A	-101.3429075	36.7715187	No description entered.
125	1692 MILE 8 - PRIMORIS , DAUGHERTY	Texhoma	N/A	N/A	-101.8890373	36.7635368	No description entered.
126	17191 FM 296 - FRERECH	Dalhart	N/A	N/A	-102.5965732	36.4557059	No description entered.
127	1723 Jacque ln	Guymon	N/A	N/A	-101.5117317	36.7587973	No description entered.
128	1743 mile 30 - STRICKLAND	Guymon	N/A	N/A	-101.4912645	36.7542725	No description entered.
129	1749 JACQUE LN - RUBIO	Guymon	N/A	N/A	-101.5118293	36.7551471	No description entered.
130	1781 MILE 32 - QC SUPPLY	Guymon	N/A	N/A	-101.4565435	36.7485766	No description entered.
131	1781 MILE 32 - QC SUPPLY - ORTIZ	Guymon	N/A	N/A	-101.454979	36.7503924	5806510089 Daniel Ortiz
132	1811 CR CC - STALLEY	Texhoma	N/A	N/A	-101.7042496	36.5890826	No description entered.
133	1831 MILE 3 , RR 4 Box 49 - CLINE	Texhoma	4	49	-101.9768158	36.742383	rex
134	1950 Mile 30	Guymon	N/A	N/A	-101.4914816	36.7252436	No description entered.
135	1991 MILE 33 - WEICHMANN PIG CO	Guymon	N/A	N/A	-101.4381841	36.7208276	No description entered.
136	1992 MILE 34 - MIDWEST TRAILER	Guymon	N/A	N/A	-101.4209878	36.7198315	No description entered.
137	200 E MOORMAN - WHISENNAND	Texhoma	N/A	N/A	-101.7796371	36.4982114	No description entered.
138	200 ROPER LN - DAVES	Stratford	N/A	N/A	-102.074982	36.3223562	No description entered.
139	2001 HURLIMAN - A E HOMES	Guymon	N/A	N/A	-101.4564257	36.6996812	No description entered.
140	201 E 4TH , KARPE	Optima	N/A	N/A	-101.3548818	36.7572776	No description entered.
141	203 Jake St	Optima	N/A	N/A	-101.3434065	36.758886	No description entered.
142	205 N FM 119 - Burkett Drilling	Sunray	N/A	N/A	-101.8264123	36.0306012	No description entered.
143	2050 ROLLING HILLS	Guymon	N/A	N/A	-101.4614153	36.7124229	No description entered.
144	2063 MILE 33 - BLACKMOORE DIESEL	Guymon	N/A	N/A	-101.438395	36.7081852	No description entered.
145	2080 MILE 32 - TRAILER PARK	Guymon	N/A	N/A	-101.4572462	36.7058606	No description entered.
146	2087 MILE 32 - NMT DIESEL REPAIR	Guymon	N/A	N/A	-101.4561611	36.7057574	No description entered.
147	2116 MIKE - LANDESS	Guymon	N/A	N/A	-101.5057602	36.7015257	No description entered.
148	2123 MILE 32 - MACIAS	Guymon	N/A	N/A	-101.4562271	36.7006355	No description entered.
149	2131 MILE 29 - JONES	Guymon	N/A	N/A	-101.50948	36.6990521	No description entered.
150	2134 PIONEER DR - BROWN	Guymon	N/A	N/A	-101.5026914	36.6987201	No description entered.
151	219 SW 4TH - MAYHEW	Optima	N/A	N/A	-101.3587096	36.7572901	No description entered.
152	2248 ROAD C - ROBERTA LUNSFORD, kenny	Guymon	N/A	N/A	-101.6224755	36.9648472	No description entered.
153	2254 MILE 27 -  SCHALLERT	Guymon	N/A	N/A	-101.5476365	36.6813609	No description entered.
154	2256 CR X - PARKER	Guymon	N/A	N/A	-101.5552654	36.6560671	No description entered.
155	2276 MILE 53 - E BAR CAMP , ELLIOTT	Hardesty	N/A	N/A	-101.0794276	36.6813196	No description entered.
156	2284 MILE 29, RR 3 Box 26 - HUFFMAN	Guymon	3	26	-101.5105009	36.6764392	No description entered.
157	2286 MILE 32 - MATZEK	Guymon	N/A	N/A	-101.4572219	36.6769888	No description entered.
158	2290 ROAD FF - GRICE	Goodwell	N/A	N/A	-101.6222634	36.5429941	No description entered.
159	23 HIGHWAY 54,111. 113	Hooker	N/A	N/A	-101.2100795	36.8582658	No description entered.
160	2300 MILE 26 - MARTINEZ	Guymon	N/A	N/A	-101.5649604	36.6749798	No description entered.
161	2302 Road Y	Goodwell	N/A	N/A	-101.6181018	36.6466346	No description entered.
162	2305 BONNER RD, RR 3 Box 32ND -  COLLIER	Guymon	3	32ND	-101.5339354	36.6743955	No description entered.
163	2311 BONNER RD - RAMEY	Guymon	N/A	N/A	-101.533974	36.6735514	No description entered.
164	2312 ROAD HH	Goodwell	N/A	N/A	-101.6167839	36.5157059	No description entered.
165	2323 MILE 27 - HACKETT	Guymon	N/A	N/A	-101.5454693	36.6722131	No description entered.
166	2380 MARK - REYES	Guymon	N/A	N/A	-101.517343	36.6632876	No description entered.
167	2386 MARK ST - AMADOR	Guymon	N/A	N/A	-101.517329	36.662508	No description entered.
168	2389 MILE 31 - PACIFIC AG	Guymon	N/A	N/A	-101.4740357	36.6613298	No description entered.
169	2390 MARK ST - AMADOR	Guymon	N/A	N/A	-101.5169691	36.6618358	No description entered.
170	2476 MILE 26 - marungo , medina	Guymon	N/A	N/A	-101.5646215	36.6499605	No description entered.
171	2496 MILE 22 - NATIONAL CONDUCTOR	Goodwell	N/A	N/A	-101.6380088	36.6469219	No description entered.
172	25 QUAIL RUN - ESCARCEGA	Guymon	N/A	N/A	-101.4947929	36.6969178	No description entered.
173	2502 FM 1727 - TORREZ	Dalhart	N/A	N/A	-102.6373244	36.0795543	No description entered.
174	2549 CR E - IVIE	Guymon	N/A	N/A	-101.5666274	36.9323922	No description entered.
175	2582 ROAD Q , RR 2 Box 171 - Gooding , MARTINEZ	Guymon	2	171	-101.5674877	36.763358	GOODING, LESLIE\n580-651-3731\n\nFROM GOODWELL GO NORTH ON MILE 22, TURN RIGHT \nON 64. PASS BRIDGE. BROWN BARN ON NORTH SIDE\nWITH SWING SEATS. MOBILE HOME NEXT TO HOME. \nMAILBox IS ON ACROSS THE STREET
176	2596 MILE 26 , PO.Box 612 - HERNANDEZ	Guymon	N/A	N/A	-101.5649406	36.6464898	No description entered.
177	2641 MILE 26 - ROBERTS	Guymon	N/A	N/A	-101.5644469	36.6261459	No description entered.
178	2645 ROAD X - LEWIS	Guymon	N/A	N/A	-101.5567621	36.6579281	No description entered.
179	2656 ROAD W , RR 3 Box 32 , 32HH - OVERHEAD DOOR , HARLAND	Guymon	3	32	-101.5543872	36.6762045	No description entered.
180	2671 US 64 - PANHANDLE RV	Guymon	N/A	N/A	-101.5568116	36.7624396	No description entered.
181	2681 ROAD Q - WELLS	Guymon	N/A	N/A	-101.5558325	36.7622025	No description entered.
182	2694 MILE 19 - ESLINGER	Goodwell	N/A	N/A	-101.6914864	36.6185041	No description entered.
183	2711 MILE 24 - CAMP	Goodwell	N/A	N/A	-101.5997832	36.6160564	No description entered.
184	2720 ROAD W	Guymon	N/A	N/A	-101.5428243	36.675519	No description entered.
185	2726 MILE 24 - GARRISON	Goodwell	N/A	N/A	-101.6010185	36.6134733	No description entered.
186	2727 ROAD W - URIBE	Guymon	N/A	N/A	-101.5413943	36.674273	No description entered.
187	2750 ROAD X	Guymon	N/A	N/A	-101.5370598	36.660778	No description entered.
188	2759 ROAD W - LANDERS	Guymon	N/A	N/A	-101.5353923	36.6750812	No description entered.
189	2779 ROAD W - MAINS	Guymon	N/A	N/A	-101.5315426	36.674486	No description entered.
190	2793 ROAD X - CHAPMAN	Guymon	N/A	N/A	-101.5312423	36.657432	No description entered.
191	2800 MILE 28 - TRUELOVE	Guymon	N/A	N/A	-101.5283784	36.6013986	No description entered.
192	2803 ROAD W - NELSON	Guymon	N/A	N/A	-101.5274585	36.6745329	No description entered.
193	2807 ARAPAHO DR - JOHNSTON	Guymon	N/A	N/A	-101.5272041	36.6647703	No description entered.
194	2811 ARAPAHO - CHAPARRO	Guymon	N/A	N/A	-101.5263435	36.6643151	No description entered.
195	2819 ARAPAHO DR - ALVAREZ	Guymon	N/A	N/A	-101.5246029	36.6645594	No description entered.
196	2820 ROAD X	Guymon	N/A	N/A	-101.5250883	36.6604606	No description entered.
197	2823 RD W - CHAVEZ	Guymon	N/A	N/A	-101.5231358	36.6719262	No description entered.
198	2825 ROAD W	Guymon	N/A	N/A	-101.5231129	36.6748029	No description entered.
199	2835 ROAD W - SELVIDGE	Guymon	N/A	N/A	-101.5203912	36.6720928	No description entered.
200	2839 ROAD W - QUIMBY	Guymon	N/A	N/A	-101.5208195	36.6743482	No description entered.
201	2848 CR W LOT 17 , RR 3 Box 32B - FERGUSON	Guymon	3	32B	-101.5165051	36.6783576	No description entered.
202	2848 CR W LOT 22 - FERNANDEZ	Guymon	N/A	N/A	-101.5173849	36.6788102	No description entered.
203	2859 ROAD X - SPRY	Guymon	N/A	N/A	-101.5173588	36.6598787	No description entered.
204	2864 ROAD X - AMADOR	Guymon	N/A	N/A	-101.5193021	36.6652132	No description entered.
205	2868 ROAD X , RR 3 Box 51 - VASQUEZ	Guymon	3	51	-101.5161797	36.6609921	No description entered.
206	2870 RD W - LARA	Guymon	N/A	N/A	-101.5142145	36.6754681	No description entered.
207	2880 ROAD W - WING	Guymon	N/A	N/A	-101.5127369	36.6754387	No description entered.
208	2884 MILE 27 - MACIAS	Guymon	N/A	N/A	-101.5515123	36.5909099	No description entered.
209	2885 ROAD W - RODRIGUEZ	Guymon	N/A	N/A	-101.5125087	36.6746884	No description entered.
210	2890 ROAD W - STUMP	Guymon	N/A	N/A	-101.5114278	36.6751911	No description entered.
211	2900 ROAD Q	Guymon	N/A	N/A	-101.5111076	36.7625215	No description entered.
212	2906 W NELSON - LIKE	Guymon	N/A	N/A	-101.5093957	36.6967718	No description entered.
213	2930 Road R	Guymon	N/A	N/A	-101.5053211	36.7483028	No description entered.
214	2975 HIGH LONESOME - BROWN	Dalhart	N/A	N/A	-102.5411417	36.3969347	No description entered.
215	3006 RD P - FREELAND	Guymon	N/A	N/A	-101.4911419	36.7770069	No description entered.
216	301 HWY 102 - SMITH	Dalhart	N/A	N/A	-103.0184811	36.1425457	No description entered.
217	3022 MILE 28	Guymon	N/A	N/A	-101.5293461	36.5699311	No description entered.
218	303 BROADWAY - HARRISON	Hardesty	N/A	N/A	-101.1916196	36.6186706	No description entered.
219	304 E LOCUST - HAMMOND	Goodwell	N/A	N/A	-101.6320403	36.5967171	No description entered.
220	3045 LITTLE JOHN LN - VIYUOH	Guymon	N/A	N/A	-101.4855647	36.7745627	No description entered.
221	3049 Mile 22 - Triple F Trucking	Goodwell	N/A	N/A	-101.6337075	36.5674265	No description entered.
222	3052 ROAD J , RR 1 Box 31A - Long, CERDA	Guymon	1	31A	-101.4772934	36.8637285	LONG, DAWN\n970-331-3882\n\nNORTH ON 136 TO ROAD J TURN EAST TOWARDS HOOKER\n1ST HOUSE ON NORTH SIDE.
223	3061 MOORE RD - MARR	Guymon	N/A	N/A	-101.4814215	36.6569117	No description entered.
224	3070 ROAD P	Guymon	N/A	N/A	-101.4804693	36.7768324	No description entered.
225	3077 MOORE RD - HOUGH	Guymon	N/A	N/A	-101.4787433	36.6586915	No description entered.
226	3085 MOORE RD - MOORE	Guymon	N/A	N/A	-101.4773336	36.6586427	No description entered.
227	3091 MOORE RD - DEJOSEPH	Guymon	N/A	N/A	-101.476303	36.6585585	No description entered.
228	3130 ROAD T - FERNANDEZ	Guymon	N/A	N/A	-101.4716686	36.7192628	No description entered.
229	3140 NE 24TH - NEIGEBAUER	Guymon	N/A	N/A	-101.4673959	36.7045855	No description entered.
230	3199 ROAD AA	Guymon	N/A	N/A	-101.4575626	36.6166221	No description entered.
231	3205 CR W - TEXHOMA WHEAT GROWERS	Guymon	N/A	N/A	-101.4546135	36.6744838	No description entered.
232	321 MILE 29	Guymon	N/A	N/A	-101.5046271	36.9618279	No description entered.
233	3227 HIGHWAY 64 - DIRIGO	Guymon	N/A	N/A	-101.4523376	36.6998793	No description entered.
234	323 N GOODWELL AVE, RR 1 Box 85 - MCDANELD	Goodwell	1	85	-101.627507	36.5986304	No description entered.
235	3248 MILE 30 ,RR 4 Box 74 - MOFFET	Guymon	4	74	-101.4936421	36.5372646	MOFFET\n\n\nTAKE HWY 136 SOUTH FOR 11 OR 12 MILES TO WHITE\nHOUSE GREEN ROOF ON WEST SIDE OF ROAD BEFORE \nYOU GET TO ROAD GG. \nWHITE MAILBox IS MARKED.
236	3273 ROAD T - INFRAMARK , SEVERN TRENT	Guymon	N/A	N/A	-101.444993	36.7141078	No description entered.
237	3290 CR EE - LEE	Guymon	N/A	N/A	-101.4037056	36.533091	No description entered.
238	3291 DESERT RD, HIGH PLAINS BIOENERGY	Guymon	N/A	N/A	-101.4425022	36.7120816	No description entered.
239	3298 ROAD V - J G TRUCKING	Guymon	N/A	N/A	-101.4392977	36.6902713	No description entered.
240	3352 Mile 13 , RR 4 Box 68 - Koehn	Texhoma	4	68	-101.792038	36.5229789	No description entered.
241	3441 ROAD W	Guymon	N/A	N/A	-101.4122009	36.6726897	No description entered.
242	3460 US 54 - MOCK	Guymon	N/A	N/A	-101.4071745	36.7285841	No description entered.
243	3474 Road R2 , RR 1 Box 23- Duffy	Guymon	1	23	-101.4067078	36.742691	DUFFY, RICHARD 3474 ROAD R2  GO EAST ON HWY 54 PASS SEABOARD. AFTER RIVER BEND GO LEFT UNDER TRAIN TRACKS BRIDGE ON DIRT ROAD  TO HOUSE READ BRICK WITH GREEN ROOF DOG FRIENDLY  Dropped pin https://maps.google.com?q=36.724858,-101.412634&hl=en-US&gl=us
244	3490 R2 - PARSLEY	Guymon	N/A	N/A	-101.4041227	36.7407818	No description entered.
245	3545 ROAD X - FERRUFINO	Guymon	N/A	N/A	-101.3947725	36.6594703	No description entered.
246	3549 CR X - BANKS	Guymon	N/A	N/A	-101.3951467	36.6584785	No description entered.
247	3630 NE 54 - LEMONS	Guymon	N/A	N/A	-101.3810797	36.7456002	No description entered.
248	3633 ROAD Z - HITCH FEEDLOT	Guymon	N/A	N/A	-101.3719808	36.6271487	No description entered.
249	3657 MINNIE MACK - JAMES	Dalhart	N/A	N/A	-102.4315951	36.4502868	Enter from North side - ben tom road
250	3857 HWY 54	Hooker	N/A	N/A	-101.3360639	36.7692331	No description entered.
251	403 E 2ND, PO Box 262 - METHVIN	Goodwell	N/A	N/A	-101.6281156	36.5948857	No description entered.
252	404 S MAIN - BRACE	Goodwell	N/A	N/A	-101.6298339	36.58991	No description entered.
253	405 E RUSSELL - HEDRICK	Hooker	N/A	N/A	-101.2068275	36.8591739	No description entered.
254	405 S IRELAND - NORTHWEST LINE	Hooker	N/A	N/A	-101.2116808	36.8568369	No description entered.
255	406 W 54 , PO Box 545 - MIDWEST TRAILERS	Hooker	N/A	N/A	-101.2154098	36.8548696	No description entered.
256	422 W ELM - VALDEZ	Goodwell	N/A	N/A	-101.638951	36.5985762	No description entered.
257	4301 FM 297 - CORONADO FEEDERS	Dalhart	N/A	N/A	-102.2958782	36.0698916	No description entered.
258	4315 FM 3213  - JAQUEZ	Dalhart	N/A	N/A	-102.2770225	36.2305369	No description entered.
259	4335 KO LN - WELLS EWERS	Kerrick	N/A	N/A	-102.2903375	36.4727574	No description entered.
260	4346 ROAD I - BROWN	Hooker	N/A	N/A	-101.2437407	36.878336	No description entered.
261	4428 SUMMEROUR LN - SUMMEROUR	Dalhart	N/A	N/A	-102.2747142	36.1022059	No description entered.
262	4563 HWY 54 - C & R TIRE AUTO	Hooker	N/A	N/A	-101.2147601	36.8552662	No description entered.
263	4603 ROAD M - BALZER	Hooker	N/A	N/A	-101.2043573	36.8189945	No description entered.
264	4613 ROAD K - CERDA	Hooker	N/A	N/A	-101.1958046	36.8483555	No description entered.
265	4695 FM 297 - MEYER	Stratford	N/A	N/A	-102.2222336	36.0702221	No description entered.
266	4760 FM 297 - McDaniel	Stratford	N/A	N/A	-102.211107	36.0556164	No description entered.
267	4896 HWY 54 - MCCRACKEN	Stratford	N/A	N/A	-102.1860417	36.2632634	No description entered.
268	504 W PEERY - WYWIAS	Hardesty	N/A	N/A	-101.1973181	36.6169984	No description entered.
269	5100 CR L - BALL	Stratford	N/A	N/A	-102.1569073	36.3336893	No description entered.
270	5130 FM 297	Stratford	N/A	N/A	-102.1577538	36.0618077	No description entered.
271	52 SHAYLA DRIVE	Guymon	N/A	N/A	-101.4642334	36.6869068	No description entered.
272	521 CR M	Goodwell	N/A	N/A	-101.9376949	36.8199117	No description entered.
273	5295 CR X - POLLARD	Stratford	N/A	N/A	-102.1363859	36.1687154	No description entered.
274	5300 CR BB - Burton	Stratford	N/A	N/A	-102.1333618	36.1017418	No description entered.
275	5325 CR N	Stratford	N/A	N/A	-102.1300876	36.313702	No description entered.
276	5345 CR N	Stratford	N/A	N/A	-102.1279073	36.31433	No description entered.
277	5451 S ROAD - SIFFORD	Adams	N/A	N/A	-101.0534384	36.7327624	No description entered.
278	5457 CR BB	Stratford	N/A	N/A	-102.1067891	36.1109168	No description entered.
279	5480 CR N - SPURLOCK	Stratford	N/A	N/A	-102.1121916	36.3163007	No description entered.
280	5497 CR N - GOMEZ	Stratford	N/A	N/A	-102.1046533	36.3191612	No description entered.
281	5511 FM 297	Stratford	N/A	N/A	-102.0826935	36.0701331	No description entered.
282	5517 CR J - THOMPSON	Stratford	N/A	N/A	-102.1067893	36.3713531	No description entered.
283	5522 US 87 - VAUGHAN	Dumas	N/A	N/A	-102.081525	35.8590138	No description entered.
284	5601 FM 281 - Faria Bros Dairy	Dumas	N/A	N/A	-102.0868893	36.026443	No description entered.
285	5630 CR M - BAR K VET	Stratford	N/A	N/A	-102.0737776	36.3278192	No description entered.
286	5690 HWY 15 - JACKSON	Stratford	N/A	N/A	-102.0641253	36.3270513	No description entered.
287	5700 HWY 15 - BOGART	Stratford	N/A	N/A	-102.0598257	36.326113	No description entered.
288	5725 CR L - Airport - Whittington	Stratford	N/A	N/A	-102.0527583	36.3429367	No description entered.
289	574 MILE 45 - HERALD	Hooker	N/A	N/A	-101.216948	36.9247334	No description entered.
290	5751 FM 297 - WILSON	Stratford	N/A	N/A	-102.0527706	36.0767994	No description entered.
291	580 MILE 45 - HERALD	Hooker	N/A	N/A	-101.2170693	36.9247382	No description entered.
292	5879 CR Y - BOULDIN	Stratford	N/A	N/A	-102.0302864	36.1544053	No description entered.
293	5999 W ROAD H - MEIL	Dumas	N/A	N/A	-102.0003712	35.9525179	No description entered.
294	603 HWY 102 - SMITH	Dalhart	N/A	N/A	-102.9627492	36.1486122	No description entered.
295	6152 FM 1573 - BASKIN	Stratford	N/A	N/A	-101.9775476	36.1256485	No description entered.
296	6156  FM 1573 - BASKIN	Stratford	N/A	N/A	-101.9808533	36.1388911	No description entered.
297	6172 FM 119 - BOLLINGER	Dumas	N/A	N/A	-101.9682628	35.9212199	No description entered.
298	6185 US 54 - HAGER	Stratford	N/A	N/A	-101.9759876	36.3982526	No description entered.
299	6200 , 6201 CR O - BRANHAM, STEWART	Stratford	N/A	N/A	-101.9652258	36.3000223	No description entered.
300	6230 US 54 - SPROTT	Stratford	N/A	N/A	-101.9660989	36.3943025	No description entered.
301	633 CR II - BERRY	Texhoma	N/A	N/A	-101.9190624	36.4992496	BERRY, AMY\n580-521-1106\n\nFROM TEXHOMA TAKE STATELINE ROAD WEST AND GO \nFOR 7 MILES TO BRICK HOME ON SOUTH SIDE OF ROAD. \nIT IS THE NEWEST CONSTRUCTION.
302	6338 FM 722 - ARRIAGA	Dumas	N/A	N/A	-102.0346462	35.8048817	No description entered.
303	6351 CR G - Du Plessis	Stratford	N/A	N/A	-101.9377255	36.4159795	No description entered.
304	6354 CR CC - JACKSON	Stratford	N/A	N/A	-101.945	36.096099	No description entered.
305	6411 CR CC - WALDEN	Stratford	N/A	N/A	-101.9332519	36.101696	No description entered.
306	6452 Highway 54 - Clift	Stratford	N/A	N/A	-101.9240885	36.4190525	Chad Clift
307	6525 CR E - Jantz	Stratford	N/A	N/A	-101.9168012	36.4392715	JANTZ \n\nOFF FROM HWY 54 TO CR 15 GO NORTH\nTHEN TURN RIGHT ON CR E TO THEIR HOME\n\nDropped Pin\nnear Unnamed Road, Stratford, TX 79084\nhttps://goo.gl/maps/sSWK2Y5wkHq
308	6670 CR E - RAIL	Sunray	N/A	N/A	-101.883293	35.9974948	No description entered.
309	6697 CR V - HELTON	Stratford	N/A	N/A	-101.8853621	36.1992382	No description entered.
310	6699 CR V - MARQUEZ	Stratford	N/A	N/A	-101.8728698	36.1974385	No description entered.
311	6742 E Road M - Sheldon, Derrick Ranch	Dumas	N/A	N/A	-101.8597815	35.8807836	No description entered.
312	6750 CR C - Koehn	Sunray	N/A	N/A	-101.8747189	36.4730136	KOEHN, VIRGINIA\n\nOF FROM HWY 54 TO CR C\nGO ALL THE WAY WEST TO LAST HOUSE\nBROWN BRICK\n\nDropped Pin\nnear Sherman County, TX\nhttps://goo.gl/maps/QgndnuTnWZ12
313	6750 CR G - KOEHN	Sunray	N/A	N/A	-101.8572863	36.4148547	No description entered.
314	6850 CR C - STEPHENS, GIESBRECHT	Sunray	N/A	N/A	-101.8534548	36.4727248	No description entered.
315	6850 CR W - BAEZA	Stratford	N/A	N/A	-101.8542589	36.1917382	No description entered.
316	6855 ROAD X - SPURLOCK , DRURY , WIRTGEN	Stratford	N/A	N/A	-101.8571519	36.1693998	No description entered.
317	6900 FM 1573 - ANDERSON	Sunray	N/A	N/A	-101.8462576	36.1386188	leave in Rubbermaid on front porch if noone home
318	6950 CR C - KOEHN	Sunray	N/A	N/A	-101.8476477	36.4726163	No description entered.
319	6950 CR F - Hale	Sunray	N/A	N/A	-101.8320638	36.4294628	No description entered.
320	6969 FM 281 - WELL ENGINE SUPPLY	Sunray	N/A	N/A	-101.8284013	36.0254995	No description entered.
321	6973 FM 281 - Lonestar Farms, Crownover Farms	Sunray	N/A	N/A	-101.8279398	36.0244512	No description entered.
322	6996 CR G - SANGSTER	Sunray	N/A	N/A	-101.8258786	36.4147078	No description entered.
323	7005 CR D - MENDENHALL	Sunray	N/A	N/A	-101.8212522	36.4592456	No description entered.
324	702 NE 24TH	Guymon	N/A	N/A	-101.4720709	36.7043402	No description entered.
325	703 S HART - CRAIG WAIT	Boise City	N/A	N/A	-102.4897271	36.7181925	No description entered.
326	706 E PANHANDLE - THIENER	Hooker	N/A	N/A	-101.2074769	36.863422	No description entered.
327	706 HWY 94	Hooker	N/A	N/A	-101.2073899	36.8556988	No description entered.
328	706 NE 24TH - LOT G CERVANTES	Guymon	N/A	N/A	-101.4705397	36.7055418	No description entered.
329	711 TEXAS - PRESTAGE FARMS	Texhoma	N/A	N/A	-101.791505	36.5005819	No description entered.
330	712 IVA BURDGE - LYNCH	Hooker	N/A	N/A	-101.2064236	36.8686427	No description entered.
331	714 NE 20TH , WINTERS	Guymon	N/A	N/A	-101.4664433	36.6984282	No description entered.
332	715 MCKINLEY	Goodwell	N/A	N/A	-101.6261708	36.5881507	No description entered.
333	7155 CEMETERY RD - TAYLOR	Sunray	N/A	N/A	-101.8092882	36.0431513	No description entered.
334	7177 CEMETERY RD	Sunray	N/A	N/A	-101.7995645	36.0384541	No description entered.
335	7185 CEMETERY RD - GRAVEYARD GUN SHOP	Sunray	N/A	N/A	-101.7980257	36.0386227	No description entered.
336	7190 FM 119 - WILBUR ELLIS	Sunray	N/A	N/A	-101.8284671	35.9795798	No description entered.
337	7199 CEMETERY RD - ROUSSER	Sunray	N/A	N/A	-101.794099	36.0391374	No description entered.
338	7199 CR P - Yelek	Sunray	N/A	N/A	-101.7872484	36.2847472	No description entered.
339	720 MILE 47 - BUTLER	Hooker	N/A	N/A	-101.1804206	36.9038089	No description entered.
340	7200 CR D - UNRUH	Sunray	N/A	N/A	-101.7867299	36.4511142	No description entered.
341	7260 FM 1573 - CARTRITE	Sunray	N/A	N/A	-101.7842805	36.1378558	No description entered.
342	7262 FM 1573 - Huckaby	Sunray	N/A	N/A	-101.784007	36.1368695	No description entered.
343	7266 FM 1573 - CARTRITE	Sunray	N/A	N/A	-101.7842354	36.1362171	No description entered.
344	7296 FM 281 - HAYS	Sunray	N/A	N/A	-101.7764756	36.0092749	No description entered.
345	7298 FM 281 - TIMS	Sunray	N/A	N/A	-101.7755716	36.008029	No description entered.
346	7299 FM 281 - TIMS	Sunray	N/A	N/A	-101.7755977	36.0095325	No description entered.
347	7301 CR I - WIEBE	Gruver	N/A	N/A	-101.7708518	36.2995422	No description entered.
348	7301 CR O	Gruver	N/A	N/A	-101.7588056	36.298862	No description entered.
349	7338 FM 1573 - MOORE , NORMAN	Sunray	N/A	N/A	-101.7653422	36.1390788	No description entered.
350	7365 CR K - LARSEN	Gruver	N/A	N/A	-101.7638659	36.3578678	No description entered.
351	7399 CR EE - STONE	Sunray	N/A	N/A	-101.7539502	36.0683316	No description entered.
352	7440 CR D - HAMILTON	Gruver	N/A	N/A	-101.7416685	36.4526766	No description entered.
353	7451 FM 281 - ALBRO	Sunray	N/A	N/A	-101.7480951	36.009495	No description entered.
354	7475 FM 2349 - LEATHERS	Gruver	N/A	N/A	-101.7387774	36.3973484	No description entered.
355	7540 CR B - MEYER	Texhoma	N/A	N/A	-101.7217707	36.4863941	MEYER, SARAH\n\nGO 95 SOUTH AND CURVE RIGHT ONTO 1290\nMAKE LEFT ON CR B. \nGO FOR ABOUT 2 MILES TO GRAY DOUBLE WIDE \nTRAILER ON SOUTH SIDE OF ROAD.
356	7541 FM 119 - SNODGRASS	Sunray	N/A	N/A	-101.8265505	36.0289884	No description entered.
357	7611 FM 1573	Sunray	N/A	N/A	-101.7173847	36.1501088	No description entered.
358	7730 FM 1573 - FORMAN	Sunray	N/A	N/A	-101.6891254	36.129404	No description entered.
359	7748, 7740 FM 281 - HILL	Sunray	N/A	N/A	-101.6950487	36.0086548	No description entered.
360	7901 CR U - THORESON	Gruver	N/A	N/A	-101.660183	36.221215	No description entered.
361	8 CARTER ST - LEYVA	Optima	N/A	N/A	-101.3539585	36.7610741	No description entered.
362	8000 CR W	Gruver	N/A	N/A	-101.6329669	36.1818122	No description entered.
363	803 NE 20TH , WINTERS	Guymon	N/A	N/A	-101.4664401	36.6971831	No description entered.
364	803 PURNELL	Stratford	N/A	N/A	-102.0735812	36.3442268	No description entered.
365	805 PURNELL - ROBERTSON	Stratford	N/A	N/A	-102.0730451	36.344348	No description entered.
366	805 S Glenn - Goucher	Texhoma	N/A	N/A	-101.7795663	36.4976849	No description entered.
367	8098 CR Y	Gruver	N/A	N/A	-101.6238518	36.1524496	No description entered.
368	810 DAKOTA -RR 1 Box 152 - MARQUEZ	Optima	1	152	-101.3414763	36.758584	No description entered.
369	836 E EAGLE - JOHNSON	Goodwell	N/A	N/A	-101.6227731	36.5955942	No description entered.
370	8370 CR W - USA FEEDYARD	Gruver	N/A	N/A	-101.576046	36.1825332	No description entered.
371	8375 CR B - CLARK	Gruver	N/A	N/A	-101.570343	36.4912261	No description entered.
372	8400 CR C	Gruver	N/A	N/A	-101.5676872	36.4741804	No description entered.
373	8400 CR D - KOEHN	Gruver	N/A	N/A	-101.5670027	36.4585829	No description entered.
374	8400 FM 281 - Kimbrel	Sunray	N/A	N/A	-101.7471376	35.9866204	KIMBREL\n\nFROM SUNRAY GO EAST ON FM 281 TO\nCR 24, TURN SOUTH AND GO FOR 1 1/4 MILE TO\nDIRT DRIVE ON LEFT/EAST SIDE. \n\nIF CR 24 IS WET, DO NOT GET ON UNLESS 4x4\n\nhttps://goo.gl/maps/gGZtE2QUcTA2
375	848 MILE 45 - J & M CLEANING	Hooker	N/A	N/A	-101.2170072	36.8852238	No description entered.
376	8500 CR F - MARTINEZ	Gruver	N/A	N/A	-101.5505594	36.429824	No description entered.
377	8660 CR B - SCHLIBLER	Gruver	N/A	N/A	-101.5187467	36.4874249	No description entered.
378	8849 FM 281 - GREENE	Morse	N/A	N/A	-101.4896596	36.0259351	No description entered.
379	8869 FM 2018 - HENSON	Gruver	N/A	N/A	-101.5204066	36.2130011	No description entered.
380	887 Mile 28 - Alm	Guymon	N/A	N/A	-101.5224833	36.8801603	No description entered.
381	898 MILE 45 - WERNER	Hooker	N/A	N/A	-101.2174694	36.878055	No description entered.
382	911 TEXAS - PRESTAGE FARMS	Texhoma	N/A	N/A	-101.7926202	36.5007302	No description entered.
383	912 MILE 32 - RODRIGUEZ	Guymon	N/A	N/A	-101.4514002	36.8760673	No description entered.
384	917 NE 24TH - NUNEZ	Guymon	N/A	N/A	-101.468992	36.7014404	No description entered.
385	931 MILE 32 - DCP MIDSTREAM	Guymon	N/A	N/A	-101.4506918	36.8750566	No description entered.
386	9570 FM 278 - H G FLYING SERVICE	Gruver	N/A	N/A	-101.3581095	36.2679771	No description entered.
387	970 CR GG - GAILLARD	Texhoma	N/A	N/A	-101.8568018	36.5305083	No description entered.
388	9875 CR G - VENNEMAN	Spearman	N/A	N/A	-101.2977027	36.4091196	No description entered.
389	Airproducts - 15139 CR 9	Gruver	N/A	N/A	-101.4712844	36.4911694	No description entered.
390	AMARILLO GRAIN EXCHANGE - 3221 HWY 54	Guymon	N/A	N/A	-101.4538787	36.6991331	No description entered.
391	ANIMAL HEALTH - 1517 HWY 54	Guymon	N/A	N/A	-101.4615195	36.6935903	No description entered.
392	Aurora Organic Dairy  - 5490 Cr Y	Stratford	N/A	N/A	-102.0973282	36.1541481	No description entered.
393	B & B SALES - 509 54 WEST	Guymon	N/A	N/A	-101.48711	36.6755403	No description entered.
394	BOISE CITY ANIMAL HOSPITAL	Boise City	N/A	N/A	-102.4946257	36.7296532	No description entered.
395	Breitburn Dry Trail Plant. RR 2 Box 113 , 2281 ROAD G - Guymon	Guymon	2	113	-101.616514	36.9061596	No description entered.
396	CELEBRITY FEEDERS	Felt	N/A	N/A	-102.7860371	36.6043506	No description entered.
397	Cimarron Feeders - RR 1 Box 59 - Texhoma	Texhoma	1	59	-102.2437185	36.5809954	No description entered.
398	CRI Feeders. RR 2 Box 114 - Guymon	Guymon	2	114	-101.6167089	36.9395281	No description entered.
399	DCP - 15150 CR 9	Gruver	N/A	N/A	-101.4676216	36.4963594	No description entered.
400	DEAF SMITH - 12310  FM 807	Dalhart	N/A	N/A	-102.2343305	36.0847913	No description entered.
401	DOWNS - EE@MILE 51	Hardesty	N/A	N/A	-101.1156082	36.5557343	No description entered.
402	Dumas FeedYard - 11301 HWY 287	Dumas	N/A	N/A	-101.9821283	35.9157984	No description entered.
403	FREEMAN FEEEDLOT , CR 31	Texhoma	N/A	N/A	-101.6363916	36.4594488	GO TO TEXHOMA, BEHIND TAYLOR CONVENIENCE STORE\nGO EAST ON HWY 95 ABOUT 9 MILES \nLOOK FOR SIGN FOR FREEMAN RANCH FEEDLOT. \nGO RIGHT/SOUTH ON CALICHE ROAD  FOR 3 MILES TO HOUSE\nRED BRICK HOUSE \nTHE 5TH RED BRICK HOUSE NEXT TO TAN BRICK.
404	GE	Guymon	N/A	N/A	-101.5051373	36.6638646	No description entered.
405	GOLDEN MESA CASINO - 2469 MILE 28	Guymon	N/A	N/A	-101.5277308	36.6503685	No description entered.
406	Griggs	Texhoma	N/A	N/A	-102.1225363	36.6045025	No description entered.
407	HAGER BROS TRUCKING - RR 1 Box 6, 6A , 107 S LINCOLN	Goodwell	1	6	-101.6222944	36.5949095	No description entered.
408	Helm's Nursery	Goodwell	N/A	N/A	-101.6372644	36.6321606	2591 Mile 22
409	Hitch Feed Yard	Optima	N/A	N/A	-101.3497633	36.8075903	No description entered.
410	HOOKER NOTES	Hooker	N/A	N/A	-101.2113962	36.8600172	No description entered.
411	Hydro Resources - 7531 FM 119	Sunray	N/A	N/A	-101.828312	36.0319202	No description entered.
412	JAMES RALEY COMPRESSOR STATION	Hooker	N/A	N/A	-101.2588172	36.8477459	No description entered.
413	JBS Swift Slaughterhouse	Dumas	N/A	N/A	-102.01327	36.0513199	No description entered.
414	KEYES GAS PLANT, KINDER MORGAN, COLORADO INTERSTATE GAS COMPANY	Boise City	N/A	N/A	-102.3172024	36.8928213	No description entered.
415	No Water Farms , 13903 HWY 287	Stratford	N/A	N/A	-102.0539988	36.3016233	No description entered.
416	Optima Seaboard Feed Mill, First Vehicle Services, RR 1 Box 164 - Optima	Optima	1	164	-101.3438866	36.7707321	No description entered.
417	OTTINGER	Boise City	N/A	N/A	-102.5356812	36.736749	No description entered.
418	PANHANDLE HEALTH - 3247 HWY 54 E	Guymon	N/A	N/A	-101.4482116	36.703008	No description entered.
419	PANHANDLE PIONEER PAWN - 609 SW 54	Guymon	N/A	N/A	-101.4888734	36.6737518	No description entered.
420	PERKINS PROTHRO RANCH , JODI ROBERTS	Kerrick	N/A	N/A	-102.3873109	36.5187028	No description entered.
421	PO Box 131 , 210 S SEWELL - EGGLESTON	Texhoma	N/A	N/A	-101.7918862	36.5035904	No description entered.
422	PO Box 147, 1201 PURNELL - FLORES	Stratford	N/A	N/A	-102.0668868	36.3430398	No description entered.
423	PO Box 183 - PUEBLA	Felt	N/A	N/A	-102.8587472	36.5578798	No description entered.
424	PO Box 223 , 1216 NW 2ND - WELLS	Stratford	N/A	N/A	-102.0826751	36.3435711	No description entered.
425	PO Box 241	Guymon	N/A	N/A	-101.3963154	36.5411781	No description entered.
426	PO Box 249. 220 N 1ST - ELLIOTT	Texhoma	N/A	N/A	-101.7817971	36.5067893	ELLIOT, AMY\n\n220 NORTH FIRST ST (HER DAD’S)
427	PO Box 253 - Moore	Goodwell	N/A	N/A	-101.6396181	36.5979102	508 W Elm
428	PO Box 292, 116 E CHURCH - CORNELSEN	Goodwell	N/A	N/A	-101.6327858	36.5951944	No description entered.
429	PO Box 314 , 215 S 6TH - DEVEL	Texhoma	N/A	N/A	-101.7884327	36.5032665	No description entered.
430	PO Box 321, 810 E INDIANA, AGUILAR	Optima	N/A	N/A	-101.3411455	36.760163	No description entered.
431	PO Box 354, 812 S 3RD - MITCHELL	Texhoma	N/A	N/A	-101.7848537	36.4976453	No description entered.
432	PO Box 356, 1109 S 2ND - ALLARD	Texhoma	N/A	N/A	-101.7829676	36.4944107	No description entered.
433	PO Box 374, 108 MISSOURI - JOHNSON	Hooker	N/A	N/A	-101.2125569	36.863755	No description entered.
434	PO Box 403 , 114 N FANNING - JACOBSON	Goodwell	N/A	N/A	-101.6255361	36.5960105	No description entered.
435	PO Box 412 - WATSON 601 S 1ST	Texhoma	N/A	N/A	-101.7815532	36.4999404	No description entered.
436	PO Box 431 , 520 E PINE - GOETZ	Goodwell	N/A	N/A	-101.6266251	36.5892751	No description entered.
437	PO Box 433 - 101 W 10th - Randolph	Sunray	N/A	N/A	-101.8248785	36.0118176	No description entered.
438	PO Box 488 , 107 W MOORMAN - DEMERITT	Texhoma	N/A	N/A	-101.7822092	36.497792	No description entered.
439	PO Box 513 , 115 W ILLINOIS - JACKSON	Texhoma	N/A	N/A	-101.7829751	36.5100749	Crystal Jackson\n115 W Illinois Ave\nCorner of 2nd St and Illinois\nCream Color Trl with Green trim\nIron fence
440	PO Box 599 - 714 Ave N - Swifford	Sunray	N/A	N/A	-101.8232924	36.0172166	SWIFFORD, ANNALISA\n\nSHE LIVES ON 714 AVENUE N.\nLEAVE PKGS IN FRONT OF GRILL\n\nSHE WORKS IN DUMAS SCHOOLS.
441	PO Box 701, 730 N HARRISON - HALL	Goodwell	N/A	N/A	-101.638341	36.5999994	No description entered.
442	PO Box 708 , 702 S 3RD - FREEMAN	Texhoma	N/A	N/A	-101.7848938	36.4989162	No description entered.
443	PO Box 786 , 1002 S 3RD - LEVARIO	Texhoma	N/A	N/A	-101.7847791	36.495605	No description entered.
444	PO Box 822 , 218 CLARA - HEDRICK	Hooker	N/A	N/A	-101.2132066	36.8628843	Parrish, tom
445	PO Box 862 , 219 , 115 Rose St - Lermon	Stratford	N/A	N/A	-102.0861925	36.3337833	No description entered.
446	PO Box 884 , 107 S JACKSON - POWELL	Hooker	N/A	N/A	-101.2203365	36.8574124	No description entered.
447	PO Box 893 , 302 PERSHING - PARKER	Hooker	N/A	N/A	-101.2228642	36.8634353	No description entered.
448	PO Box 895 , 104 E EAGLE	Goodwell	N/A	N/A	-101.6339946	36.5955563	No description entered.
449	PO Box 1306 , 1211 N Pearl - Wright	Stratford	N/A	N/A	-102.0774106	36.344031	No description entered.
450	PO Box 1334 , 601 N MAIN - HANNA	Stratford	N/A	N/A	-102.0749173	36.3387261	No description entered.
451	PO Box 1571, Bear Arms,  HINCHEY ,1992 CR 34 , 3637 Road S	Guymon	N/A	N/A	-101.3791088	36.7394968	P. O. Box 1571 - BEAR ARMS\n1992 CR 34 GUYMON... THIS ADDRESS IS EMPTY ALMOST ALL THE TIME. ITS THE BUILDING FOR ANIMAL HEALTH JUST NORTH OF SEABOARD ON HWY 54. \n\nTAKE PKG TO 3637 COUNTY ROAD S\n\nFROM HWY 54 TAKE CR S (AFTER BRIDGE UP HILL BY BABER’S HOUSE) THEN GO DOWN DIRT ROAD TO FIRST HOUSE ON RIGHT. NICE ROCK HOUSE. \n\n580-651-9551
452	PO Box 10106 - SHOULDERS	Texhoma	N/A	N/A	-101.7860939	36.4956377	Shoulders\n1010 S 4th
453	Pride Feeders - RR 2 Box 67 , 2150 MILE 53	Hooker	2	67	-101.0715924	36.6884589	No description entered.
454	QVEST - 205 SE 2ND	Guymon	N/A	N/A	-101.4799732	36.6774079	No description entered.
455	RE 2 Box 162G 	Guymon	N/A	N/A	-101.6717403	36.7522049	No description entered.
456	Reliant Processing. RR 2 Box 110 - Guymon	Guymon	2	110	-101.6086754	36.9062889	No description entered.
457	ROUTE NOTES	AAAA ROUTE NOTES	N/A	N/A	-101.8226892	35.1939414	-Mile 8 is good road\n-NS054 is mostly good , runs between II and 64\nEE is a good road between CRI AND Mile 30\nCR N (EW014) is paved between Keyes and highway 95
554	RR 1 Box 129 , 415 W MAIN - PUGH	Texhoma	1	129	-101.7864898	36.5046513	No description entered.
458	RR 1 Box 122 , 609 W MAIN - KOEHN	Texhoma	1	122	-101.7885545	36.5048662	KOEHN, CRISTINE\n580-461-0038\n\nSHE LIVES AT 609 W MAIN ST\nTEXHOMA, OK
459	RR 2 Box 83, 79A - WIEBE	Hooker	2	83	-101.1420042	36.762438	No description entered.
460	RR 3 Box 180A - MING	Guymon	3	180A	-101.3575138	36.6893816	No description entered.
461	RR 1  24C , 24D, 24E - BELDEN	Optima	N/A	N/A	-101.3499081	36.7681649	No description entered.
462	RR 1 - WILLIAMS	Keyes	N/A	N/A	-102.2763839	36.8352628	Courtney\n\n580-546-7654
463	RR 1   PO Box 239 , 318 NE 3RD - MUNOZ	Optima	N/A	N/A	-101.3531566	36.7587364	not blue trailer that is marked , garage looking house to the west of it
464	RR 1 2B , 4643 ROAD J - WAYMAN	Hooker	N/A	N/A	-101.1907872	36.8627321	No description entered.
465	RR 1 Box - 98 - LEHR	Texhoma	N/A	N/A	-101.9608972	36.5155382	LEHR, HENRY\n580-543-6488\n\n9 MILES WEST ON STATELINE ROAD \n1ST HOUSE ON THE WEST SIDE AFTER CURVE NORTH\nTAN HOUSE WITH BROWN TRIM
466	RR 1 Box 1 - HUDDLESTON	Goodwell	1	1	-101.8201511	36.7173185	HUDDLESTON\n\nGOOD DIRECTIONS BY POST OFFICE, RT1  Box 1 SOUNDS LIKE IT SHOULD BE IN GOODWELL BUT IT IS IN THE LOCATION MENTIONED BELOW:\n\nHWY 95 NORTH OF TEXHOMA. \n\nHOME ITS 1 MILE SOUTH\nOF HWY 64. GO WEST TO TWO HOUSES JUST SOUTH OF THE OLD CHURCH. \nTHE HOME IS THE ONE ON SOUTH SIDE OF DRIVEWAY
467	RR 1 Box 1 - WALTER	Guymon	1	1	-101.4927391	36.8084062	No description entered.
468	RR 1 Box 1 - WHEELER	Boise City	1	1	-102.527608	36.7190615	No description entered.
469	RR 1 Box 1 , 411 E PEERY - BARNES	Hardesty	1	1	-101.1850802	36.6169699	No description entered.
470	RR 1 Box 1 , 4501 ROAD K- HUXMAN	Hooker	1	1	-101.2164206	36.8481376	No description entered.
471	RR 1 Box 10 - CAIN	Texhoma	1	10	-101.7444691	36.5144628	No description entered.
472	RR 1 Box 10 - MARTIN, HENKE	Goodwell	1	10	-101.6358637	36.5687191	HENKE, KATHERINE\n\nFROM HWY 54 GO SOUTH ON MILE 22 FOR 1 1/2 MILE\nRIGHT BEFORE TURNING TO TRIPPLE F TRUCKING THERE ARE\nTWO TRAILERS ON EAST SIDE. IT’S THE FURTHER BACK ONE.
473	RR 1 Box 10 - OGLE	Felt	1	10	-102.9155835	36.5154057	No description entered.
474	RR 1 Box 10 - SHORB	Hardesty	1	10	-101.0460231	36.6126262	No description entered.
475	RR 1 Box 10 - STUMP	Hooker	1	10	-101.2663516	36.817146	STUMP, MURRAY, JENNA\n‭(580) 521-1038‬\n\nGO ON HWY 54 TOWARDS HOOKER AND TURN SOUTH EAST (RIGHT) ON CR M TO "THREE HOUSES ON HILL)\nTHE Box 10 IS THE WHITE HOUSE AT THE END OF DRIVEWAY. \n\nSHE WORKS AT DOLLAR GENERAL IN HOOKER BUT CALL OR TEXT BEFORE TAKING PKG THERE\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/iAQPYwVyapJ2
476	RR 1 Box 10 , 2800 ROAD B	Guymon	1	10	-101.5236798	36.9807337	WIEBE, PEDRO\n580-545-3600\n\n2800 COUNTY ROAD B. \nFROM INTERSECTION OF COUNTY ROAD B AND HWY 136\nGO WEST FOR 2 MILES TO TRAILER ON NORTH SIDE\nOF ROAD. MAILBox MARKED.
477	RR 1 Box 100 , 99A , 99B - HANEY	Texhoma	1	100	-101.9604707	36.4999506	No description entered.
478	RR 1 Box 103 - ROBINSON	Texhoma	1	103	-101.8803481	36.5023207	No description entered.
479	RR 1 Box 104 , 893 RD HH- Olivas, Corral	Texhoma	1	104	-101.8847942	36.5231224	893 Mile HH
480	RR 1 Box 105 - GUM	Hardesty	1	105	-101.2235584	36.5821528	No description entered.
481	RR 1 Box 105 , 208 PARKVIEW - CLARK , TAYLOR	Texhoma	1	105	-101.7950096	36.508126	No description entered.
482	RR 1 Box 105B, 105C - BOLLINGER	Hardesty	1	105B	-101.2107412	36.5870715	BOLLINGER, CRYSTAL, HAROLD\n580-888-0777\n\nFROM HARDESTY GO SOUTH ON CR 47 FOR 2 MILES\nTURN RIGHT/WEST AND GO FOR 1 1/2 MILE. TO TRAILER\nHOME SURROUNDED BY TREES.
483	RR 1 Box 106 - BENFER	Guymon	1	106	-101.4322844	36.8955152	No description entered.
484	RR 1 Box 107 - BRUNE	Guymon	1	107	-101.4263202	36.8781137	No description entered.
485	RR 1 Box 108 - BERRY	Texhoma	1	108	-101.8454305	36.5151479	No description entered.
486	RR 1 Box 108 - DARBYSHIRE	Guymon	1	108	-101.4515184	36.8768301	No description entered.
487	RR 1 Box 108, 2670 MILE 46 - BECKWITH	Hardesty	1	108	-101.2062987	36.6212283	No description entered.
488	RR 1 Box 108B - FURNISH	Hardesty	1	108B	-101.2063537	36.6323255	No description entered.
489	RR 1 Box 109 - NINEMIRE	Hardesty	1	109	-101.2023354	36.6324391	No description entered.
490	RR 1 Box 109 - SAMPLE	Guymon	1	109	-101.4570671	36.8460612	No description entered.
491	RR 1 Box 109 , PO Box 250 - BERRY	Texhoma	1	109	-101.8475021	36.5011946	BERRY, MIKE\n580-423-7081\n\n4 MILE WEST ON STATELINE ROAD \nHOUSE ON NORTH SIDE OF ROAD\nBROWN BRICK HOME.
492	RR 1 Box 109A - NEPTUNE	Texhoma	1	109A	-101.8380213	36.5030186	No description entered.
493	RR 1 Box 10A - GIBSON	Hardesty	1	10A	-101.0119176	36.6178996	No description entered.
494	RR 1 Box 10A - MING	Goodwell	1	10A	-101.6373098	36.565008	MING, CRIS ASHLEY\n\nFROM HWY 54 TAKE MILE 22 SOUTH. PASS CR DD AND ITS\nTHE SECOND HOUSE JUST SOUTH OF DD ON WEST SIDE \nOF MILE 22. \n\nSHE WORKS AT CITY HALL IN GOODWELL ON MAIN ST.
495	RR 1 Box 10AA - MARTIN	Goodwell	1	10AA	-101.6362791	36.5686584	MARTIN, SAM\n\nFROM HWY 54 GO SOUTH ON MILE 22 FOR 1 1/2 MILE\nRIGHT BEFORE TURNING TO TRIPPLE F TRUCKING THERE ARE\nTWO TRAILERS ON EAST SIDE. IT’S THE FRONT ONE.
496	RR 1 Box 10B - Beck	Texhoma	1	10B	-101.7203	36.5304964	BECK, LACY\n\nFROM TEXHOMA GO EAST TOWARDS GOODWELL, WHEN \nCLOSE TO THE FEEDYARD ON HWY 54 TURN SOUTH TO RD\n\tGG. GO TO HOME ON LEFT SIDE OF DIRT ROAD\nABOUT 1/2 MILE IN. \n\n(ROAD GG RUNS DIAGONAL TO HWY 54).
497	RR 1 Box 10B- MOORE	Goodwell	1	10B	-101.6410151	36.560775	MOORE, DAVID\n806-979-0026\n\nSOUTH ON MILE 22 FROM HWY 54 FOR 1 3/4 MILE \nTURN WEST ON UNMARKED CATTLE GUARD. \nGO 1/4 MILE. IT IS TRAILER HOUSE NEAR BARN. IT IS THE \nONLY TRAILER ON THAT SIDE OF THE ROAD
498	RR 1 Box 10C , 2213 CR FF - WILSON	Goodwell	1	10C	-101.6338149	36.5429565	WILSON, SHAREN\n580-651-2059\n\n2213 CR FF\n\nGO SOUTH FROM HWY 54 ON MILE 22 FOR 3 MILES\nTO CR FF. TURN EAST. TURN SOUTH ON FIRST RIGHT \nTO HOME.
499	RR 1 Box 10D - ETBAUER	Goodwell	1	10D	-101.6462046	36.5418159	ETBAUER, ROBERT\n\nGO SOUTH ON MILE 22 FROM HWY 54\nFOR ABOUT 3 MILES. TURN RIGHT ON CR FF\nFIRST HOUSE ON LEFT WITH BIG BARN.
500	RR 1 Box 10D + SALAMANCA	Texhoma	1	10D	-101.7263751	36.5382339	SALAMANCA, LÁZARO\n\n4 MILES EAST ON HWY 54\nLEFT ACROSS TRACKS TO FEEDLOT\nTRAILER HOUSE ON FEEDLOT “LAZY ELEVEN”.
501	RR 1 Box 10D-2 - Collins	Goodwell	1	10D	-101.6626868	36.554212	collins
502	RR 1 Box 10E - Flanagan	Goodwell	1	10E	-101.665408	36.5439329	FLANAGAN, KIMBERLY\n\nFROM HWY 54 TAKE CR 22 SOUTH FOR 3 MILES\nTO CR FF. TURN WEST AND GO FOR 1 1/2 MILE TO \nBLOND ROCK HOUSE ON SOUTH SIDE OF ROAD.
503	RR 1 Box 10E, Box 12	Texhoma	1	10E	-101.7799893	36.5317084	HOOKS, ZACK AND NIKKY\n\nGO NORTH ON EAST ST FOR ABOUT 1 1/2 MILE\nNORTH OF TOWN. HOUSE LOOKS LIKE A GARAGE WITH\nGREEN ROOF. 2 STORY HOUSE.
555	RR 1 Box 13 - HAINES	Hooker	1	13	-101.3056334	36.805038	No description entered.
556	RR 1 Box 13 - TARANGO	Hardesty	1	13	-100.9890001	36.5876331	No description entered.
504	RR 1 Box 10E, Box 12 - Hooks	Texhoma	1	10E	-101.7799893	36.5317084	HOOKS, ZACK AND NIKKY\n\nGO NORTH ON EAST ST FOR ABOUT 1 1/2 MILE\nNORTH OF TOWN. HOUSE LOOKS LIKE A GARAGE WITH\nGREEN ROOF. 2 STORY HOUSE.
505	RR 1 Box 10F	Texhoma	1	10F	-101.7440485	36.5310275	WHATLEY, APRIL\n\n3293 MILE 16\n\nTWO MILES EAST OF TEXHOMA ON HWY 54 TURN NORTH ON MILE 16 CROSSING RAILROAD TRACKS, PASS FIRST DIRT ROAD INTERSECTION THEN HOME IS RIGHT PASSED IT. GRAY DOUBLE WIDE WITH WHITE BARN. HAS A FLAG POLE IN FRONT OF DRIVEWAY.
506	RR 1 Box 10F , 3293 MILE 16 - Whatley	Texhoma	1	10F	-101.7440485	36.5310275	WHATLEY, APRIL\n\n3293 MILE 16\n\nTWO MILES EAST OF TEXHOMA ON HWY 54 TURN NORTH ON MILE 16 CROSSING RAILROAD TRACKS, PASS FIRST DIRT ROAD INTERSECTION THEN HOME IS RIGHT PASSED IT. GRAY DOUBLE WIDE WITH WHITE BARN. HAS A FLAG POLE IN FRONT OF DRIVEWAY.
507	RR 1 Box 11 - GIBSON	Hardesty	1	11	-101.0082522	36.6093243	No description entered.
508	RR 1 Box 11 - THRALL	Guymon	1	11	-101.5282008	36.9783593	No description entered.
509	RR 1 Box 11 , 1336 ROAD GG- CANNON	Texhoma	1	11	-101.7834109	36.5305548	No description entered.
510	RR 1 Box 11 , 4275 ROAD M - STUMP	Hooker	1	11	-101.2668742	36.8181256	No description entered.
511	RR 1 Box 110 - HEISLER	Hardesty	1	110	-101.2019349	36.6347678	BRAUN, TREVA\n580-888-4406\n\nON HWY 3 BEFORE TOWN. CROSS BRIDGE 1ST HOUSE\nON LEFT. MUST PASS HOUSE TO RD Z\nGO LEFT ON RD Z THEN TAKE 1ST LEFT \nGO DOWN ROAD TO BRICK HOME WHITE TRIM.
512	RR 1 Box 110 - LUCAS	Guymon	1	110	-101.4564482	36.8387409	LUCAS, JOSH\n580-651-3451\n\nFROM WALMART GO NORTH ON HWY 136 TO CR L \nTURN EAST AND GO FOR 2 MILES (LANDMARK: OLD CONCRETE HOUSE WITH WINDMILL). THEN TURN NORTH FOR 1/4 OF A MILE TO TAN HOUSE SITTING AT AN ANGLE. \n\nYOU CAN ALSO GET THERE FROM HURLIMAN ROAD GOING NORTH FOR ABOUT 6 1/4 MILES FROM HWY 54.
513	RR 1 Box 110 - THRASHER	Texhoma	1	110	-101.8262486	36.5002961	No description entered.
514	RR 1 Box 110C - FRANTZ	Hardesty	1	110C	-101.1933205	36.6389694	No description entered.
515	RR 1 Box 111	Hardesty	1	111	-101.187624	36.6184263	No description entered.
516	RR 1 Box 111, 1178 CR II - Berry	Texhoma	1	111	-101.8199627	36.5028452	No description entered.
517	RR 1 Box 111A	Texhoma	1	111A	-101.7986097	36.5001751	No description entered.
518	RR 1 Box 112  , 2689 MILE 47- Mason	Hardesty	1	112	-101.1877136	36.6179886	RR 1 Box 112 \nMASON, L \n\nGO NORTH ON CR 47 \n1ST HOUSE GRAY BLUE TRIM WITH GARAGE\nLOTS OF CEDAR TREES
519	RR 1 Box 112A , 402 ALLYSON - Keenan	Texhoma	1	112A	-101.7944463	36.5014341	No description entered.
520	RR 1 Box 114 - 522 Jefferson St - CROISCIONT,	Optima	1	114	-101.3576828	36.7558475	CROISCIONT, RUSSELL\n\n522 JEFFERSON ST IN OPTIMA
521	RR 1 Box 114 -201 S Allison - Scott	Texhoma	1	114	-101.7937651	36.503544	No description entered.
522	RR 1 Box 114A	Texhoma	1	114A	-101.7943069	36.5052959	No description entered.
523	RR 1 Box 114D	Texhoma	1	114D	-101.794318	36.505988	111 n allison
524	RR 1 Box 114F - THOMAS	Texhoma	1	114F	-101.7943694	36.5057314	No description entered.
525	RR 1 Box 114K - 206 Parkview - Yates	Texhoma	1	114K	-101.7949562	36.5076848	No description entered.
526	RR 1 Box 114L	Texhoma	1	114L	-101.7954755	36.5082219	217 Parkview
527	RR 1 Box 115 - Guerrero	Guymon	1	115	-101.4458424	36.8048555	No description entered.
528	RR 1 Box 115A - 106 Western Aire - Gideon	Texhoma	1	115A	-101.7950464	36.5055212	No description entered.
529	RR 1 Box 115A , 3259 CR N - CAMFIELD	Guymon	1	115A	-101.445064	36.8047879	No description entered.
530	RR 1 Box 115D - 126 Western Aire - Cope	Texhoma	1	115D	-101.795567	36.5069792	No description entered.
531	RR 1 Box 115E 130 Western Aire - Winters	Texhoma	1	115E	-101.7958092	36.5072141	130 Westernaire Dr
532	RR 1 Box 115F , 134 WESTERN AIRE - TEEL	Texhoma	1	115F	-101.7959699	36.5074696	No description entered.
533	RR 1 Box 115H , 1204 W MAIN - HOEFFNER	Texhoma	1	115H	-101.7956063	36.5052481	No description entered.
534	RR 1 Box 116	Guymon	1	116	-101.4382796	36.7915939	No description entered.
535	RR 1 Box 117 , 103 S ALLISON - MITCHELL	Texhoma	1	117	-101.793871	36.5044349	MITCHELL, CHELSEY\n\n103 S ALLYSON \nTAN HOUSE
536	RR 1 Box 118A, 103 S TERRY - bonilla	Texhoma	1	118A	-101.7927253	36.504604	103 s terry
537	RR 1 Box 119A - BRYAN	Guymon	1	119A	-101.4561556	36.756093	No description entered.
538	RR 1 Box 119C - Davison	Texhoma	1	119C	-101.7900027	36.5046406	DAVISON, JOANNA L\n\nBEIGE NICE TWO STORY HOUSE ON \nSW CORNER OF MAIN ST AND 95 \nNICE GARDEN.
539	RR 1 Box 119E - COTTER	Guymon	1	119E	-101.4547605	36.7451953	No description entered.
540	RR 1 Box 11C - Portman	Hooker	1	11C	-101.2852809	36.8052214	No description entered.
541	RR 1 Box 11E - GONGORA	Hooker	1	11E	-101.2965479	36.7981165	No description entered.
542	RR 1 Box 12  - BOWLES	Hardesty	1	12	-100.990439	36.5967559	No description entered.
543	RR 1 Box 12 - LEITER	Goodwell	1	12	-101.6992295	36.5489341	LEITER, RUTH ANN\n\nFROM TEXHOMA TO GOODWELL ABOUT 5 MILES\nAFTER THE FEEDLOT ON HWY 54 THE GRAY BARN\nIS ON RIGHT/SOUTH SIDE OF HWY 54. TURN RIGHT \nINTO DRIVEWAY BEFORE GRAY BARN.
544	RR 1 Box 12 - Mckinley	Hooker	1	12	-101.2966506	36.785654	MCKINLEY, NEAL, KATHY\n620-629-3878\n\nTAKE HWY 54 EAST OUT OF OPTIMA FOR 3 MILES. TURN RIGHT (EAST) TO RD 40. GO 1 MILE THEN TURN\nRIGHT (SOUTH) FOR 1/2 MILE ON CR 41. \nYELLOW HOUSE WITH RED ROOF, JUST NORTH OF TOM GALVIN.
545	RR 1 Box 12 , 141 MILE 27 - PIERCE	Guymon	1	12	-101.540499	36.9890572	No description entered.
546	RR 1 Box 120 , 621 W MAIN - SHOULDERS	Texhoma	1	120	-101.7889879	36.5048244	SHOULDERS, BRENT \n580-461-9299\n\n621 WEST MAIN ST \nMAILBox PAINTED LIKE A TROUT
547	RR 1 Box 121 - GUENTHER	Guymon	1	121	-101.4102269	36.743128	RAY, VALERIE\n580-338-0689\n\nGO EAST ON HWY 54 PASS SEABOARD. AFTER RIVER BEND\nGO LEFT UNDER TRAIN TRACKS BRIDGE ON DIRT ROAD \nTO 4TH HOUSE. WHITE TRL BLUE TRIM\nMAILBox SAYS GUENTHER.
548	RR 1 Box 122 , 3472 R2  - CURTIS	Guymon	1	122	-101.4074725	36.7431981	No description entered.
549	RR 1 Box 124 - GIBSON	Guymon	1	124	-101.4011385	36.7458762	FLOCKS, VERNAL\n\nGO EAST ON HWY 54 PASS SEABOARD. AFTER RIVER BEND\nGO LEFT UNDER TRAIN TRACKS BRIDGE ON DIRT ROAD \nFOR APPROX 3/4 MILE THEN TURN RIGHT. ROCK HOUSE\nWITH RED TRIM, SITS ON HILL.
550	RR 1 Box 125 - BABER	Guymon	1	125	-101.3788347	36.7439698	BABER, TESSA, BOLES RONNIE\n\nEAST OF GUYMON ON HWY 54\nPASS BRIDGE TO BRICK HOME ON EAST SIDE IN FRONT \nOF HOUSE WITH WINDMILLS \n\nDropped pin\nhttps://maps.google.com?q=36.744080,-101.379132&hl=en-US&gl=us
551	RR 1 Box 125, 503 W MAIN - WALLS	Texhoma	1	125	-101.7879059	36.5046819	No description entered.
552	RR 1 Box 126 - CALLAWAY	Texhoma	1	126	-101.7873909	36.5046402	CALLAWAY, CHRISTIE \n580-423-7129\n\nBIG TWO STORY HOUSE IN SW CORNER OF 5TH ST\nAND MAIN ST
553	RR 1 Box 128A	Guymon	1	128A	-101.4361578	36.7087985	No description entered.
557	RR 1 Box 13, 1650 CR EE - Gailard	Texhoma	1	13	-101.7359302	36.5659808	GAILARD, REGINA\n580-417-0501\n\nFROM HWY 54 TAKE MILE 16 AND GO NORTH\nFOR 2 1/2 MILE \nTHEN GO EAST 1/2 MILE\nTAN HOUSE WITH RED ROOF.
558	RR 1 Box 134 , 2109 HURLIMAN - LUCERO	Guymon	1	134	-101.4563948	36.7026082	No description entered.
559	RR 1 Box 135A - SNOW	Guymon	1	135A	-101.4577728	36.7057992	CHRISTIAN, MARY JANE\n\nON HURLIMAN ROAD PASS CARGILL THEN TURN LEFT\nWEST ON SET OF MOBILE HOMES. \nHER HOME IS ON LEFT BLUE TRAILER #5 WITH CAR\nGARAGE
560	RR 1 Box 136 - Maldonado	Optima	1	136	-101.3501305	36.7598348	MALDONADO, KALEN\n580-308-1201\n\nFENCED BROWN TRAILER IN THE NORTH WEST \nCORNER OF 2ND ST AND EAST ST IN OPTIMA\nTRAILER IS IN FRONT OF ARNOLD'S SHOP.
561	RR 1 Box 137 , 612B Morgan St - Smith	Optima	1	137	-101.3588057	36.7550174	SMITH, SHANNON\n\n612 B MORGAN ST OPTIMA
562	RR 1 Box 139 316 , 709 , 703 North St - Figueredo , TECUM	Optima	1	139	-101.3460762	36.7616486	FIGUEREDO, MARCY\n\n709 NORTH ST (CR Q) IN OPTIMA\nBRIGHT GREEN TRAILER.
563	RR 1 Box 14 - Lomax	Texhoma	1	14	-101.8025817	36.5595464	AMANDA LOMAX\nAMANDA LOMAX\n806-355-1758\n\n95 North out of Texhoma to EE then go west. \nFirst house on right , about 1/4 mile in.
564	RR 1 Box 142 , 105 GEIRITZ ST - AGUILAR	Optima	1	142	-101.3510658	36.7602459	No description entered.
565	RR 1 Box 144 - ARTHAUD	Keyes	1	144	-102.2229704	36.8353564	No description entered.
566	RR 1 Box 145 , 509 MORGAN - ROMAN	Optima	1	145	-101.3587929	36.755795	No description entered.
567	RR 1 Box 14A - HERBEL	Hooker	1	14A	-101.3144608	36.7973099	BRYANT, ENOCH\n575-693-5199\n\nUS HWY 54 FROM OPTIMA TO CR 40, TURN NORTH TO 2ND HOUSE ON LEFT. \nRED BRICK  \n\nDropped pin\nNear Unnamed Road, Hooker, OK 73945\nhttps://goo.gl/maps/h2onVQRM6pM2
568	RR 1 Box 14A -STEVENS	Texhoma	1	14A	-101.7849129	36.5830897	STEVENS, DAVID \n\nGO 95 NORTH TO CR CC\nEAST ON CC FOR 1/2 MILE. \nSOUTH AT WHITE GATE WITH BLACK MAILBox.
569	RR 1 Box 14B - THATCHER	Texhoma	1	14B	-101.7885535	36.558606	THATCHER, RUSSELL\n580-423-4556\n\nFROM TEXHOMA GO NORTH ON 95\nTURN RIGHT/EAST ON CR EE \nHOUSE ON SOUTH SIDE ABOUT 1/4 MILE\nBLUE TWO STORY HOUSE8
570	RR 1 Box 14C , 1361 Road EE- Vandonge, TEEGARDEN	Texhoma	1	14C	-101.7872902	36.5587332	1361 EE\nTEEGARDEN, BRAD, BRENDA\nVandonge\n\n\nTAKE HWY 95 NORTH TO CR EE TURN RIGHT\n2nd HOUSE ON SOUTH SIDE.
571	RR 1 Box 14D - Bales, Baugh	Texhoma	1	14D	-101.7925494	36.5843194	BALES, SHANNA\nBAUGH, SHAWN\n580-651-4286\n\nTAKE HWY 95 NORTH FROM TEXHOMA TO CR CC\nTURN EAST, TAKE FIRST DRIVE ON SOUTH SIDE.\nENTRY HAS A RAILROAD WOOD AS THE FENCE. \nPASS THE METAL FABRICATED HOUSE AND FIND \nTWO TRAILERS. WHITE TRAILER HOUSE.
572	RR 1 Box 14F - STUMP , RAMATAHALL	Texhoma	1	14F	-101.7812302	36.5376691	STUMP\n\nFROM HWY 54 TAKE EAST ST AND GO NORTH\nFOR 2 MILES. \nTWO STORY HOUSE ON WEST SIDE OF ROAD
573	RR 1 Box 15 - BAKER	Kenton	1	15	-102.8703118	36.8436804	No description entered.
574	RR 1 Box 15 , 1456 MILE 40 - HERBEL	Hooker	1	15	-101.3172989	36.7968833	No description entered.
575	RR 1 Box 15 , 15A-2	Hooker	1	15	-101.314065	36.7965782	No description entered.
576	RR 1 Box 154 - Barraza	Optima	1	154	-101.349621	36.7632972	RR 1 Box 154 - BARRAZA\n\nIS THE HOUSE IN THE MIDDLE OUT OF THE THREE IN THE LITTLE STRECH OF DIRT ROAD OF MILE 38 BETWEEN CR Q AND HWY 54 IN OPTIMA.
577	RR 1 Box 156 - GAMMON	Hooker	1	156	-101.351532	36.7598267	No description entered.
578	RR 1 Box 157 , 401 JEFFERSON - SEAGER	Optima	1	157	-101.357426	36.7572128	No description entered.
579	RR 1 Box 15A - HERBEL FEEDYARD OFFICE	Hooker	1	15A	-101.3157784	36.7962851	No description entered.
580	RR 1 Box 16	Guymon	1	16	-101.5604327	36.9713752	FROM CRI GO EAST TO COUNTY ROAD 26 THEN GO\nNORTH FOR 2 1/2 MILES TO TRAILER ON WEST SIDE.
581	RR 1 Box 16 - HARLAND	Texhoma	1	16	-101.7445661	36.5796755	No description entered.
582	RR 1 Box 16 - HERBEL FEEDLOT	Hooker	1	16	-101.3206711	36.7891273	HERBEL FEEDLOT\n\n\n2 1/2 MILE EAST OF OPTIMA ON HWY 54. \nTURN NORTH ON CR 40 THEN TURN WEST ON CR O\nFEEDLOT WITH WHITE FENCES. GO TO ONE OF THE HOUSES IN THERE CAN LEAVE PKG IN GARAGE.\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/a6vebrKiNCz
583	RR 1 Box 169 , 606 INDIANA - CELSO	Optima	1	169	-101.3486225	36.7602936	No description entered.
584	RR 1 Box 17 - ADAMS	Keyes	1	17	-102.1742403	36.8059296	No description entered.
585	RR 1 Box 17 - Meyer	Texhoma	1	17	-101.7770714	36.6038548	MEYER, TIM\n580-545-3640\n\nGO 95 NORTH TO CR CC. GO EAST AND JUST BEFORE BRIDGE\nTURN NORTH ON DIRT RD AND GO FOR ABOUT 1/2 MILE TO \nHOUSE ON EAST SIDE WITH BUNCH OF TREES. IS THE SECOND\nENTRANCE FROM THE MOMENT YOU GO NORTH FROM CC RD\nDRIVEWAY IS GATED. ENTER CODE: 5531 TO ENTER.
586	RR 1 Box 17 , 258 MILE 26 - KING	Guymon	1	17	-101.5600565	36.9708827	No description entered.
587	RR 1 Box 170 , 109 LINCOLN - ABITONG	Optima	1	170	-101.3549206	36.7597561	No description entered.
588	RR 1 Box 175E - BALES	Guymon	1	175E	-101.471478	36.7141304	No description entered.
589	RR 1 Box 175F - BALES	Guymon	1	175F	-101.4720384	36.7137453	No description entered.
590	RR 1 Box 176 , 204 LINCOLN - OPTIMA TOWN HALL	Optima	1	176	-101.3552455	36.7592866	No description entered.
591	RR 1 Box 17A - CULLUM	Goodwell	1	17A	-101.743366	36.5886341	No description entered.
592	RR 1 Box 18 - MCCARGISH	Texhoma	1	18	-101.7767224	36.6077608	DUNHAM, \nDIXIE ELECTRIC LLC\n610-440-1060\n\nGO 95 NORTH FOR 6 MILES. GO EAST ON \nCR CC THEN GO NORTH ON ROAD BEFORE BRIDGE\nFOR 1 1/2 ON THAT DIRT ROAD.
593	RR 1 Box 18 - Thrall	Guymon	1	18	-101.5541401	36.966169	THRALL, HAROLD\n580-545-3423\n\nFROM GUYMON NORTH ON HWY 136 TO COUNTY ROAD C\nGO 3 3/4 MILES WEST. HOUSE IS ON NORTH SIDE.
594	RR 1 Box 18A - CLINESMITH	Goodwell	1	18A	-101.7820092	36.5926375	CLINESMITH, CALEB\n\nGO ON 95 NORTH FROM TEXHOMA TO CR CC\nGO EAST/RIGHT. TURN LEFT ON DIRT ROAD \nBEFORE THE BRIDGE\nFIRST HOUSE ON LEFT WITH OVERPASS “SCHAEFER”
595	RR 1 Box 19 - Keith	Optima	1	19	-101.3549721	36.7575029	KEITH, CHERI\n\nIN OPTIMA, IT IS THE TRAILER AT 4TH ST AND LINCOLN\nLOTS OF VEHICLES, TRASH, JUNK IN YARD
596	RR 1 Box 19 , 22 - 440 Mile 27 - Beer	Guymon	1	19	-101.5414871	36.9429891	No description entered.
597	RR 1 Box 197 , 606 S MAIN - CHRISTIAN	Hooker	1	197	-101.3565587	36.7548701	No description entered.
598	RR 1 Box 19A - Davison	Texhoma	1	19A	-101.7993077	36.6469565	DAVISON, MARCEE\n\nGO ON 95 NORTH FOR 10 MILES\nWHEN PASSING THE CURVE THE MAILBox WOULD\nBE ON RIGHT ON THEIR DRIVEWAY\nWHITE HOUSE WITH GREEN ROOF\nYOU CAN SEE HOUSE UPFRONT BEFORE THE CURVE.
599	RR 1 Box 19C - SASSIN	Optima	1	19C	-101.3268114	36.7286499	No description entered.
600	RR 1 Box 19D - Ortega	Optima	1	19D	-101.3495043	36.7570599	ORTEGA, DANIEL\n580-754-0449\n\n\n503 EAST ST IN OPTIMA\nRED BRICK ON EAST SIDE.
601	RR 1 Box 19DD - LUIS	Optima	1	19DD	-101.3496847	36.759101	No description entered.
637	RR 1 Box 27 - JAMES	Felt	1	27	-102.5253856	36.4996099	No description entered.
602	RR 1 Box 19E - Long, Ryke, Stewart, Jordan	Optima	1	19E	-101.3359254	36.7327492	LONG, RYKE STEWART, JORDAN\n580-338-2852, 580-461-7449, 580-461-7436\n\nFROM OPTIMA HWY, CR Q TURN SOUTH ON MILE 38\nTO DEAD END THEN TURN LEFT/EAST. AT FIRST CATTLE\nGUARD TURN SOUTH THEN PASS BRIDGE THEN, YELLOW HOUSE THEN CATTLE GUARD AND THEN HOUSE WILL BE THROUGH WHITE GATE. BRICK AND SIDING HOME
603	RR 1 Box 19H - MEJIA	Optima	1	19H	-101.3503587	36.7563323	DOMINGO MEJIA\n\n\nFROM CR Q (OPTIMA ADAMS HWY) GO SOUTH\nON EAST ST. IT’S THE FIRST TRAILER YOU COME TO ON WEST SIDE AFTER YOU PASS 3RD ST\n\nMARKED MAILBox AT ENTRANCE\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/saBLXBNMmnH2
604	RR 1 Box 1A , 4505 ROAD K - HUXMAN	Hooker	1	1A	-101.2158327	36.848451	No description entered.
605	RR 1 Box 1AA - VOYLES	Hardesty	1	1AA	-101.1867945	36.6168683	VOYLES, MICHAEL\n\nGOING EAST OUT OF TOWN ON HWY 3, IT'S THE\nFIRST HOUSE ON NORTH SIDE PAST CR 47. RIGHT\nAFTER THE PACK A SNAK GAS STATION. \nWHITE BROWN TRIM HOME.
606	RR 1 Box 1AB , 4482 ROAD K - MESTA , RAMOS	Hooker	1	1AB	-101.2199341	36.8492031	No description entered.
607	RR 1 Box 1B - MUSSMAN	Hooker	1	1B	-101.2245255	36.8457146	No description entered.
608	RR 1 Box 1C	Hooker	1	1C	-101.2385979	36.8456276	No description entered.
609	RR 1 Box 1D , 4377 RD K - ROBERTSON	Hooker	1	1D	-101.2379481	36.8461427	No description entered.
610	RR 1 Box 2 - 2166 CR CC - Beck	Goodwell	1	2	-101.6440045	36.589029	No description entered.
611	RR 1 Box 20 - Davison	Texhoma	1	20	-101.8090478	36.6605986	DAVISON, BARBARA \n580-545-3507\n\nGO NORTH FROM TEXHOMA ON 95. PASS FIRST BIG CURVE HEADING WEST ON IT. THEN AFTER CURVE GOES NORTH GO FOR 3/4 OF A MILE TO CATTLE GUARD ON EAST SIDE. HOUSE IS ABOUT 1/4 MILE IN. \nWATCH FOR DOGS. \n\n\n\n ABOUT 1/4 MILE IN. \nWATCH FOR DOGS.
612	RR 1 Box 20 - HAWKINS	Hooker	1	20	-101.3494782	36.7539726	No description entered.
613	RR 1 Box 20A, 3821 ROAD S - HAMILTON , FUENTEZ	Hooker	1	20A	-101.3464602	36.7321359	No description entered.
614	RR 1 Box 20AA - TAYLOR	Hooker	1	20AA	-101.3592079	36.7341052	No description entered.
615	RR 1 Box 20AB - Hinchey	Optima	1	20AB	-101.3502074	36.7306212	No description entered.
616	RR 1 Box 21 - 421 Mile 27 -Clemans	Guymon	1	21	-101.5409062	36.9464873	CLEMANS, CONNIE\n\n421 COUNTY ROAD 27\n\nON HWY 136 NORTH TO COUNTY ROAD E GO WEST FOR \n3 MILES TO COUNTY ROAD 27 THEN 1/2 MILE NORTH.
617	RR 1 Box 21 - Meyer	Texhoma	1	21	-101.8175751	36.6694392	MEYER, BEVERLY\n\nHWY 95 NORTH, PASS BIG CURVE\nNORTH FOR ABOUT 2 MILES\n\nTHERE’S AN OLD HOUSE. IT’S THE TRAILER HOME JUST NORTH OF IT  THE TRAILER HOME\nJUST NORTH OF IT.
618	RR 1 Box 21 , 21A - SALINAS	Hooker	1	21	-101.3505509	36.7494638	DEWAYNE \n\nFROM OPTIMA TURN EAST ON CR Q (19) TO CR 38 GO SOUTH 3/4 MILE TO LAST HOUSE ON RIGHT\n\nDropped pin\nNear Unnamed Road, Hooker, OK 73945\nhttps://goo.gl/maps/E22da4RSjAH2
619	RR 1 Box 215 , 608 INDIANA - REDWINE	Optima	1	215	-101.347995	36.760393	No description entered.
620	RR 1 Box 22 - White	Optima	1	22	-101.3490749	36.6879907	WHITE, RONNY AND KATHY (SAME AS RT3 Box 179, GUYMON)\n580-338-7183\n580-651-4190 (cell) (SHE IS A USPS COURIER FOR HOOKER)\nYOU CAN TAKE PKGS TO HER WORK AT 107 SWEM ST, HOOKER\n\nFROM HWY 54 AND 12TH ST (TRUCK STOP)  GO EAST \nFOR 6 MILES TO BROWN BRICK HOME ON RIGHT HAND IN\nCORNER OF CR 38. \n                                               OR\nTAKE HWY 3 EAST TO MM 38 AND GO NORTH OF 1 MILE\nTO HOME ON CORNER EAST SIDE.\n\nNOTE: PLEASE DO NOT LEAVE PKGS OUTSIDE REACHABLE TO \nDOG, SINCE HE’LL TEAR IT TO PIECES. PLACE IT IN TOP OF \nTRUCK OR INSIDE SHOP IN ONE OF THE WORK BENCHES.
621	RR 1 Box 225 , 202 SW 5TH - STRONG	Optima	1	225	-101.357946	36.756683	STRONG, MICHELLE\n\n202 SW 5TH ST IN OPTIMA\nWHITE MOBLE HOME ON CORNER HAS FLAGPOLE AND THEIR NAME
622	RR 1 Box 22A , 3897 ROAD S - NEWMAN	Optima	1	22A	-101.3322144	36.7309914	No description entered.
623	RR 1 Box 22AA - Fast	Optima	1	22AA	-101.325596	36.7205239	FAST, ANNIE\n806-228-3853\n\nFROM OPTIMA GO SOUTH ON CR 38 TO DEAD END. TURN EAST THEN TURN SOUTH AT FIRST CATTLE GUARD. CIRCLE EAST PASSING YELLOW HOUSE, PAST A CATTLE GUARD, PASS HOUSE ON LEFT, BEAR RIGHT BEFORE BIG HOUSE, KEEP ON GOING PASSING ANOTHER HOUSE ENTRANCE THEN PASS CATTLE GUARD TO TWO HOUSES, IS THE ONE ON THE RIGHT. \n\nON HWY 3 FROM GUYMON GO EAST TO MM 39. GO\nNORTH PASS 3 CATTLE GUARDS IS THE HOUSE ON LEFT.
624	RR 1 Box 22AB - Fast	Optima	1	22AB	-101.3250703	36.7208235	FAST, MARY\n580-338-6488 \nSAME AS RT 3 Box 180 GUYMON\n\nFROM OPTIMA GO SOUTH ON CR 38 TO DEAD END. TURN EAST THEN TURN SOUTH AT FIRST CATTLE GUARD. CIRCLE EAST PASSING YELLOW HOUSE, PAST A CATTLE GUARD, PASS HOUSE ON LEFT, BEAR RIGHT BEFORE BIG HOUSE, KEEP ON GOING PASSING ANOTHER HOUSE ENTRANCE THEN PASS CATTLE GUARD TO TWO HOUSES, IS THE ONE ON THE LEFT. \n\nON HWY 3 FROM GUYMON GO EAST TO MM 39. GO\nNORTH PASS 3 CATTLE GUARDS IS THE HOUSE ON RIGHT.
625	RR 1 Box 23 - BRUNE	Hooker	1	23	-101.3857803	36.7772369	BRUNE, MILTON\n580-651-5972\n\nHOUSE ON NW CORNER OF CR P AND MILE 36. \nFROM GUYMON GO EAST TO HUGOTON RD IN OPTIMA. GO NORTH ON HUGOTON HWY FOR ABOUT 1 1/4 MILE TO CR P. GO WEST FOR 1 MILE TO MILE 36. \n\nHE WORKS AT 501 S. MAIN ST IN GUYMON\nTEXAS DISTRICT 2. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/7tHm2dmpxGz
626	RR 1 Box 23 - Huddleston	Texhoma	1	23	-101.8523495	36.6974127	HUDDLESTON, DARRELL\n580-545-3565\n\nNORTH ON HWY 95 TO RD V\nGO 2 MILES WEST ON RD V \n1/2 MILE NORTH\nWHITE HOUSE WITH GREEN TRIM
627	RR 1 Box 238 , 302 CARTER - AVALOS	Hooker	1	238	-101.3539856	36.7583065	alondra 806 339 2630
628	RR 1 Box 23A - COOK	Hardesty	1	23A	-101.0133182	36.5144872	No description entered.
629	RR 1 Box 24 - 2549 Road E - Ivie	Guymon	1	24	-101.5216912	36.9355292	No description entered.
630	RR 1 Box 24 - Keylon	Texhoma	1	24	-101.8505172	36.6757919	KEYLON, SELMA, KAMERON\n806-570-6084\n\nNORTH OUT OF TEXHOMA ON HWY 95 FOR \n13 MILES TO ROAD W. \nTURN LEFT, GRAY HOUSE WITH RED ROOF AT \nDEAD END.
631	RR 1 Box 24A - Fisher	Optima	1	24A	-101.3684882	36.775892	FISHER, CLYDE AND CONNIE\n\nFROM OPTIMA TAKE HUGOTON HWY NORTH \nGO FOR 1 1/2 MILES NORTH TO TWO HOUSES\nIS THE WHITE ONE ON LEFT CORNER.
632	RR 1 Box 25 , 1519 Mile 11 - Webb	Goodwell	1	25	-101.8343065	36.7889231	No description entered.
633	RR 1 Box 25A, 1919 Blue Sage	Texhoma	1	25A	-101.4704261	36.6980979	SKELTON, LINDSAY\n\nNOW LIVES ON 1919 BLUE SAGE IN GUYMON\n(1/17/2018 CONFIRMED)
634	RR 1 Box 26 - FOX	Hardesty	1	26	-101.0082879	36.5239287	FOX, HARRY G\n580-888-4514\n580-651-3102\n\nFROM HARDESTY 10 MILES EAST TO CR 57\n6 TO 6 1/2 MILES SOUTH\nWHITE ROCK HOUSE\nHOUSE ON WEST SIDE OF ROAD.
635	RR 1 Box 26A - Skelton	Texhoma	1	26A	-101.8408058	36.6504775	SKELTON, JANE\n\nOK TO TAKE PACKAGERS TO HER SON ON \n1919 BLUE SAGE UN GUYMON.\n\nIF TAKING IT TO HER HOUSE: GO NORTH ON 95 FROM \nTEXHOMA. AT THE BIG CURVE WEST KEEP ON GOING\nWEST AND GO ON DIRT ROAD PASSING CATTLE GUARD\nTO THEIR HOME AT THE END OF DIRT DRIVEWAY.
636	RR 1 Box 27 - 3560 Road O, Bryan, Smith	Optima	1	27	-101.3939617	36.7916303	BRYAN, FRED\nSMITH, CALEB\n\n3560 COUNTY ROAD O\nBETWEEN CR 35 AND CR 36\n\nOR TAKE IT TO 619 W 4TH ST IN GUYMON TO IN LAW'S\n\nDropped Pin\nnear Texas County, OK\nhttps://goo.gl/maps/TADr8bRtnJr
638	RR 1 Box 27 - Vaught	Texhoma	1	27	-101.8520069	36.6037629	VAUGHT, JENNIFER\n\nHWY 95 NORTH TO CR CC\nGO 3 MILES WEST THEN 1 MILE NORTH
639	RR 1 Box 27 - WILLIAMS	Goodwell	1	27	-101.9429625	36.7687448	No description entered.
640	RR 1 Box 27C, 784 MILE 29 - Helm	Guymon	1	27C	-101.505596	36.89414	No description entered.
641	RR 1 Box 28 - HIMMAUGH	Guymon	1	28	-101.5055038	36.8933897	No description entered.
642	RR 1 Box 28 - JENKINS	Hooker	1	28	-101.3994827	36.7899132	No description entered.
643	RR 1 Box 28, 28B - ROBLES	Texhoma	1	28	-101.8700042	36.5676222	ROBLES, SÍLVIA\n\nFROM TEXHOMA TAKE 95 NORTH TO CR CC\nTHEN GO 4 MILES WEST ON CC. \nTHEN 1 MILE SOUTH.
644	RR 1 Box 28A - VILLALOBOS, TARIN	Texhoma	1	28A	-101.870009	36.5672854	ANDREA VILLALOBOS\nTARIN\n\nFROM TEXHOMA 95 NORTH TO CR CC\nGO 4 MILES WEST ON CC TO MILE 9\nTHEN 1 MILE SOUTH. \nIT’S THE SECOND HOUSE, SOUTH OF THE FIRST ONE. BROWN WITH GREEN METAL ROOF
645	RR 1 Box 28A , 540 ROAD P - Williams	Goodwell	1	28A	-101.934994	36.7773197	No description entered.
646	RR 1 Box 28F - GURLEY	Goodwell	1	28F	-101.9967061	36.8276447	go in on road N, it's paved
647	RR 1 Box 29 - Mcdaniels	Texhoma	1	29	-101.8634628	36.5566622	Jerod McDaniels\n580-651-7572\nNorth of Texhoma to road CC go WEST to mile 9. \nSouth 1.5 miles. Cattle guard on left side with big evergreens on each side
648	RR 1 Box 29A - Hager	Texhoma	1	29A	-101.883265	36.5455188	HAGER, ROB\n580-817-1266\n\nFROM TEXHOMA GO NORTH ON HWY 95 FOR 2 MILES\nTO CR GG. TURN WEST AND GO APPROX 4 MILES AND \nCURVE TO NORTH. CROSS THE BEAVER RIVER AND \nINMEDIATELY TURN WEST. A SMALL GRAY HOUSE THAT \nIS 3/4 MILE OFF ROAD. IT IS THE FIRST HOUSE, NOT THE \nSECOND ONE FURTHER WEST.
649	RR 1 Box 2A - MARTIN	Hardesty	1	2A	-101.1706199	36.5880071	No description entered.
650	RR 1 Box 2A, 1198 MILE 44 - BORUNDA	Hooker	1	2A	-101.2429376	36.8345729	No description entered.
651	RR 1 Box 3 - BARRAZA , BORUNDA	Hooker	1	3	-101.244277	36.8344443	BARRAZA, GUADALUPE\n580-461-2815\n\nGO ON HWY 54 PASS OPTIMA, PASS MUSSCAT SALVAGE AUTO. TO NEXT ROAD (CR L) TO THE RIGHT. \nFIRST HOUSE COLORED BROWN\n \nTHERE IS A NEW TRAILER NEXT TO THE HOUSE ON EAST SIDE OF IT. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/ZawaaS6Ba782
652	RR 1 Box 3 - LOST TRAIL DAIRY	Boise City	1	3	-102.6149615	36.6439948	No description entered.
653	RR 1 Box 3 - OSBORNE	Hardesty	1	3	-101.1524398	36.6014935	No description entered.
654	RR 1 Box 3 , 219 N EAST - GEISBRECHT, MAST	Texhoma	1	3	-101.7808722	36.5067173	580-461-2248\n\nGEISBRECHT, ADRIENNE\n219 EAST STREET (CEDAR PORCH ON HOUSE)
655	RR 1 Box 3 , 3061 ROAD L - JONES	Guymon	1	3	-101.4814069	36.8343712	No description entered.
656	RR 1 Box 30 - BERGEN	Goodwell	1	30	-102.0234671	36.8046526	No description entered.
657	RR 1 Box 301 , 601 INDIANA - PARKER	Optima	1	301	-101.3496428	36.7596854	No description entered.
658	RR 1 Box 31 - BERG	Guymon	1	31	-101.5206792	36.8662321	No description entered.
659	RR 1 Box 31 - COOK	Keyes	1	31	-102.0669478	36.699917	No description entered.
660	RR 1 Box 31 - Johnson	Optima	1	31	-101.4766772	36.6922524	JOHNSON, VANESSA\n\nTAKE PKGS TO 1401 N LELIA ST GUYMON Dunaway Manor
661	RR 1 Box 32 - Carbajal	Guymon	1	32	-101.4551806	36.8640553	CARBAJAL, EDGAR\n620-309-0219\n\nFROM WALMART GO NORTH TO HWY 136 TO RD J \nTURN RIGHT TOWARDS HOOKER AND GO FOR ABOUT 2 MILES TO WHITE TRAILER HOME RIGHT BEFORE POND ON NORTH SIDE.
662	RR 1 Box 32 - HUTCHINSON	Boise City	1	32	-102.9309281	36.7261047	No description entered.
663	RR 1 Box 32 - LEWIS	Hooker	1	32	-101.4272295	36.7759712	FROM HWY 54 GO NORTH ON HUGOTON HWY TO CR O THEN GO WEST 3 MILES TO SUBSTATION THEN GO SOUTH 1 MILE TO ROAD P. GO WEST APPROX 1+ MILE HOUSE ON THE LEFT SIDE, THE ONE AFTER THE TRAILER WITH AN OLD BARN. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/9hfHXWL69uo
664	RR 1 Box 320 , 313 NE 3RD - MESTA	Hooker	1	320	-101.3529086	36.758229	No description entered.
665	RR 1 Box 323, 510 MORGAN - VEGA	Optima	1	323	-101.3585883	36.7562822	No description entered.
666	RR 1 Box 326 - GUITERREZ	Optima	1	326	-101.3467448	36.7597379	No description entered.
667	RR 1 Box 33 - ALLEN	Boise City	1	33	-102.95774	36.7190769	No description entered.
668	RR 1 Box 337 , 104 S CARTER - FLORES	Optima	1	337	-101.3541511	36.7602404	No description entered.
669	RR 1 Box 34 - HEIMSOTH	Hooker	1	34	-101.4380676	36.7938722	No description entered.
670	RR 1 Box 340 - BETTERON	Optima	1	340	-101.358073	36.7546244	BETTERON, BRUCE AND ANNETE\n580-338-2209\n\nGO SOUTH ON JEFFERSON ST IN OPTIMA\nTRAILER AT END OF ROAD\nCOLOR BLUE ON CORNER OF 7TH ST.
671	RR 1 Box 35, 36 - Russell	Texhoma	1	35	-101.984033	36.5732908	RUSSELL, MARGARET\n\nGO WEST ON STATE LINE ROAD TO CURVE\nTHEN GO NORTH 4 MILES\nTHEN CURVE WEST AND GO FOR 1 MILE\nTHEN 1 MILE NORTH \nTHEN 1/4 MILE WEST\nSIMON - GERARDO\n\nON STATELINE ROAD GO WEST FOR 9 MILES\nTHEN CURVE NORTH FOR 4 MILES\nTHEN 1 MILE WEST \nTO MILE MARKER 3\n1 MILE NORTH\n1/4 MILE WEST (RED BARN ROOF)
672	RR 1 Box 35A - GIBSON	Boise City	1	35A	-102.9730139	36.8089364	No description entered.
673	RR 1 Box 36 - HUTCHISON	Hardesty	1	36	-100.9775512	36.6160859	No description entered.
674	RR 1 Box 36 - MINNS	Goodwell	1	36	-102.1060791	36.8051491	No description entered.
675	RR 1 Box 37A - Hinkle	Guymon	1	37A	-101.4830525	36.6809905	HINKLE, GAIL\n\nWORKS AT POST OFFICE IN GUYMON
676	RR 1 Box 37A - MCBRIDE	Hooker	1	37A	-101.4382597	36.8375927	No description entered.
677	RR 1 Box 38 - Barber	Optima	1	38	-101.4189161	36.8268544	BARBER, MARGRET\n\nFROM OPTIMA TAKE HUGOTON HWY NORTH TO CR O\nTURN WEST UNTIL YOU SEE THE POWER SUBSTATION\nTHEN GO NORTH 2 1/2 MILES TO BRICK HOME\n\nIF NOT HOME, VERBAL RELEASE TO LEAVE ON PORCH
678	RR 1 Box 38 - CARNEY	Hardesty	1	38	-100.9756248	36.6214874	No description entered.
679	RR 1 Box 38 - Elliott , BEARLE	Texhoma	1	38	-101.9964114	36.6178405	No description entered.
680	RR 1 Box 38 - PETERS	Hooker	1	38	-101.4190254	36.8273502	No description entered.
681	RR 1 Box 38A - SHEATS	Hooker	1	38A	-101.4191366	36.8269497	SHEATS, THOMAS\n720-271-5421 \nFROM HWY 54 GO NORTH ON HUGOTON HWY TO CR O. THEN GO WEST TO CR 34 THEN GO 2 1/2 MILES NORTH TO HOME ON SOUTH SIDE \nOR\nCR J (7) AND MILE 34, 2.5 MILES SOUTH. \nHE WORKS AT 302 E GLAYDAS ST. HOOKER, OK\n(OLD TCEC OFFICE)\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/VSfs8caqosu
682	RR 1 Box 38A , 37A-   WEATHERBY	Hardesty	1	38A	-100.9721125	36.6237247	No description entered.
683	RR 1 Box 38C - Deines	Optima	1	38C	-101.4187984	36.8273418	DEINES, CARRIE\n\nHEWY 136 NORTH TO ROAD O\nTURN EAST 4 MILES \nTURN NORTH 2 1/2 MILES
684	RR 1 Box 39 - Long	Optima	1	39	-101.3675232	36.8120193	No description entered.
685	RR 1 Box 39 , 136 AA - Elliott	Texhoma	1	39	-102.0081788	36.6184183	No description entered.
686	RR 1 Box 39A - Long	Optima	1	39A	-101.3673791	36.7981851	No description entered.
687	RR 1 Box 39B - Long	Optima	1	39B	-101.3671247	36.801633	long
688	RR 1 Box 39C - MITCHELL	Hooker	1	39C	-101.3672947	36.8002468	No description entered.
689	RR 1 Box 3A - GUSTIN	Hooker	1	3A	-101.2513478	36.8343287	No description entered.
690	RR 1 Box 3C - ARNOLD	Hooker	1	3C	-101.2525787	36.8343239	ARNOLD, JAKE\n580-651-3923\n\nHWY 54, TURN NORTH ON CR L\n3RD HOUSE ON RIGHT. BLUE TRIM HOUSE\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/k78tZmN6ZuB2
691	RR 1 Box 3C , 400 N 1ST - CANTEY	Texhoma	1	3C	-101.7815627	36.5081073	CANTEY, FRED\n\n400 N FIRST ST \nRED BRICK HOUSE ON NE CORNER
692	RR 1 Box 4 - IMLER	Boise City	1	4	-102.6210539	36.6899974	No description entered.
693	RR 1 Box 4 - ROBERTS	Hooker	1	4	-101.2388917	36.8337352	No description entered.
694	RR 1 Box 4, 207 N SWEM - ROBERTS	Hooker	1	4	-101.2133307	36.862285	No description entered.
695	RR 1 Box 40 - GIBSON	Hardesty	1	40	-101.0031787	36.6268685	No description entered.
696	RR 1 Box 40 - MURDOCH	Felt	1	40	-102.6797759	36.6089849	No description entered.
697	RR 1 Box 40 - YOUNG	Texhoma	1	40	-102.1062523	36.6506681	YOUNG, WILL\n\nHWY 95 NORTH TO CR CC THEN GO WEST 11 MILES\nTO DEAD END THEN GO NORTH 2 MILES TO RD AA\nTHEN GO WEST FOR 1.5 MILES THEN GO NORTH 1/4\nMILE TO BARN. \n\nWE CAN INDIRECT DELIVER TO TEXHOMA HIGH SCHOOL\nWIFE WORKS THERE.
698	RR 1 Box 41 - Verson	Optima	1	41	-101.3675402	36.8132065	VERSON, LINDLY\n580-652-2672\n\nLAST HOUSE PAST LONG RANCH \nBETWEEN OPTIMA AND HITCH
699	RR 1 Box 41A - Lindley	Optima	1	41A	-101.3675637	36.8127805	LINDLEY, MARGARET\n\n4 MILES NORTH ON HUGOTON HWY FROM HWY 54\n3RD HOUSE (GRAY)
700	RR 1 Box 42AA - LAMPHERE	Hardesty	1	42AA	-101.0699487	36.6512557	No description entered.
701	RR 1 Box 42B - GILBERT	Hardesty	1	42B	-101.0461784	36.6745445	No description entered.
702	RR 1 Box 42BB - WILLIAMS	Hardesty	1	42BB	-101.0643466	36.6249535	WILLIAMS, NOEMA\n580-888-4295\n\nFROM HARDESTY GO 7 MILES EAST \nAT CR 54 GO NORTH FOR 1/2 MILE\nONLY HOUSE OUT THERE.
703	RR 1 Box 42C - GILBERT	Hardesty	1	42C	-101.0339697	36.6743798	No description entered.
704	RR 1 Box 42D - BREWER	Hardesty	1	42D	-100.9882549	36.6653551	MAYER, NAOMI\n580-461-0292\n\nSHE WORKS AT 115 NW 14TH ST VET CLINIC\n\nFROM HARDESTY TAKE HWY 3 TO MILE 53 THEN TURN NORTH\nTHEN TURN EAST ON CR W. GO FOR 5 MILES, WHEN YOU COME TO \nA T INTERSECTION GO SOUTH/RIGHT FOR 1/4 MILE AND RUN INTO\nYARD.
705	RR 1 Box 42G - STINSON, WILLIAMS	Hardesty	1	42G	-101.0818297	36.6638606	No description entered.
706	RR 1 Box 44A - FLEMING	Hardesty	1	44A	-101.0943985	36.6314545	No description entered.
707	RR 1 Box 46 - TWOMBLY	Texhoma	1	46	-102.1942967	36.6170254	TWOMBLY, CORA\n\nFROM TEXHOMA TAKE STATELINE RD AND GO WEST\nSTAY ON PAVED ROAD FOR 20 TO 22 MILES THEN \nRIGHT ON NS 46 THEN GO FOR 1 MILE\n\nTHEY ARE ON LEFT/WEST SIDE OF ROAD\nWHITE HOUSE BEHIND PLAINVIEWS
708	Rr 1 Box 4c , 121 E 4TH LOT 20 - Hein	Goodwell	1	4c	-101.6284172	36.5904248	HEIN, JOHN\n\nGRACE TRAILERS BY WASHINGTON ST. \n\n121 E 4TH ST, LOT 20. GOODWELL.
709	RR 1 Box 5 - RAPP	Hooker	1	5	-101.2243731	36.8269216	No description entered.
710	RR 1 Box 5 , 312 N EAST ST - CRUZ	Texhoma	1	5	-101.7803485	36.5077357	No description entered.
711	RR 1 Box 51 - COATS	Boise City	1	51	-102.8761575	36.7095138	No description entered.
712	RR 1 Box 51 , 4898 ROAD AA - BEASLEY	Hardesty	1	51	-101.1525635	36.6168951	No description entered.
713	RR 1 Box 52 - Ainsworth	Guymon	1	52	-101.5009369	36.6651234	AINSWORTH\n\nSOUTHWIND RV PARK ON HWY 54 BEFORE ENTERING\nGUYMON
714	RR 1 Box 52 - CRYER	Texhoma	1	52	-102.1796013	36.6541527	CRYER, STEVE\n\nFROM GRIGGS FOR 1 MILE WEST\n2 MILES NORTH\n1 MILE WEST\n1 MILE NORTH\n1 MILE WEST THEN GO NORTH (BUNCH OF TREES)
715	RR 1 Box 52 - Dickenson	Hardesty	1	52	-101.1524506	36.6221695	RR 21 Box 52 - DICKENSON, JEFFREY\n580-817-1172\n\nEAST OF HARDESTY TO CR 49, NORTH FOR 1/4 MILE\nHOUSE ON LEFT SIDE.
716	RR 1 Box 52 -GREAT PLAINS BUNKHOUSE	Boise City	1	52	-102.8909987	36.7052091	No description entered.
717	RR 1 Box 52A - ALVAREZ	Boise City	1	52A	-102.8778087	36.7119909	No description entered.
718	RR 1 Box 53 - HITCH FEEDYARD	Hooker	1	53	-101.3494568	36.8082962	No description entered.
719	RR 1 Box 53A	Guymon	1	53A	-101.5060995	36.7009026	580-651-7789\n\n2122 MIKE DRIVE\n2ND HOUSE ON RIGHT, LONG CABIN
720	RR 1 Box 54A - ADDISON	Goodwell	1	54A	-101.9030301	36.8739085	No description entered.
721	RR 1 Box 54A, 2126 MIKE DR - Thomas	Guymon	1	54A	-101.5056577	36.7002847	THOMAS, DELBERT\n925-265-3770\n\nHE WORKS AT FORD DEALER IN GUYMON\n\nHOUSE IS ON MIKE DR
722	RR 1 Box 55 - NEAL , CORONA	Goodwell	1	55	-101.9032326	36.873919	No description entered.
723	RR 1 Box 55 , 2898 MILE 47 - BROWN	Hardesty	1	55	-101.1886625	36.5875787	No description entered.
724	RR 1 Box 55A , 2896 MILE 47	Hardesty	1	55A	-101.1887112	36.5878761	No description entered.
725	RR 1 Box 56A , 2130 MIKE -  Preston	Guymon	1	56A	-101.5056237	36.6992717	PRESTON, CORNELIUS\n580-338-7819\n\nNW 24TH TO MIKE ST. GO SOUTH TO LAST HOUSE ON \nWEST SIDE
726	RR 1 Box 57 - ROWAN	Texhoma	1	57	-102.2546687	36.6177714	ROWAN, VIRGINIA\n580-543-6449\n\nFROM STRATFORD GO NORTH TO 171\nAT INSTERSECTION OF 171 AND EW27\nTAN BRICK HOUSE FACING WEST. \nHOUSE IS ABOUT 1/4 MILE TO WEST FROM THAT \nINTERSECTION. \n\nIT’S ABOUT 2 MILES NORTH OF CIMARRON FEEDERS\n(LOOK AT PICTURE)
727	RR 1 Box 57A - BANKS	Hardesty	1	57A	-101.1524866	36.5510543	BANKS, LESLIE\n\n4 MILES SOUTH ON CR 47\n2 MILES EAST ON RD EE\nHOUSE ON RIGHT SIDE OF ROAD
728	RR 1 Box 58- Bridal	Optima	1	58	-101.332648	36.8113548	BRIDAL, DONALD\n\nGO HUGOTON HWY NORTH TO CR M\nFROM HITCH 1 FEED YARD GO 1 MILE EAST ON CR M\n1/2 MILE SOUTH ON DIRT ROAD 39\n\nLONG BRICK HOME.
729	RR 1 Box 6 - BRESSLER	Guymon	1	6	-101.4862138	36.9190563	BRESSLER, BILL\n613 MILE 30 AT ROAD F. ON HWY 136 NORTH\nON EAST SIDE, TAN HOUSE, RED ROOF
730	RR 1 Box 6 - STUMP	Hardesty	1	6	-101.0687787	36.5776511	STUMP, DAVID \n580-888-4480\n580-461-9925\n\nFROM HARDESTY GO 6 MILES EAST TO MILE 53 THEN GO\nSOUTH 2 MILES THEN 1/2 EAST. CROSS CATTLE GUARD GO\nSOUTH 3/4 MILE. \n\nDAD LIVES 1.5 MILES EAST OF HARDESTY ON SOUTH SIDE OF ROAD\nON WHITE HOUSE WITH BUILDINGS.
731	RR 1 Box 6-D , 304 S MONROE - CAMPBELL	Goodwell	1	6	-101.6189579	36.5930643	No description entered.
732	RR 1 Box 60	Hardesty	1	60	-101.1353892	36.5570335	No description entered.
733	RR 1 Box 60 - MCGAUGHY	Goodwell	1	60	-101.9044054	36.8739305	No description entered.
734	RR 1 Box 60A, 2934 Nelson - Arledge	Guymon	1	60A	-101.5043355	36.6971133	ARLEDGE, MARILYN\n580-651-9433\n580-651-7258\n\nON NELSON ST (ONLY HOUSE ON THAT STREET)
735	RR 1 Box 63 - TRAYLER	Hooker	1	63	-101.3234787	36.8192139	COX, FRED\n\nTAKE HUGOTON HWY NORTH TO CR M GO EAST\nHOUSE ON CR M PAST CR 39 ON SOUTH SIDE. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/YdvFd8BEnPx
736	RR 1 Box 64A , 2133 MIKE DR - RHODES	Guymon	1	64A	-101.5049876	36.6988401	No description entered.
737	RR 1 Box 65 - BERNER , VERNER	Goodwell	1	65	-101.8753035	36.8339386	BERNER, AMANDA\n580-545-3444\n580-651-4330\n\nFROM FOURCORNERS GO NORTH FOR ABOUT 5 MILES\nWHEN THE ROAD CURVES TAKE DIRT ROAD THAT GOES\nEAST RIGHT AT THE CURVE AND GO FOR 1 1/2 MILE TO \nHOUSE ON SOUTH SIDE.
738	RR 1 Box 65A - Hogan	Guymon	1	65A	-101.4831846	36.7047353	HOGAN, LEEZA\n\nDELIVER TO TRACTOR SUPPLY\n2501 N 64
739	RR 1 Box 66 - LOWRY	Hooker	1	66	-101.2782191	36.7964076	LOWRY, RAY\n\nFROM HOOKER TAKE HWY 54 TURN LEFT \nON CR 42 THEN GO SOUTH 1 MILE.\n\nOR FROM HWY 54 TURN EAST WHERE THE WHITE GAS TANKS ARE AND GO FOR 1 MILE THEN SOUTH.  IT IS THE 1ST HOUSE PAST GRAY BLOCK SCHOOL HOUSE. 2 STORY OLD WHITE. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/4UtCPD7RA3U2
740	RR 1 Box 67A - CARNAGY	Hooker	1	67A	-101.2605858	36.7797577	No description entered.
741	RR 1 Box 68 , 4323 ROAD P - HAWKSBAUGH	Hooker	1	68	-101.257172	36.7756806	No description entered.
742	RR 1 Box 69 - OYLER	Texhoma	1	69	-102.2064005	36.6170469	OYLER, RENA\n\n4 MILES WEST OF GRIGGS, THEN GO NORTH 1 MILE\nWHERE OLD PLAINVIEW SCHOOL WAS GO WEST \n1 1/2 MILE TO 2ND BRICK HOUSE ON LEFT.
743	RR 1 Box 69 - WALL	Hooker	1	69	-101.2441472	36.7755368	No description entered.
744	RR 1 Box 6A - CAPPELLUCCI	Hooker	1	6A	-101.2247997	36.8258342	No description entered.
745	RR 1 Box 6E , 316 MONROE - HARBER	Goodwell	1	6E	-101.6186709	36.5926275	No description entered.
746	RR 1 Box 7 - RITTER	Hooker	1	7	-101.2227322	36.7993816	No description entered.
747	RR 1 Box 70 - LAVIELLE	Boise City	1	70	-102.6903935	36.7338698	No description entered.
748	RR 1 Box 70 , 1571 MILE 45 - MATHIS	Hooker	1	70	-101.2235128	36.7792397	1571 Mile 45\nmathis
749	RR 1 Box 71 - MCCUNE	Goodwell	1	71	-101.6228959	36.6463473	No description entered.
750	RR 1 Box 71-1 - COBB	Goodwell	1	71	-101.6502083	36.7060619	No description entered.
751	RR 1 Box 71AC - LEAGUE	Guymon	1	71AC	-101.486118	36.7773652	No description entered.
752	RR 1 Box 72 - JOHNSON	Hooker	1	72	-101.2071555	36.767241	DUNNAGAN\n580-461-7282\n\nFROM HOOKER TAKE 94 SOUTH FOR 6 MILES. RED BRICK ON RIGHT SIDE \n1/2 MILE PAST CR P. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/jMzzdBcCkis
753	RR 1 Box 73 - 2491 Mile 23 - Strain	Goodwell	1	73	-101.6184094	36.6477128	No description entered.
754	RR 1 Box 73 , 4501 RD Q - MUNRO	Hooker	1	73	-101.2232443	36.760903	No description entered.
755	RR 1 Box 74 - STRAIN	Goodwell	1	74	-101.6208946	36.6477675	No description entered.
756	RR 1 Box 74 , 4270 CR R - STEGMAN	Hooker	1	74	-101.2658338	36.7472389	STEGMAN\n580-652-2021\n\nFROM HOOKER TAKE HWY 94 THEN GO WEST ON CR Q (OPTIMA HWY) THEN TURN SOUTH ON MM 43. ONLY HOUSE ON RIGHT. HAS A DEAD END SIGN BEFORE IT. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/HGQcya5t3Nm
757	RR 1 Box 74B - HOOKER	Hooker	1	74B	-101.2788767	36.7648978	No description entered.
758	RR 1 Box 74E	Hooker	1	74E	-101.2998942	36.7654261	No description entered.
759	RR 1 Box 74F	Hooker	1	74F	-101.3001654	36.7654989	No description entered.
760	RR 1 Box 74G - Galvin	Hooker	1	74G	-101.2984025	36.7643828	No description entered.
761	RR 1 Box 75 - HARRIS , RUBALCABA	Texhoma	1	75	-102.2119374	36.5918388	HARRIS, ERIKA\nRUBALCABA, ERIKA\n580-543-6358\n\nWORKS AT CIMARRON FEEDERS\n\nFROM CIMARRON FEEDERS GO NORTH TO PAVED ROAD \nTHAT GOES EAST THEN GO FOR 2 MILES EAST\nTHEN 1/2 MILE SOUTH\nONLY HOUSE ON THAT ROAD.
762	RR 1 Box 75 - James	Hooker	1	75	-101.2461166	36.7605896	RR 1 Box 75 - JAMES  FROM HOOKER GO SOUTH FOR 7 MILES THEN TURN WEST ON CR Q THEN GO FOR 2 1/4 MILE TO YELLOW HOUSE FENCED Dropped pin https://maps.google.com?q=36.760434,-101.246172&hl=en-US&gl=us
763	RR 1 Box 75 - MAJORS, WITTEN	Boise City	1	75	-102.6264144	36.7173906	No description entered.
764	RR 1 Box 75 , 2031 CR Y - WESTSCOT	Goodwell	1	75	-101.6673331	36.6466161	No description entered.
765	RR 1 Box 75A - FEHR	Hooker	1	75A	-101.2348785	36.7620125	FEHR, PETER\n580-652-2133 / 580-522-1441\n\nFROM HWY 94 TAKE CR Q WEST TOWARDS OPTIMA FOR 1 1/2 MILE TO BIG RED BRICK HOME ON NORTH SIDE. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/g1dPieABtY62
766	RR 1 Box 75A , 1850 ROAD Y - WESTCOTT	Goodwell	1	75A	-101.6915008	36.6456855	No description entered.
767	RR 1 Box 76 - BECK	Goodwell	1	76	-101.6823847	36.6321071	No description entered.
768	RR 1 Box 76, 4453 ROAD Q, BARRINGER	Hooker	1	76	-101.2302186	36.759849	No description entered.
769	RR 1 Box 76A, 76B , 77 - Kauffman	Hooker	1	76A	-101.2233375	36.7521976	RR 1 Box 76A  KAUFFMAN, VIRGINIA 580-461-2412  FROM HOOKER GO SOUTH ON HWY 94 TO ADAMS HWY. TURN WEST AND GO FOR 1 MILE. TURN SOUTH ON MILE 45 AND GO FOR 1/2 MILE TO BACK MAILBox HOME TRAILERS.   BUNCH OF DOGS BUT WONT BITE
770	RR 1 Box 77A -	Goodwell	1	77A	-101.6961741	36.6319798	No description entered.
771	RR 1 Box 77B - RHODES	Hooker	1	77B	-101.2239049	36.7403342	No description entered.
772	RR 1 Box 78A , 2720 MILE 20 - TROY	Goodwell	1	78A	-101.673277	36.6138603	No description entered.
773	RR 1 Box 79 - WESTCOTT	Goodwell	1	79	-101.6665754	36.6175486	No description entered.
774	RR 1 Box 79, 79A , 2150 MILE 46- MAYER	Hooker	1	79	-101.2249041	36.701637	No description entered.
775	RR 1 Box 79B - LACKEY	Hooker	1	79B	-101.171442	36.6782266	No description entered.
776	RR 1 Box 79C - Hamby	Hooker	1	79C	-101.1713398	36.6787367	No description entered.
777	RR 1 Box 79E - MARTINEZ	Hooker	1	79E	-101.1705593	36.6741495	No description entered.
778	RR 1 Box 79G - SCOTT	Hooker	1	79G	-101.1738663	36.6689262	ALLARD\nBUTTRY\n\nFROM HOOKER GO SOUTH ON HWY 94 FOR 12 1/2 MILES THEN TURN EAST ON CR W. GO FOR 1 1/2 MILE TO SIGN "COLDWATER". THEN GO RIGHT DOWN TO LOG CABIN WITH GREEN METAL ROOF. \nDOGS BUT WONT BITE (YET). \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/JM62BwezE1z
779	RR 1 Box 7A	Guymon	1	7A	-101.5027203	36.9509444	CLEMENS, COLTON \n2910 ROAD D\n\nNORTH ON HWY 136 ALL THE WAY TO COUNTY ROAD D\nTURN WEST AND GO 1 MILE TO HOUSE ON NORTH SIDE\nOF ROAD, MAILBox MARKED
780	RR 1 Box 7A , 2685 MILE 52 - DURBIN , ELLIS	Hardesty	1	7A	-101.0972132	36.6179504	OLSON, JEFF\n\nFROM HARDESTY GO EAST ON HWY 3 FOR 5 MILES\nTO RD 52. HOUSE IS ON NORTH SIDE OF ROAD. \n\nWHITE HOUSE BLACK TRIM WITH WRAP AROUND PORCH
781	RR 1 Box 7B - KOEHN	Hooker	1	7B	-101.2233698	36.7975402	No description entered.
782	RR 1 Box 7C - Honeman	Hooker	1	7C	-101.222834	36.8027128	RR 1 Box 7C Honeman, Anne 580-651-3007  From Hooker go south on Hwy 94 to CR N Turn right (West) on CR N and go for 1 mile then Turn left (south) on CR 45 to TRL home on east side of road. Beige with brown trim.   Dropped Pin near Texas County, OK https://goo.gl/maps/8pK1i7frLt42
783	RR 1 Box 7D - MURLEY, SMITH	Goodwell	1	7D	-101.6203087	36.5930511	MURLEY, TIFFANY\n\nWORKS AT COLLEGE. \n\nHOUSE IS ON ADAMS ST. IT’S THE FARTHEST ONE\nNORTH. HAS A GREEN POST FOR MAILBox.
784	RR 1 Box 7F , 320 S ADAMS - HEGWOOD	Goodwell	1	7F	-101.6201493	36.5923702	HEGWOOD, THERAN\nTRIVITT MOTORS \n405-537-3623\n\n\n320 S ADAMS ST \nHOUSE ON SW CORNER.
785	RR 1 Box 7G , 412 MONROE - CUNNINGHAM	Goodwell	1	7G	-101.6187516	36.5916583	CUNNINGHAM, CHANCE, COLE, WESLEY\n\n412 MONROE ST.
786	RR 1 Box 7H , 2914 ROAD D- CLEMANS	Guymon	1	7H	-101.5021931	36.9508723	CLEMANS, HEATH \n580-545-3679\n\nNORTH ON HWY 136 TO CR D, GO WEST \nTO FIRST HOUSE ON NORTH SIDE.
787	RR 1 Box 8 - King	Guymon	1	8	-101.5134841	36.9486571	KING, ROBERT\n580-545-3526\n\nNORTH OF GUYMON ON 136 NORTH TO ROAD D\nGO WEST FOR 1 1/2 MILE ON SOUTH SIDE. WHITE HOME\nBLUE METAL ROOF WITH BLUE TRIM. BLUE SHOP BLDG\nBY THE ROAD.
788	RR 1 Box 8- SCHRAMM	Texhoma	1	8	-101.7801463	36.5093453	SCHRAMM, SHEVIN\n580-817-0141\n\nON EAST ST, LAST HOUSE ON RIGHT AS YOU \nGO NORTH ON EAST ST.
789	RR 1 Box 8-6H , 516 S MONROE - BICKFORD	Goodwell	1	8	-101.6191795	36.590553	No description entered.
790	RR 1 Box 8-6K - HAGER	Goodwell	1	8	-101.6194428	36.5883885	HAGER, JANETH\n415-882-7765\n\nON MONROE ST. AT DEAD END \nBIG TWO STORY HOUSE WITH BARN. \nHOUSE FACES SOUTH.
791	RR 1 Box 8-A - 2230 Road Z - Mason	Goodwell	1	8	-101.6302504	36.6349102	MASON, DEBORAH\n\nFROM GOODWELL GO NORTH ON MILE 22 TO CR Z\nTURN EAST / RIGHT AND GO FOR 1/4 OF A MILE\nTO BRICK HOME ON NORTH SIDE OF ROAD.
792	RR 1 Box 8, 2239 ROAD CC - Humbard	Goodwell	1	8	-101.6295537	36.5875867	No description entered.
793	RR 1 Box 80	Hooker	1	80	-101.1993535	36.7305102	No description entered.
794	RR 1 Box 80 - BALDONADO, MORTENSON	Texhoma	1	80	-102.1773129	36.603208	No description entered.
795	RR 1 Box 80 - MYERS	Goodwell	1	80	-101.6541119	36.6289696	No description entered.
796	RR 1 Box 80 , 4785 CR GG - WARNOCK	Hardesty	1	80	-101.1728687	36.529418	No description entered.
797	RR 1 Box 81, 81B - COMPTON	Texhoma	1	81	-102.1632637	36.602503	No description entered.
798	RR 1 Box 81B, 2290 ROAD  Z - ROTH	Goodwell	1	81B	-101.6204352	36.6317957	No description entered.
799	RR 1 Box 81BB - TOLLE	Goodwell	1	81BB	-101.6190259	36.6333097	No description entered.
800	RR 1 Box 81E - WESTCOTT	Goodwell	1	81E	-101.5749601	36.6215123	No description entered.
801	RR 1 Box 81F - STONECIPHER	Goodwell	1	81F	-101.5816351	36.617678	No description entered.
802	RR 1 Box 81H - SHORES	Goodwell	1	81H	-101.5901875	36.6017901	No description entered.
803	RR 1 Box 82 - COLLIER	Texhoma	1	82	-102.1572713	36.5802646	COLLIER, BREANNA\n\nFROM GRIGGS GO TWO MILES WEST THEN \n1 MILE SOUTH. \n\nSINGLE TRAILER HOME PASSED THE DBL WIDE TRAILER. \n\nFROM CIMARRON FEEDERS, GO NORTH 1 MILE TO EW28\nTURN EAST AND GO 5 MILES TO NS48. \nSOUTH 1 MILE TO GRAY TRAILER.
804	RR 1 Box 83 - JOHNSON	Goodwell	1	83	-101.6177667	36.6094679	No description entered.
805	RR 1 Box 83 - SHARP	Boise City	1	83	-102.6499854	36.8340297	No description entered.
806	RR 1 Box 83A , 2777 MILE 23 - COUCH	Goodwell	1	83A	-101.6148447	36.6056909	No description entered.
807	RR 1 Box 83B - BLICKENSTAFF	Goodwell	1	83B	-101.6179094	36.60867	No description entered.
808	RR 1 Box 84	Boise City	1	84	-102.6209023	36.7919958	No description entered.
809	RR 1 Box 84 - FAST	Hooker	1	84	-101.1849882	36.758513	No description entered.
810	RR 1 Box 85B - DESBIEN	Texhoma	1	85B	-102.1222945	36.516079	DESBIEN, MISTY\n580-543-6489\n\nSOUTH OF GRIGGS FOR 6 MILES \nRED BRICK HOUSE ON WEST SIDE.
811	RR 1 Box 85C - Hitchens	Texhoma	1	85C	-102.1318092	36.5135072	HITCHINS, KIM\n580-519-1999 (TEXT)\n\n6 MILES SOUTH OF GRIGGS, GO THROUGH CATTLE\nGUARD AT END OF DIRT ROAD. \nBIG WHITE HOUSE ON HILL WITH BROWN METAL ROOF\n\nOR FROM TEXHOMA TAKE STATELINE ROAD WEST FOR 9\nMILES THEN CURVE NORTH FOR 4 MILES THEN CURVE\nWESTT FOR 9 MILES. WHEN YOU MEET THE PAVED ROAD \nGOING NORTH, INSTEAD GO\n SOUTH ON DIRT ROAD TO \nEND OF DIRT ROAD THEN GO THROUGH CATTLE GUARD TO \nHOME. \n\nEND OF DIRT ROAD THEN GO THROUGH CATTLE GUARD TO \nHOME.
812	RR 1 Box 86 - Smith	Texhoma	1	86	-102.1262257	36.5650027	No description entered.
813	RR 1 Box 86M - OPREC	Goodwell	1	86M	-101.6141613	36.5912863	No description entered.
814	RR 1 Box 89 , 3210 CR I - STRAIGHT SCHOOL	Guymon	1	89	-101.4495891	36.8777854	No description entered.
815	RR 1 Box 8b- SCHRAMM	Texhoma	1	8b	-101.7801463	36.5093453	SCHRAMM, SHEVIN\n580-817-0141\n\nON EAST ST, LAST HOUSE ON RIGHT AS YOU \nGO NORTH ON EAST ST.
816	RR 1 Box 9 - BRANCH	Guymon	1	9	-101.5022486	36.950141	No description entered.
817	RR 1 Box 9 - HANSON	Hooker	1	9	-101.2570353	36.8073702	No description entered.
818	RR 1 Box 9 - MARTIN	Hardesty	1	9	-101.079632	36.6143487	No description entered.
819	RR 1 Box 9 , 3020 MILE 22 - COLLINS	Goodwell	1	9	-101.6371322	36.5701557	COLLINS, SANDRA \n580-349-2483\n\nMILE 22 SOUTH, 1 1/4 MILE SOUTH. BRICK HOUSE ON \nWEST SIDE OF ROAD. \n3020 MILE 22
820	RR 1 Box 9-B - BERG	Goodwell	1	9	-101.6369941	36.5847735	No description entered.
821	RR 1 Box 90 - HENDERSON	Texhoma	1	90	-102.0796997	36.5157985	Tanya, david
822	RR 1 Box 91 - BRADFORD	Goodwell	1	91	-101.5973941	36.6316078	No description entered.
823	RR 1 Box 91 - HENDERSON	Texhoma	1	91	-102.0770613	36.490109	brooke
824	RR 1 Box 91 , 3121 RD I - MCBEE	Guymon	1	91	-101.4649545	36.8753316	No description entered.
825	RR 1 Box 91 , 3230 MILE 47- MCCANN	Hardesty	1	91	-101.1878833	36.5395422	HOEFFNER, HEATHER\n580-888-4200\n580-651-2006\n\nGO SOUTH ON CR 47 FOR 5 MILES\nJUST PAST RD FF ON WEST SIDE OF ROAD\nRED BRICK HOME WITH TAN METAL ROOF.
826	RR 1 Box 92 - HENDERSON	Texhoma	1	92	-102.0671108	36.5014482	Loretta, john
827	RR 1 Box 93 - RUSSELL	Texhoma	1	93	-102.0352623	36.5805403	No description entered.
828	RR 1 Box 94 - WALL	Texhoma	1	94	-102.0316516	36.5812964	No description entered.
829	RR 1 Box 94B - SIMON	Texhoma	1	94B	-102.0269494	36.762569	SIMON, LUCIA AND GERARDO\n580-461-5429\n\nFROM FOURCORNERS GO WEST ON HWY 64, HOUSE \nON NORTH SIDE OF ROAD CLOSE TO MILE 0.
830	RR 1 Box 95 - BARNES	Guymon	1	95	-101.4681136	36.9577057	No description entered.
831	RR 1 Box 96 - TREJO	Hardesty	1	96	-101.2454457	36.5329104	BROWN, JIMMIE, ROXANNE, MICHAEL\nTREJO, ALONSO\n\n402-726-2514\n580-888-4589\n\nFROM HARDESTY GO SOUTH ON CR 47 TO RD GG\nGO 3 MILES WEST TO BROWN HOUSE\nON WEST SIDE OF ROAD. \n\nIF ROAD IS WET DO NOT GO ON IT. \n\nFRIENDLY BLACK DOG.
832	RR 1 Box 96 , 226 MILE 30 - GARCIA , ROYBAL	Guymon	1	96	-101.4875805	36.9752572	No description entered.
833	RR 1 Box 97 - BURDGE	Texhoma	1	97	-101.9731981	36.5272806	BURDGE, STEVE\n580-817-1239\n\nWEST ON STATELINE ROAD FOR 9 MILES, WHEN ROAD\nCURVE NORTH GO FOR 2 MILES. ON DIRT ROAD GO WEST\nFOR 1/4 OR 1/2 OF A MILE TO HOUSE. \nCAUTION: DIRT ROAD IS NOT GOOD WITH WET. \n\nMOTHER LIVES ON FIRST HOUSE ON RIGHT AFTER CURVE\nYOU CAN TAKE IT THERE IF ROAD IS WET.
834	RR 1 Box 97A , 3251 MILE 4, UNRUH	Texhoma	1	97A	-101.9566867	36.5373148	No description entered.
835	RR 1 Box 99 - VILLANUEVA	Goodwell	1	99	-101.5976686	36.6314346	No description entered.
836	RR 1 Box 9A - BATENHORST	Goodwell	1	9A	-101.6337717	36.5738298	No description entered.
837	RR 1 Box 9A , 2776 MILE 53 - ELLIOT	Hardesty	1	9A	-101.0837245	36.605417	No description entered.
838	RR 1 Box 9A , 320 W ELM - BATENHORST	Goodwell	1	9A	-101.6377668	36.5976814	No description entered.
839	RR 1 Box 9A , 3483 MILE 16- Mitchell	Texhoma	1	9A	-101.7421114	36.5034703	MITCHELL, KRISTI\n\nFROM TEXHOMA GO EAST ON STATELINE RD (95 SOUTH)\nAT THE CURVE TO MILE 24 KEEP STRAIGHT AND GO TO \nMILE 16 (NEXT ROAD TO NORTH AFTER THE CURVE).\nTURN NORTH TO HOME ON RIGHT SIDE. \n\n911 ADDRESS IS: 3483 MILE 16.
840	RR 1 Box 9C - Rose	Goodwell	1	9C	-101.6389331	36.5815801	No description entered.
841	RR 1 Box 9C , 2898 Road B - Pierce	Guymon	1	9C	-101.505523	36.9810659	PIERCE, JULIE\n580-520-1510\n\n2898 COUNTY ROAD B\nNORTH OF GUYMON TO COUNTY ROAD B\nFIRST HOME PASSED MILE MARKER 29, APPROX 1 1/4\nMILES WEST OF HWY 136
842	RR 1 Box 9CC - BECK	Goodwell	1	9CC	-101.6444701	36.5739225	No description entered.
843	RR 1 21 Box 53 , 2869 MILE 49- Witten	Hardesty	N/A	N/A	-101.1511556	36.6176725	WITTEN, GLENDA\n580-888-4524\n\n2 MILES EAST OF HARDESTY TO MILE 49\nTURN NORTH TO 1ST TRAILER ON EAST SIDE\nTHREE DOGS!!\n \nDropped Pin\nnear Texas County, OK\nhttps://goo.gl/maps/VjHowWAog7E2
844	RR 1 21 Box 8A- Hidalgo	Hardesty	N/A	N/A	-101.0787482	36.6388584	No description entered.
845	RR 2 Box  68ABF , 1921 MILE 31 - ORTIZ	Guymon	2	68ABF	-101.4742157	36.7416847	No description entered.
846	RR 2 Box  68ABG, 1787 MILE 31 - KING	Guymon	2	68ABG	-101.4732133	36.7485423	No description entered.
847	RR 2 Box 1 - FERNANDEZ	Hooker	2	1	-101.2068278	36.8643909	FERNANDEZ, BACILIO\n\nMASSACHUSETTS ST NORTH FROM PANHANDLE ST IN HOOKER. WHEN YOU GET TO MADISON TURN EAST ON DIRT ROAD TO WHITE HOUSE SITTING BY ITSELF. \n\nCAN INDIRECT DELIVER TO 606 E DEWEY ST. \nHIS BROTHERS HOUSE.
848	RR 2 Box 10	Keyes	2	10	-101.9024646	36.99327	No description entered.
849	RR 2 Box 10 , 974 MILE 50 - STUMP	Hooker	2	10	-101.1264843	36.866983	madison
850	RR 2 Box 100 - LEWIS	Guymon	2	100	-101.5906319	36.8740446	No description entered.
851	RR 2 Box 101 - HANKLA	Guymon	2	101	-101.5633665	36.8779095	No description entered.
852	RR 2 Box 103 - IKELER	Keyes	2	103	-101.9744232	36.9233045	No description entered.
853	RR 2 Box 106A , 2502 ROAD G- JONES, OIL TOOLS	Guymon	2	106A	-101.5765335	36.9069635	No description entered.
854	RR 2 Box 11 - RAMIREZ, JOURNAGAN	Hooker	2	11	-101.1350937	36.8740845	No description entered.
855	RR 2 Box 112 - GOODLOE	Guymon	2	112	-101.6222095	36.9142617	No description entered.
856	RR 2 Box 118 , 2266 CR E - ORDONEZ	Guymon	2	118	-101.6195174	36.9357536	ORDOÑEZ, MARIA \n620-309-1598\n\n2ND TRAILER ON SAME STREET OF CRI\n(BEFORE ENTRANCE TO CRI OFFICE)\nNORTH OF GUYMON
857	RR 2 Box 11A - HOWARD	Hooker	2	11A	-101.1320287	36.8733259	No description entered.
858	RR 2 Box 12 - MILLER	Hooker	2	12	-101.1515672	36.8791427	No description entered.
859	RR 2 Box 123	Guymon	2	123	-101.6229324	36.9649467	No description entered.
860	RR 2 Box 123 - LUNSFORD	Guymon	2	123	-101.6229324	36.9649467	No description entered.
861	RR 2 Box 125 - GOODLOE	Guymon	2	125	-101.6323711	36.9648352	GOODLOE, KEITH\n\nFROM CRI FEEDERS INTERSECTION OF MILE 22 AND CR E\nKEEP ON GOING NORTH TO CR C, TURN EAST TO \nTHEIR HOME. RED BRICK WITH TREES.
862	RR 2 Box 126 - BROWN	Guymon	2	126	-101.6405202	36.9329255	No description entered.
863	RR 2 Box 13 - KOPEL	Hooker	2	13	-101.1502266	36.8761444	No description entered.
864	RR 2 Box 130 - MAVERICK, BREITBURN	Guymon	2	130	-101.6490439	36.9037578	No description entered.
865	RR 2 Box 131 , 2139 ROAD H - KING	Guymon	2	131	-101.6423925	36.890949	No description entered.
866	RR 2 Box 133 - Ullom	Guymon	2	133	-101.7042544	36.9218337	David Ullom\n913-426-4696
867	RR 2 Box 133 , E8 N510 - SCHNAUFER	Keyes	2	133	-102.1012421	36.893013	No description entered.
868	RR 2 Box 136 - Hicks	Guymon	2	136	-101.700343	36.9121166	No description entered.
869	RR 2 Box 14 , 939 MILE 46- DEERING	Hooker	2	14	-101.1975926	36.8719073	No description entered.
870	RR 2 Box 140	Guymon	2	140	-101.6686533	36.8780904	WAUGH, ADELE\n580-545-3685\n\nON MILE 22 GO WEST ON COUNTY ROAD I \nGO WEST FOR 2 MILES TO COUNTY ROAD 20\nHOUSE ON CORNER.
871	RR 2 Box 143 - FAGALA	Guymon	2	143	-101.6324164	36.8628637	No description entered.
872	RR 2 Box 145 - badger MIDSTREAM energy station	Keyes	2	145	-102.1772815	36.845725	No description entered.
873	RR 2 Box 146 - ARTHAUD	Keyes	2	146	-102.2256977	36.836438	No description entered.
874	RR 2 Box 146 - Gloden	Guymon	2	146	-101.6059638	36.8645943	GLODEN, BOBBY\n580-545-3436\n\nMILE 25 AND ROAD J\n1.5 MILES WEST ON ROAD J DIRT ROAD\nNORTH SIDE, BIG BOND IN FRONT. \nBROWN ROOF HOME
875	RR 2 Box 146B - Bartels	Guymon	2	146B	-101.6058526	36.857101	BARTELS, KYLE \n580-338-3699\n\nNORTH OF GUYMON ON HWY 136 TO ROAD J. DON’T \nTURN NORTH TO CURVE, INSTEAD CONTINUE WEST \nON DIRT ROAD COUNTY ROAD J FOR ALMOST 1/2 MILE. \nTURN SOUTH ON DIRT DRIVE TO HOUSE ON SOUTH \nSIDE OF ROAD, DOWN THE FIELD.  \n\nOR TAKE TO GE ELECTRIC ON HWY 54 BEFORE GUYMON\n\n36°51'25.5"N 101°36'20.9"W\nhttps://goo.gl/maps/BkqxZRKWKPS2
876	RR 2 Box 146B - WILLIAMS	Keyes	2	146B	-102.2837396	36.8134714	nancy
877	RR 2 Box 146C ,LUNSFORD	Guymon	2	146C	-101.6406476	36.8582316	LUNSFORD\n\nFROM HWY 64 AND MILE 22 GO NORTH AND HOUSE WILL\nBE ON WEST SIDE. BIG BARN WITH WHITE BLUE HOME. \nTHE BARN HAS SIGN THAT SAYS "LUNSFORD FARMS"
878	RR 2 Box 148	Guymon	2	148	-101.6384474	36.8090041	No description entered.
879	RR 2 Box 15 - MILLS	Hooker	2	15	-101.1880975	36.8780086	MILLS, PATSY\n\nTAKE PACKAGES TO MILLS GROCERY STORE \nON BROADWAY ST IN HOOKER\n\nTO GET TO HER HOUSE, FROM HOOKER GO NE ON HWY 54 TO MILE 46 THEN TURN NORTH CROSSING THE RAILROAD TRACKS. THEN GO FOR ABOUT 1 MILE THEN TURN EAST. GO TO HOME ALMOST AT DEAD END. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/T2XE8PfrLvv
880	RR 2 Box 158, 1743 ROAD 16 - KEITH	Guymon	2	158	-101.7427591	36.7554167	No description entered.
881	RR 2 Box 159 , 1998 MILE 17 - GRAY	Guymon	2	159	-101.7363301	36.7148246	No description entered.
882	RR 2 Box 16 - Herald	Hooker	2	16	-101.179466	36.8992079	No description entered.
883	RR 2 Box 162A - MEASE	Guymon	2	162A	-101.6908127	36.7689664	No description entered.
884	RR 2 Box 162F - WELSH 	Guymon	2	162F	-101.672371	36.7547585	del rey welsh \n620 806 2851
885	RR 2 Box 163A - SPRY	Guymon	2	163A	-101.6443884	36.7491846	No description entered.
886	RR 2 Box 163C - Glover	Guymon	2	163C	-101.6389944	36.7497267	No description entered.
887	RR 2 Box 164 - RYANT	Guymon	2	164	-101.6376302	36.7360298	No description entered.
888	RR 2 Box 165A - COBB	Guymon	2	165A	-101.6591719	36.7039301	No description entered.
889	RR 2 Box 166  , 2244 ROAD Q - DARNELL	Guymon	2	166	-101.6286312	36.7629104	No description entered.
890	RR 2 Box 166D - Baker - Cattlemen Animal Health	Guymon	2	166D	-101.6192475	36.7521057	No description entered.
891	RR 2 Box 167A - Baker	Guymon	2	167A	-101.5852122	36.7616205	No description entered.
892	RR 2 Box 169 - SPARKMAN	Keyes	2	169	-102.0648196	36.915124	APRIL, TERRY\n580-545-3350\n580-520-1701
893	RR 2 Box 169C - DICKERSON	Guymon	2	169C	-101.576436	36.7597487	No description entered.
894	RR 2 Box 169D - Hawkins	Guymon	2	169D	-101.5756301	36.7596805	No description entered.
895	RR 2 Box 170 - SMITH	Guymon	2	170	-101.5730588	36.7616118	No description entered.
896	RR 2 Box 172 - SHROUT	Guymon	2	172	-101.5655653	36.7618078	No description entered.
897	RR 2 Box 174C - RAMOS	Guymon	2	174C	-101.5624517	36.7620445	No description entered.
898	RR 2 Box 174D	Guymon	2	174D	-101.5626764	36.7613363	No description entered.
899	RR 2 Box 174J - Romero	Guymon	2	174J	-101.5616638	36.7591754	ROMERO, SUSSANA\n580-338-3771\n2615 Road Q lot 24\n\nON HWY 64 WEST RV CAMP. PASS WEST THE RV CAMP\nTHEN TURN SOUTH ON DRIVEWAY WITH MAILBoxES \nWHERE THE BEIGE METAL FENCE CORNER IS. \nIT IS THE 6TH HOUSE DOWN.
900	RR 2 Box 175 , 2625 ROAD Q - RICHARDSON	Guymon	2	175	-101.5593811	36.7619854	No description entered.
901	RR 2 Box 175C	Guymon	2	175C	-101.5636201	36.7603062	No description entered.
902	RR 2 Box 175I, 3090 RD T - STONECIPHER	Guymon	2	175I	-101.474844	36.7188975	No description entered.
903	RR 2 Box 177A	Guymon	2	177A	-101.5573333	36.7522793	No description entered.
904	RR 2 Box 177C - Gustin	Guymon	2	177C	-101.5545678	36.74946	GUSTIN, WILBUR AND ROBERTA\n\nNORTH ON HWY 64 T CR R\nTURN LEFT TO OLD EAGLE NURSERY\n4 MILES  NORTH SIDE TO 2 STORY LOOKING HOUSE\n\nWORKS AT THE 1936 HWY 64 (REALTY HOUSE)
905	RR 2 Box 178	Guymon	2	178	-101.5516359	36.7493837	No description entered.
906	RR 2 Box 178 - FRY	Keyes	2	178	-102.1188584	36.9630528	elliott
907	RR 2 Box 179	Guymon	2	179	-101.5510206	36.7485601	No description entered.
908	RR 2 Box 182 - BARRIOS	Guymon	2	182	-101.5107774	36.7444453	No description entered.
909	RR 2 Box 183A	Guymon	2	183A	-101.4930091	36.7402254	No description entered.
910	RR 2 Box 184A - Starr	Guymon	2	184A	-101.4929698	36.7396451	STARR, GREGG\n580-754-0319\n\n2.5 MILES NORTH OF GUYMON ON HWY 64, CROSS THE \nBEAVER BRIDGE. THERE ARE 4 HOUSES ON LEFT, HIS \nHOME IS THE 3RD ON LEFT.
911	RR 2 Box 185A - Krotz	Guymon	2	185A	-101.4926007	36.7390493	Krotz
912	RR 2 Box 188 - PANTOJA	Guymon	2	188	-101.4873431	36.7121602	No description entered.
913	RR 2 Box 190 - BURNETT	Keyes	2	190	-101.9026873	36.9791458	No description entered.
914	RR 2 Box 194	Keyes	2	194	-101.9016105	36.9892653	No description entered.
915	RR 2 Box 1E , 937 MILE 46- OSBORN	Hooker	2	1E	-101.197618	36.8722633	OSBORN, SANDRA AND KYLE\n580-652-2895\n\nINDIRECT DELIVER TO 202 N JACKSON OR CITY HALL IN HOOKER. \n\nMILE 46 EAST OF HOOKER FROM HWY 54. 1ST DIRT ROAD CROSS RAILROAD TRACKS AND GO NORTH. THERE ARE THREE MOBILE HOMES. HIS IS THE MIDDLE ONE. \n\n939 MILE 46 \n\nDBLD WIDE TAN COLOR. SHOP BTWN TAN. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/SD6Umz6PxR52
916	RR 2 Box 2 , 1007 MILE 47- BAKER	Hooker	2	2	-101.1799619	36.8620629	BAKER, CARROL\n620-391-1928\n\nGO TO HOOKER AND MAKE RIGHT TO HWY 64. PASS TCEC BUILDING. PASS RED BARN. IS THE HOUSE WITH WHITE BARN ON SOUTH SIDE ON SE CORNER OF HWY 64 AND MILE 47.
917	RR 2 Box 2 , 311 SW 7TH - GOMEZ	Hardesty	2	2	-101.1964911	36.6133691	Chelsey. 620-655-9876\nGOMEZ, CHELSEY\n620-655-9876\n\nFROM HARDESTY TAKE CR 47 SOUTH\nTO FIRST DRIVE TO TRAILER ON WEST SIDE\nBEIGE TRAILER SITTING BY ITSELF
918	RR 2 Box 20 , 4733 ROAD E - HILL	Hooker	2	20	-101.1740423	36.9352246	No description entered.
919	RR 2 Box 200 - DUKE	Guymon	2	200	-101.4880651	36.744017	No description entered.
920	RR 2 Box 201 , 3157 ROAD S - Scott	Guymon	2	201	-101.4653084	36.7324699	3157 Road S
921	RR 2 Box 21 - CASTANEDA	Hooker	2	21	-101.1633987	36.9010162	No description entered.
922	RR 2 Box 24 - BURGESS	Hooker	2	24	-101.1442422	36.9057985	BURGESS, CASSEY AND NICOLE\n\nGO NE ON HWY 54 TO MILE 49\nGO LEFT OVER THE TRACKS TO METAL ROOF LIGHT YELLOW HOUSE. \n\nDropped pin\nNear Unnamed Road, Hooker, OK 73945\nhttps://goo.gl/maps/uqqDuk4xy7M2
923	RR 2 Box 25 - MCGAHA	Hooker	2	25	-101.1435205	36.9010111	MCGAHA, JUSTIN AND KIM\n580-754-3381\n\nSHE WORKS AT CLINIC IN CORNER OF BROADWAY AND GLAYDAS IN HOOKER. \n\n4 1/2 MILES NE ON HWY 54 TO MILE 49. TURN RIGHT/SE TO HOUSE ON LEFT SIDE. DOGS WILL BITE.
924	RR 2 Box 26 - HOWELL	Hooker	2	26	-101.0904113	36.8917575	No description entered.
925	RR 2 Box 26A - KINCANNON	Boise City	2	26A	-102.4087107	36.8208536	No description entered.
926	RR 2 Box 26A - RIDGEWAY	Hooker	2	26A	-101.0903792	36.8911943	aggressive dog\n\nMARTIN, JULIE\n580-854-8378\n\nON HWY 64 GO 6 MILES TO MM 52 THEN GO NORTH FOR 2 MILES. \n\nWHITE DBL WIDE WITH TREES ON LEFT SIDE.\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/AhM6wp9AT5u
927	RR 2 Box 27 - Harrison	Hooker	2	27	-101.0821515	36.9070134	No description entered.
928	RR 2 Box 28 - REDMOND	Hooker	2	28	-101.1080017	36.8744545	REDMOND, SKY\n\nFROM HOOKER GO EAST ON 64 TO MM 51\nTHEN GO NORTH FOR 1 MILE TO DOUBLE WIDE\nHOME ON EAST SIDE. \n\nDropped pin\nNear Mile 51, Hooker, OK 73945\nhttps://goo.gl/maps/snouKGQaRJz
929	RR 2 Box 29 , 5218 CR I	Hooker	2	29	-101.0881094	36.878451	No description entered.
930	RR 2 Box 3 - KACHEL	Hooker	2	3	-101.1795646	36.8594654	KACHEL, STAN\n580-652-3316\n\nGO ON HWY 64 TO MILE 47\nTURN SOUTH TO 2ND HOUSE, ROCK HOUSE
931	RR 2 Box 30	Hooker	2	30	-101.0900306	36.8741889	No description entered.
932	RR 2 Box 31 - HERBEL	Hooker	2	31	-101.086305	36.8619208	No description entered.
933	RR 2 Box 32C - BRUNNER	Hooker	2	32C	-101.0829697	36.8340988	HOGG, JAMES\n\nWIFE WORKS AT HS PRINCIPAL'S OFFICE. \nGO UP STEPS TO OFFICE. \nOR\nFROM HOOKER TAKE HWY 64 TO MILE 53 SOUTH AND GO FOR ABOUT 3 MILES TO FIRST HOUSE ON RIGHT. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/wSwb8NuWVKn
934	RR 2 Box 33 - LETSON	Hooker	2	33	-101.0986385	36.8228855	No description entered.
935	RR 2 Box 33 , 14 RIVERVIEW DR- WINTERS	Guymon	2	33	-101.4968008	36.6969484	No description entered.
936	RR 2 Box 34 - DIETRICK, HUMPHRIES	Hooker	2	34	-101.0791168	36.7964424	No description entered.
937	RR 2 Box 34 - Wiebe	Guymon	2	34	-101.4967514	36.6977692	No description entered.
938	RR 2 Box 35 , 1460 MILE 53 - SPANGLER	Hooker	2	35	-101.0817816	36.7967814	No description entered.
939	RR 2 Box 36 , 5310 ROAD N - ADAMS	Hooker	2	36	-101.0767517	36.8058548	No description entered.
940	RR 2 Box 36A - CREWS	Boise City	2	36A	-102.300846	36.787947	No description entered.
941	RR 2 Box 38, 23 QUAIL RUN - WHITFORD	Guymon	2	38	-101.4953834	36.6971518	No description entered.
942	RR 2 Box 4 - FOWLER	Hooker	2	4	-101.1799087	36.8677238	No description entered.
943	RR 2 Box 41B - WEHMEIR	Hooker	2	41B	-101.0777313	36.7765778	WEHMIER, TERESA\n620-417-1603\n\nNORTH OF ADAMS ON CR 53 FOR 1 MILE. EAST ON CR P TO HOUSE ON NORTH SIDE OF ROAD. \nTIRE ON FENCE. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/1EiHvbezXxp
944	RR 2 Box 42 - COOK	Hooker	2	42	-101.0812841	36.7620144	No description entered.
945	RR 2 Box 4A - RIDGE	Hooker	2	4A	-101.1799944	36.8636596	No description entered.
946	RR 2 Box 52 - SHORES	Keyes	2	52	-101.7711383	36.90726	No description entered.
947	RR 2 Box 53 - WILLIAMS	Keyes	2	53	-101.7609807	36.9329003	No description entered.
948	RR 2 Box 53 , 1721 MILE 52 - PRITCHARD	Hooker	2	53	-101.0972896	36.757519	No description entered.
949	RR 2 Box 56 , 1571 MILE 51 - GILMORE , CHUESBERG	Hooker	2	56	-101.1152115	36.780632	CHUESBERG, LEON\n\nGO SOUTH OF HOOKER ON HWY 94 TO ADAMS RD CR Q AND GO TO CR 51. TURN NORTH FOR 1 1/4 MILE TO BRICK HOUSE ON EAST SIDE OF ROAD. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/MCfppfkdAjT2
950	RR 2 Box 57 , 1621 MILE 51 - THOMAS	Hooker	2	57	-101.1153442	36.7716119	THOMAS, ISAAC AND ROXANNE\n785-336-6737\n\n911 ADDRESS IS: 1621 MILE 51\n\nGO SOUTH OF HOOKER ON HWY 94 TO CR Q, TURN EAST AND GO TO CR 51. TURN NORTH ABOUT 1 MILE TO ROCK HOUSE ON EAST SIDE.  \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/x57KFfssYRQ2
951	RR 2 Box 58 - GLODEN	Keyes	2	58	-101.7252025	36.891665	No description entered.
952	RR 2 Box 58 , 5120 ROAD Q , PO Box 533 - FRIESEN	Hooker	2	58	-101.1107709	36.7620893	FRIESEN, LELA , Marlin\n\nFROM HOOKER GO SOUTH ON HWY 94 TO CR Q AND GO EAST FOR 5 1/4 MILES. \nWHITE TWO STORY HOUSE 1 3/4 MILES WEST OF ADAMS ON NORTH SIDE OF ROAD. \n\nDropped pin\nNear Unnamed Road, Adams, OK 73901\nhttps://goo.gl/maps/D4Mkua7arkQ2
953	RR 2 Box 59 , 1729 MILE 51	Hooker	2	59	-101.1146813	36.7577466	No description entered.
954	RR 2 Box 6 - LIVESAY	Hooker	2	6	-101.1653343	36.8481223	LIVESAY, JACK\n734-495-3079\n\nFROM HOOKER TAKE HWY 94 SOUTH TO CR K. TURN EAST FOR 2 1/4 MILE TO HOUSE ON RIGHT/SOUTH SIDE. WHITE MAILBox WITH NAME. \nNEW DBLD WIDE WITH FOUNDATION
955	RR 2 Box 6 - Steffani Perry - Elkhart HS	Keyes	2	6	-101.9038113	37.0087763	she works at Elkhart high school. lives somewhere on state line road
956	RR 2 Box 60 - SANDERS	Hooker	2	60	-101.1182586	36.7465294	SHORT, JIM\nSANDERS\n\nFROM HOOKER GO SOUTH ON HWY 94 TO RD Q AND GO EAST TO RD 50 THEN GO SOUTH 1 MILE TO CR R AND GO LEFT TO HOUSE ON SOUTH SIDE OF ROAD. \n\nBTWN MM 50 AND MM51 ON CR R\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/EswWpg52MQN2
957	RR 2 Box 61 - HIDALGO	Hooker	2	61	-101.1145077	36.7482199	No description entered.
958	RR 2 Box 61, 2041 HWY 64 - STUMP	Guymon	2	61	-101.4860092	36.7126505	No description entered.
959	RR 2 Box 63 - MARTENS	Hooker	2	63	-101.0801987	36.7180396	No description entered.
960	RR 2 Box 63A, 3030 ROAD T - BECKLEY	Guymon	2	63A	-101.4861476	36.7195613	No description entered.
961	RR 2 Box 65 - 1961, 1949 MILE 30 - HILL, CLARK	Guymon	2	65	-101.4896558	36.7253922	Pamela Hill\n1949 Mile 30\nsign says 1961 Mile 30
962	RR 2 Box 65A	Guymon	2	65A	-101.4893676	36.7247549	little white house with green trim next to the bigger Brick House
963	RR 2 Box 65A, 5373 ROAD T - Methvin	Hooker	2	65A	-101.0655456	36.7170609	No description entered.
964	RR 2 Box 66 - GROUNDS	Hooker	2	66	-101.1009107	36.6722102	No description entered.
965	RR 2 Box 66, 1948 Mile 30  - Ray	Guymon	2	66	-101.491558	36.7256453	No description entered.
966	RR 2 Box 66A , 5226 ROAD W - GROUNDS	Hooker	2	66A	-101.0940273	36.6734137	No description entered.
967	RR 2 Box 67 - DESLATTE	Guymon	2	67	-101.4913386	36.728239	No description entered.
968	RR 2 Box 67E - WINTERS	Guymon	2	67E	-101.5039749	36.7298019	No description entered.
969	RR 2 Box 68A1 - Hicks	Guymon	2	68A1	-101.4755385	36.7294972	No description entered.
970	RR 2 Box 68AB ,1911 MILE 30 - SHANNON	Guymon	2	68AB	-101.4915323	36.7312302	No description entered.
971	RR 2 Box 68ABB - GORDON	Guymon	2	68ABB	-101.4757161	36.7341745	No description entered.
972	RR 2 Box 68ABC - HUNTER	Guymon	2	68ABC	-101.4695429	36.7479957	No description entered.
973	RR 2 Box 68ABD - 3082 Road S - Brewer	Guymon	2	68ABD	-101.4779325	36.7344852	No description entered.
974	RR 2 Box 68ABE -HAWKINS	Guymon	2	68ABE	-101.4744341	36.7503319	No description entered.
975	RR 2 Box 68AC	Guymon	2	68AC	-101.4833932	36.7315387	No description entered.
976	RR 2 Box 69 - VILLALOBOS	Guymon	2	69	-101.491567	36.733488	No description entered.
977	RR 2 Box 7 - PICKARD	Hooker	2	7	-101.1566148	36.8482954	No description entered.
978	RR 2 Box 70 - MITCHELL	Guymon	2	70	-101.4917259	36.7359356	No description entered.
979	RR 2 Box 71A , 820 MILE 12 - TUCKER	Keyes	2	71A	-101.813265	36.8893566	No description entered.
980	RR 2 Box 71AA ,1581 MILE 30 - BEER	Guymon	2	71AA	-101.4915422	36.7795301	No description entered.
981	RR 2 Box 71AD - WILLIAMS	Guymon	2	71AD	-101.4873374	36.7768757	No description entered.
982	RR 2 Box 71AE , 3032 ROAD P  - HAUGHT	Guymon	2	71AE	-101.4881919	36.7768826	No description entered.
983	RR 2 Box 71AF , 3082 ROAD P - ZIMMERMAN	Guymon	2	71AF	-101.4784211	36.7772982	No description entered.
984	RR 2 Box 71AG , 3021 ROAD P - REYNOLDS	Guymon	2	71AG	-101.4897118	36.7761214	No description entered.
985	RR 2 Box 71AH - HAMILTON	Guymon	2	71AH	-101.4817136	36.7774313	No description entered.
986	RR 2 Box 71AK - PORTILLO	Guymon	2	71AK	-101.4846935	36.7734703	No description entered.
987	RR 2 Box 71B - VARGAS	Guymon	2	71B	-101.490496	36.7717058	No description entered.
988	RR 2 Box 71C - JENKINS	Guymon	2	71C	-101.4857712	36.7709915	No description entered.
989	RR 2 Box 71Q - ALEXANDER	Guymon	2	71Q	-101.4896445	36.7772636	No description entered.
990	RR 2 Box 72 ,2070 MILE 50 - COGBURN, MARTIN	Hooker	2	72	-101.1358707	36.7080882	No description entered.
991	RR 2 Box 73 - GRUNWALD	Hooker	2	73	-101.153342	36.7274524	DAUGHTRY, KEANA\n806-663-3706\nFROM HOOKER GO SOUTH ON HWY 94 TO CR S. THEN TURN EAST FOR 3 MILES. THEN TURN SOUTH ON  MM 49  TO HOME ON WEST SIDE. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/YwK2cp1FmRK2
992	RR 2 Box 73 - LINDSAY	Guymon	2	73	-101.4906273	36.7900198	No description entered.
993	RR 2 Box 74 - JAMES	Hooker	2	74	-101.1492691	36.7322464	No description entered.
994	RR 2 Box 74 - Tomlinson	Guymon	2	74	-101.4660601	36.7915518	Tomlinson
995	RR 2 Box 74A	Guymon	2	74A	-101.4926408	36.8031487	No description entered.
996	RR 2 Box 75 - RODGERS	Guymon	2	75	-101.5253264	36.8061251	No description entered.
997	RR 2 Box 75 , 4860 ROAD R- RAMSEY	Hooker	2	75	-101.1569165	36.7484173	No description entered.
998	RR 2 Box 75, 730 MILE 10 - KERBO	Keyes	2	75	-101.8486187	36.9032578	No description entered.
999	RR 2 Box 76 , 4861 ROAD R- SAWATZKY	Hooker	2	76	-101.1571448	36.7466482	SAWATZKY, HOLLY\n580-651-9149\n\nFROM HOOKER GO SOUTH ON HWY 94, TURN EAST ON ADAMS HWY (CR Q) AND GO FOR 2 MILES TO CR 48. THEN GO SOUTH 1 MILE. THEN EAST FOR 1/2 MILE TO HOUSE ON SOUTH SIDE. \n\nCAN INDIRECT DELIVER TO HOUSE ACROSS ST. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/TmDs9FMpJDp
1000	RR 2 Box 77 - VOTH	Hooker	2	77	-101.144165	36.7462883	No description entered.
1001	RR 2 Box 78 - Aranda	Keyes	2	78	-101.8382807	36.9206401	No description entered.
1002	RR 2 Box 78 - GILMORE	Hooker	2	78	-101.1335754	36.739296	No description entered.
1003	RR 2 Box 79 - Fetterly	Keyes	2	79	-101.9016831	36.9147396	No description entered.
1004	RR 2 Box 79 - JACOBS	Hooker	2	79	-101.133197	36.7544657	No description entered.
1005	RR 2 Box 80	Keyes	2	80	-101.8556291	36.920358	No description entered.
1006	RR 2 Box 80 - THRALL	Boise City	2	80	-102.4630742	36.6942258	No description entered.
1007	RR 2 Box 81, 2830 ROAD L - SASSIN, CAPPELUCCI, MONTANO	Guymon	2	81	-101.5222802	36.835248	No description entered.
1008	RR 2 Box 81, 4410 ROAD J - LAMBLEY	Hooker	2	81	-101.2336394	36.8641317	No description entered.
1009	RR 2 Box 82 - GRAJEDA	Guymon	2	82	-101.5286054	36.8439567	No description entered.
1010	RR 2 Box 82 - WIEBE	Hooker	2	82	-101.1343412	36.7730555	No description entered.
1011	RR 2 Box 82F - KISTLER	Guymon	2	82F	-101.5406506	36.8496297	No description entered.
1012	RR 2 Box 83 - BAGLEY	Guymon	2	83	-101.5647861	36.8625018	No description entered.
1013	RR 2 Box 84A - Ansley	Hooker	2	84A	-101.1350937	36.7849617	RR 2 Box 84A - ANSLEY, HEATHER 620-391-1545  FROM HOOKER GO SOUTH ON 94 TO CR Q (ADAMS HWY) TURN EAST AND GO TO MM 50 THEN TURN NORTH TO SECOND HOUSE WITH CAMPER ON WEST SIDE OF ROAD.
1014	RR 2 Box 85 - Honey, Ayer	Guymon	2	85	-101.5588082	36.8557296	No description entered.
1015	RR 2 Box 85 , 1453 MILE 50 - CULWELL	Hooker	2	85	-101.1336114	36.7977552	No description entered.
1016	RR 2 Box 86 , 86A- Rhoads, Brenner	Hooker	2	86	-101.1313477	36.8051109	RR 2 Box 86 - RHOADS, BRENNER\n\nGO SOUTH OF HOOKER ON HWY 94 TO\nCR N THEN TURN EAST AND GO FOR\n4 MILES TO YELLOW BRICK HOME IN CORNER\nOF MILE 50 AND CR N.
1017	RR 2 Box 87	Hooker	2	87	-101.1527225	36.7979001	No description entered.
1018	RR 2 Box 87 - BOYD	Guymon	2	87	-101.546591	36.8426572	No description entered.
1019	RR 2 Box 88 - DUER	Hooker	2	88	-101.1677705	36.8098228	No description entered.
1020	RR 2 Box 88 - STELZER	Guymon	2	88	-101.545978	36.8345488	No description entered.
1021	RR 2 Box 88B , 1127 MILE 25 - CRUZ	Guymon	2	88B	-101.5819034	36.8451293	CRUZ, VIRGINIA \n\nFROM ADM GRAIN ELAVATOR IN HOUGH, GO SOUTH 1/2\nMILE TO INTERSECTION OF CR 25 AND J ROAD. KEEP\nGOING SOUTH 1 MILE TO ROAD K. TURN RIGHT AND GO\nWEST FOR 1/4 OF MILE TO ROAD 25 AND GO SOUTH FOR\n1/4 MILE. IT IS A MOBILE HOME BEHIND HOUSE WITH \nTREES. IT IS ON EAST SIDE OF ROAD.
1022	RR 2 Box 89, 1126 mile 25- GRADY	Guymon	2	89	-101.5834286	36.8451243	Clay, Randy\n580-651-0148\n\nMILE 25 AND ROAD K (HOUGH)\nWHITE HOUSE Black ROOF ON WEST SIDE
1023	RR 2 Box 90 - ADAMS	Hooker	2	90	-101.2086493	36.8555213	No description entered.
1024	RR 2 Box 90A - GRIFFIN	Guymon	2	90A	-101.5915026	36.8489561	No description entered.
1025	RR 2 Box 90B - HANAN	Guymon	2	90B	-101.5919808	36.8497083	No description entered.
1026	RR 2 Box 92	Guymon	2	92	-101.5777802	36.8619338	No description entered.
1027	RR 2 Box 92 , 1060 S HWY 94 , TEXAS COUNTY DISTRICT 1 , TED KEELING	Hooker	2	92	-101.2083781	36.8542603	No description entered.
1028	RR 2 Box 92B - SKYLAND GRAIN	Guymon	2	92B	-101.5777505	36.870787	No description entered.
1029	RR 2 Box 93 - KIENER	Guymon	2	93	-101.5763593	36.8711064	No description entered.
1030	RR 2 Box 94A - MARR	Guymon	2	94A	-101.5762355	36.8725536	MARR, KIRBY\n580-338-3027\n\n136 NORTH TO ROAD J\nGO FIVE MILE WEST/LEFT TOWARDS HOUGH\n1/4 NORTH TO HOUGH\nGREEN HOUSE WITH LOTS OF TREES
1031	RR 2 Box 95 , 2509 HIRAM AVE - COLLINS	Guymon	2	95	-101.5758042	36.8715695	No description entered.
1032	RR 2 Box 96 - VALLIQUETTE	Guymon	2	96	-101.5757871	36.8721862	No description entered.
1033	RR 2 Box 97B - COFFMAN	Guymon	2	97B	-101.5752934	36.8720395	No description entered.
1034	RR 2 Box 98 - HICKS	Guymon	2	98	-101.5742833	36.8718917	No description entered.
1035	RR 2 Box 98C - EMPTY FIELD	Guymon	2	98C	-101.5736994	36.8712996	No description entered.
1036	RR 2 Box 98CC	Guymon	2	98CC	-101.5736579	36.8704897	No description entered.
1037	RR 2 Box 99 - GARCIA	Guymon	2	99	-101.5744424	36.8709208	No description entered.
1038	RR 3 Box  142 - BOYCE	Guymon	3	142	-101.5050598	36.6309694	No description entered.
1039	RR 3 Box 1 - Maloney	Hooker	3	1	-101.2153521	36.8679792	RR 3 Box 1 -MALONEY, CRAIG  FROM HOOKER GO NORTH ON JEFFERSON ST. RIGHT PASS IVA BURGE ST THERE IS A BRAND NEW HOUSE ON EAST SIDE WITH FENCE.   Dropped pin https://maps.google.com?q=36.867802,-101.215240&hl=en-US&gl=us
1040	RR 3 Box 1 , 221 E TEXAS - FREEMAN	Texhoma	3	1	-101.7792395	36.501535	FREEMAN, BRIAN AND NANCY\n\nON 95 SOUTH, IS 221 E TEXAS. \nBEHIND “LA CASITA RESTAURANT”\nWHITE HOUSE ON NORTH SIDE.
1041	RR 3 Box 13 - WALTON	Hooker	3	13	-101.2537003	36.9892578	WALTON, STEVE\n580-652-2397\n\nFROM HOOKER TAKE JEFFERSON ST NORTH FOR 8 MILES TO CR B. THEN GO WEST FOR 2 MILES. THEN 1/2 MILES NORTH ON MM 43. \nWHITE SQUARE HOUSE WITH BIG YELLOW SHOP BLDG.\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/o9sXTaLbr882
1042	RR 3 Box 131 - MONTANEZ	Guymon	3	131	-101.4572064	36.6759985	No description entered.
1043	RR 3 Box 132 - JOHNSON	Guymon	3	132	-101.4594813	36.6778107	No description entered.
1044	RR 3 Box 133 - WILLOW CREEK BED BREAKFAST , KIDWELL	Guymon	3	133	-101.4575583	36.6779447	No description entered.
1045	RR 3 Box 135 , 3218 ROAD W - BOSQUEZ	Guymon	3	135	-101.4537773	36.6756773	RIVERA, TONYA\nBOSQUEZ\n\nEAST ON HWY 3, ACROSS FROM ELEVATORS\nDOUBLE WIDE MOBILE HOME ON NORTH SIDE\nLIONS STATUES ON ENTRANCE\nMETAL BARN IN BACK OLD BLDGS AREA.
1046	RR 3 Box 135A - Hyer	Guymon	3	135A	-101.4471671	36.6773503	RR 3 Box 135A HYER, CHELSEA 580-461-7512  FROM GUYMON GO EAST ON HWY 3 FOR 1 MILE.  WHITE HOUSE ON NORTH SIDE WITH BUNCH OF TREES RIGHT AFTER TRAILER.  BLACK MAILBox WITH ORANGE POLE.   Dropped pin https://maps.google.com?q=36.676799,-101.447113&hl=en-US&gl=us
1047	RR 3 Box 138	Guymon	3	138	-101.4199607	36.6449557	No description entered.
1048	RR 3 Box 139 - WIGGINS	Guymon	3	139	-101.4275681	36.6447436	WIGGINS\n\nFROM HWY 136 SOUTH OF GUYMON GO EAST ON\nROAD Y FOR 2 1/2 MILES. LOTS OF TREES.
1204	RR 4 Box 1A , 412 W Main - Linnebur, Meier	Texhoma	4	1A	-101.786279	36.5051394	pink brick house
1049	RR 3 Box 143 - HYER (1)	Guymon	3	143	-101.5215103	36.6236551	HYER, NEIL\n580-651-3219\n\nFROM HWY 54 TAKE CR 28 SOUTH. GO FOR 1 1/2 MILES\nTO THE HOME ON EAST SIDE. \n\nTHEY WANT PKG DELIVER TO SHOP JUST NE OF THE\nHOME ON RD E0260
1050	RR 3 Box 144J , PO Box 2060 - GARRISON	Guymon	3	144J	-101.5374746	36.61745	No description entered.
1051	RR 3 Box 144K - MURRAH	Guymon	3	144K	-101.5370402	36.6155015	No description entered.
1052	RR 3 Box 145 - JOHNSON , MUSSMAN	Guymon	3	145	-101.5370278	36.6101111	JOHNSON, DAVE\n580-338-3855\n\nFROM HWY 54 GO SOUTH ON MM 28. GO SOUTH APPROX\n2.3 MILES THEN 1/2 MILE WEST THEN ANOTHER 1/2 \nMILE SOUTH. (GO PAST WHITE HOUSE WITH BLUE TRIM\nDOWN COMMON DRIVE TO OLD WHITE TRAILER HOME)\nWATCH FOR DOGS
1053	RR 3 Box 147 , 2699 ROAD CC- MUSSMAN	Guymon	3	147	-101.5521394	36.5875266	No description entered.
1054	RR 3 Box 148A, 2930 MILE 27 - MUSSMAN	Guymon	3	148A	-101.5475072	36.5835122	No description entered.
1055	RR 3 Box 149 - SCOZZAFAVA	Guymon	3	149	-101.547327	36.5641432	No description entered.
1056	RR 3 Box 150 - ELAM	Guymon	3	150	-101.5427328	36.5580356	ELAM, MANDY\n580-461-8883\n\nFROM HWY 54 GO SOUTH ON MM 28. WHEN YOU MEET\nTHE DEAD END SIGN TURN RIGHT AND GO 3/4 OF A MILE
1057	RR 3 Box 155D - HINTERGARDT	Guymon	3	155D	-101.483249	36.6164158	No description entered.
1058	RR 3 Box 157A - WEBB	Guymon	3	157A	-101.4751714	36.6317094	No description entered.
1059	RR 3 Box 158, 2650 MILE 31 - LUCERO	Guymon	3	158	-101.4750861	36.6234856	No description entered.
1060	RR 3 Box 162	Guymon	3	162	-101.3922762	36.6313345	No description entered.
1061	RR 3 Box 162A - JAMERSON	Guymon	3	162A	-101.3919325	36.6312627	No description entered.
1062	RR 3 Box 162B	Guymon	3	162B	-101.3913879	36.6310497	No description entered.
1063	RR 3 Box 170 - Avalos	Guymon	3	170	-101.3135705	36.6496479	No description entered.
1064	RR 3 Box 171 - MADDOX	Guymon	3	171	-101.2962627	36.6346115	No description entered.
1065	RR 3 Box 172 , 2752 MILE 41 - STEPHENS	Guymon	3	172	-101.2947641	36.6078537	No description entered.
1066	RR 3 Box 172B - WERNER	Guymon	3	172B	-101.2647626	36.6453468	WERNER, MARIA PEARL\n580-374-1567\n\nFROM GUYMON GO EAST ON HWY 3 TO ROAD 43\nGO SOUTH FOR 2 MILES THEN WEST TO FIRST HOME\nON LEFT/SOUTH SIDE.
1067	RR 3 Box 173 - LEE	Guymon	3	173	-101.2656774	36.64515	No description entered.
1068	RR 3 Box 173B + MING	Guymon	3	173B	-101.2594341	36.6634463	No description entered.
1069	RR 3 Box 174 , 4150 ROAD X -  Taylor	Guymon	3	174	-101.2862562	36.6602832	4150 Road X
1070	RR 3 Box 176 - OJEDA	Guymon	3	176	-101.3031371	36.6750468	No description entered.
1071	RR 3 Box 176A - LIESE	Guymon	3	176A	-101.3314482	36.6715455	No description entered.
1072	RR 3 Box 177 - VORE	Guymon	3	177	-101.3313282	36.6736565	No description entered.
1073	RR 3 Box 178 - JACOBSON	Guymon	3	178	-101.3425253	36.6740778	No description entered.
1074	RR 3 Box 179 - White	Guymon	3	179	-101.3493473	36.6880385	WHITE, RONNY AND KATHY (SAME AS RT3 Box 179, GUYMON)\n580-338-7183\n580-651-4190 (cell) (SHE IS A USPS COURIER FOR HOOKER)\nYOU CAN TAKE PKGS TO HER WORK AT 107 SWEM ST, HOOKER\n\nFROM HWY 54 AND 12TH ST (TRUCK STOP)  GO EAST \nFOR 6 MILES TO BROWN BRICK HOME ON RIGHT HAND IN\nCORNER OF CR 38. \n                                               OR\nTAKE HWY 3 EAST TO MM 38 AND GO NORTH OF 1 MILE\nTO HOME ON CORNER EAST SIDE.\n\nNOTE: PLEASE DO NOT LEAVE PKGS OUTSIDE REACHABLE TO \nDOG, SINCE HE’LL TEAR IT TO PIECES. PLACE IT IN TOP OF \nTRUCK OR INSIDE SHOP IN ONE OF THE WORK BENCHES.
1075	RR 3 Box 18 - ARNOLD	Hooker	3	18	-101.2169441	36.9454602	ARNOLD, TOM\n\nFROM HOOKER GO NORTH ON JEFFERSON ST FOR 5 1/2 MILES TO HOUSE ON WEST OF ROAD. YELLOW HOUSE. \nDropped pin\nhttps://maps.google.com?q=36.945502,-101.216991&hl=en-US&gl=us
1076	RR 3 Box 180 - Fast	Guymon	3	180	-101.3251295	36.7208176	No description entered.
1077	RR 3 Box 180E , 3708 CR V -  MING	Guymon	3	180E	-101.3666109	36.6895958	MING, GREG\n580-651-4700\n\nGO EAST ON 12TH ST FOR 5 1/2 MILES TO DBL WIDE TRL\nWITH 40 X 60 SHOP WITH FLAG PAINTED ON FRONT\nTHEY BUILT A NEW METAL HOME. \nALT DIR: FROM HWY 3 EAST OF GUYMON TO MM 37\nGO NORTH 1 MILE.
1078	RR 3 Box 181 , 2221 CR 37 - ALLEN	Guymon	3	181	-101.3674133	36.6858137	ALLEN, JERRY\n\nGO EAST ON HWY 3 TO RD 37 GO NORTH 3/4 MILE \n\n2221 CR 37 \n\nTO ROCK HOME WITH BROWN METAL ROOF\n\nAFTER JEFFUS ARENA
1079	RR 3 Box 183	Guymon	3	183	-101.3673381	36.6828647	No description entered.
1080	RR 3 Box 184 - Tomlinson	Guymon	3	184	-101.3771286	36.6750183	RR 3 Box 184 - TOMLINSON, WILMA\n\nHWY 3 EAST FROM GUYMON ABOUT 5 MILES. \nHOUSE ON NORTH SIDE OF HWY 3 ABOUT HALF\nMILE AFTER THE REST AREA
1081	RR 3 Box 185 , 3642 ROAD W - Rentz	Guymon	3	185	-101.377533	36.6750183	RR 3 Box 185 - RENTZ\n\nHWY 3 EAST FROM GUYMON ABOUT 5 MILES. \nHOUSE ON NORTH SIDE OF HWY 3 ABOUT HALF\nMILE AFTER THE REST AREA. IT IS THE SMALL HOUSE NEXT TO TOMLINSON’S HOUSE.
1082	RR 3 Box 187A - SALAS	Guymon	3	187A	-101.4408886	36.6908365	No description entered.
1083	RR 3 Box 187B - LONG	Guymon	3	187B	-101.4199357	36.7012592	No description entered.
1084	RR 3 Box 187C - Garrett	Guymon	3	187C	-101.4197617	36.6951408	RR 3 Box 187C - GARRETT, JEREMY.   FROM HWY 54 AND 12TH ST GO EAST ON  CEMETERY ROAD TO CR 34. THEN TURN NORTH FOR ABOUT 1/4 OF A MILE TO HOUSE SITTING BY ITSELF ON EAST SIDE.
1085	RR 3 Box 187M - MARQUEZ	Guymon	3	187M	-101.440094	36.6897406	No description entered.
1086	RR 3 Box 187O - FLORES	Guymon	3	187O	-101.4414464	36.6898039	No description entered.
1087	RR 3 Box 187Q - IZAMAR	Guymon	3	187Q	-101.442355	36.689745	No description entered.
1088	RR 3 Box 187S - LOZANO, RODRIGUEZ	Guymon	3	187S	-101.4438061	36.6899082	No description entered.
1089	RR 3 Box 187T	Guymon	3	187T	-101.4443165	36.6897488	No description entered.
1090	RR 3 Box 19 - MCCOLLOM	Hooker	3	19	-101.2156721	36.9409702	No description entered.
1091	RR 3 Box 2 - Duncan	Hooker	3	2	-101.2168136	36.8707936	No description entered.
1092	RR 3 Box 2 , 1421 RD II- PORRAS	Texhoma	3	2	-101.7769267	36.5009358	PORRAS\n\nFROM BEHIND THE CEFCO GAS STATION TAKE 95 SOUTH (STATE-LINE ROAD) EAST. \nAFTER YOU PASS EAST STREET, IT’S THE SECOND HOME ON THE SOUTH/RIGHT SIDE OF THE ROAD. \n\nIT IS ALSO THE ONE BEFORE THE LAST ONE GOING OUT OF TOWN.
1093	RR 3 Box 20 , 495 MILE 45 - CAMPBELL , HILL	Hooker	3	20	-101.2156972	36.9360031	CAMPBELL, JEREMY\n\nFROM HOOKER GO NORTH ON JEFFERSON ST FOR 5 MILES TO CR E. HOUSE ON CORNER ON EAST SIDE. BRICK AND YELLOW HOUSE. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/aX9FjyvtoP12
1094	RR 3 Box 200 - MACIAS	Guymon	3	200	-101.4471488	36.690009	No description entered.
1095	RR 3 Box 21 - HILL	Hooker	3	21	-101.2159111	36.9287552	HILL, MARK\n\nGO NORTH FROM HOOKER ON JEFFERSON ST FOR 5 MILES. \nHOUSE WITH CROOKED TOWER ON RIGHT/EAST SIDE. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/iUoC83HsJep
1205	RR 4 Box 1B - 508 W Main	Texhoma	4	1B	-101.7876817	36.5051166	No description entered.
1096	RR 3 Box 24  , 678 MILE 45- HILL	Hooker	3	24	-101.2183293	36.9098267	RUSSELL, CAROLL\n\nGO 3 MILES WEST ON PANHANDLE ST TO MM 42 THEN GO 3 MILES NORTH. \n\nSHE WORKS AT BAPTIST CHURCH IN PANHANDLE ST IN HOOKER. \n\nDropped pin\nNear Unnamed Road, Hooker, OK 73945\nhttps://goo.gl/maps/wEQ3iX7zeE32
1097	RR 3 Box 25A - DIETRICK	Hooker	3	25A	-101.2169358	36.897691	DIETRICK\n\nFROM HOOKER GO NORTH ON JEFFERSON (MILE 45) FOR 2 1/2 MILES TO TRAILER ON LEFT/WEST SIDE.\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/JJ5UwUvV9gE2
1098	RR 3 Box 26A - GONZALES	Hooker	3	26A	-101.2505035	36.884388	No description entered.
1099	RR 3 Box 26B	Hooker	3	26B	-101.2678215	36.8923265	No description entered.
1100	RR 3 Box 27 , 798 MILE 42 - BOYLES	Hooker	3	27	-101.271418	36.8925081	No description entered.
1101	RR 3 Box 271 - GREEN	Guymon	3	271	-101.2960975	36.635197	No description entered.
1102	RR 3 Box 28, 28A - RUSSELL	Hooker	3	28	-101.2722966	36.9062376	No description entered.
1103	RR 3 Box 29	Hooker	3	29	-101.2729966	36.9066834	No description entered.
1104	RR 3 Box 3 , 829 MILE 44- MOORE	Hooker	3	3	-101.234084	36.8880555	HUXMAN, NICK AND STACIE\n580-754-0494\n\nFROM HOOKER GO NORTH ON JEFFERSON ST FOR 1 MILE THE TURN WEST FOR 1 MILE TO MM 44. THEN TURN 3/4 MILE NORTH TO BROWN HOME. \n\nIF NOT HOME PLACE PKG ON SIDE DOOR. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/Ks4f6b4mr6U2
1105	RR 3 Box 30 - SWAYZE	Hooker	3	30	-101.3074265	36.9098511	No description entered.
1106	RR 3 Box 31 - KING	Hooker	3	31	-101.3252125	36.9207937	No description entered.
1107	RR 3 Box 31 , 2848 ROAD W LOT 7 - TORCHIA	Guymon	3	31	-101.5158966	36.6764224	No description entered.
1108	RR 3 Box 31B - MENDENHALL	Guymon	3	31B	-101.5166876	36.6764205	No description entered.
1109	RR 3 Box 32 - FISCHER	Hooker	3	32	-101.3263847	36.9217082	No description entered.
1110	RR 3 Box 32A - WIRTZ	Guymon	3	32A	-101.5151255	36.6745291	WIRTZ, SHELLY\n580-651-4951\n\nFROM AIRPORT ROAD AND CR W GO WEST TO FIFTH\nHOUSE ON LEFT/SOUTH SIDE, WITH BRICK MAILBox. \nWHEN GOING INTO DRIVEWAY KEEP LEFT TO BRICK HOME\nBEHIND TREES. \nHUSBAND OWNS WIRTZ LUMBER ON CORNER OF 2ND ST\nAND QUINN ST BY THE POST OFFICE.
1111	RR 3 Box 32AA, 2783 ROAD W - CORDER	Guymon	3	32AA	-101.5300242	36.6746396	No description entered.
1112	RR 3 Box 32AC , 2891 ROAD W - STACY	Guymon	3	32AC	-101.5116758	36.6747303	No description entered.
1113	RR 3 Box 32B , 3890 CR F - FLATLAND FARMS , FISCHER	Hooker	3	32B	-101.3257449	36.921903	No description entered.
1114	RR 3 Box 32C , 2848 CR W LOT 13 - CRANE, BURSON	Guymon	3	32C	-101.516418	36.6775827	No description entered.
1115	RR 3 Box 32E - POWERS	Guymon	3	32E	-101.5164828	36.6819695	No description entered.
1116	RR 3 Box 32F , 2848 RD W LOT 32F - PLUM	Guymon	3	32F	-101.5174742	36.6817871	No description entered.
1117	RR 3 Box 32G - DOUG SCHMIDT CRI MANAGER	Guymon	3	32G	-101.5212436	36.6756891	No description entered.
1118	RR 3 Box 32H - GREEN	Guymon	3	32H	-101.5221814	36.6751531	No description entered.
1119	RR 3 Box 32HD - MCCUNE	Guymon	3	32HD	-101.5433597	36.6751849	No description entered.
1120	RR 3 Box 32HEE , 2233 MILE 27 - MAXWELL	Guymon	3	32HEE	-101.545795	36.6850835	No description entered.
1121	RR 3 Box 32HG, 2664 RD W - Labrier	Guymon	3	32HG	-101.5528844	36.6754826	No description entered.
1122	RR 3 Box 32K - MAYER	Guymon	3	32K	-101.5642367	36.6893678	No description entered.
1123	RR 3 Box 32KK - MAYER , RICE	Guymon	3	32KK	-101.56761	36.6878514	No description entered.
1124	RR 3 Box 32LB - COBB	Guymon	3	32LB	-101.5822159	36.6467342	No description entered.
1125	RR 3 Box 32N , 2771 OLIVER RD  - BLOOD	Guymon	3	32N	-101.5333648	36.6728517	No description entered.
1126	RR 3 Box 32NA , 2781 ROAD W - LIVESAY	Guymon	3	32NA	-101.5308362	36.674035	LIVESAY, SUSAN\n806-339-1381\n\n2781 ROAD W. (POSTED ON FENCE YARD)\n\nSHE WORKS AT ACADEMY SCHOOL\nSW 7TH AND SW 8TH ST.
1127	RR 3 Box 32NC , 2795 ROAD W  - ELLIOTT	Guymon	3	32NC	-101.5288443	36.6742604	No description entered.
1128	RR 3 Box 32NH ,2851 ROAD W - FRONTERHOUSE	Guymon	3	32NH	-101.5184955	36.6745761	No description entered.
1129	RR 3 Box 32NQ - WILLIAMS	Guymon	3	32NQ	-101.5263061	36.6737119	sheri
1130	RR 3 Box 32NX - DILLOW	Guymon	3	32NX	-101.5218925	36.671888	No description entered.
1131	RR 3 Box 32NY - NELSON	Guymon	3	32NY	-101.5271737	36.6741136	No description entered.
1132	RR 3 Box 32NZ - NELSON	Guymon	3	32NZ	-101.5277676	36.6742267	No description entered.
1133	RR 3 Box 34 - ADAMS	Hooker	3	34	-101.3073196	36.9330292	No description entered.
1134	RR 3 Box 36 - MUIR	Hooker	3	36	-101.3071987	36.9526364	MUIR, JENNY; RANDY WILLIAM\n620-655-6193 (WILLIAM’S CELL) —> CALL HIM BEFORE DELIVERING\n620-655-9373 (JENNIFER’S CELL)\n\nFROM OPTIMA GO  NORTH ON HUGOTON HWY TO CR D. GO RIGHT FOR 3 MILES TO CR 40 \nTHEN 1/4 MILES NORTH TO BRICK HOUSE\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/17xYBeqYLym
1135	RR 3 Box 36 - YELL	Guymon	3	36	-101.5542105	36.6794464	No description entered.
1136	RR 3 Box 37 - BAKER	Hooker	3	37	-101.2965662	36.9504444	No description entered.
1137	RR 3 Box 38 - 2249 Mile 27 - Campbell	Guymon	3	38	-101.5422899	36.6825989	No description entered.
1138	RR 3 Box 38 - HOFFERBER	Hooker	3	38	-101.3438484	36.9491976	HOFFERBER, MELISSA AND NEAL\n580-522-1919 / 806-339-4840\n\nTAKE HUGOTON HWY NORTH TO CR D. GO EAST TO 2 STORY WHITE HOUSE ON SOUTH SIDE IN CORNER.
1139	RR 3 Box 39 , 2234 MILE 27 - BOBBITT	Guymon	3	39	-101.5483604	36.6845116	No description entered.
1140	RR 3 Box 4 - MOORE , HERALD	Hooker	3	4	-101.2370839	36.9112398	No description entered.
1141	RR 3 Box 4 , 1674 CR II - MITCHELL	Texhoma	3	4	-101.7308523	36.5015057	No description entered.
1142	RR 3 Box 4-1 , ESLINGER	Texhoma	3	4	-101.7186138	36.5002988	ESLINGER, AMI\n580-817-1452\n\nTAKE 95 SOUTH/STATELINE ROAD GOING EAST \nDO NOT TAKE CURVE GOING SOUTH BUT KEEP ON STRAIGHT\nFOR ABOUT 1 1/2 MILE AFTER CURVE TO HOUSE ON SOUTH SIDE
1143	RR 3 Box 41 , 98 MILE 37 - ADM GRAIN	Hooker	3	41	-101.3622608	36.9930975	No description entered.
1144	RR 3 Box 44, 3592 ROAD B- LEVINGS	Hooker	3	44	-101.380008	36.9798412	No description entered.
1145	RR 3 Box 45, 3592 ROAD B - LEVINGS	Hooker	3	45	-101.3801141	36.9795993	LEVINGS, \n\nNORTH ON HUGOTON HWY TO CR B. \nTURN LEFT/WEST AND GO FOR 1 MILE.\nLARGE 2 STORY HOUSE ON CORNER.\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/YM85H3wBTVC2
1146	RR 3 Box 46 - Weis	Hooker	3	46	-101.3794708	36.9749298	No description entered.
1147	RR 3 Box 46A - Temple	Hooker	3	46A	-101.3799444	36.9755981	RR 3 Box 46A - TEMPLE TEMPLE, MARK 580-652-2006  911 ADDRESS IS: 232 MILE 36 RD.  RD C AND MILE 37 GO WEST ON CR C OR 1 MILE.  THEN NORTH 3/4  MIDDLE HOUSE OF 3.  YELLOW STUCCO
1202	RR 4 Box 17 - PREDMORE	Texhoma	4	17	-101.8710015	36.7512428	PREDMORE, LEROY\n706-263-0100\n\nFROM FOURCORNERS GO 2 MILES EAST AND 3/4 SOUTH.
1148	RR 3 Box 46C - Temple	Hooker	3	46C	-101.3795592	36.9757165	RR 3 Box 46C - TEMPLE\nTEMPLE\nLINK IN MAPS:\n\nhttps://goo.gl/maps/FmN1VHhMzAs\nTake HUGOTON Hwy to CR C, go west for 1 mile. \nTurn north on 36 to home on west side. \n\nIt’s on Mile 36 and just south of CR B\nHouse in cluster of 3\nHouse on North side \nFence around house
1149	RR 3 Box 47 - Diedrich	Hooker	3	47	-101.3965138	36.9752439	RR 3 Box 47 - Diedrich
1150	RR 3 Box 49 - MORALES	Guymon	3	49	-101.5137237	36.6606329	No description entered.
1151	RR 3 Box 49, 3451 CR C - POWELL	Hooker	3	49	-101.4060253	36.9606086	580-652-2532\n\nbonnie powell
1152	RR 3 Box 49A , 2860 ROAD X - BOHL	Guymon	3	49A	-101.5172854	36.6606684	No description entered.
1153	RR 3 Box 49D - IBARRA	Guymon	3	49D	-101.5187833	36.6628624	No description entered.
1154	RR 3 Box 49F - HICKS	Guymon	3	49F	-101.5183045	36.6586519	No description entered.
1155	RR 3 Box 4A - HERALD	Hooker	3	4A	-101.2361908	36.9109802	No description entered.
1156	RR 3 Box 5 - WINTERS	Texhoma	3	5	-101.7080583	36.5055727	WINTERS, KATE\n\nEAST OF TEXHOMA ON STATELINE ROAD TO MILE 18\nGO NORTH FOR 1/4 MILE TO ROCK HOUSE ON RIGHT\nMAILBox ON INTERSECTION OF STATELINE ROAD \nAND MILE 18.
1157	RR 3 Box 50S , 2853 ROAD X - GUENTHER	Guymon	3	50S	-101.5190984	36.6601813	No description entered.
1158	RR 3 Box 51 , 3617 CR C - WITT	Hooker	3	51	-101.3682288	36.9644888	No description entered.
1159	RR 3 Box 51A - ANSLEY	Hooker	3	51A	-101.3686727	36.9634072	No description entered.
1160	RR 3 Box 51A , 2857 ROAD X LOT 6 - EDISON	Guymon	3	51A	-101.5182702	36.6594036	EDISON, BRENDA\n580-338-6748\n\n2857 ROAD X LOT 6\nCROSS RR ON CR X OF FROM HWY 54. GO WEST ON CR X\nAFTER PASSING 2ND DIRT ROAD GO SOUTH ON DRIVE\nTO 2ND HOME ON WEST SIDE.
1161	RR 3 Box 51AB - NEUFELD	Hooker	3	51AB	-101.3688202	36.9628677	GIESBRECHT, PETER\n580-522-1916\n\nGO HUGOTON HWY NORTH TO CR C. THEN GO WEST 1/4 MILE TO WITTS HOME. PETE'S THE DBL WIDE TRAILER SOUTH OF WITTS HOUSE. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/xngArmjCT5o
1162	RR 3 Box 51C - PREPOROUIS, VOORHEIS	Hooker	3	51C	-101.4241791	36.9272499	PREPOROUIS, WILLIEN\n\nHUGOTON HWY NORTH TO CR F. \nGO WEST FOR 3 1/2 MILES \nTHEN HALF A MILE NORTH. WILL DRIVE INTO HOME IN MIDDLE OF IRRIGATION SECTION. \n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/MTs9ChDVoJ52
1163	RR 3 Box 52 , 2385 MARK ST - RIDER	Guymon	3	52	-101.5165821	36.6627474	No description entered.
1164	RR 3 Box 52A , 52B - SOUTHWIND RV	Guymon	3	52A	-101.4952718	36.6698354	No description entered.
1165	RR 3 Box 53 - KISTLER	Hooker	3	53	-101.41556	36.9062205	No description entered.
1166	RR 3 Box 56 , 2396 MARIA ST - COSTILLA	Guymon	3	56	-101.5147928	36.660968	No description entered.
1167	RR 3 Box 58 , 2924 Road X - LANDES	Guymon	3	58	-101.5074	36.6605933	No description entered.
1168	RR 3 Box 60 - JUDD	Hooker	3	60	-101.395826	36.8672591	No description entered.
1169	RR 3 Box 61 - KRAFT	Hooker	3	61	-101.3964615	36.8673325	No description entered.
1170	RR 3 Box 62 - WARD	Hooker	3	62	-101.3954635	36.8673273	No description entered.
1171	RR 3 Box 62A - FREEMAN , BURDEN	Hooker	3	62A	-101.3962811	36.8556588	No description entered.
1172	RR 3 Box 63A - TRISLER	Hooker	3	63A	-101.3604669	36.8705285	No description entered.
1173	RR 3 Box 64 - TRISLER	Hooker	3	64	-101.3585964	36.8710615	AGGRO DOG
1174	RR 3 Box 65 - FISHER	Hooker	3	65	-101.3418604	36.863584	No description entered.
1175	RR 3 Box 66, 969 MILE 39 -  FISCHER	Hooker	3	66	-101.3236307	36.8680275	Roger Fischer\noffice at grain elevator
1176	RR 3 Box 67 - FISCHER	Hooker	3	67	-101.3232955	36.8657031	No description entered.
1177	RR 3 Box 69 - FISCHER	Hooker	3	69	-101.3240308	36.8682493	No description entered.
1178	RR 3 Box 70 - FISCHER	Hooker	3	70	-101.3051519	36.8783927	FISCHER, HARRY\n\nCR 40 CORNER OF CR I\n\nHOUSE THAT SETS IN AN ANGLE\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/GMRTNCsbcN12
1179	RR 3 Box 71, 4010 ROAD I - FISCHER	Hooker	3	71	-101.3048588	36.8779618	richard
1180	RR 3 Box 72A  - LINES	Hooker	3	72A	-101.3038862	36.833184	No description entered.
1181	RR 3 Box 73 - HONEMAN	Hooker	3	73	-101.2915166	36.8510697	No description entered.
1182	RR 3 Box 73A - ALAMOOD , PRATT	Hooker	3	73A	-101.3069458	36.8499794	ALAMOOD, TIFFANY\n719-322-6169\n\nFROM HWY 54 GO NORTH ON MM 40 FOR 4 MILES UNTIL DEAD ENDS. THEN MAKE RIGHT TO DBL WIDE MOBILE HOME WITH RED ROOF\n\nDropped pin\nNear Texas County, OK\nhttps://goo.gl/maps/v7sdtrnftp42
1183	RR 3 Box 74	Hooker	3	74	-101.2824249	36.8352707	No description entered.
1184	RR 3 Box 75 - HONEMAN	Hooker	3	75	-101.269295	36.8481246	No description entered.
1185	RR 3 Box 76 - ALM	Hooker	3	76	-101.2910292	36.8576638	No description entered.
1186	RR 3 Box 77 , 4150 CR J - SIMPSOJ	Hooker	3	77	-101.2801015	36.8637204	No description entered.
1187	RR 3 Box 78 - SIMPSON	Hooker	3	78	-101.2815226	36.8633843	No description entered.
1188	RR 3 box 80 - PHELPS	Hooker	3	80	-101.2528901	36.8614552	No description entered.
1189	RR 3 Box 81 - BLACKWELDER	Hooker	3	81	-101.2535706	36.853104	No description entered.
1190	RR 3 Box 82 , 4420 ROAD J- Mignon, Lambley	Hooker	3	82	-101.2321948	36.8644131	RR 2 Box 82 - LAMBLEY, MIGNON   THE HOUSE IN THE MIDDLE OF THREE ON CR J JUST OUTSIDE OF HOOKER.    Dropped pin https://maps.google.com?q=36.864260,-101.232115&hl=en-US&gl=us
1191	RR 3 Box 83 , 4430 ROAD J- FISCHER, WILKINSON	Hooker	3	83	-101.2302823	36.8642811	No description entered.
1192	RR 3 Box 9 - BRYAN	Hooker	3	9	-101.2708588	36.9382591	No description entered.
1193	RR 4 Box 100 - Shores	Guymon	4	100	-101.4751797	36.6373291	SHORES, LARINDA\n\n3 TO 4 MILES SOUTH ON HWY 136. \nIT IS 3/4 MILE PASS CR Y\nHOUSE ON RIGHT/WEST SIDE
1194	RR 4 Box 105	Guymon	4	105	-101.4760692	36.6812224	SCOTT, DELLA\n580-338-6438\n\nDELIVER TO 303 N MAY ST. \nDOUBLE CHECK ITS BEEN A LONG TIME
1195	RR 4 Box 108	Guymon	4	108	-101.4750967	36.6559082	No description entered.
1196	RR 4 Box 109 - CASTLEBURY ,  KEENAN	Guymon	4	109	-101.4751631	36.6563353	CASTLEBURY\n\nFROM GUYMON GO SOUTH ON HWY 136\nON WEST SIDE OF ROAD. 2ND HOUSE PAST ROAD X
1197	RR 4 Box 11 - GURLEY	Texhoma	4	11	-101.9074596	36.6993019	No description entered.
1198	RR 4 Box 110 - MARTINEZ	Guymon	4	110	-101.4750689	36.657474	MONTELONGO, VERONICA\n\nHWY 136 SOUTH, JUST PAST CR X TO BRICK HOME ON \nWEST SIDE WITH  WHITE FENCE ALL AROUND.
1199	RR 4 Box 118 - Colonial Inn	Guymon	4	118	-101.4743052	36.6768152	BHAKTA\n\nCOLONIAL INN ON HWY 54 AND HWY 3 CORNER OF \nHWY 136.
1200	RR 4 Box 14 - INGRAM	Texhoma	4	14	-101.8767128	36.7044565	INGRAM, KELLY\n\nFROM FOURCORNERS GO 1 MILE EAST\n4 MILES SOUTH\n3/4 MILE EAST.
1201	RR 4 Box 15 - HITCH PORK	Guymon	4	15	-101.4022048	36.6041666	No description entered.
1203	RR 4 Box 18 , 19 , 20 , 22	Guymon	4	18	-101.3845561	36.5764527	No description entered.
1206	RR 4 Box 2 - ROPER, BONILLA	Texhoma	4	2	-101.8710203	36.5887058	No description entered.
1207	RR 4 Box 20 - FURNISH	Guymon	4	20	-101.3793931	36.5830207	smaller house north of biggest house. \nnext to Hitch Office / Livery building
1208	RR 4 Box 21 - Webb, Bookstore	Texhoma	4	21	-101.8998089	36.7611424	No description entered.
1209	RR 4 Box 28 - Forinash	Texhoma	4	28	-101.9046108	36.7984216	No description entered.
1210	RR 4 Box 29 - Worth	Texhoma	4	29	-101.9597224	36.7589763	WORTH, VIRGIL\n\n3 MILES WEST OF FOURCORNERS\nTHEN 1/4 SOUTH
1211	RR 4 Box 30 - HITCH PORK	Guymon	4	30	-101.3333816	36.5011154	HITCH PORK\n\nGO SOUTH ON HWY 207 LONG WAY TO RD II\nGO LEFT APPROX 3/4 MILE. BLDG WITH BIG GARAGE\nDOORS ON LEFT.
1212	RR 4 Box 32 , 1410 MILE 8 - MATHER , SAULS	Texhoma	4	32	-101.8894496	36.7942428	MATHER, JANI\n580-545-3625\n\n1410 MILE 8 RD. \nBETWEEN CR N AND CR O ON MILE 8. \nTHAT IS NORTH WEST OF FOURCORNERS
1213	RR 4 Box 37- WRIGHT	Texhoma	4	37	-101.8747486	36.7765386	WRIGHT, GARY\n\n2 MILES EAST OF FOURCORNERS \nTHEN 1 MILE NORTH ON MM9\nTHEN 1/4 WEST ON CR P.
1214	RR 4 Box 38 - Fitzgerald	Texhoma	4	38	-101.8884492	36.7762917	David Fitzgerald\n580-651-3862
1215	RR 4 Box 39, 1680 CR 7 - Hays	Texhoma	4	39	-101.9094993	36.763617	No description entered.
1216	RR 4 Box 4	Texhoma	4	4	-101.8896824	36.5870857	No description entered.
1217	RR 4 Box 40 - 641 Hwy 64 - Fields	Texhoma	4	40	-101.9166514	36.7607113	No description entered.
1218	RR 4 Box 41 - Kerbo	Texhoma	4	41	-101.9404992	36.7619103	KERBO, APRIL\n620-360-3823\n\n2 MILES WEST OF FOURCORNERS ON HWY 64\nON SOUTH SIDE OF HWY 64. DETACHED GARAGE WHITE HOUSE. THEY HAVE A DODGE PICKUP.
1219	RR 4 Box 44 - Cline	Texhoma	4	44	-101.9616307	36.7424131	CLINE, GLORIA JEAN \n580-545-3469\n\nFROM TEXHOMA GO TO 95 NORTH TO HWY 412\nTHEN GO WEST TO MILE 4. TURN SOUTH AND GO FOR \n1 1/2 MILE TO WHITE FENCED HOUSE.
1220	RR 4 Box 44 - MENDOZA	Guymon	4	44	-101.4697418	36.5908699	http://osmand.net/go.html?lat=36.59087&lon=-101.46974&z=18 The location was shared with you by OsmAnd\nRR 4 Box 44\nMENDOZA, CRISTINA\n580-338-6990\nFROM GUYMON GO SOUTH ON HWY 136 FOR ABOUT 6 MILES. RIGHT WHEN YOU PASS CR CC THERE IS GOING TO BE A CATTLE GUARD ON EAST SIDE WITH SIGN THAT SAYS "LANDESS FARMS” GO IN AND IT IS THE HOUSE UP THE HILL.
1221	RR 4 Box 45 - Dougherty	Texhoma	4	45	-101.9582672	36.7318751	No description entered.
1222	RR 4 Box 46 - MCFARLEN	Texhoma	4	46	-101.9600163	36.7253703	MCFARLEN, AMANDA\n\n3 MILES WEST OF FOURCORNERS\n2 1/2 SOUTH.
1223	RR 4 Box 47 - BATIE, RAINES	Guymon	4	47	-101.4934162	36.538904	No description entered.
1224	RR 4 Box 48 - SIMMONS	Texhoma	4	48	-101.9789131	36.7360912	No description entered.
1225	RR 4 Box 50 - REUST	Guymon	4	50	-101.4810822	36.5150146	No description entered.
1226	RR 4 Box 52 - CALSING	Guymon	4	52	-101.4916007	36.5081835	CALSING, NICK AND JESSICA\n580-461-3369\n\nHE WORKS AT GE ON HWY 54\n\nHOME: GO ON HWY 136 SOUTH FOR 11 MILES TO GREEN\nBLDG, 1/2 MILE SOUTH OF CR HH\nRIGHT BEFORE CURVE. BLUE ROOF ON LEFT.
1227	RR 4 Box 55	Guymon	4	55	-101.486853	36.5153193	No description entered.
1228	RR 4 Box 56 - BARBOZA	Guymon	4	56	-101.4899493	36.5142465	No description entered.
1229	RR 4 Box 56A -  HEATHINGTON	Guymon	4	56A	-101.4924204	36.5137062	No description entered.
1230	RR 4 Box 57 , 2765 ROAD HH - VANDYKE	Guymon	4	57	-101.5360297	36.5143443	No description entered.
1231	RR 4 Box 63 - HALE	Texhoma	4	63	-101.9557308	36.6319093	HALE, ROBBIE\n\nBY FOURCORNERS \n\nFROM TEXHOMA GO 5 MILES NORTH ON 95. \nGO WEST ON CR CC FOR 5 MILES\nTURN NORTH FOR 5 MILES THEN PAVED ROAD ENDS. \nGO WEST ON DIRT ROAD FOR 5 MILES. DEAD ENDS. THEN \nGO SOUTH 1 MILE AND FOLLOW ROAD TO HOUSE.
1232	RR 4 Box 64 - MYERS	Texhoma	4	64	-101.9251019	36.6742653	MYERS, TARE\n580-545-3663\n\nFROM FOURCORNERS GO SOUTH 4 MILES TO CR U THEN \n1 MILE WEST THEN 2 MILES SOUTH. HOME ON WEST SIDE. \n\nFROM TEXHOMA, GO HWY 95 NORTH TO CR U. GO WEST \nFOR 6 MILES THEN 2 MILES SOUTH. \n\nOR FROM TEXHOMA GO NORTH ON 95 TO CR CC THEN \n5 MILES WEST TO CR 8. THEN 4 MILES NORTH GO CR 25 \nTHEN 2 MILES WEST TO CR 6 TO GO 2 MILES NORTH.
1233	RR 4 Box 75 - BATIE	Guymon	4	75	-101.4937441	36.540168	No description entered.
1234	RR 4 Box 8 - FLANAGAN	Texhoma	4	8	-101.8895586	36.6739423	FLANAGAN, ROSELLA, \n\nFROM FOURCORNERS GO 1 MILE EAST TO CR 8 THEN \nTURN SOUTH AND GO 6 MILES TO BRICK HOUSE ON WEST \nSIDE OF ROAD. SAYS FLANAGAN ON WOOD POST. \n\nFROM TEXHOMA GO NORTH ON HWY 95 TO CR CC\nTURN WEST AND GO FOR 5 MILES TO CR 8\nTURN NORTH AND GO 6 MILES TO BRICK HOUSE ON WEST SIDE
1235	RR 4 Box 80 - HELM	Guymon	4	80	-101.4879531	36.5578638	HELM, LYNETTE\n580-651-9412\n\nFROM GUYMON ON SOUTH ON HWY 136. GO PASS THE\nFIRST CURVE. BRICK HOME WITH DBL WIDE TRL NEXT\nTO IT ON SOUTH SIDE OF HWY. \n\nSHE HAS ALLOWED TO DELIVER PKGS TO 1531 N MAIN IN\nGUYMON. THE BUILDING WITH GREEN AWNINGS.
1236	RR 4 Box 9 - FLANAGAN	Texhoma	4	9	-101.9069471	36.6689644	FLANAGAN, JORDAN\n\nFROM FOURCORNERS GO 6 1/2 MILES STRAIGHT SOUTH\n\nMOM IS THE PRINCIPAL AT ELEMENTARY SCHOOL IN TEXHOMA\nAT 4TH ST AND DENVER.
1237	RR 4 Box 97 , 2611 MILE 31 - EDENBOROUGH	Guymon	4	97	-101.4740928	36.6292225	BROWN OR EDENBOROUGH, JULIE\n\n2611 MILE 31 RD (136 HWY)\n\nGO 3 1/4 MILES SOUTH ON HWY 136 TO HOUSE ON \nLEFT SIDE / EAST SIDE.
1238	RR 4 Box 98	Guymon	4	98	-101.4100142	36.5050777	THOMPSON, CYNTHIA\n580-338-0343\n\nGO SOUTH ON HWY 207 GO PAST HITCH HEADQUARTERS\nCROSS BRIDGE THEN IMMEDIATELY TURN WEST ON \nCALICHE RD. GO 5 MILES CROSSING 5 TO 6 CATTLE \nGUARDS. \nLITTLE BROWN HOUSE SOUTH OF BIG WHITE HOUSE
1239	RR  2 Box 98E - MORENO	Guymon	2	98E	-101.5741236	36.8709703	No description entered.
1240	RR Box 14E - BAUGH	Texhoma	N/A	N/A	-101.7922931	36.5847718	BAUGH, SHAWN\n\nTAKE 95 NORTH FROM TEXHOMA TO CR CC\nGO EAST. THERE ARE TWO CATTLE GUARDS\nBEFORE BRIDGE. \nITS ONE OF THOSE TWO HOMES.
1241	RR Box 18 - Dunham, Dixie Electric	Texhoma	N/A	N/A	-101.7767224	36.6077608	DUNHAM, \nDIXIE ELECTRIC LLC\n610-440-1060\n\nGO 95 NORTH FOR 6 MILES. GO EAST ON \nCR CC THEN GO NORTH ON ROAD BEFORE BRIDGE\nFOR 1 1/2 ON THAT DIRT ROAD.
1242	RR Box 91 - SPELL	Boise City	N/A	N/A	-102.6057495	36.7772564	No description entered.
1243	RT 2 Box 76A, 1351 MILE 28 - HANKLA	Guymon	N/A	N/A	-101.5269533	36.8129361	No description entered.
1244	SANAGUS MOTORS - 3245 HWY 54 E	Guymon	N/A	N/A	-101.4486986	36.7026521	No description entered.
1245	SELPH	Goodwell	N/A	N/A	-102.1268567	36.8094266	No description entered.
1246	SIZEMORE	Boise City	N/A	N/A	-102.4150964	36.6707481	No description entered.
1247	SLATS FOOD MART - RR 1 Box 110, 105 E HWY 54	Texhoma	1	110	-101.7815052	36.5021235	No description entered.
1248	SOUTHWIND RV PARK, 3941 SW HWY 54	Guymon	N/A	N/A	-101.50101	36.6662532	No description entered.
1249	STRATFORD FEEDYARD - 14001 CR 9	Stratford	N/A	N/A	-102.029773	36.3154108	No description entered.
1250	Taylor Oil - 7525 FM 119	Sunray	N/A	N/A	-101.8278519	36.0309814	No description entered.
1251	TCEC - Tri County Electric - 995 Mile 46, 4612 Road J	Hooker	N/A	N/A	-101.1970797	36.8645485	995 Mile 46\n4612 Road J
1252	TEXHOMA WHEAT - 7191 US 54 WEST	Texhoma	N/A	N/A	-101.788481	36.4997838	No description entered.
1253	TIC	Stratford	N/A	N/A	-102.0508362	36.183238	No description entered.
1254	Transcanada - 15175 CR 9	Gruver	N/A	N/A	-101.4719526	36.4952301	No description entered.
1255	VESTAS	Goodwell	N/A	N/A	-101.6413855	36.5016489	No description entered.
1256	WHITTINGTON, EARL	Keyes	N/A	N/A	-102.1763958	36.7888176	No description entered.
1257	Yarbrough School	Goodwell	N/A	N/A	-101.9036275	36.8725831	No description entered.
\.


--
-- Name: osm_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmachine
--

SELECT pg_catalog.setval('public.osm_favorites_id_seq', 1257, true);


--
-- Name: osm_favorites osm_favorites_name_key; Type: CONSTRAINT; Schema: public; Owner: elmachine
--

ALTER TABLE ONLY public.osm_favorites
    ADD CONSTRAINT osm_favorites_name_key UNIQUE (name);


--
-- Name: osm_favorites osm_favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: elmachine
--

ALTER TABLE ONLY public.osm_favorites
    ADD CONSTRAINT osm_favorites_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

