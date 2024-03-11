--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    count integer,
    year integer,
    dot numeric NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    year integer NOT NULL,
    count integer,
    existance boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: my_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.my_universe (
    my_universe_id integer NOT NULL,
    name character varying(20) NOT NULL,
    note text NOT NULL
);


ALTER TABLE public.my_universe OWNER TO freecodecamp;

--
-- Name: my_universe_my_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.my_universe_my_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_universe_my_universe_id_seq OWNER TO freecodecamp;

--
-- Name: my_universe_my_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.my_universe_my_universe_id_seq OWNED BY public.my_universe.my_universe_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    year integer,
    count integer NOT NULL,
    comment text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    year integer,
    count integer,
    livable boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: my_universe my_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe ALTER COLUMN my_universe_id SET DEFAULT nextval('public.my_universe_my_universe_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MilyWay', 25, 1800, 2);
INSERT INTO public.galaxy VALUES (2, 'Uduk', 20, 1910, 3);
INSERT INTO public.galaxy VALUES (3, 'Sombreo', 19, 1480, 9);
INSERT INTO public.galaxy VALUES (5, 'Traiangulum', 3, 1430, 8);
INSERT INTO public.galaxy VALUES (4, 'WhirlPool', 19, 1480, 9);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 2, 2493, 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 2344, 3, true, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 2344, 3, true, 2);
INSERT INTO public.moon VALUES (3, 'Triton', 2344, 3, true, 3);
INSERT INTO public.moon VALUES (4, 'Grannymede', 2344, 3, true, 4);
INSERT INTO public.moon VALUES (5, 'Silas', 2344, 3, true, 5);
INSERT INTO public.moon VALUES (6, 'Tabitha', 3490, 34, true, 6);
INSERT INTO public.moon VALUES (7, 'Celine', 9320, 34, false, 7);
INSERT INTO public.moon VALUES (8, 'Alpha', 9320, 34, false, 8);
INSERT INTO public.moon VALUES (9, 'Medusa', 9320, 34, false, 9);
INSERT INTO public.moon VALUES (10, 'Archimist', 8490, 49, false, 10);
INSERT INTO public.moon VALUES (11, 'Demon', 8490, 49, false, 11);
INSERT INTO public.moon VALUES (12, 'Katharina', 8490, 49, false, 12);
INSERT INTO public.moon VALUES (13, 'Amara', 8490, 49, false, 1);
INSERT INTO public.moon VALUES (14, 'Tatia', 3284, 9, false, 2);
INSERT INTO public.moon VALUES (15, 'Ambrose', 2901, 38, true, 3);
INSERT INTO public.moon VALUES (16, 'Forbes', 3931, 89, true, 4);
INSERT INTO public.moon VALUES (17, 'Tritonia', 3931, 89, true, 5);
INSERT INTO public.moon VALUES (18, 'Oberion', 3931, 89, true, 6);
INSERT INTO public.moon VALUES (19, 'Ariel', 3491, 9, true, 7);
INSERT INTO public.moon VALUES (20, 'Dione', 3491, 9, true, 8);


--
-- Data for Name: my_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.my_universe VALUES (1, 'Celestial', 'ONE');
INSERT INTO public.my_universe VALUES (2, 'Elysium', 'TWO');
INSERT INTO public.my_universe VALUES (3, 'Nova Prime', 'THREE');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1800, 12902, 'lovable', 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 1390, 18902, 'Creepy', 2);
INSERT INTO public.planet VALUES (3, 'Pluto', 1230, 1922, 'Cold', 3);
INSERT INTO public.planet VALUES (4, 'Venus', 9030, 1902, 'Red', 4);
INSERT INTO public.planet VALUES (5, 'Saturn', 1857, 1942, 'Ruling', 5);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1932, 1782, 'Rings', 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 1932, 1782, 'Freeze', 6);
INSERT INTO public.planet VALUES (8, 'Mars', 1232, 1782, 'Believe', 5);
INSERT INTO public.planet VALUES (9, 'Neptune', 2346, 8082, 'Neon', 4);
INSERT INTO public.planet VALUES (10, 'Ceres', 2346, 8082, 'Newby', 3);
INSERT INTO public.planet VALUES (11, 'Haumeas', 8596, 1014, 'Kind', 2);
INSERT INTO public.planet VALUES (12, 'Eris', 3946, 1014, 'Myth', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 3289, 38, true, 1);
INSERT INTO public.star VALUES (2, 'Polaris', 4374, 3245, false, 2);
INSERT INTO public.star VALUES (3, 'Amythist', 432737, 338245, false, 3);
INSERT INTO public.star VALUES (4, 'Kalix', 2097, 9797, false, 4);
INSERT INTO public.star VALUES (5, 'Luna', 3382, 1047, true, 5);
INSERT INTO public.star VALUES (6, 'Ke', 3392, 1917, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: my_universe_my_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.my_universe_my_universe_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: my_universe my_universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe
    ADD CONSTRAINT my_universe_name_key UNIQUE (name);


--
-- Name: my_universe my_universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe
    ADD CONSTRAINT my_universe_pkey PRIMARY KEY (my_universe_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

