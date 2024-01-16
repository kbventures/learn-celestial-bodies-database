--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: kmb
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    type text NOT NULL,
    galaxy_id integer NOT NULL,
    number_of_planets integer,
    number_of_moons integer
);


ALTER TABLE public.galaxy OWNER TO kmb;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: kmb
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNER TO kmb;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kmb
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: kmb
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    type character varying(40),
    radius numeric(8,2)
);


ALTER TABLE public.moon OWNER TO kmb;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: kmb
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.moon_id_seq OWNER TO kmb;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kmb
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: kmb
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    type character varying(40),
    distance_from_sun numeric(12,2)
);


ALTER TABLE public.planet OWNER TO kmb;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: kmb
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planet_id_seq OWNER TO kmb;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kmb
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: kmb
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    inhabited boolean
);


ALTER TABLE public.satellite OWNER TO kmb;

--
-- Name: satellite_satelllite_id_seq; Type: SEQUENCE; Schema: public; Owner: kmb
--

CREATE SEQUENCE public.satellite_satelllite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.satellite_satelllite_id_seq OWNER TO kmb;

--
-- Name: satellite_satelllite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kmb
--

ALTER SEQUENCE public.satellite_satelllite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: kmb
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    type character varying(40),
    surface_temperature numeric(8,2)
);


ALTER TABLE public.star OWNER TO kmb;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: kmb
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.star_id_seq OWNER TO kmb;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kmb
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satelllite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: kmb
--

COPY public.galaxy (name, type, galaxy_id, number_of_planets, number_of_moons) FROM stdin;
Andromeda	Spiral Galaxy	1	1000000	10000000
Milky Way	Spiral Galaxy	2	1000000	10000000
Cigar	Starburst	3	1000000	10000000
Tadpole	Disrupted barred spiral galaxy	4	1000000	10000000
Cartwheel	Lenticular	5	1000000	10000000
Sunflower	Spiral	6	1000000	10000000
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: kmb
--

COPY public.moon (moon_id, name, planet_id, type, radius) FROM stdin;
1	That Moon 1	21	Round	123456.12
2	That Moon 2	21	Round	123456.12
3	That Moon 3	21	Round	123456.12
4	That Moon 4	21	Round	123456.12
5	That Moon 5	21	Round	123456.12
6	That Moon 6	21	Round	123456.12
7	That Moon 7	21	Round	123456.12
8	That Moon 8	21	Round	123456.12
9	That Moon 9	21	Round	123456.12
10	That Moon 10	21	Round	123456.12
11	That Moon 11	21	Round	123456.12
12	That Moon 12	21	Round	123456.12
13	That Moon 13	21	Round	123456.12
14	That Moon 14	21	Round	123456.12
15	That Moon 15	21	Round	123456.12
16	That Moon 16	21	Round	123456.12
17	That Moon 17	21	Round	123456.12
18	That Moon 18	21	Round	123456.12
19	That Moon 19	21	Round	123456.12
20	That Moon 20	21	Round	123456.12
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: kmb
--

COPY public.planet (planet_id, name, star_id, has_life, type, distance_from_sun) FROM stdin;
1	koi-351 b	1	f	Hihi	1234567890.12
2	koi-351 c	1	f	Hihi	1234567890.12
3	kepler-90 i	1	f	Hihi	1234567890.12
4	kepler 351 d	1	f	Hihi	1234567890.12
5	kepler 351 e	1	f	Hihi	1234567890.12
6	kepler 351 f	1	f	Hihi	1234567890.12
7	kepler 351 g	1	f	Hihi	1234567890.12
8	kepler 351 h	1	f	Hihi	1234567890.12
9	kepler 351 i	1	f	Hihi	1234567890.12
10	kepler 351 j	1	f	Hihi	1234567890.12
11	kepler 351 k	1	f	Hihi	1234567890.12
12	kepler 351 l	1	f	Hihi	1234567890.12
13	kepler 351 m	1	f	Hihi	1234567890.12
14	kepler 351 n	1	f	Hihi	1234567890.12
15	kepler 351 o	1	f	Hihi	1234567890.12
16	kepler 351 p	1	f	Hihi	1234567890.12
17	kepler 351 q	1	f	Hihi	1234567890.12
18	kepler 351 r	1	f	Hihi	1234567890.12
19	kepler 351 s	1	f	Hihi	1234567890.12
20	kepler 351 t	1	f	Hihi	1234567890.12
21	kepler 351 u	1	f	Hihi	1234567890.12
\.


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: kmb
--

COPY public.satellite (satellite_id, name, planet_id, inhabited) FROM stdin;
1	SAT 1	1	t
2	SAT 2	1	t
3	SAT 3	1	f
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: kmb
--

COPY public.star (star_id, name, galaxy_id, type, surface_temperature) FROM stdin;
1	Alpheratz	1	Sub-giant	888888.22
2	Mirach	1	Red-giant	888888.22
3	Almach	1	Red-giant	888888.22
4	Sadiradra	1	Red-giant	888888.22
5	Nembus	1	Red-giant	888888.22
6	Zulu	1	Red-giant	888888.22
7	KOI-351	1	Red-giant	888888.22
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kmb
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kmb
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kmb
--

SELECT pg_catalog.setval('public.planet_id_seq', 21, true);


--
-- Name: satellite_satelllite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kmb
--

SELECT pg_catalog.setval('public.satellite_satelllite_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kmb
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: satellite satellite_unique_name; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_unique_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: satellite unique_satellite_name; Type: CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT unique_satellite_name UNIQUE (name);


--
-- Name: star fk_galaxy_start; Type: FK CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_start FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: satellite fk_satellite_planet; Type: FK CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT fk_satellite_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_start_planet; Type: FK CONSTRAINT; Schema: public; Owner: kmb
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_start_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

