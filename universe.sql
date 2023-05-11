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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric,
    constellation text,
    number_of_stars integer,
    size_in_light_years integer,
    is_far boolean,
    is_near boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    color character varying(10),
    radius numeric,
    mass numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    number_of_moons integer,
    is_dwarf boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric,
    radius numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 2);
INSERT INTO public.comet VALUES (2, 'Giacobinni-Zinner', 2);
INSERT INTO public.comet VALUES (3, 'Borrelly', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 152000, 'Andromeda', 1000000000, 152000, true, false);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 87400, 'Sagittarius', 500000000, 87400, true, false);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 53800, 'Coma Berenices', 100000000, 53800, true, false);
INSERT INTO public.galaxy VALUES (4, 'NGC 4567-8/Butterfly Galaxies', 60000, 'Virgo', 520000000, 60000, true, false);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', 144300, 'Sculptor', 680000000, 144300, true, false);
INSERT INTO public.galaxy VALUES (6, 'Antennae Galaxy', 500000, 'Corvus', 900000000, 500000, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 2, 2, 3, 'White', 1736, 7.3421022);
INSERT INTO public.moon VALUES (2, 'Deimos', 2, 2, 4, 'Beige', 6.2, 1.47621015);
INSERT INTO public.moon VALUES (3, 'Phobos', 2, 2, 4, 'Red & Blue', 11.2667, 1.06591016);
INSERT INTO public.moon VALUES (4, 'Hygiea', 2, 2, 5, 'Grey', 0.94, 8.321019);
INSERT INTO public.moon VALUES (5, 'Vesta', 2, 2, 5, 'Grey', 262, 2.590761020);
INSERT INTO public.moon VALUES (6, 'Pallas', 2, 2, 5, 'White', 255.5, 2.041020);
INSERT INTO public.moon VALUES (7, 'Calisto', 2, 2, 6, 'Dark grey', 2410.3, 1.0761023);
INSERT INTO public.moon VALUES (8, 'Ganymede', 2, 2, 6, 'Beige', 2634.1, 1.48191023);
INSERT INTO public.moon VALUES (9, 'Europa', 2, 2, 6, 'Yellow-ish', 1560.8, 4.81022);
INSERT INTO public.moon VALUES (10, 'Io', 2, 2, 6, 'LYellow', 1821.6, 8.9321022);
INSERT INTO public.moon VALUES (11, 'Phoebe', 2, 2, 7, 'Dark Grey', 106.5, 8.31231018);
INSERT INTO public.moon VALUES (12, 'Iapetus', 2, 2, 7, 'RedBrown', 734.4, 1.80571021);
INSERT INTO public.moon VALUES (13, 'Hyperion', 2, 2, 7, 'Beige', 135, 5.55101018);
INSERT INTO public.moon VALUES (14, 'Titan', 2, 2, 7, 'Orange', 2574.73, 1.34521023);
INSERT INTO public.moon VALUES (15, 'Rhea', 2, 2, 7, 'Light Grey', 763.5, 2.3061021);
INSERT INTO public.moon VALUES (16, 'Dione', 2, 2, 7, 'Light Grey', 561.4, 1.0951021);
INSERT INTO public.moon VALUES (17, 'Tethys', 2, 2, 7, 'Grey', 531.1, 6.1751021);
INSERT INTO public.moon VALUES (18, 'Enceladus', 2, 2, 7, 'Grey', 252.1, 1.0801020);
INSERT INTO public.moon VALUES (19, 'Mimas', 2, 2, 7, 'Dark Grey', 415.6, 3.751019);
INSERT INTO public.moon VALUES (20, 'Miranda', 2, 2, 8, 'Grey', 235.8, 6.41019);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'Ceres', 2, 2, 3, true);
INSERT INTO public.planet VALUES (10, 'Pluto', 2, 2, 1, true);
INSERT INTO public.planet VALUES (11, 'Eris', 2, 2, 2, true);
INSERT INTO public.planet VALUES (12, 'Sedna', 2, 2, 0, true);
INSERT INTO public.planet VALUES (1, 'Mercury', 2, 2, 0, false);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 2, 0, false);
INSERT INTO public.planet VALUES (3, 'Earth', 2, 2, 1, false);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 2, 2, false);
INSERT INTO public.planet VALUES (6, 'Jupiter', 2, 2, 4, false);
INSERT INTO public.planet VALUES (7, 'Saturn', 2, 2, 9, false);
INSERT INTO public.planet VALUES (8, 'Uranus', 2, 2, 5, false);
INSERT INTO public.planet VALUES (9, 'Neptune', 2, 2, 3, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Delta Andromeda', 1, 1.3, 13.6);
INSERT INTO public.star VALUES (2, 'The Sun', 2, 0.9885030, 0.000000073573);
INSERT INTO public.star VALUES (3, '13 Coma Berenices', 3, 2.83, 5.17);
INSERT INTO public.star VALUES (4, 'Spica', 4, 11.43, 7.47);
INSERT INTO public.star VALUES (5, 'Gamma Sculptoris', 5, 1.6, 12);
INSERT INTO public.star VALUES (6, 'Eta Corvi', 6, 1.43, 1.2);


--
-- Name: comet comet_comet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_comet_id_key UNIQUE (comet_id);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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


