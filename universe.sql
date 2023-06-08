--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: elements; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.elements (
    elements_id integer NOT NULL,
    name character varying(255),
    z integer NOT NULL,
    a integer NOT NULL
);


ALTER TABLE public.elements OWNER TO freecodecamp;

--
-- Name: elements_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.elements_elements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.elements_elements_id_seq OWNER TO freecodecamp;

--
-- Name: elements_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.elements_elements_id_seq OWNED BY public.elements.elements_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    radius numeric NOT NULL,
    description text,
    is_elliptical boolean NOT NULL,
    is_helix boolean NOT NULL,
    mass integer,
    distance integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    radius numeric NOT NULL,
    description text,
    is_round boolean NOT NULL,
    has_atmosphere boolean NOT NULL,
    age integer,
    mass integer,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    radius numeric NOT NULL,
    description text,
    is_life_present boolean NOT NULL,
    has_rings boolean NOT NULL,
    age integer NOT NULL,
    mass integer NOT NULL,
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
    name character varying(255),
    radius numeric,
    description text,
    is_big boolean NOT NULL,
    alive boolean NOT NULL,
    age integer NOT NULL,
    mass integer,
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
-- Name: elements elements_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements ALTER COLUMN elements_id SET DEFAULT nextval('public.elements_elements_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.elements VALUES (1, 'Oxygen', 8, 16);
INSERT INTO public.elements VALUES (2, 'Hydrogen', 1, 1);
INSERT INTO public.elements VALUES (3, 'Nytrogen', 7, 14);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 63.23, 'This is our galaxy', true, false, 65, 0);
INSERT INTO public.galaxy VALUES (2, 'Akash Ganga', 632.23, 'This is also our galaxy', true, false, 653, 0);
INSERT INTO public.galaxy VALUES (3, 'No nonsense galaxy', 232.03, 'This is a no nonsense galaxy', false, false, 53, 1601);
INSERT INTO public.galaxy VALUES (4, 'Galaxy62', 32.03, 'This is the biggest no nonsense galaxy', false, true, 953, 10);
INSERT INTO public.galaxy VALUES (5, 'Galaxy6', 330.09, 'This is a nonsense galaxy', true, false, 2953, 21);
INSERT INTO public.galaxy VALUES (6, 'Galaxy69', 930.2, 'This is the biggest nonsense galaxy', true, false, 2507, 291);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.012, 'It is white.', true, false, 2, 5, 1);
INSERT INTO public.moon VALUES (2, 'Titan', 0.112, 'It is famous.', true, false, 2, 5, 7);
INSERT INTO public.moon VALUES (3, 'Aster', 0.112, 'It is not famous.', false, true, 2, 5, 12);
INSERT INTO public.moon VALUES (5, 'Asteiskr', 0.112, 'It is not famous.', false, true, 2, 5, 10);
INSERT INTO public.moon VALUES (6, 'Loon', 0.112, 'It is not famous.', false, true, 2, 5, 8);
INSERT INTO public.moon VALUES (7, 'Pacoon', 0.112, 'It is not famous.', false, true, 2, 5, 5);
INSERT INTO public.moon VALUES (8, 'Pycon', 0.112, 'It is not famous.', false, true, 2, 5, 2);
INSERT INTO public.moon VALUES (9, 'Toon', 0.112, 'It is not famous.', false, true, 2, 5, 2);
INSERT INTO public.moon VALUES (10, 'Zoom', 0.112, 'It is not famous.', false, true, 2, 5, 9);
INSERT INTO public.moon VALUES (11, 'Goom', 0.1125, 'It is not much famous.', false, true, 2, 5, 6);
INSERT INTO public.moon VALUES (12, 'Orangem', 0.1125, 'It is not much famous.', false, true, 2, 5, 6);
INSERT INTO public.moon VALUES (13, 'Jomba', 0.912, 'It is not famous.', true, true, 2, 5, 9);
INSERT INTO public.moon VALUES (14, 'Orngem', 0.1125, 'It is not much famous.', false, true, 2, 5, 6);
INSERT INTO public.moon VALUES (15, 'Orngevm', 0.1125, 'It is not much famous.', false, true, 2, 5, 11);
INSERT INTO public.moon VALUES (16, 'Angechum', 0.1125, 'It is not much famous.', false, true, 2, 5, 1);
INSERT INTO public.moon VALUES (17, 'Boon', 1.9125, 'It is not much callous.', false, true, 2, 5, 4);
INSERT INTO public.moon VALUES (18, 'Soon', 1.9125, 'It is not much callous.', false, true, 2, 5, 5);
INSERT INTO public.moon VALUES (19, 'Doon', 1.9125, 'It is not much callous.', false, true, 2, 5, 3);
INSERT INTO public.moon VALUES (20, 'Doom', 1.9125, 'It is not much callous.', false, true, 2, 5, 3);
INSERT INTO public.moon VALUES (21, 'Kaboom', 1.9125, 'It is not much callous.', false, true, NULL, NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 23.65, 'It is inhabited by humans.', true, false, 23605, 994446, 1);
INSERT INTO public.planet VALUES (2, 'Keplar22', 13.65, 'It can have life.', true, false, 13605, 94446, 2);
INSERT INTO public.planet VALUES (3, 'mercury', 3.65, 'It can never have life.', false, false, 3605, 914446, 1);
INSERT INTO public.planet VALUES (4, 'pluto', 5.42, 'It is a dwarf planet.', false, false, 31605, 14446, 1);
INSERT INTO public.planet VALUES (5, 'Mars', 25.42, 'It will be colonised by Elon Musk.', false, false, 31605, 914446, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 125.42, 'It has water', false, true, 399605, 1914446, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 325.42, 'It has beautiful rings', false, true, 599605, 2914446, 1);
INSERT INTO public.planet VALUES (8, 'Jupiter', 395.42, 'It has many storms', false, false, 699605, 3014446, 1);
INSERT INTO public.planet VALUES (9, 'Venus', 15.42, 'Damn! It is hot.', false, false, 69605, 34446, 1);
INSERT INTO public.planet VALUES (10, 'Neptune', 165.242, 'Damn! It is cold.', false, true, 9605, 14446, 1);
INSERT INTO public.planet VALUES (11, 'Plasticverse', 5.42, 'Itis polluted.', false, false, 9605, 19144, 5);
INSERT INTO public.planet VALUES (12, 'Asgard', 15.42, 'Marvel fans are here.', true, false, 9605, 19144, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 130, 'This is our star', false, true, 632098, 1000006, 1);
INSERT INTO public.star VALUES (1, 'Proxima Century', 190, 'This is the star nearest to Sun', true, true, 632098, 1000006, 2);
INSERT INTO public.star VALUES (4, 'Rockstar', 63, 'This is the best rock star', false, true, 2098, 10003, 3);
INSERT INTO public.star VALUES (5, 'Popstar', 63, 'This is the best pop star', false, false, 3098, 93, 3);
INSERT INTO public.star VALUES (3, 'Moviestar', 131, 'This is the worst movie star', false, false, 36, 75, 4);
INSERT INTO public.star VALUES (6, 'Oldstar', 63, 'This is the best old star', true, false, 98, 93, 2);


--
-- Name: elements_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.elements_elements_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: elements elements_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_name_key UNIQUE (name);


--
-- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (elements_id);


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
-- Name: star fk_galaxies; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxies FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
