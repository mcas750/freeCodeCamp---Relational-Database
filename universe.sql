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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    count_star integer NOT NULL,
    square integer NOT NULL,
    astronomer text NOT NULL,
    latitude_from integer NOT NULL,
    latitude_to integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    groupgalaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    radial_velocity integer,
    distance integer,
    magnitude numeric(4,1),
    galactic_disk boolean,
    spiral_branches boolean
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
-- Name: groupgalaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.groupgalaxy (
    groupgalaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    magnitude numeric(4,1)
);


ALTER TABLE public.groupgalaxy OWNER TO freecodecamp;

--
-- Name: groupgalaxy_groupgalaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.groupgalaxy_groupgalaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groupgalaxy_groupgalaxy_id_seq OWNER TO freecodecamp;

--
-- Name: groupgalaxy_groupgalaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.groupgalaxy_groupgalaxy_id_seq OWNED BY public.groupgalaxy.groupgalaxy_id;


--
-- Name: groupgalaxyconstellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.groupgalaxyconstellation (
    groupgalaxyconstellation_id integer NOT NULL,
    constellation_id integer NOT NULL,
    groupgalaxy_id integer NOT NULL,
    sort integer,
    name character varying(30)
);


ALTER TABLE public.groupgalaxyconstellation OWNER TO freecodecamp;

--
-- Name: groupgalaxyconstellation_groupgalaxyconstellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.groupgalaxyconstellation_groupgalaxyconstellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groupgalaxyconstellation_groupgalaxyconstellation_id_seq OWNER TO freecodecamp;

--
-- Name: groupgalaxyconstellation_groupgalaxyconstellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.groupgalaxyconstellation_groupgalaxyconstellation_id_seq OWNED BY public.groupgalaxyconstellation.groupgalaxyconstellation_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_planet integer NOT NULL,
    temperature integer NOT NULL,
    orbital_speed numeric NOT NULL,
    discoverer text NOT NULL
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
    star_id integer,
    name character varying(30) NOT NULL,
    diametr numeric(4,1) NOT NULL,
    group_planet text,
    ring boolean,
    atmosphere boolean,
    mass integer NOT NULL
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
    galaxy_id integer NOT NULL,
    constellation_id integer,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    spectrum_class character varying(30) NOT NULL,
    distance integer,
    color text
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: groupgalaxy groupgalaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.groupgalaxy ALTER COLUMN groupgalaxy_id SET DEFAULT nextval('public.groupgalaxy_groupgalaxy_id_seq'::regclass);


--
-- Name: groupgalaxyconstellation groupgalaxyconstellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.groupgalaxyconstellation ALTER COLUMN groupgalaxyconstellation_id SET DEFAULT nextval('public.groupgalaxyconstellation_groupgalaxyconstellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Coma Berenices', 50, 386, 'Tycho Brahe', 90, -56);
INSERT INTO public.constellation VALUES (2, 'Canes Venatici', 30, 465, 'Johannes Hevelius', 90, -37);
INSERT INTO public.constellation VALUES (3, 'Hydra', 130, 1303, 'Claudius Ptolemaeus', 55, -83);
INSERT INTO public.constellation VALUES (4, 'Centaurus', 15, 1060, 'Claudius Ptolemaeus', 26, -90);
INSERT INTO public.constellation VALUES (5, 'Virgo', 95, 1294, 'Claudius Ptolemaeus', 68, -75);
INSERT INTO public.constellation VALUES (6, 'Ursa Major', 125, 1280, 'Claudius Ptolemaeus', 90, -16);
INSERT INTO public.constellation VALUES (7, 'Camelopardalis', 50, 757, 'Petrus Plancius', 90, 3);
INSERT INTO public.constellation VALUES (8, 'Scriptor', 30, 475, 'Nicolas Louis De La Caille', 50, -90);
INSERT INTO public.constellation VALUES (9, 'Aquila', 70, 652, 'Claudius Ptolemaeus', 78, -71);
INSERT INTO public.constellation VALUES (10, 'Saqitta', 20, 80, 'Claudius Ptolemaeus', 90, -68);
INSERT INTO public.constellation VALUES (11, 'Vulpecula', 45, 268, 'Johannes Hevelius', 90, -61);
INSERT INTO public.constellation VALUES (12, 'Cepheus', 60, 588, 'Claudius Ptolemaeus', 90, -2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Milky Way', 'SBbc', 220, 0, 0.0, true, true);
INSERT INTO public.galaxy VALUES (2, 2, 'ESO 410-G005', 'E3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 4, 'NGC 300', 'SA(s)d', 146, 7, 9.0, true, false);
INSERT INTO public.galaxy VALUES (4, 3, 'UGC 9240', 'IAm', 150, 30000, 13.3, true, false);
INSERT INTO public.galaxy VALUES (5, 5, 'Dwingeloo 1', 'SB(s)cd', 112, 10, 13.3, false, false);
INSERT INTO public.galaxy VALUES (6, 6, 'NGC 5102', 'SA0-HII', 467, 11, 10.4, false, false);
INSERT INTO public.galaxy VALUES (7, 7, 'NGC 2976', 'SAc pec HII', 5, 12, 10.8, true, false);
INSERT INTO public.galaxy VALUES (8, 1, 'NGC 598', 'SAc', -182, 3, 6.2, true, true);
INSERT INTO public.galaxy VALUES (9, 3, 'NGC 4214', 'IAB(s)m', 291, 9, 10.2, true, false);
INSERT INTO public.galaxy VALUES (10, 1, 'MMO', 'SB(s)m pec', 162, 1, 2.7, true, false);
INSERT INTO public.galaxy VALUES (11, 6, 'ESO 097-13', 'SA(s)b', 435, 9, 12.1, true, false);


--
-- Data for Name: groupgalaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.groupgalaxy VALUES (1, 'Local group', 'Compact group', 12.4);
INSERT INTO public.groupgalaxy VALUES (2, 'NGC 55 & 300', 'Proto groups', 4.3);
INSERT INTO public.groupgalaxy VALUES (3, 'Group M94', 'Fossil groups', 9.8);
INSERT INTO public.groupgalaxy VALUES (5, 'Group IC 342', 'Fossil groups', 21.4);
INSERT INTO public.groupgalaxy VALUES (6, 'Group M83', 'Compact groups', 14.9);
INSERT INTO public.groupgalaxy VALUES (7, 'Group M81', 'Proto groups', 12.7);
INSERT INTO public.groupgalaxy VALUES (4, 'Sculptor Group', 'Proto groups', 7.2);


--
-- Data for Name: groupgalaxyconstellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.groupgalaxyconstellation VALUES (1, 1, 3, 1, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (2, 2, 3, 2, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (3, 3, 6, 2, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (4, 4, 6, 3, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (5, 5, 6, 1, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (6, 6, 7, 1, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (7, 7, 7, 2, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (8, 8, 4, 1, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (9, 9, 1, 1, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (10, 10, 1, 3, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (11, 11, 1, 2, NULL);
INSERT INTO public.groupgalaxyconstellation VALUES (12, 12, 1, 4, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', 384467, 100, 1.023, 'Galileo Galilei');
INSERT INTO public.moon VALUES (2, 4, 'Deimos', 23500, 230, 5.6, 'Asaph Hall');
INSERT INTO public.moon VALUES (3, 4, 'Phobos', 6006, 233, 11.8, 'Asaph Hall');
INSERT INTO public.moon VALUES (4, 5, 'Io', 350000, 90, 17.334, 'Galileo Galilei');
INSERT INTO public.moon VALUES (5, 5, 'Europa', 670900, 110, 13.740, 'Galileo Galilei');
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', 1071600, 110, 10.88, 'Galileo Galilei');
INSERT INTO public.moon VALUES (7, 5, 'Callisto', 1869000, 123, 8.204, 'Galileo Galilei');
INSERT INTO public.moon VALUES (8, 5, 'Amalthea', 181150, 165, 25.57, 'Edward Emerson Barnard');
INSERT INTO public.moon VALUES (9, 6, 'Titan', 1221870, 94, 1.867, 'Christiaan Huygens');
INSERT INTO public.moon VALUES (10, 6, 'Tethys', 294672, 86, 0.394, 'Giovanni Domenico Cassini');
INSERT INTO public.moon VALUES (11, 6, 'Enceladus', 437948, 75, 11.7, 'Frederick William Herschel');
INSERT INTO public.moon VALUES (12, 6, 'Hyperion', 1481009, 110, 21.4, 'William Cranch Bond');
INSERT INTO public.moon VALUES (13, 6, 'Epimetheus', 151410, 78, 0.0078, 'Richard A. Walker');
INSERT INTO public.moon VALUES (14, 7, 'Oberon', 583520, 75, 0.346, 'Frederick william Herschel');
INSERT INTO public.moon VALUES (15, 7, 'Juliet', 64359, 60, 0.016, 'Stephen P. Synnott');
INSERT INTO public.moon VALUES (16, 7, 'Belinda', 75255, 64, 0.034, 'Stephen P. Synnott');
INSERT INTO public.moon VALUES (17, 7, 'Caliban', 7168879, 64, 2.34, 'Brett J. Gladman');
INSERT INTO public.moon VALUES (18, 7, 'Mab', 977365, 63, 0.0044, 'Jack Jonathan Lissauer');
INSERT INTO public.moon VALUES (19, 8, 'Triton', 354759, 38, 13.47, 'William Lassell');
INSERT INTO public.moon VALUES (20, 8, 'Galatea', 619530, 57, 0.75, 'Stephen P. Synnott');
INSERT INTO public.moon VALUES (21, 8, 'Neso', 48387000, 133, 1.5, 'Matthew J. Holman');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 0.4, 'Sun system', false, false, 6);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 0.9, 'Sun system', false, true, 82);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 1.0, 'Sun system', false, true, 100);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 0.5, 'Sun system', false, true, 11);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 11.0, 'Sun system', true, true, 318);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 9.4, 'Sun system', true, true, 95);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 4.0, 'Sun system', true, true, 15);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 3.9, 'Sun system', true, true, 17);
INSERT INTO public.planet VALUES (9, 1, 'Ceres', 0.1, 'Sun System', false, false, 2);
INSERT INTO public.planet VALUES (10, 1, 'Pluto', 0.2, 'Sun System', false, false, 22);
INSERT INTO public.planet VALUES (11, 1, 'Haumea', 0.4, 'Sun system', false, false, 7);
INSERT INTO public.planet VALUES (12, 1, 'Makemake', 0.1, 'Sun system', false, false, 7);
INSERT INTO public.planet VALUES (13, 1, 'Eris', 0.2, 'Sun system', false, false, 25);
INSERT INTO public.planet VALUES (14, NULL, 'Ross 128 b', 1.1, NULL, false, false, 2);
INSERT INTO public.planet VALUES (15, NULL, 'GJ 273', 0.4, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, NULL, 'Sun', 4500, 'G', 0, 'Yellow');
INSERT INTO public.star VALUES (2, 9, 1, 'Alpha Comae Berenices', 400, 'F', 58, 'Yellow white');
INSERT INTO public.star VALUES (3, 4, 2, 'Cor Caroli', 430, 'A', 114, 'Blue and White');
INSERT INTO public.star VALUES (4, 11, 3, 'Alphard', 1200, 'K', 177, 'Orange');
INSERT INTO public.star VALUES (5, 6, 4, 'Proxima', 4850, 'C', 4243, 'Red');
INSERT INTO public.star VALUES (6, 11, 5, 'Spica', 13, 'B', 270, 'Blue and white');
INSERT INTO public.star VALUES (7, 7, 6, 'Alioth', 300, 'A', 25000, 'White');
INSERT INTO public.star VALUES (8, 7, 6, 'Dubhe', 1500, 'G', 123, 'Yellow');
INSERT INTO public.star VALUES (9, 7, 6, 'Mizar', 370, 'A', 78, 'White');


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 12, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: groupgalaxy_groupgalaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.groupgalaxy_groupgalaxy_id_seq', 7, true);


--
-- Name: groupgalaxyconstellation_groupgalaxyconstellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.groupgalaxyconstellation_groupgalaxyconstellation_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: constellation constellation_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_id_key UNIQUE (constellation_id);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: groupgalaxy groupgalaxy_groupgalaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.groupgalaxy
    ADD CONSTRAINT groupgalaxy_groupgalaxy_id_key UNIQUE (groupgalaxy_id);


--
-- Name: groupgalaxy groupgalaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.groupgalaxy
    ADD CONSTRAINT groupgalaxy_pkey PRIMARY KEY (groupgalaxy_id);


--
-- Name: groupgalaxyconstellation groupgalaxyconstellation_groupgalaxyconstellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.groupgalaxyconstellation
    ADD CONSTRAINT groupgalaxyconstellation_groupgalaxyconstellation_id_key UNIQUE (groupgalaxyconstellation_id);


--
-- Name: groupgalaxyconstellation groupgalaxyconstellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.groupgalaxyconstellation
    ADD CONSTRAINT groupgalaxyconstellation_pkey PRIMARY KEY (groupgalaxyconstellation_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_groupgalaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_groupgalaxy_id_fkey FOREIGN KEY (groupgalaxy_id) REFERENCES public.groupgalaxy(groupgalaxy_id);


--
-- Name: groupgalaxyconstellation groupgalaxyconstellation_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.groupgalaxyconstellation
    ADD CONSTRAINT groupgalaxyconstellation_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: groupgalaxyconstellation groupgalaxyconstellation_groupgalaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.groupgalaxyconstellation
    ADD CONSTRAINT groupgalaxyconstellation_groupgalaxy_id_fkey FOREIGN KEY (groupgalaxy_id) REFERENCES public.groupgalaxy(groupgalaxy_id);


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
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

