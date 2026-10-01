--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 493);
INSERT INTO public.games VALUES (2, 1, 927);
INSERT INTO public.games VALUES (3, 2, 181);
INSERT INTO public.games VALUES (4, 2, 915);
INSERT INTO public.games VALUES (5, 1, 682);
INSERT INTO public.games VALUES (6, 1, 973);
INSERT INTO public.games VALUES (7, 1, 895);
INSERT INTO public.games VALUES (8, 3, 508);
INSERT INTO public.games VALUES (9, 3, 492);
INSERT INTO public.games VALUES (10, 4, 826);
INSERT INTO public.games VALUES (11, 4, 364);
INSERT INTO public.games VALUES (12, 3, 209);
INSERT INTO public.games VALUES (13, 3, 707);
INSERT INTO public.games VALUES (14, 3, 446);
INSERT INTO public.games VALUES (15, 5, 100);
INSERT INTO public.games VALUES (16, 5, 602);
INSERT INTO public.games VALUES (17, 6, 209);
INSERT INTO public.games VALUES (18, 6, 83);
INSERT INTO public.games VALUES (19, 5, 368);
INSERT INTO public.games VALUES (20, 5, 15);
INSERT INTO public.games VALUES (21, 5, 383);
INSERT INTO public.games VALUES (22, 7, 415);
INSERT INTO public.games VALUES (23, 7, 324);
INSERT INTO public.games VALUES (24, 8, 368);
INSERT INTO public.games VALUES (25, 8, 4);
INSERT INTO public.games VALUES (26, 7, 856);
INSERT INTO public.games VALUES (27, 7, 238);
INSERT INTO public.games VALUES (28, 7, 765);
INSERT INTO public.games VALUES (29, 9, 39);
INSERT INTO public.games VALUES (30, 9, 587);
INSERT INTO public.games VALUES (31, 10, 896);
INSERT INTO public.games VALUES (32, 10, 557);
INSERT INTO public.games VALUES (33, 9, 164);
INSERT INTO public.games VALUES (34, 9, 152);
INSERT INTO public.games VALUES (35, 9, 732);
INSERT INTO public.games VALUES (36, 11, 345);
INSERT INTO public.games VALUES (37, 11, 92);
INSERT INTO public.games VALUES (38, 12, 81);
INSERT INTO public.games VALUES (39, 12, 312);
INSERT INTO public.games VALUES (40, 11, 109);
INSERT INTO public.games VALUES (41, 11, 359);
INSERT INTO public.games VALUES (42, 11, 160);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1790837754621');
INSERT INTO public.users VALUES (2, 'user_1790837754620');
INSERT INTO public.users VALUES (3, 'user_1790837851770');
INSERT INTO public.users VALUES (4, 'user_1790837851769');
INSERT INTO public.users VALUES (5, 'user_1790837915615');
INSERT INTO public.users VALUES (6, 'user_1790837915614');
INSERT INTO public.users VALUES (7, 'user_1790838139355');
INSERT INTO public.users VALUES (8, 'user_1790838139354');
INSERT INTO public.users VALUES (9, 'user_1790838213116');
INSERT INTO public.users VALUES (10, 'user_1790838213115');
INSERT INTO public.users VALUES (11, 'user_1790838361459');
INSERT INTO public.users VALUES (12, 'user_1790838361458');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

