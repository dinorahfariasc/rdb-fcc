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
    galaxyid integer NOT NULL,
    name character varying(12),
    appmag integer,
    kgmass numeric(18,0),
    info text,
    life boolean,
    water boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxyid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxyid_seq OWNED BY public.galaxy.galaxyid;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moonid integer NOT NULL,
    name character varying(12),
    appmag integer,
    kgmass numeric(18,0),
    info text,
    life boolean,
    water boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonid_seq OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonid_seq OWNED BY public.moon.moonid;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planetid integer NOT NULL,
    name character varying(12),
    appmag integer,
    kgmass numeric(18,0),
    info text,
    life boolean,
    water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetid_seq OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetid_seq OWNED BY public.planet.planetid;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    id integer NOT NULL,
    name character varying(12),
    isnatural boolean,
    orbit text
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_id_seq OWNED BY public.satellite.id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    starid integer NOT NULL,
    name character varying(12),
    appmag integer,
    kgmass numeric(18,0),
    info text,
    life boolean,
    water boolean,
    galaxyid integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.starid;


--
-- Name: galaxy galaxyid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxyid SET DEFAULT nextval('public.galaxy_galaxyid_seq'::regclass);


--
-- Name: moon moonid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moonid SET DEFAULT nextval('public.moon_moonid_seq'::regclass);


--
-- Name: planet planetid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planetid SET DEFAULT nextval('public.planet_planetid_seq'::regclass);


--
-- Name: satellite id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN id SET DEFAULT nextval('public.satellite_id_seq'::regclass);


--
-- Name: star starid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN starid SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ANDROMEDA', 3, 3, 'a galaxia mais proxima da via lactea', false, false);
INSERT INTO public.galaxy VALUES (3, 'Milk Way', 21, 8000000000000000, 'nossa galaxia', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mintaka', 7, 90000, 'estrela central do cinturao de orion', false, false, 1);
INSERT INTO public.star VALUES (3, 'Alnillam', 2, 40000, 'estrela do cinturao de orion', false, false, 1);
INSERT INTO public.star VALUES (2, 'Alnitak', 4, 60000, 'estrela do cinturao de orion', false, false, 1);


--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxyid_seq', 3, true);


--
-- Name: moon_moonid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonid_seq', 1, false);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 1, false);


--
-- Name: satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_id_seq', 1, false);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxyid);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moonid);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planetid);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (starid);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxyid) REFERENCES public.galaxy(galaxyid);


--
-- PostgreSQL database dump complete
--

