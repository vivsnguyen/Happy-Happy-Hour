--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

ALTER TABLE ONLY public.offers DROP CONSTRAINT offers_restaurant_id_fkey;
ALTER TABLE ONLY public.restaurants DROP CONSTRAINT restaurants_pkey;
ALTER TABLE ONLY public.restaurants DROP CONSTRAINT restaurants_email_key;
ALTER TABLE ONLY public.offers DROP CONSTRAINT offers_pkey;
ALTER TABLE public.restaurants ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.offers ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.restaurants_id_seq;
DROP TABLE public.restaurants;
DROP SEQUENCE public.offers_id_seq;
DROP TABLE public.offers;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: offers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.offers (
    id integer NOT NULL,
    item text,
    restaurant_id integer
);


--
-- Name: offers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.offers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: offers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.offers_id_seq OWNED BY public.offers.id;


--
-- Name: restaurants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.restaurants (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(120) NOT NULL,
    password_hash character varying(128) NOT NULL,
    street_address character varying(100) NOT NULL,
    city character varying(40) NOT NULL,
    state character varying(2) NOT NULL,
    zipcode character varying(11) NOT NULL
);


--
-- Name: restaurants_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.restaurants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: restaurants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.restaurants_id_seq OWNED BY public.restaurants.id;


--
-- Name: offers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offers ALTER COLUMN id SET DEFAULT nextval('public.offers_id_seq'::regclass);


--
-- Name: restaurants id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.restaurants ALTER COLUMN id SET DEFAULT nextval('public.restaurants_id_seq'::regclass);


--
-- Data for Name: offers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.offers (id, item, restaurant_id) FROM stdin;
2	Slice of pizza	2
3	Fried mac and cheese	2
4	2 tacos	4
5	Guacamole and chips	4
6	Tea leaf salad	1
7	Sticky fingers pork riblets	1
8	Lamb and pork meatballs	3
9	Baked rigatoni	3
\.


--
-- Data for Name: restaurants; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.restaurants (id, name, email, password_hash, street_address, city, state, zipcode) FROM stdin;
1	B Star	bstar@bstar.com	pbkdf2:sha256:150000$f10o0oTX$c11a5b3fb5f9a2d2b324981f01907133c1f2b59c087e73b6769b4bfde1057bb0	127 Clement Street	San Francisco	CA	94118
2	Zero Zero	zerozero@zerozero.com	pbkdf2:sha256:150000$bXvhj4B9$ac6c62a8c64eda0aaf827ae3956ab8cbd0e5cdc3cf3cc4e88b92419cdf1a8d78	826 Folsom Street	San Francisco	CA	94107
3	Ragazza	ragazza@ragazza.com	pbkdf2:sha256:150000$WX7SEd4D$559c652fb456b1492c82cfc462bd4b82555ab8a7958876fa51fba7b0e26317ab	311 Divisadero Street	San Francisco	CA	94117
4	The Taco Shop at Underdogs	tacoshop@tacoshop.com	pbkdf2:sha256:150000$uEp9K6h0$ca67dbd97d06f7d281632391833b79afbd4403e3e0371addf003afaee169b947	1824 Irving Street	San Francisco	CA	94122
\.


--
-- Name: offers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.offers_id_seq', 9, true);


--
-- Name: restaurants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.restaurants_id_seq', 11, true);


--
-- Name: offers offers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id);


--
-- Name: restaurants restaurants_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_email_key UNIQUE (email);


--
-- Name: restaurants restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);


--
-- Name: offers offers_restaurant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES public.restaurants(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

