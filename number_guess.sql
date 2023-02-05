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

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

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
-- Name: current_game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.current_game (
    guess integer NOT NULL
);


ALTER TABLE public.current_game OWNER TO freecodecamp;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    username character varying(22) NOT NULL,
    score integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: current_game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'hi', 4);
INSERT INTO public.games VALUES (2, 'Phil', 5);
INSERT INTO public.games VALUES (3, 'Phil', 3);
INSERT INTO public.games VALUES (4, 'Phil', 1);
INSERT INTO public.games VALUES (5, 'user_1675601877368', 9);
INSERT INTO public.games VALUES (6, 'ghf', 10);
INSERT INTO public.games VALUES (7, 'user_1675602059248', 4);
INSERT INTO public.games VALUES (8, 'Philip Graves', 12);
INSERT INTO public.games VALUES (9, 'user_1675610887567', 7);
INSERT INTO public.games VALUES (10, 'user_1675611288532', 12);
INSERT INTO public.games VALUES (11, 'user_1675616522479', 992);
INSERT INTO public.games VALUES (12, 'user_1675616522479', 851);
INSERT INTO public.games VALUES (13, 'user_1675616522478', 776);
INSERT INTO public.games VALUES (14, 'user_1675616522478', 60);
INSERT INTO public.games VALUES (15, 'user_1675616522479', 174);
INSERT INTO public.games VALUES (16, 'user_1675616522479', 605);
INSERT INTO public.games VALUES (17, 'user_1675616522479', 634);
INSERT INTO public.games VALUES (18, 'user_1675616576520', 41);
INSERT INTO public.games VALUES (19, 'user_1675616576520', 234);
INSERT INTO public.games VALUES (20, 'user_1675616576519', 678);
INSERT INTO public.games VALUES (21, 'user_1675616576519', 621);
INSERT INTO public.games VALUES (22, 'user_1675616576520', 657);
INSERT INTO public.games VALUES (23, 'user_1675616576520', 295);
INSERT INTO public.games VALUES (24, 'user_1675616576520', 872);
INSERT INTO public.games VALUES (25, 'Phil', 8);
INSERT INTO public.games VALUES (26, 'user_1675616666601', 973);
INSERT INTO public.games VALUES (27, 'user_1675616666601', 614);
INSERT INTO public.games VALUES (28, 'user_1675616666600', 647);
INSERT INTO public.games VALUES (29, 'user_1675616666600', 935);
INSERT INTO public.games VALUES (30, 'user_1675616666601', 293);
INSERT INTO public.games VALUES (31, 'user_1675616666601', 947);
INSERT INTO public.games VALUES (32, 'user_1675616666601', 754);
INSERT INTO public.games VALUES (33, 'user_1675616673997', 481);
INSERT INTO public.games VALUES (34, 'user_1675616673997', 945);
INSERT INTO public.games VALUES (35, 'user_1675616673996', 580);
INSERT INTO public.games VALUES (36, 'user_1675616673996', 870);
INSERT INTO public.games VALUES (37, 'user_1675616673997', 610);
INSERT INTO public.games VALUES (38, 'user_1675616673997', 454);
INSERT INTO public.games VALUES (39, 'user_1675616673997', 959);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 39, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

