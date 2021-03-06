PGDMP                         y            Task1    13.3    13.3 f    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            )           1262    16394    Task1    DATABASE     k   CREATE DATABASE "Task1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1258';
    DROP DATABASE "Task1";
                postgres    false            ?            1259    16535    admin    TABLE     ?   CREATE TABLE public.admin (
    id_ad bigint NOT NULL,
    ten_ad character varying(50) NOT NULL,
    email_ad character varying(50) NOT NULL,
    matkhau_ad character varying(50) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            ?            1259    16533    admin_id_ad_seq    SEQUENCE     x   CREATE SEQUENCE public.admin_id_ad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.admin_id_ad_seq;
       public          postgres    false    208            *           0    0    admin_id_ad_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.admin_id_ad_seq OWNED BY public.admin.id_ad;
          public          postgres    false    207            ?            1259    16558    cart    TABLE     ?   CREATE TABLE public.cart (
    id_cart bigint NOT NULL,
    ten_sp character varying NOT NULL,
    gia_sp integer NOT NULL,
    soluong_sp integer NOT NULL,
    tong integer NOT NULL,
    id_sp bigint NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false            ?            1259    16556    cart_id_cart_seq    SEQUENCE     y   CREATE SEQUENCE public.cart_id_cart_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_id_cart_seq;
       public          postgres    false    213            +           0    0    cart_id_cart_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_id_cart_seq OWNED BY public.cart.id_cart;
          public          postgres    false    212            ?            1259    16622    cart_id_sp_seq    SEQUENCE     w   CREATE SEQUENCE public.cart_id_sp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cart_id_sp_seq;
       public          postgres    false    213            ,           0    0    cart_id_sp_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cart_id_sp_seq OWNED BY public.cart.id_sp;
          public          postgres    false    222            ?            1259    16447    category    TABLE     o   CREATE TABLE public.category (
    id_category bigint NOT NULL,
    ten_category character varying NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false            ?            1259    16445    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    201            -           0    0    category_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id_category;
          public          postgres    false    200            ?            1259    16527    customer    TABLE       CREATE TABLE public.customer (
    id_kh bigint NOT NULL,
    ten_kh character varying(50) NOT NULL,
    ngaysinh_kh date NOT NULL,
    dienthoai character varying(12) NOT NULL,
    email_kh character varying(50) NOT NULL,
    matkhau_kh character varying(20) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            ?            1259    16525    customer_id_kh_seq    SEQUENCE     {   CREATE SEQUENCE public.customer_id_kh_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.customer_id_kh_seq;
       public          postgres    false    206            .           0    0    customer_id_kh_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.customer_id_kh_seq OWNED BY public.customer.id_kh;
          public          postgres    false    205            ?            1259    16573    order    TABLE     ?  CREATE TABLE public."order" (
    id_order bigint NOT NULL,
    id_sp bigint NOT NULL,
    id_kh bigint NOT NULL,
    soluong_sp integer NOT NULL,
    gia_sp integer NOT NULL,
    tong integer NOT NULL,
    ten_kh character varying(50) NOT NULL,
    dienthoai character varying(12) NOT NULL,
    email_kh character varying(50) NOT NULL,
    status_order character varying(20) NOT NULL
);
    DROP TABLE public."order";
       public         heap    postgres    false            ?            1259    16571    order_id_kh_seq    SEQUENCE     x   CREATE SEQUENCE public.order_id_kh_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.order_id_kh_seq;
       public          postgres    false    217            /           0    0    order_id_kh_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.order_id_kh_seq OWNED BY public."order".id_kh;
          public          postgres    false    216            ?            1259    16567    order_id_order_seq    SEQUENCE     {   CREATE SEQUENCE public.order_id_order_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.order_id_order_seq;
       public          postgres    false    217            0           0    0    order_id_order_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.order_id_order_seq OWNED BY public."order".id_order;
          public          postgres    false    214            ?            1259    16569    order_id_sp_seq    SEQUENCE     x   CREATE SEQUENCE public.order_id_sp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.order_id_sp_seq;
       public          postgres    false    217            1           0    0    order_id_sp_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.order_id_sp_seq OWNED BY public."order".id_sp;
          public          postgres    false    215            ?            1259    16515    product    TABLE     ?   CREATE TABLE public.product (
    id_sp bigint NOT NULL,
    ten_sp character varying NOT NULL,
    gia_sp bigint NOT NULL,
    soluong_sp bigint NOT NULL,
    id_category bigint NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            ?            1259    16513    pro_id_category_seq    SEQUENCE     |   CREATE SEQUENCE public.pro_id_category_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pro_id_category_seq;
       public          postgres    false    204            2           0    0    pro_id_category_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pro_id_category_seq OWNED BY public.product.id_category;
          public          postgres    false    203            ?            1259    16511    pro_id_sp_seq    SEQUENCE     v   CREATE SEQUENCE public.pro_id_sp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.pro_id_sp_seq;
       public          postgres    false    204            3           0    0    pro_id_sp_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pro_id_sp_seq OWNED BY public.product.id_sp;
          public          postgres    false    202            ?            1259    16545    review    TABLE     ?   CREATE TABLE public.review (
    id_review bigint NOT NULL,
    id_sp bigint NOT NULL,
    ten_sp character varying NOT NULL,
    noidung_review character varying NOT NULL,
    rating integer NOT NULL
);
    DROP TABLE public.review;
       public         heap    postgres    false            ?            1259    16541    review_id_review_seq    SEQUENCE     }   CREATE SEQUENCE public.review_id_review_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.review_id_review_seq;
       public          postgres    false    211            4           0    0    review_id_review_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.review_id_review_seq OWNED BY public.review.id_review;
          public          postgres    false    209            ?            1259    16543    review_id_sp_seq    SEQUENCE     y   CREATE SEQUENCE public.review_id_sp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.review_id_sp_seq;
       public          postgres    false    211            5           0    0    review_id_sp_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.review_id_sp_seq OWNED BY public.review.id_sp;
          public          postgres    false    210            ?            1259    16587    status    TABLE     ?   CREATE TABLE public.status (
    id_st bigint NOT NULL,
    id_kh bigint NOT NULL,
    id_order bigint NOT NULL,
    status character varying(50) NOT NULL
);
    DROP TABLE public.status;
       public         heap    postgres    false            ?            1259    16583    status_id_kh_seq    SEQUENCE     y   CREATE SEQUENCE public.status_id_kh_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.status_id_kh_seq;
       public          postgres    false    221            6           0    0    status_id_kh_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.status_id_kh_seq OWNED BY public.status.id_kh;
          public          postgres    false    219            ?            1259    16585    status_id_order_seq    SEQUENCE     |   CREATE SEQUENCE public.status_id_order_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.status_id_order_seq;
       public          postgres    false    221            7           0    0    status_id_order_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.status_id_order_seq OWNED BY public.status.id_order;
          public          postgres    false    220            ?            1259    16581    status_id_st_seq    SEQUENCE     y   CREATE SEQUENCE public.status_id_st_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.status_id_st_seq;
       public          postgres    false    221            8           0    0    status_id_st_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.status_id_st_seq OWNED BY public.status.id_st;
          public          postgres    false    218            b           2604    16538    admin id_ad    DEFAULT     j   ALTER TABLE ONLY public.admin ALTER COLUMN id_ad SET DEFAULT nextval('public.admin_id_ad_seq'::regclass);
 :   ALTER TABLE public.admin ALTER COLUMN id_ad DROP DEFAULT;
       public          postgres    false    208    207    208            e           2604    16561    cart id_cart    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN id_cart SET DEFAULT nextval('public.cart_id_cart_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN id_cart DROP DEFAULT;
       public          postgres    false    213    212    213            f           2604    16624 
   cart id_sp    DEFAULT     h   ALTER TABLE ONLY public.cart ALTER COLUMN id_sp SET DEFAULT nextval('public.cart_id_sp_seq'::regclass);
 9   ALTER TABLE public.cart ALTER COLUMN id_sp DROP DEFAULT;
       public          postgres    false    222    213            ^           2604    16450    category id_category    DEFAULT     s   ALTER TABLE ONLY public.category ALTER COLUMN id_category SET DEFAULT nextval('public.category_id_seq'::regclass);
 C   ALTER TABLE public.category ALTER COLUMN id_category DROP DEFAULT;
       public          postgres    false    200    201    201            a           2604    16530    customer id_kh    DEFAULT     p   ALTER TABLE ONLY public.customer ALTER COLUMN id_kh SET DEFAULT nextval('public.customer_id_kh_seq'::regclass);
 =   ALTER TABLE public.customer ALTER COLUMN id_kh DROP DEFAULT;
       public          postgres    false    205    206    206            g           2604    16576    order id_order    DEFAULT     r   ALTER TABLE ONLY public."order" ALTER COLUMN id_order SET DEFAULT nextval('public.order_id_order_seq'::regclass);
 ?   ALTER TABLE public."order" ALTER COLUMN id_order DROP DEFAULT;
       public          postgres    false    217    214    217            h           2604    16577    order id_sp    DEFAULT     l   ALTER TABLE ONLY public."order" ALTER COLUMN id_sp SET DEFAULT nextval('public.order_id_sp_seq'::regclass);
 <   ALTER TABLE public."order" ALTER COLUMN id_sp DROP DEFAULT;
       public          postgres    false    217    215    217            i           2604    16578    order id_kh    DEFAULT     l   ALTER TABLE ONLY public."order" ALTER COLUMN id_kh SET DEFAULT nextval('public.order_id_kh_seq'::regclass);
 <   ALTER TABLE public."order" ALTER COLUMN id_kh DROP DEFAULT;
       public          postgres    false    216    217    217            _           2604    16518    product id_sp    DEFAULT     j   ALTER TABLE ONLY public.product ALTER COLUMN id_sp SET DEFAULT nextval('public.pro_id_sp_seq'::regclass);
 <   ALTER TABLE public.product ALTER COLUMN id_sp DROP DEFAULT;
       public          postgres    false    204    202    204            `           2604    16519    product id_category    DEFAULT     v   ALTER TABLE ONLY public.product ALTER COLUMN id_category SET DEFAULT nextval('public.pro_id_category_seq'::regclass);
 B   ALTER TABLE public.product ALTER COLUMN id_category DROP DEFAULT;
       public          postgres    false    204    203    204            c           2604    16548    review id_review    DEFAULT     t   ALTER TABLE ONLY public.review ALTER COLUMN id_review SET DEFAULT nextval('public.review_id_review_seq'::regclass);
 ?   ALTER TABLE public.review ALTER COLUMN id_review DROP DEFAULT;
       public          postgres    false    211    209    211            d           2604    16549    review id_sp    DEFAULT     l   ALTER TABLE ONLY public.review ALTER COLUMN id_sp SET DEFAULT nextval('public.review_id_sp_seq'::regclass);
 ;   ALTER TABLE public.review ALTER COLUMN id_sp DROP DEFAULT;
       public          postgres    false    210    211    211            j           2604    16590    status id_st    DEFAULT     l   ALTER TABLE ONLY public.status ALTER COLUMN id_st SET DEFAULT nextval('public.status_id_st_seq'::regclass);
 ;   ALTER TABLE public.status ALTER COLUMN id_st DROP DEFAULT;
       public          postgres    false    221    218    221            k           2604    16591    status id_kh    DEFAULT     l   ALTER TABLE ONLY public.status ALTER COLUMN id_kh SET DEFAULT nextval('public.status_id_kh_seq'::regclass);
 ;   ALTER TABLE public.status ALTER COLUMN id_kh DROP DEFAULT;
       public          postgres    false    219    221    221            l           2604    16592    status id_order    DEFAULT     r   ALTER TABLE ONLY public.status ALTER COLUMN id_order SET DEFAULT nextval('public.status_id_order_seq'::regclass);
 >   ALTER TABLE public.status ALTER COLUMN id_order DROP DEFAULT;
       public          postgres    false    220    221    221                      0    16535    admin 
   TABLE DATA           D   COPY public.admin (id_ad, ten_ad, email_ad, matkhau_ad) FROM stdin;
    public          postgres    false    208   ?p                 0    16558    cart 
   TABLE DATA           P   COPY public.cart (id_cart, ten_sp, gia_sp, soluong_sp, tong, id_sp) FROM stdin;
    public          postgres    false    213   ?p                 0    16447    category 
   TABLE DATA           =   COPY public.category (id_category, ten_category) FROM stdin;
    public          postgres    false    201   q                 0    16527    customer 
   TABLE DATA           _   COPY public.customer (id_kh, ten_kh, ngaysinh_kh, dienthoai, email_kh, matkhau_kh) FROM stdin;
    public          postgres    false    206   Dq                 0    16573    order 
   TABLE DATA           ~   COPY public."order" (id_order, id_sp, id_kh, soluong_sp, gia_sp, tong, ten_kh, dienthoai, email_kh, status_order) FROM stdin;
    public          postgres    false    217   aq                 0    16515    product 
   TABLE DATA           Q   COPY public.product (id_sp, ten_sp, gia_sp, soluong_sp, id_category) FROM stdin;
    public          postgres    false    204   ?q                 0    16545    review 
   TABLE DATA           R   COPY public.review (id_review, id_sp, ten_sp, noidung_review, rating) FROM stdin;
    public          postgres    false    211   r       "          0    16587    status 
   TABLE DATA           @   COPY public.status (id_st, id_kh, id_order, status) FROM stdin;
    public          postgres    false    221   Nr       9           0    0    admin_id_ad_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.admin_id_ad_seq', 1, false);
          public          postgres    false    207            :           0    0    cart_id_cart_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cart_id_cart_seq', 1, false);
          public          postgres    false    212            ;           0    0    cart_id_sp_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cart_id_sp_seq', 1, false);
          public          postgres    false    222            <           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 1, false);
          public          postgres    false    200            =           0    0    customer_id_kh_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.customer_id_kh_seq', 1, false);
          public          postgres    false    205            >           0    0    order_id_kh_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.order_id_kh_seq', 1, false);
          public          postgres    false    216            ?           0    0    order_id_order_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.order_id_order_seq', 1, false);
          public          postgres    false    214            @           0    0    order_id_sp_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.order_id_sp_seq', 1, false);
          public          postgres    false    215            A           0    0    pro_id_category_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pro_id_category_seq', 1, false);
          public          postgres    false    203            B           0    0    pro_id_sp_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pro_id_sp_seq', 1, false);
          public          postgres    false    202            C           0    0    review_id_review_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.review_id_review_seq', 1, false);
          public          postgres    false    209            D           0    0    review_id_sp_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.review_id_sp_seq', 1, false);
          public          postgres    false    210            E           0    0    status_id_kh_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.status_id_kh_seq', 1, false);
          public          postgres    false    219            F           0    0    status_id_order_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.status_id_order_seq', 1, false);
          public          postgres    false    220            G           0    0    status_id_st_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.status_id_st_seq', 1, false);
          public          postgres    false    218            u           2606    16540    admin admin_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_ad);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    208            z           2606    16566    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id_cart);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    213            n           2606    16455    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id_category);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    201            s           2606    16532    customer customer_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id_kh);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    206                       2606    16580    order order_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id_order);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public            postgres    false    217            q           2606    16524    product pro_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.product
    ADD CONSTRAINT pro_pkey PRIMARY KEY (id_sp);
 :   ALTER TABLE ONLY public.product DROP CONSTRAINT pro_pkey;
       public            postgres    false    204            x           2606    16554    review review_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_pkey PRIMARY KEY (id_review);
 <   ALTER TABLE ONLY public.review DROP CONSTRAINT review_pkey;
       public            postgres    false    211            ?           2606    16594    status status_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id_st);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    221            o           1259    16611    fki_frkey_category_to_product    INDEX     X   CREATE INDEX fki_frkey_category_to_product ON public.product USING btree (id_category);
 1   DROP INDEX public.fki_frkey_category_to_product;
       public            postgres    false    204            |           1259    16699    fki_frkey_customer_to_order    INDEX     P   CREATE INDEX fki_frkey_customer_to_order ON public."order" USING btree (id_kh);
 /   DROP INDEX public.fki_frkey_customer_to_order;
       public            postgres    false    217            ?           1259    16705    fki_frkey_customer_to_status    INDEX     P   CREATE INDEX fki_frkey_customer_to_status ON public.status USING btree (id_kh);
 0   DROP INDEX public.fki_frkey_customer_to_status;
       public            postgres    false    221            ?           1259    16711    fki_frkey_order_to_status    INDEX     P   CREATE INDEX fki_frkey_order_to_status ON public.status USING btree (id_order);
 -   DROP INDEX public.fki_frkey_order_to_status;
       public            postgres    false    221            {           1259    16637    fki_frkey_product_to_cart    INDEX     K   CREATE INDEX fki_frkey_product_to_cart ON public.cart USING btree (id_sp);
 -   DROP INDEX public.fki_frkey_product_to_cart;
       public            postgres    false    213            }           1259    16668    fki_frkey_product_to_order    INDEX     O   CREATE INDEX fki_frkey_product_to_order ON public."order" USING btree (id_sp);
 .   DROP INDEX public.fki_frkey_product_to_order;
       public            postgres    false    217            v           1259    16600    fki_frkey_product_to_review    INDEX     O   CREATE INDEX fki_frkey_product_to_review ON public.review USING btree (id_sp);
 /   DROP INDEX public.fki_frkey_product_to_review;
       public            postgres    false    211            ?           2606    16606 !   product frkey_category_to_product    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product
    ADD CONSTRAINT frkey_category_to_product FOREIGN KEY (id_category) REFERENCES public.product(id_sp) NOT VALID;
 K   ALTER TABLE ONLY public.product DROP CONSTRAINT frkey_category_to_product;
       public          postgres    false    204    2929    204            ?           2606    16694    order frkey_customer_to_order    FK CONSTRAINT     ?   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT frkey_customer_to_order FOREIGN KEY (id_kh) REFERENCES public."order"(id_order) NOT VALID;
 I   ALTER TABLE ONLY public."order" DROP CONSTRAINT frkey_customer_to_order;
       public          postgres    false    217    217    2943            ?           2606    16700    status frkey_customer_to_status    FK CONSTRAINT     ?   ALTER TABLE ONLY public.status
    ADD CONSTRAINT frkey_customer_to_status FOREIGN KEY (id_kh) REFERENCES public.status(id_st) NOT VALID;
 I   ALTER TABLE ONLY public.status DROP CONSTRAINT frkey_customer_to_status;
       public          postgres    false    221    2947    221            ?           2606    16706    status frkey_order_to_status    FK CONSTRAINT     ?   ALTER TABLE ONLY public.status
    ADD CONSTRAINT frkey_order_to_status FOREIGN KEY (id_order) REFERENCES public.status(id_st) NOT VALID;
 F   ALTER TABLE ONLY public.status DROP CONSTRAINT frkey_order_to_status;
       public          postgres    false    221    2947    221            ?           2606    16648    cart frkey_product_to_cart    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT frkey_product_to_cart FOREIGN KEY (id_cart) REFERENCES public.product(id_sp) NOT VALID;
 D   ALTER TABLE ONLY public.cart DROP CONSTRAINT frkey_product_to_cart;
       public          postgres    false    2929    204    213            ?           2606    16689    order frkey_product_to_order    FK CONSTRAINT     ?   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT frkey_product_to_order FOREIGN KEY (id_sp) REFERENCES public."order"(id_order) NOT VALID;
 H   ALTER TABLE ONLY public."order" DROP CONSTRAINT frkey_product_to_order;
       public          postgres    false    217    2943    217            ?           2606    16643    review frkey_product_to_review    FK CONSTRAINT     ?   ALTER TABLE ONLY public.review
    ADD CONSTRAINT frkey_product_to_review FOREIGN KEY (id_review) REFERENCES public.product(id_sp) NOT VALID;
 H   ALTER TABLE ONLY public.review DROP CONSTRAINT frkey_product_to_review;
       public          postgres    false    2929    211    204               ;   x?3?,,M?K/??L-??(,1?4qH?M???K???4426153??2BRo?Ga? ???         $   x?3?,N?+?H̍7?47 N#NC?+F??? ?a
            x?3?LN,IL?/??7?2Bp??b???? ?^	            x?????? ? ?         Y   x?3?4CS ?????y?%????&f&?f????%??&鹉?9z????????y%\F? h?i?l?fD??3<???qqq ?,%         D   x?3?,N?+?H̍7?45 N#NC.#???9H?ӄӈ?.j?iVkTk5?? ????qqq 8)?             x?3?4?,N?+?H̍7????4?????? PD?      "      x?3?4???̂?̼t?=... 2??     