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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('', 0, NULL);
INSERT INTO public.users VALUES ('user_1726578455362', 2, 33);
INSERT INTO public.users VALUES ('user_1726578455363', 5, 216);
INSERT INTO public.users VALUES ('user_1726579211971', 2, 29);
INSERT INTO public.users VALUES ('user_1726579211972', 5, 11);
INSERT INTO public.users VALUES ('user_1726578649836', 2, 587);
INSERT INTO public.users VALUES ('user_1726579935436', 2, 301);
INSERT INTO public.users VALUES ('user_1726578649837', 5, 457);
INSERT INTO public.users VALUES ('user_1726580809010', 2, 243);
INSERT INTO public.users VALUES ('user_1726579230530', 2, 536);
INSERT INTO public.users VALUES ('user_1726579935437', 5, 20);
INSERT INTO public.users VALUES ('user_1726580809011', 5, 190);
INSERT INTO public.users VALUES ('user_1726579230531', 5, 13);
INSERT INTO public.users VALUES ('user_1726578874100', 2, 196);
INSERT INTO public.users VALUES ('user_1726581573239', 2, 191);
INSERT INTO public.users VALUES ('Kauan', 2, 10);
INSERT INTO public.users VALUES ('user_1726581895681', 2, 215);
INSERT INTO public.users VALUES ('user_1726578874101', 5, 175);
INSERT INTO public.users VALUES ('user_1726579966432', 2, 134);
INSERT INTO public.users VALUES ('user_1726578933578', 2, 473);
INSERT INTO public.users VALUES ('user_1726581573240', 5, 360);
INSERT INTO public.users VALUES ('user_1726578933579', 5, 53);
INSERT INTO public.users VALUES ('user_1726579427837', 2, 100);
INSERT INTO public.users VALUES ('Rodrigo', 2, 5);
INSERT INTO public.users VALUES ('user_1726579966433', 5, 116);
INSERT INTO public.users VALUES ('Davi', 1, 11);
INSERT INTO public.users VALUES ('Henrique', 2, 6);
INSERT INTO public.users VALUES ('user_1726579427838', 5, 165);
INSERT INTO public.users VALUES ('user_1726581895682', 5, 47);
INSERT INTO public.users VALUES ('user_1726580853954', 2, 144);
INSERT INTO public.users VALUES ('user_1726581951859', 2, 673);
INSERT INTO public.users VALUES ('user_1726579499355', 2, 810);
INSERT INTO public.users VALUES ('user_1726580002655', 2, 283);
INSERT INTO public.users VALUES ('user_1726579499356', 5, 225);
INSERT INTO public.users VALUES ('user_1726580853955', 5, 128);
INSERT INTO public.users VALUES ('user_1726580002656', 5, 82);
INSERT INTO public.users VALUES ('user_1726579595922', 2, 921);
INSERT INTO public.users VALUES ('500', 0, NULL);
INSERT INTO public.users VALUES ('user_1726579595923', 5, 390);
INSERT INTO public.users VALUES ('user_1726581594652', 2, 249);
INSERT INTO public.users VALUES ('qwerty', 3, 9);
INSERT INTO public.users VALUES ('user_1726580613920', 2, 470);
INSERT INTO public.users VALUES ('qwery', 0, NULL);
INSERT INTO public.users VALUES ('user_1726580613921', 5, 35);
INSERT INTO public.users VALUES ('user_1726581951860', 5, 122);
INSERT INTO public.users VALUES ('user_1726581594653', 5, 71);
INSERT INTO public.users VALUES ('user_1726580660928', 2, 307);
INSERT INTO public.users VALUES ('user_1726581480533', 2, 487);
INSERT INTO public.users VALUES ('user_1726580660929', 5, 95);
INSERT INTO public.users VALUES ('user_1726581907537', 2, 174);
INSERT INTO public.users VALUES ('user_1726581480534', 5, 71);
INSERT INTO public.users VALUES ('user_1726580681827', 2, 675);
INSERT INTO public.users VALUES ('user_1726581907538', 5, 222);
INSERT INTO public.users VALUES ('user_1726581710419', 2, 70);
INSERT INTO public.users VALUES ('user_1726580681828', 5, 122);
INSERT INTO public.users VALUES ('user_1726581488475', 2, 314);
INSERT INTO public.users VALUES ('user_1726581710420', 5, 70);
INSERT INTO public.users VALUES ('user_1726581488476', 5, 269);
INSERT INTO public.users VALUES ('user_1726581962369', 2, 234);
INSERT INTO public.users VALUES ('user_1726581919240', 2, 329);
INSERT INTO public.users VALUES ('user_1726581719450', 2, 271);
INSERT INTO public.users VALUES ('user_1726581525347', 2, 170);
INSERT INTO public.users VALUES ('user_1726581719451', 5, 225);
INSERT INTO public.users VALUES ('user_1726581525348', 5, 310);
INSERT INTO public.users VALUES ('user_1726581919241', 5, 166);
INSERT INTO public.users VALUES ('user_1726581962370', 5, 200);
INSERT INTO public.users VALUES ('user_1726581734792', 2, 166);
INSERT INTO public.users VALUES ('user_1726581734793', 5, 213);
INSERT INTO public.users VALUES ('user_1726581928556', 2, 415);
INSERT INTO public.users VALUES ('user_1726581928557', 5, 113);
INSERT INTO public.users VALUES ('user_1726581883273', 2, 516);
INSERT INTO public.users VALUES ('user_1726581883274', 5, 570);
INSERT INTO public.users VALUES ('user_1726581976260', 2, 435);
INSERT INTO public.users VALUES ('user_1726581976261', 5, 182);
INSERT INTO public.users VALUES ('user_1726581941701', 2, 57);
INSERT INTO public.users VALUES ('user_1726581941702', 5, 305);
INSERT INTO public.users VALUES ('user_1726582021308', 2, 911);
INSERT INTO public.users VALUES ('user_1726582021309', 5, 113);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

