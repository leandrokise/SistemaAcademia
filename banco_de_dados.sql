PGDMP  $                     |            sistema_academia    16.2    16.2 4    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    16604    sistema_academia    DATABASE     �   CREATE DATABASE sistema_academia WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
     DROP DATABASE sistema_academia;
                postgres    false            �            1259    16633    aluno_dados    TABLE     �   CREATE TABLE public.aluno_dados (
    cpf character varying(11) NOT NULL,
    nome character varying(50),
    data_nascimento date NOT NULL
);
    DROP TABLE public.aluno_dados;
       public         heap    postgres    false            �            1259    25007    aluno_lista_presenca    TABLE     �   CREATE TABLE public.aluno_lista_presenca (
    cpf character varying(11) NOT NULL,
    data_treino date NOT NULL,
    id_treino integer NOT NULL
);
 (   DROP TABLE public.aluno_lista_presenca;
       public         heap    postgres    false            �            1259    16638    aluno_plano    TABLE     �   CREATE TABLE public.aluno_plano (
    aluno_cpf character varying NOT NULL,
    id_plano integer NOT NULL,
    id_cartao integer NOT NULL,
    data_inicio date NOT NULL
);
    DROP TABLE public.aluno_plano;
       public         heap    postgres    false            �            1259    24901    aluno_treino    TABLE     �   CREATE TABLE public.aluno_treino (
    cpf character varying(11) NOT NULL,
    nome_treino character varying(255) NOT NULL,
    id_treino integer NOT NULL
);
     DROP TABLE public.aluno_treino;
       public         heap    postgres    false            �            1259    24971    aluno_treino_exercicio    TABLE       CREATE TABLE public.aluno_treino_exercicio (
    id_treino integer NOT NULL,
    id_exercicio integer NOT NULL,
    series integer NOT NULL,
    rep_min integer NOT NULL,
    rep_max integer NOT NULL,
    carga integer NOT NULL,
    tempo_de_descanso integer NOT NULL
);
 *   DROP TABLE public.aluno_treino_exercicio;
       public         heap    postgres    false            �            1259    33177    aluno_treino_exercicio_carga    TABLE     �   CREATE TABLE public.aluno_treino_exercicio_carga (
    id_treino integer NOT NULL,
    id_exercicio integer NOT NULL,
    carga integer NOT NULL,
    id_evolucao integer NOT NULL
);
 0   DROP TABLE public.aluno_treino_exercicio_carga;
       public         heap    postgres    false            �            1259    33176 5   aluno_treino_exercicio_evolucao_carga_id_evolucao_seq    SEQUENCE     �   CREATE SEQUENCE public.aluno_treino_exercicio_evolucao_carga_id_evolucao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.aluno_treino_exercicio_evolucao_carga_id_evolucao_seq;
       public          postgres    false    227            -           0    0 5   aluno_treino_exercicio_evolucao_carga_id_evolucao_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.aluno_treino_exercicio_evolucao_carga_id_evolucao_seq OWNED BY public.aluno_treino_exercicio_carga.id_evolucao;
          public          postgres    false    226            �            1259    24900    aluno_treino_id_treino_seq    SEQUENCE     �   CREATE SEQUENCE public.aluno_treino_id_treino_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.aluno_treino_id_treino_seq;
       public          postgres    false    222            .           0    0    aluno_treino_id_treino_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.aluno_treino_id_treino_seq OWNED BY public.aluno_treino.id_treino;
          public          postgres    false    221            �            1259    16644    cartao_de_credito    TABLE     �   CREATE TABLE public.cartao_de_credito (
    id_cartao integer NOT NULL,
    nome character varying(60) NOT NULL,
    numero character varying(20) NOT NULL,
    validade character varying(20) NOT NULL,
    cvv character varying(3) NOT NULL
);
 %   DROP TABLE public.cartao_de_credito;
       public         heap    postgres    false            �            1259    16659    cartao_de_credito_id_cartao_seq    SEQUENCE     �   CREATE SEQUENCE public.cartao_de_credito_id_cartao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cartao_de_credito_id_cartao_seq;
       public          postgres    false    217            /           0    0    cartao_de_credito_id_cartao_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.cartao_de_credito_id_cartao_seq OWNED BY public.cartao_de_credito.id_cartao;
          public          postgres    false    218            �            1259    16711 
   exercicios    TABLE     �   CREATE TABLE public.exercicios (
    nome character varying(60) NOT NULL,
    musculosativos character varying(100) NOT NULL,
    numero integer NOT NULL
);
    DROP TABLE public.exercicios;
       public         heap    postgres    false            �            1259    25031    exercicios_novo_numero_seq    SEQUENCE     �   CREATE SEQUENCE public.exercicios_novo_numero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.exercicios_novo_numero_seq;
       public          postgres    false    219            0           0    0    exercicios_novo_numero_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.exercicios_novo_numero_seq OWNED BY public.exercicios.numero;
          public          postgres    false    225            �            1259    16716    planos    TABLE     �   CREATE TABLE public.planos (
    codigo integer NOT NULL,
    nome character varying(60) NOT NULL,
    mensalidade real NOT NULL
);
    DROP TABLE public.planos;
       public         heap    postgres    false            u           2604    24904    aluno_treino id_treino    DEFAULT     �   ALTER TABLE ONLY public.aluno_treino ALTER COLUMN id_treino SET DEFAULT nextval('public.aluno_treino_id_treino_seq'::regclass);
 E   ALTER TABLE public.aluno_treino ALTER COLUMN id_treino DROP DEFAULT;
       public          postgres    false    222    221    222            v           2604    33180 (   aluno_treino_exercicio_carga id_evolucao    DEFAULT     �   ALTER TABLE ONLY public.aluno_treino_exercicio_carga ALTER COLUMN id_evolucao SET DEFAULT nextval('public.aluno_treino_exercicio_evolucao_carga_id_evolucao_seq'::regclass);
 W   ALTER TABLE public.aluno_treino_exercicio_carga ALTER COLUMN id_evolucao DROP DEFAULT;
       public          postgres    false    227    226    227            s           2604    16660    cartao_de_credito id_cartao    DEFAULT     �   ALTER TABLE ONLY public.cartao_de_credito ALTER COLUMN id_cartao SET DEFAULT nextval('public.cartao_de_credito_id_cartao_seq'::regclass);
 J   ALTER TABLE public.cartao_de_credito ALTER COLUMN id_cartao DROP DEFAULT;
       public          postgres    false    218    217            t           2604    25032    exercicios numero    DEFAULT     {   ALTER TABLE ONLY public.exercicios ALTER COLUMN numero SET DEFAULT nextval('public.exercicios_novo_numero_seq'::regclass);
 @   ALTER TABLE public.exercicios ALTER COLUMN numero DROP DEFAULT;
       public          postgres    false    225    219                      0    16633    aluno_dados 
   TABLE DATA           A   COPY public.aluno_dados (cpf, nome, data_nascimento) FROM stdin;
    public          postgres    false    215   m@       #          0    25007    aluno_lista_presenca 
   TABLE DATA           K   COPY public.aluno_lista_presenca (cpf, data_treino, id_treino) FROM stdin;
    public          postgres    false    224   �@                 0    16638    aluno_plano 
   TABLE DATA           R   COPY public.aluno_plano (aluno_cpf, id_plano, id_cartao, data_inicio) FROM stdin;
    public          postgres    false    216   �@       !          0    24901    aluno_treino 
   TABLE DATA           C   COPY public.aluno_treino (cpf, nome_treino, id_treino) FROM stdin;
    public          postgres    false    222   0A       "          0    24971    aluno_treino_exercicio 
   TABLE DATA           }   COPY public.aluno_treino_exercicio (id_treino, id_exercicio, series, rep_min, rep_max, carga, tempo_de_descanso) FROM stdin;
    public          postgres    false    223   oA       &          0    33177    aluno_treino_exercicio_carga 
   TABLE DATA           c   COPY public.aluno_treino_exercicio_carga (id_treino, id_exercicio, carga, id_evolucao) FROM stdin;
    public          postgres    false    227   �A                 0    16644    cartao_de_credito 
   TABLE DATA           S   COPY public.cartao_de_credito (id_cartao, nome, numero, validade, cvv) FROM stdin;
    public          postgres    false    217   �A                 0    16711 
   exercicios 
   TABLE DATA           B   COPY public.exercicios (nome, musculosativos, numero) FROM stdin;
    public          postgres    false    219   B                 0    16716    planos 
   TABLE DATA           ;   COPY public.planos (codigo, nome, mensalidade) FROM stdin;
    public          postgres    false    220   }C       1           0    0 5   aluno_treino_exercicio_evolucao_carga_id_evolucao_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.aluno_treino_exercicio_evolucao_carga_id_evolucao_seq', 4, true);
          public          postgres    false    226            2           0    0    aluno_treino_id_treino_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.aluno_treino_id_treino_seq', 23, true);
          public          postgres    false    221            3           0    0    cartao_de_credito_id_cartao_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.cartao_de_credito_id_cartao_seq', 17, true);
          public          postgres    false    218            4           0    0    exercicios_novo_numero_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.exercicios_novo_numero_seq', 3, true);
          public          postgres    false    225            �           2606    33182 G   aluno_treino_exercicio_carga aluno_treino_exercicio_evolucao_carga_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aluno_treino_exercicio_carga
    ADD CONSTRAINT aluno_treino_exercicio_evolucao_carga_pkey PRIMARY KEY (id_evolucao);
 q   ALTER TABLE ONLY public.aluno_treino_exercicio_carga DROP CONSTRAINT aluno_treino_exercicio_evolucao_carga_pkey;
       public            postgres    false    227            �           2606    24906    aluno_treino aluno_treino_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.aluno_treino
    ADD CONSTRAINT aluno_treino_pkey PRIMARY KEY (id_treino);
 H   ALTER TABLE ONLY public.aluno_treino DROP CONSTRAINT aluno_treino_pkey;
       public            postgres    false    222            x           2606    16637    aluno_dados alunos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.aluno_dados
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (cpf);
 A   ALTER TABLE ONLY public.aluno_dados DROP CONSTRAINT alunos_pkey;
       public            postgres    false    215            |           2606    25038    exercicios exercicios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.exercicios
    ADD CONSTRAINT exercicios_pkey PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.exercicios DROP CONSTRAINT exercicios_pkey;
       public            postgres    false    219            z           2606    16667    cartao_de_credito pk_id_cartao 
   CONSTRAINT     c   ALTER TABLE ONLY public.cartao_de_credito
    ADD CONSTRAINT pk_id_cartao PRIMARY KEY (id_cartao);
 H   ALTER TABLE ONLY public.cartao_de_credito DROP CONSTRAINT pk_id_cartao;
       public            postgres    false    217            ~           2606    16720    planos planos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.planos
    ADD CONSTRAINT planos_pkey PRIMARY KEY (codigo, nome);
 <   ALTER TABLE ONLY public.planos DROP CONSTRAINT planos_pkey;
       public            postgres    false    220    220            �           1259    25044    fki_fk_exercicio    INDEX     [   CREATE INDEX fki_fk_exercicio ON public.aluno_treino_exercicio USING btree (id_exercicio);
 $   DROP INDEX public.fki_fk_exercicio;
       public            postgres    false    223            �           2606    25010 2   aluno_lista_presenca aluno_lista_presenca_cpf_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_lista_presenca
    ADD CONSTRAINT aluno_lista_presenca_cpf_fkey FOREIGN KEY (cpf) REFERENCES public.aluno_dados(cpf) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.aluno_lista_presenca DROP CONSTRAINT aluno_lista_presenca_cpf_fkey;
       public          postgres    false    4728    224    215            �           2606    25015 8   aluno_lista_presenca aluno_lista_presenca_id_treino_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_lista_presenca
    ADD CONSTRAINT aluno_lista_presenca_id_treino_fkey FOREIGN KEY (id_treino) REFERENCES public.aluno_treino(id_treino) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.aluno_lista_presenca DROP CONSTRAINT aluno_lista_presenca_id_treino_fkey;
       public          postgres    false    4736    224    222            �           2606    24907    aluno_treino fk_aluno    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_treino
    ADD CONSTRAINT fk_aluno FOREIGN KEY (cpf) REFERENCES public.aluno_dados(cpf) ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.aluno_treino DROP CONSTRAINT fk_aluno;
       public          postgres    false    215    4728    222            �           2606    16674    aluno_plano fk_aluno_cpf    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_plano
    ADD CONSTRAINT fk_aluno_cpf FOREIGN KEY (aluno_cpf) REFERENCES public.aluno_dados(cpf);
 B   ALTER TABLE ONLY public.aluno_plano DROP CONSTRAINT fk_aluno_cpf;
       public          postgres    false    216    4728    215            �           2606    25039 #   aluno_treino_exercicio fk_exercicio    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_treino_exercicio
    ADD CONSTRAINT fk_exercicio FOREIGN KEY (id_exercicio) REFERENCES public.exercicios(numero) NOT VALID;
 M   ALTER TABLE ONLY public.aluno_treino_exercicio DROP CONSTRAINT fk_exercicio;
       public          postgres    false    223    4732    219            �           2606    16669    aluno_plano fk_id_cartao    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_plano
    ADD CONSTRAINT fk_id_cartao FOREIGN KEY (id_cartao) REFERENCES public.cartao_de_credito(id_cartao);
 B   ALTER TABLE ONLY public.aluno_plano DROP CONSTRAINT fk_id_cartao;
       public          postgres    false    4730    216    217            �           2606    24974     aluno_treino_exercicio fk_treino    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno_treino_exercicio
    ADD CONSTRAINT fk_treino FOREIGN KEY (id_treino) REFERENCES public.aluno_treino(id_treino) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.aluno_treino_exercicio DROP CONSTRAINT fk_treino;
       public          postgres    false    223    4736    222               C   x�305�03305�0��qu�s	�W���s�rTp�W�sv��u���4200�50�56������ ��*      #   '   x�305�03305�0�4202�50�56�42����� \�Q         )   x�305�03305�0��44�4202�50�56������ e��      !   /   x�305�03305�0�t�q�42�2@p�s�42����� �	d      "   -   x�5��	  �����D,����q�����`y���SDgH��m      &   -   x�32�4�4�4�21L9����9-88��LSN�=... ��         %   x�34��qu�s	��D��F�F� a�=... �;f         O  x����N1Ek�+\��G	*$Bhif�b��Y<�*��P ��@��1fI"B��e��8s��S�]Ef��� ��G�&�yh0.��� O��E�xS���;0��{H��2���gR����:)�vVbͦ������9�,NEu���&e���J���"����K��>2V�����KU%�+�M��8iߤ3v��;�٩3��r���(J(�ƺ7��~��Lh�\f/(��h��8�gb��B��Q�,��v	����T�E��x�o=6����Aĉ�.�|#���HV�kѨK=$.�X1�����͊���<<���Z�O���             x�3�t��I�44�Գ�䲄�,��=... i�@     