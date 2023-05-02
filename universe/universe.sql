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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255),
    size numeric NOT NULL,
    in_orbit boolean DEFAULT false,
    planet_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    location_x numeric,
    location_y numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    size numeric NOT NULL,
    circular_path boolean DEFAULT true,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    size integer NOT NULL,
    hability boolean DEFAULT false,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    size integer NOT NULL,
    color character varying(10) DEFAULT 'red'::character varying,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (0, '1 Ceres', 0.005, true, 3);
INSERT INTO public.asteroid VALUES (1, '4 Vesta', 0.003, false, NULL);
INSERT INTO public.asteroid VALUES (2, '2 Pallas', 0.003, false, NULL);
INSERT INTO public.asteroid VALUES (3, '10 Hygiea', 0.009, false, NULL);
INSERT INTO public.asteroid VALUES (4, '433 Eros', 0.002, true, 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (0, 'Milky Way', 0, 0, 'We live here');
INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', -1.36, -0.40, 'Will collide in 4.5b years');
INSERT INTO public.galaxy VALUES (2, 'Bode''s Galaxy', -1.35, 3.05, 'Found by Johann Elert Bode in 1744');
INSERT INTO public.galaxy VALUES (3, 'Eye of Sauron', 7.34, -2.19, 'Resembles Eye of Sauron from Lord of the Rings');
INSERT INTO public.galaxy VALUES (4, 'HIPASS J1131-31', -5.56, -9.30, 'Nicknamed ''Peekaboo Galaxy'' due to being obscured by a relatively fast-moving star, was then observed when the star moved');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', -1.62, 0.21, 'Observable by the naked eye');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 'Moon', 0.18, false, 2);
INSERT INTO public.moon VALUES (1, 'Europa (Jupiter II)', 0.12, true, 4);
INSERT INTO public.moon VALUES (2, 'Ganymede (Jupter III)', 0.45, true, 4);
INSERT INTO public.moon VALUES (3, 'Titan', 0.38, true, 5);
INSERT INTO public.moon VALUES (4, 'Io (Jupiter I)', 0.35, true, 4);
INSERT INTO public.moon VALUES (5, 'Enceladus', 0.15, true, 5);
INSERT INTO public.moon VALUES (6, 'Callisto (Jupiter IV)', 0.42, true, 4);
INSERT INTO public.moon VALUES (7, 'Triton', 0.2, false, 7);
INSERT INTO public.moon VALUES (8, 'Himalia (Jupiter VI)', 0.21, true, 4);
INSERT INTO public.moon VALUES (9, 'Thebe (Jupter XIV)', 0.14, true, 4);
INSERT INTO public.moon VALUES (10, 'Amalthea (Jupiter V)', 0.32, true, 4);
INSERT INTO public.moon VALUES (11, 'Mimas', 0.04, true, 5);
INSERT INTO public.moon VALUES (12, 'Despina (Neptune V)', 0.09, true, 7);
INSERT INTO public.moon VALUES (13, 'Dione (Saturn IV)', 0.12, true, 5);
INSERT INTO public.moon VALUES (14, 'Iapetus (Saturn XXIV)', 0.13, true, 5);
INSERT INTO public.moon VALUES (15, 'Hyperion (Saturn VII)', 0.11, false, 5);
INSERT INTO public.moon VALUES (16, 'Nereid (Neptune II)', 0.12, false, 7);
INSERT INTO public.moon VALUES (17, 'Charon (Pluton I)', 0.06, true, 8);
INSERT INTO public.moon VALUES (18, 'Deimos', 0.08, false, 3);
INSERT INTO public.moon VALUES (19, 'Phobos', 0.08, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (0, 'Mercury', 58, false, 0);
INSERT INTO public.planet VALUES (1, 'Venus', 108, false, 0);
INSERT INTO public.planet VALUES (2, 'Earth', 150, true, 0);
INSERT INTO public.planet VALUES (3, 'Mars', 228, false, 0);
INSERT INTO public.planet VALUES (4, 'Jupiter', 779, false, 0);
INSERT INTO public.planet VALUES (5, 'Saturn', 1434, false, 0);
INSERT INTO public.planet VALUES (6, 'Uranus', 2871, false, 0);
INSERT INTO public.planet VALUES (7, 'Neptune', 4495, false, 0);
INSERT INTO public.planet VALUES (8, 'Pluto', 17, false, 0);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 203, false, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri d', 198, false, 1);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri c', 25, false, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (0, 'Sun', 1400000, 'white', 0);
INSERT INTO public.star VALUES (2, 'Alpheratz (α Andromeda)', 2898000, 'blue-white', 1);
INSERT INTO public.star VALUES (3, 'Mirach (ß Andromeda)', 2870000, 'red', 1);
INSERT INTO public.star VALUES (1, 'Proxima Centauri (α Centauri C)', 107280, 'red', 0);
INSERT INTO public.star VALUES (4, 'Rigil Kentaurus (α Centauri A)', 2520000, 'yellow', 0);
INSERT INTO public.star VALUES (5, 'Toliman (α Centauri B)', 2295000, 'orange', 0);


--
-- Name: asteroid asteroid_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_uniq UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_uniq UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_uniq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_uniq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_uniq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

