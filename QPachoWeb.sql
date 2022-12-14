PGDMP                     
    z         	   QPachoWeb    15.1    15.1 4    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    24576 	   QPachoWeb    DATABASE     ?   CREATE DATABASE "QPachoWeb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE "QPachoWeb";
                postgres    false            :           0    0    DATABASE "QPachoWeb"    COMMENT     R   COMMENT ON DATABASE "QPachoWeb" IS 'Base de datos para el periodico escolar web';
                   postgres    false    3385            ?            1259    32859 	   categoria    TABLE     q   CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre_categoria character varying(50)
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            ?            1259    32858    categoria_id_categoria_seq    SEQUENCE     ?   CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_id_categoria_seq;
       public          postgres    false    224            ;           0    0    categoria_id_categoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;
          public          postgres    false    223            ?            1259    32845 
   comentario    TABLE     ?   CREATE TABLE public.comentario (
    id_comentario integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha_hora timestamp without time zone,
    mensaje text NOT NULL,
    id_noticia integer
);
    DROP TABLE public.comentario;
       public         heap    postgres    false            ?            1259    32844    comentario_id_comentario_seq    SEQUENCE     ?   CREATE SEQUENCE public.comentario_id_comentario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.comentario_id_comentario_seq;
       public          postgres    false    222            <           0    0    comentario_id_comentario_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.comentario_id_comentario_seq OWNED BY public.comentario.id_comentario;
          public          postgres    false    221            ?            1259    24596    noticia    TABLE     ?   CREATE TABLE public.noticia (
    id integer NOT NULL,
    titulo character varying(255) NOT NULL,
    contenido text NOT NULL,
    categoria integer NOT NULL,
    fechahora timestamp without time zone NOT NULL,
    autor integer NOT NULL
);
    DROP TABLE public.noticia;
       public         heap    postgres    false            ?            1259    32873    noticia_categoria    TABLE     ?   CREATE TABLE public.noticia_categoria (
    id_noticia_categoria integer NOT NULL,
    id_categoria_noticia integer NOT NULL
);
 %   DROP TABLE public.noticia_categoria;
       public         heap    postgres    false            ?            1259    24595    noticia_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.noticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.noticia_id_seq;
       public          postgres    false    215            =           0    0    noticia_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;
          public          postgres    false    214            ?            1259    32823    rol    TABLE     _   CREATE TABLE public.rol (
    id_rol integer NOT NULL,
    nombre_rol character varying(20)
);
    DROP TABLE public.rol;
       public         heap    postgres    false            ?            1259    32822    rol_id_rol_seq    SEQUENCE     ?   CREATE SEQUENCE public.rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.rol_id_rol_seq;
       public          postgres    false    219            >           0    0    rol_id_rol_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;
          public          postgres    false    218            ?            1259    32816    usuario    TABLE       CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(75) NOT NULL,
    apellido character varying(75) NOT NULL,
    correo character varying(50) NOT NULL,
    "contraseña" character varying(15) NOT NULL,
    rol integer NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            ?            1259    32815    usuario_id_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    217            ?           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    216            ?            1259    32829    usuario_rol    TABLE     n   CREATE TABLE public.usuario_rol (
    id_usuario_rol integer NOT NULL,
    id_rol_usuario integer NOT NULL
);
    DROP TABLE public.usuario_rol;
       public         heap    postgres    false            ?           2604    32862    categoria id_categoria    DEFAULT     ?   ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    32848    comentario id_comentario    DEFAULT     ?   ALTER TABLE ONLY public.comentario ALTER COLUMN id_comentario SET DEFAULT nextval('public.comentario_id_comentario_seq'::regclass);
 G   ALTER TABLE public.comentario ALTER COLUMN id_comentario DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    24599 
   noticia id    DEFAULT     h   ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);
 9   ALTER TABLE public.noticia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    32826 
   rol id_rol    DEFAULT     h   ALTER TABLE ONLY public.rol ALTER COLUMN id_rol SET DEFAULT nextval('public.rol_id_rol_seq'::regclass);
 9   ALTER TABLE public.rol ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    32819    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    217    216    217            2          0    32859 	   categoria 
   TABLE DATA           C   COPY public.categoria (id_categoria, nombre_categoria) FROM stdin;
    public          postgres    false    224   S<       0          0    32845 
   comentario 
   TABLE DATA           `   COPY public.comentario (id_comentario, id_usuario, fecha_hora, mensaje, id_noticia) FROM stdin;
    public          postgres    false    222   p<       )          0    24596    noticia 
   TABLE DATA           U   COPY public.noticia (id, titulo, contenido, categoria, fechahora, autor) FROM stdin;
    public          postgres    false    215   ?<       3          0    32873    noticia_categoria 
   TABLE DATA           W   COPY public.noticia_categoria (id_noticia_categoria, id_categoria_noticia) FROM stdin;
    public          postgres    false    225   ?<       -          0    32823    rol 
   TABLE DATA           1   COPY public.rol (id_rol, nombre_rol) FROM stdin;
    public          postgres    false    219   =       +          0    32816    usuario 
   TABLE DATA           [   COPY public.usuario (id_usuario, nombre, apellido, correo, "contraseña", rol) FROM stdin;
    public          postgres    false    217   $=       .          0    32829    usuario_rol 
   TABLE DATA           E   COPY public.usuario_rol (id_usuario_rol, id_rol_usuario) FROM stdin;
    public          postgres    false    220   A=       @           0    0    categoria_id_categoria_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 1, false);
          public          postgres    false    223            A           0    0    comentario_id_comentario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.comentario_id_comentario_seq', 1, false);
          public          postgres    false    221            B           0    0    noticia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.noticia_id_seq', 1, false);
          public          postgres    false    214            C           0    0    rol_id_rol_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.rol_id_rol_seq', 1, false);
          public          postgres    false    218            D           0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);
          public          postgres    false    216            ?           2606    32864    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    224            ?           2606    32852    comentario comentario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (id_comentario);
 D   ALTER TABLE ONLY public.comentario DROP CONSTRAINT comentario_pkey;
       public            postgres    false    222            ?           2606    32872    noticia noticia_categoria_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_categoria_key UNIQUE (categoria);
 G   ALTER TABLE ONLY public.noticia DROP CONSTRAINT noticia_categoria_key;
       public            postgres    false    215            ?           2606    24603    noticia noticia_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.noticia DROP CONSTRAINT noticia_pkey;
       public            postgres    false    215            ?           2606    32828    rol rol_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    219            ?           2606    32821    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    217            ?           2606    32843    usuario_rol usuario_rol_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.usuario_rol
    ADD CONSTRAINT usuario_rol_pkey PRIMARY KEY (id_usuario_rol, id_rol_usuario);
 F   ALTER TABLE ONLY public.usuario_rol DROP CONSTRAINT usuario_rol_pkey;
       public            postgres    false    220    220            ?           2606    32896    noticia autor    FK CONSTRAINT     ~   ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT autor FOREIGN KEY (autor) REFERENCES public.usuario(id_usuario) NOT VALID;
 7   ALTER TABLE ONLY public.noticia DROP CONSTRAINT autor;
       public          postgres    false    215    3211    217            ?           2606    32853 %   comentario comentario_id_noticia_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_id_noticia_fkey FOREIGN KEY (id_noticia) REFERENCES public.noticia(id);
 O   ALTER TABLE ONLY public.comentario DROP CONSTRAINT comentario_id_noticia_fkey;
       public          postgres    false    215    3209    222            ?           2606    32881 =   noticia_categoria noticia_categoria_id_categoria_noticia_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.noticia_categoria
    ADD CONSTRAINT noticia_categoria_id_categoria_noticia_fkey FOREIGN KEY (id_categoria_noticia) REFERENCES public.categoria(id_categoria);
 g   ALTER TABLE ONLY public.noticia_categoria DROP CONSTRAINT noticia_categoria_id_categoria_noticia_fkey;
       public          postgres    false    3219    225    224            ?           2606    32876 =   noticia_categoria noticia_categoria_id_noticia_categoria_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.noticia_categoria
    ADD CONSTRAINT noticia_categoria_id_noticia_categoria_fkey FOREIGN KEY (id_noticia_categoria) REFERENCES public.noticia(categoria);
 g   ALTER TABLE ONLY public.noticia_categoria DROP CONSTRAINT noticia_categoria_id_noticia_categoria_fkey;
       public          postgres    false    215    225    3207            ?           2606    32837 +   usuario_rol usuario_rol_id_rol_usuario_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario_rol
    ADD CONSTRAINT usuario_rol_id_rol_usuario_fkey FOREIGN KEY (id_rol_usuario) REFERENCES public.rol(id_rol);
 U   ALTER TABLE ONLY public.usuario_rol DROP CONSTRAINT usuario_rol_id_rol_usuario_fkey;
       public          postgres    false    3213    219    220            ?           2606    32832 +   usuario_rol usuario_rol_id_usuario_rol_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario_rol
    ADD CONSTRAINT usuario_rol_id_usuario_rol_fkey FOREIGN KEY (id_usuario_rol) REFERENCES public.usuario(id_usuario);
 U   ALTER TABLE ONLY public.usuario_rol DROP CONSTRAINT usuario_rol_id_usuario_rol_fkey;
       public          postgres    false    217    220    3211            2      x?????? ? ?      0      x?????? ? ?      )   M   x?3???WHL/M?+9?Y!%?X? ? ?*???'?(5W!???47&?Ӑ????@??T??\?????????Ӑ+F??? #??      3      x?????? ? ?      -      x?????? ? ?      +      x?????? ? ?      .      x?????? ? ?     