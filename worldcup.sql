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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (147, 2018, 'Final', 885, 886, 4, 2);
INSERT INTO public.games VALUES (148, 2018, 'Third Place', 887, 888, 2, 0);
INSERT INTO public.games VALUES (149, 2018, 'Semi-Final', 886, 888, 2, 1);
INSERT INTO public.games VALUES (150, 2018, 'Semi-Final', 885, 887, 1, 0);
INSERT INTO public.games VALUES (151, 2018, 'Quarter-Final', 886, 889, 3, 2);
INSERT INTO public.games VALUES (152, 2018, 'Quarter-Final', 888, 890, 2, 0);
INSERT INTO public.games VALUES (153, 2018, 'Quarter-Final', 887, 891, 2, 1);
INSERT INTO public.games VALUES (154, 2018, 'Quarter-Final', 885, 892, 2, 0);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 888, 893, 2, 1);
INSERT INTO public.games VALUES (156, 2018, 'Eighth-Final', 890, 894, 1, 0);
INSERT INTO public.games VALUES (157, 2018, 'Eighth-Final', 887, 895, 3, 2);
INSERT INTO public.games VALUES (158, 2018, 'Eighth-Final', 891, 896, 2, 0);
INSERT INTO public.games VALUES (159, 2018, 'Eighth-Final', 886, 897, 2, 1);
INSERT INTO public.games VALUES (160, 2018, 'Eighth-Final', 889, 898, 2, 1);
INSERT INTO public.games VALUES (161, 2018, 'Eighth-Final', 892, 899, 2, 1);
INSERT INTO public.games VALUES (162, 2018, 'Eighth-Final', 885, 900, 4, 3);
INSERT INTO public.games VALUES (163, 2014, 'Final', 901, 900, 1, 0);
INSERT INTO public.games VALUES (164, 2014, 'Third Place', 902, 891, 3, 0);
INSERT INTO public.games VALUES (165, 2014, 'Semi-Final', 900, 902, 1, 0);
INSERT INTO public.games VALUES (166, 2014, 'Semi-Final', 901, 891, 7, 1);
INSERT INTO public.games VALUES (167, 2014, 'Quarter-Final', 902, 903, 1, 0);
INSERT INTO public.games VALUES (168, 2014, 'Quarter-Final', 900, 887, 1, 0);
INSERT INTO public.games VALUES (169, 2014, 'Quarter-Final', 891, 893, 2, 1);
INSERT INTO public.games VALUES (170, 2014, 'Quarter-Final', 901, 885, 1, 0);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 891, 904, 2, 1);
INSERT INTO public.games VALUES (172, 2014, 'Eighth-Final', 893, 892, 2, 0);
INSERT INTO public.games VALUES (173, 2014, 'Eighth-Final', 885, 905, 2, 0);
INSERT INTO public.games VALUES (174, 2014, 'Eighth-Final', 901, 906, 2, 1);
INSERT INTO public.games VALUES (175, 2014, 'Eighth-Final', 902, 896, 2, 1);
INSERT INTO public.games VALUES (176, 2014, 'Eighth-Final', 903, 907, 2, 1);
INSERT INTO public.games VALUES (177, 2014, 'Eighth-Final', 900, 894, 1, 0);
INSERT INTO public.games VALUES (178, 2014, 'Eighth-Final', 887, 908, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (885, 'France');
INSERT INTO public.teams VALUES (886, 'Croatia');
INSERT INTO public.teams VALUES (887, 'Belgium');
INSERT INTO public.teams VALUES (888, 'England');
INSERT INTO public.teams VALUES (889, 'Russia');
INSERT INTO public.teams VALUES (890, 'Sweden');
INSERT INTO public.teams VALUES (891, 'Brazil');
INSERT INTO public.teams VALUES (892, 'Uruguay');
INSERT INTO public.teams VALUES (893, 'Colombia');
INSERT INTO public.teams VALUES (894, 'Switzerland');
INSERT INTO public.teams VALUES (895, 'Japan');
INSERT INTO public.teams VALUES (896, 'Mexico');
INSERT INTO public.teams VALUES (897, 'Denmark');
INSERT INTO public.teams VALUES (898, 'Spain');
INSERT INTO public.teams VALUES (899, 'Portugal');
INSERT INTO public.teams VALUES (900, 'Argentina');
INSERT INTO public.teams VALUES (901, 'Germany');
INSERT INTO public.teams VALUES (902, 'Netherlands');
INSERT INTO public.teams VALUES (903, 'Costa Rica');
INSERT INTO public.teams VALUES (904, 'Chile');
INSERT INTO public.teams VALUES (905, 'Nigeria');
INSERT INTO public.teams VALUES (906, 'Algeria');
INSERT INTO public.teams VALUES (907, 'Greece');
INSERT INTO public.teams VALUES (908, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 178, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 908, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key1 UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

