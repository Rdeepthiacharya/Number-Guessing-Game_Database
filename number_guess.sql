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
    number_of_guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 22);
INSERT INTO public.games VALUES (2, 1, 10);
INSERT INTO public.games VALUES (3, 4, 10);
INSERT INTO public.games VALUES (4, 9, 868);
INSERT INTO public.games VALUES (5, 9, 663);
INSERT INTO public.games VALUES (6, 10, 934);
INSERT INTO public.games VALUES (7, 10, 167);
INSERT INTO public.games VALUES (8, 9, 418);
INSERT INTO public.games VALUES (9, 9, 730);
INSERT INTO public.games VALUES (10, 9, 650);
INSERT INTO public.games VALUES (11, 11, 290);
INSERT INTO public.games VALUES (12, 12, 80);
INSERT INTO public.games VALUES (13, 11, 233);
INSERT INTO public.games VALUES (14, 11, 730);
INSERT INTO public.games VALUES (15, 11, 736);
INSERT INTO public.games VALUES (16, 13, 124);
INSERT INTO public.games VALUES (17, 14, 916);
INSERT INTO public.games VALUES (18, 13, 471);
INSERT INTO public.games VALUES (19, 13, 180);
INSERT INTO public.games VALUES (20, 13, 74);
INSERT INTO public.games VALUES (21, 15, 326);
INSERT INTO public.games VALUES (22, 16, 499);
INSERT INTO public.games VALUES (23, 15, 762);
INSERT INTO public.games VALUES (24, 15, 228);
INSERT INTO public.games VALUES (25, 15, 837);
INSERT INTO public.games VALUES (26, 17, 750);
INSERT INTO public.games VALUES (27, 18, 811);
INSERT INTO public.games VALUES (28, 17, 855);
INSERT INTO public.games VALUES (29, 17, 36);
INSERT INTO public.games VALUES (30, 17, 698);
INSERT INTO public.games VALUES (31, 19, 501);
INSERT INTO public.games VALUES (32, 20, 910);
INSERT INTO public.games VALUES (33, 19, 459);
INSERT INTO public.games VALUES (34, 19, 344);
INSERT INTO public.games VALUES (35, 19, 188);
INSERT INTO public.games VALUES (36, 21, 108);
INSERT INTO public.games VALUES (37, 22, 369);
INSERT INTO public.games VALUES (38, 21, 362);
INSERT INTO public.games VALUES (39, 21, 758);
INSERT INTO public.games VALUES (40, 21, 952);
INSERT INTO public.games VALUES (41, 23, 470);
INSERT INTO public.games VALUES (42, 24, 358);
INSERT INTO public.games VALUES (43, 23, 220);
INSERT INTO public.games VALUES (44, 23, 655);
INSERT INTO public.games VALUES (45, 23, 816);
INSERT INTO public.games VALUES (46, 25, 753);
INSERT INTO public.games VALUES (47, 25, 531);
INSERT INTO public.games VALUES (48, 26, 829);
INSERT INTO public.games VALUES (49, 26, 380);
INSERT INTO public.games VALUES (50, 25, 320);
INSERT INTO public.games VALUES (51, 25, 167);
INSERT INTO public.games VALUES (52, 25, 428);
INSERT INTO public.games VALUES (53, 27, 823);
INSERT INTO public.games VALUES (54, 28, 770);
INSERT INTO public.games VALUES (55, 27, 754);
INSERT INTO public.games VALUES (56, 27, 63);
INSERT INTO public.games VALUES (57, 27, 320);
INSERT INTO public.games VALUES (58, 29, 582);
INSERT INTO public.games VALUES (59, 29, 75);
INSERT INTO public.games VALUES (60, 30, 574);
INSERT INTO public.games VALUES (61, 30, 817);
INSERT INTO public.games VALUES (62, 29, 180);
INSERT INTO public.games VALUES (63, 29, 56);
INSERT INTO public.games VALUES (64, 29, 423);
INSERT INTO public.games VALUES (65, 31, 274);
INSERT INTO public.games VALUES (66, 31, 993);
INSERT INTO public.games VALUES (67, 32, 850);
INSERT INTO public.games VALUES (68, 32, 806);
INSERT INTO public.games VALUES (69, 31, 91);
INSERT INTO public.games VALUES (70, 31, 420);
INSERT INTO public.games VALUES (71, 31, 924);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'sam');
INSERT INTO public.users VALUES (2, 'user_1794160374989');
INSERT INTO public.users VALUES (3, 'user_1794160374988');
INSERT INTO public.users VALUES (4, 'ram');
INSERT INTO public.users VALUES (5, 'user_1794163033645');
INSERT INTO public.users VALUES (6, 'user_1794163033644');
INSERT INTO public.users VALUES (7, 'user_1794163109396');
INSERT INTO public.users VALUES (8, 'user_1794163109395');
INSERT INTO public.users VALUES (9, 'user_1794163912546');
INSERT INTO public.users VALUES (10, 'user_1794163912545');
INSERT INTO public.users VALUES (11, 'user_1794164071175');
INSERT INTO public.users VALUES (12, 'user_1794164071174');
INSERT INTO public.users VALUES (13, 'user_1794164083025');
INSERT INTO public.users VALUES (14, 'user_1794164083024');
INSERT INTO public.users VALUES (15, 'user_1794164211117');
INSERT INTO public.users VALUES (16, 'user_1794164211116');
INSERT INTO public.users VALUES (17, 'user_1794164289159');
INSERT INTO public.users VALUES (18, 'user_1794164289158');
INSERT INTO public.users VALUES (19, 'user_1794164311577');
INSERT INTO public.users VALUES (20, 'user_1794164311576');
INSERT INTO public.users VALUES (21, 'user_1794164385135');
INSERT INTO public.users VALUES (22, 'user_1794164385134');
INSERT INTO public.users VALUES (23, 'user_1794164552835');
INSERT INTO public.users VALUES (24, 'user_1794164552834');
INSERT INTO public.users VALUES (25, 'user_1794164587272');
INSERT INTO public.users VALUES (26, 'user_1794164587271');
INSERT INTO public.users VALUES (27, 'user_1794164688230');
INSERT INTO public.users VALUES (28, 'user_1794164688229');
INSERT INTO public.users VALUES (29, 'user_1794164917174');
INSERT INTO public.users VALUES (30, 'user_1794164917173');
INSERT INTO public.users VALUES (31, 'user_1794164954321');
INSERT INTO public.users VALUES (32, 'user_1794164954320');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 71, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


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

