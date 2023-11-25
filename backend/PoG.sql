PGDMP     ,                
    {            PoG    15.5    15.5 -    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    16398    PoG    DATABASE     y   CREATE DATABASE "PoG" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "PoG";
                postgres    false            �            1259    16429    achievement_types    TABLE     q   CREATE TABLE public.achievement_types (
    type_id integer NOT NULL,
    name character varying(50) NOT NULL
);
 %   DROP TABLE public.achievement_types;
       public         heap    postgres    false            �            1259    16440    achievement_types_type_id_seq    SEQUENCE     �   ALTER TABLE public.achievement_types ALTER COLUMN type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.achievement_types_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16448    achievements    TABLE     �   CREATE TABLE public.achievements (
    id integer NOT NULL,
    name character varying(300) NOT NULL,
    type integer NOT NULL
);
     DROP TABLE public.achievements;
       public         heap    postgres    false            �            1259    16447    achievements_id_seq    SEQUENCE     �   ALTER TABLE public.achievements ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.achievements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    16458    achievements_user    TABLE     m   CREATE TABLE public.achievements_user (
    achievement_id integer NOT NULL,
    user_id integer NOT NULL
);
 %   DROP TABLE public.achievements_user;
       public         heap    postgres    false            �            1259    16495 	   interests    TABLE     e   CREATE TABLE public.interests (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.interests;
       public         heap    postgres    false            �            1259    16494    interests_id_seq    SEQUENCE     �   ALTER TABLE public.interests ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.interests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    16500    interests_user    TABLE     h   CREATE TABLE public.interests_user (
    interests_id integer NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.interests_user;
       public         heap    postgres    false            �            1259    16408 	   tech_type    TABLE     i   CREATE TABLE public.tech_type (
    tech_id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.tech_type;
       public         heap    postgres    false            �            1259    16418    tech_type_tech_id_seq    SEQUENCE     �   ALTER TABLE public.tech_type ALTER COLUMN tech_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tech_type_tech_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16413 	   tech_user    TABLE     x   CREATE TABLE public.tech_user (
    "user" integer NOT NULL,
    tech integer NOT NULL,
    experience real NOT NULL
);
    DROP TABLE public.tech_user;
       public         heap    postgres    false            �            1259    16403    user    TABLE     �  CREATE TABLE public."user" (
    user_id integer NOT NULL,
    second_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    phone_number character varying(15) NOT NULL,
    user_type smallint NOT NULL,
    birth_date date NOT NULL,
    education_type smallint NOT NULL,
    requested_payment real NOT NULL,
    password character varying NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16402    user_user_id_seq    SEQUENCE     �   ALTER TABLE public."user" ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            /          0    16429    achievement_types 
   TABLE DATA                 public          postgres    false    219   �1       2          0    16448    achievements 
   TABLE DATA                 public          postgres    false    222   �1       3          0    16458    achievements_user 
   TABLE DATA                 public          postgres    false    223   2       5          0    16495 	   interests 
   TABLE DATA                 public          postgres    false    225   2       6          0    16500    interests_user 
   TABLE DATA                 public          postgres    false    226   62       ,          0    16408 	   tech_type 
   TABLE DATA                 public          postgres    false    216   P2       -          0    16413 	   tech_user 
   TABLE DATA                 public          postgres    false    217   j2       +          0    16403    user 
   TABLE DATA                 public          postgres    false    215   �2       =           0    0    achievement_types_type_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.achievement_types_type_id_seq', 1, false);
          public          postgres    false    220            >           0    0    achievements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.achievements_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    interests_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.interests_id_seq', 1, false);
          public          postgres    false    224            @           0    0    tech_type_tech_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tech_type_tech_id_seq', 1, false);
          public          postgres    false    218            A           0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 1, false);
          public          postgres    false    214            �           2606    16435 (   achievement_types achievement_types_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.achievement_types
    ADD CONSTRAINT achievement_types_pkey PRIMARY KEY (type_id);
 R   ALTER TABLE ONLY public.achievement_types DROP CONSTRAINT achievement_types_pkey;
       public            postgres    false    219            �           2606    16452    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public            postgres    false    222            �           2606    16462 (   achievements_user achievements_user_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.achievements_user
    ADD CONSTRAINT achievements_user_pkey PRIMARY KEY (achievement_id, user_id);
 R   ALTER TABLE ONLY public.achievements_user DROP CONSTRAINT achievements_user_pkey;
       public            postgres    false    223    223            �           2606    16499    interests interests_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.interests
    ADD CONSTRAINT interests_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.interests DROP CONSTRAINT interests_pkey;
       public            postgres    false    225            �           2606    16504 "   interests_user interests_user_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.interests_user
    ADD CONSTRAINT interests_user_pkey PRIMARY KEY (interests_id, user_id);
 L   ALTER TABLE ONLY public.interests_user DROP CONSTRAINT interests_user_pkey;
       public            postgres    false    226    226            �           2606    16412    tech_type tech_type_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tech_type
    ADD CONSTRAINT tech_type_pkey PRIMARY KEY (tech_id);
 B   ALTER TABLE ONLY public.tech_type DROP CONSTRAINT tech_type_pkey;
       public            postgres    false    216            �           2606    16417    tech_user tech_user_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tech_user
    ADD CONSTRAINT tech_user_pkey PRIMARY KEY ("user", tech);
 B   ALTER TABLE ONLY public.tech_user DROP CONSTRAINT tech_user_pkey;
       public            postgres    false    217    217            �           2606    16407    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    215            �           2606    16463    achievements_user achievements    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievements_user
    ADD CONSTRAINT achievements FOREIGN KEY (achievement_id) REFERENCES public.achievements(id);
 H   ALTER TABLE ONLY public.achievements_user DROP CONSTRAINT achievements;
       public          postgres    false    3214    223    222            �           2606    16505    interests_user interests    FK CONSTRAINT     �   ALTER TABLE ONLY public.interests_user
    ADD CONSTRAINT interests FOREIGN KEY (interests_id) REFERENCES public.interests(id);
 B   ALTER TABLE ONLY public.interests_user DROP CONSTRAINT interests;
       public          postgres    false    225    3218    226            �           2606    16424    tech_user tech    FK CONSTRAINT     }   ALTER TABLE ONLY public.tech_user
    ADD CONSTRAINT tech FOREIGN KEY (tech) REFERENCES public.tech_type(tech_id) NOT VALID;
 8   ALTER TABLE ONLY public.tech_user DROP CONSTRAINT tech;
       public          postgres    false    216    217    3208            �           2606    16419    tech_user user    FK CONSTRAINT     ~   ALTER TABLE ONLY public.tech_user
    ADD CONSTRAINT "user" FOREIGN KEY ("user") REFERENCES public."user"(user_id) NOT VALID;
 :   ALTER TABLE ONLY public.tech_user DROP CONSTRAINT "user";
       public          postgres    false    3206    217    215            �           2606    16453    achievements user    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT "user" FOREIGN KEY (type) REFERENCES public.achievement_types(type_id);
 =   ALTER TABLE ONLY public.achievements DROP CONSTRAINT "user";
       public          postgres    false    3212    219    222            �           2606    16468    achievements_user user    FK CONSTRAINT     }   ALTER TABLE ONLY public.achievements_user
    ADD CONSTRAINT "user" FOREIGN KEY (user_id) REFERENCES public."user"(user_id);
 B   ALTER TABLE ONLY public.achievements_user DROP CONSTRAINT "user";
       public          postgres    false    3206    223    215            �           2606    16510    interests_user user    FK CONSTRAINT     z   ALTER TABLE ONLY public.interests_user
    ADD CONSTRAINT "user" FOREIGN KEY (user_id) REFERENCES public."user"(user_id);
 ?   ALTER TABLE ONLY public.interests_user DROP CONSTRAINT "user";
       public          postgres    false    215    3206    226            /   
   x���          2   
   x���          3   
   x���          5   
   x���          6   
   x���          ,   
   x���          -   
   x���          +   
   x���         