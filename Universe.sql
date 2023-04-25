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
-- Name: aggregate; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aggregate (
    aggregate_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    moon_id integer,
    planet_id integer,
    star_id integer,
    galaxy_id integer
);


ALTER TABLE public.aggregate OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    true_false boolean,
    still_exists boolean,
    distance integer,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    planet_id integer,
    true_false boolean,
    still_exists boolean,
    distance integer,
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    star_id integer,
    true_false boolean,
    still_exists boolean,
    distance integer,
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    galaxy_id integer,
    true_false boolean,
    still_exists boolean,
    distance integer,
    age integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: aggregate; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aggregate VALUES (1, 'A1', 1, 1, 1, 1);
INSERT INTO public.aggregate VALUES (2, 'A2', 2, 2, 2, 2);
INSERT INTO public.aggregate VALUES (3, 'A3', 3, 3, 3, 3);
INSERT INTO public.aggregate VALUES (4, 'A4', 4, 4, 4, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 'aa', true, false, 1000, 1000);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'aa', false, true, 1000, 1000);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 'aa', true, true, 1000, 1000);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'aa', false, false, 1000, 1000);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'aa', true, false, 1000, 1000);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'aa', false, true, 1000, 1000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 'a', 1, true, true, 1, 1);
INSERT INTO public.moon VALUES (2, 'm2', 'a', 2, true, true, 1, 1);
INSERT INTO public.moon VALUES (3, 'm3', 'a', 3, true, true, 1, 1);
INSERT INTO public.moon VALUES (4, 'm4', 'a', 4, true, true, 1, 1);
INSERT INTO public.moon VALUES (5, 'm5', 'a', 5, true, true, 1, 1);
INSERT INTO public.moon VALUES (6, 'm6', 'a', 6, true, true, 1, 1);
INSERT INTO public.moon VALUES (7, 'm7', 'a', 7, true, true, 1, 1);
INSERT INTO public.moon VALUES (8, 'm8', 'a', 8, true, true, 1, 1);
INSERT INTO public.moon VALUES (9, 'm9', 'a', 9, true, true, 1, 1);
INSERT INTO public.moon VALUES (10, 'm10', 'a', 10, true, true, 1, 1);
INSERT INTO public.moon VALUES (11, 'm11', 'a', 11, true, true, 1, 1);
INSERT INTO public.moon VALUES (12, 'm12', 'a', 12, true, true, 1, 1);
INSERT INTO public.moon VALUES (13, 'm13', 'a', 1, true, true, 1, 1);
INSERT INTO public.moon VALUES (14, 'm14', 'a', 2, true, true, 1, 1);
INSERT INTO public.moon VALUES (15, 'm15', 'a', 3, true, true, 1, 1);
INSERT INTO public.moon VALUES (16, 'm16', 'a', 4, true, true, 1, 1);
INSERT INTO public.moon VALUES (17, 'm17', 'a', 5, true, true, 1, 1);
INSERT INTO public.moon VALUES (18, 'm18', 'a', 6, true, true, 1, 1);
INSERT INTO public.moon VALUES (19, 'm19', 'a', 7, true, true, 1, 1);
INSERT INTO public.moon VALUES (20, 'm20', 'a', 8, true, true, 1, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'aa', 1, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (2, 'planet2', 'aa', 2, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (3, 'planet3', 'aa', 3, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (4, 'planet4', 'aa', 4, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (5, 'planet5', 'aa', 5, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (6, 'planet6', 'aa', 6, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (7, 'planet1', 'aa', 1, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (8, 'planet8', 'aa', 2, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (9, 'planet9', 'aa', 3, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (10, 'planet10', 'aa', 4, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (11, 'planet11', 'aa', 5, true, true, 1000, 1000);
INSERT INTO public.planet VALUES (12, 'planet12', 'aa', 6, true, true, 1000, 1000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'aa', 1, true, false, 1000, 1000);
INSERT INTO public.star VALUES (2, 'star2', 'aa', 2, true, false, 1000, 1000);
INSERT INTO public.star VALUES (3, 'star3', 'aa', 3, false, true, 1000, 1000);
INSERT INTO public.star VALUES (4, 'star4', 'aa', 4, false, false, 1000, 1000);
INSERT INTO public.star VALUES (5, 'star5', 'aa', 5, true, true, 1000, 1000);
INSERT INTO public.star VALUES (6, 'star6', 'aa', 6, true, false, 1000, 1000);


--
-- Name: aggregate aggregate_aggregate_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aggregate
    ADD CONSTRAINT aggregate_aggregate_id_key UNIQUE (aggregate_id);


--
-- Name: aggregate aggregate_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aggregate
    ADD CONSTRAINT aggregate_pkey PRIMARY KEY (aggregate_id);


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
-- Name: aggregate aggregate_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aggregate
    ADD CONSTRAINT aggregate_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: aggregate aggregate_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aggregate
    ADD CONSTRAINT aggregate_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: aggregate aggregate_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aggregate
    ADD CONSTRAINT aggregate_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: aggregate aggregate_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aggregate
    ADD CONSTRAINT aggregate_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

