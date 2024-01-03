PGDMP         2                 |            liveshopping    15.3    15.3 �    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            D           1262    234588    liveshopping    DATABASE     �   CREATE DATABASE liveshopping WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE liveshopping;
                postgres    false            �           1247    234807    enum_orders_order_status    TYPE     �   CREATE TYPE public.enum_orders_order_status AS ENUM (
    'PENDING',
    'WAITING_DELIVERY',
    'DELIVERING',
    'COMPLETED',
    'CANCELLED'
);
 +   DROP TYPE public.enum_orders_order_status;
       public          postgres    false            �           1247    234818    enum_orders_payment_method    TYPE     a   CREATE TYPE public.enum_orders_payment_method AS ENUM (
    'cash',
    'paypal',
    'vnpay'
);
 -   DROP TYPE public.enum_orders_payment_method;
       public          postgres    false            �           1247    234948    enum_roles_role_name    TYPE     \   CREATE TYPE public.enum_roles_role_name AS ENUM (
    'buyer',
    'seller',
    'admin'
);
 '   DROP TYPE public.enum_roles_role_name;
       public          postgres    false            �            1259    234629    amount_discounts    TABLE     x   CREATE TABLE public.amount_discounts (
    id integer NOT NULL,
    amount integer NOT NULL,
    "voucherId" integer
);
 $   DROP TABLE public.amount_discounts;
       public         heap    postgres    false            �            1259    234628    amount_discounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.amount_discounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.amount_discounts_id_seq;
       public          postgres    false    221            E           0    0    amount_discounts_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.amount_discounts_id_seq OWNED BY public.amount_discounts.id;
          public          postgres    false    220            �            1259    234693    cart_product    TABLE     �   CREATE TABLE public.cart_product (
    id integer NOT NULL,
    quantity integer,
    "cartId" integer,
    "productDetailId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public.cart_product;
       public         heap    postgres    false            �            1259    234692    cart_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cart_product_id_seq;
       public          postgres    false    231            F           0    0    cart_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cart_product_id_seq OWNED BY public.cart_product.id;
          public          postgres    false    230            �            1259    234641    carts    TABLE     M   CREATE TABLE public.carts (
    id integer NOT NULL,
    "userId" integer
);
    DROP TABLE public.carts;
       public         heap    postgres    false            �            1259    234640    carts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carts_id_seq;
       public          postgres    false    223            G           0    0    carts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;
          public          postgres    false    222            �            1259    234653 	   categorys    TABLE     �   CREATE TABLE public.categorys (
    id integer NOT NULL,
    category_name character varying(255),
    description character varying(255),
    image character varying(255)
);
    DROP TABLE public.categorys;
       public         heap    postgres    false            �            1259    234652    categorys_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categorys_id_seq;
       public          postgres    false    225            H           0    0    categorys_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categorys_id_seq OWNED BY public.categorys.id;
          public          postgres    false    224            �            1259    234712 	   feedbacks    TABLE     �   CREATE TABLE public.feedbacks (
    id integer NOT NULL,
    title character varying(255),
    content character varying(255),
    "dateFeedback" timestamp with time zone,
    "userId" integer
);
    DROP TABLE public.feedbacks;
       public         heap    postgres    false            �            1259    234711    feedbacks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedbacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.feedbacks_id_seq;
       public          postgres    false    233            I           0    0    feedbacks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;
          public          postgres    false    232            �            1259    234726    follow    TABLE     e   CREATE TABLE public.follow (
    id integer NOT NULL,
    "storeId" integer,
    "userId" integer
);
    DROP TABLE public.follow;
       public         heap    postgres    false            �            1259    234725    follow_id_seq    SEQUENCE     �   CREATE SEQUENCE public.follow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.follow_id_seq;
       public          postgres    false    235            J           0    0    follow_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.follow_id_seq OWNED BY public.follow.id;
          public          postgres    false    234            �            1259    234761    livestream_product    TABLE     �   CREATE TABLE public.livestream_product (
    id integer NOT NULL,
    "orderInLive" integer,
    "expectedSell" integer,
    "livestreamId" integer,
    "productId" integer
);
 &   DROP TABLE public.livestream_product;
       public         heap    postgres    false            �            1259    234760    livestream_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.livestream_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.livestream_product_id_seq;
       public          postgres    false    239            K           0    0    livestream_product_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.livestream_product_id_seq OWNED BY public.livestream_product.id;
          public          postgres    false    238            �            1259    234745    livestreams    TABLE     }  CREATE TABLE public.livestreams (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    "roomId" character varying(255),
    nums_like integer DEFAULT 0,
    "inLive" boolean DEFAULT true,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    thumbnail character varying(255),
    "storeId" integer
);
    DROP TABLE public.livestreams;
       public         heap    postgres    false            �            1259    234744    livestreams_id_seq    SEQUENCE     �   CREATE SEQUENCE public.livestreams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.livestreams_id_seq;
       public          postgres    false    237            L           0    0    livestreams_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.livestreams_id_seq OWNED BY public.livestreams.id;
          public          postgres    false    236            �            1259    234787    notifications    TABLE     A  CREATE TABLE public.notifications (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content character varying(255) NOT NULL,
    avatar character varying(255) NOT NULL,
    "createdAt" timestamp with time zone,
    "statusRead" boolean DEFAULT false,
    "userId" integer,
    "typeId" integer
);
 !   DROP TABLE public.notifications;
       public         heap    postgres    false            �            1259    234786    notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    243            M           0    0    notifications_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;
          public          postgres    false    242            �            1259    234841    order_detail    TABLE     �   CREATE TABLE public.order_detail (
    id integer NOT NULL,
    quantity integer NOT NULL,
    "orderId" integer,
    "productDetailId" integer
);
     DROP TABLE public.order_detail;
       public         heap    postgres    false            �            1259    234840    order_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.order_detail_id_seq;
       public          postgres    false    247            N           0    0    order_detail_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.order_detail_id_seq OWNED BY public.order_detail.id;
          public          postgres    false    246            �            1259    234860    order_voucher    TABLE     o   CREATE TABLE public.order_voucher (
    id integer NOT NULL,
    "orderId" integer,
    "voucherId" integer
);
 !   DROP TABLE public.order_voucher;
       public         heap    postgres    false            �            1259    234859    order_voucher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_voucher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_voucher_id_seq;
       public          postgres    false    249            O           0    0    order_voucher_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.order_voucher_id_seq OWNED BY public.order_voucher.id;
          public          postgres    false    248            �            1259    234824    orders    TABLE     1  CREATE TABLE public.orders (
    id integer NOT NULL,
    order_sn character varying(255),
    order_status public.enum_orders_order_status DEFAULT 'PENDING'::public.enum_orders_order_status,
    payment_method public.enum_orders_payment_method,
    total_price integer,
    fullname character varying(255),
    phone character varying(255),
    shipping_address character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    discount integer,
    shipping_fee integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false    933    933    936            �            1259    234823    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    245            P           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    244            �            1259    234879    percentage_discounts    TABLE     �   CREATE TABLE public.percentage_discounts (
    id integer NOT NULL,
    percent integer NOT NULL,
    max_price integer,
    "voucherId" integer
);
 (   DROP TABLE public.percentage_discounts;
       public         heap    postgres    false            �            1259    234878    percentage_discounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.percentage_discounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.percentage_discounts_id_seq;
       public          postgres    false    251            Q           0    0    percentage_discounts_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.percentage_discounts_id_seq OWNED BY public.percentage_discounts.id;
          public          postgres    false    250                       1259    234912    productDetail_VariationOption    TABLE     �   CREATE TABLE public."productDetail_VariationOption" (
    id integer NOT NULL,
    "productDetailId" integer,
    "variationOptionId" integer
);
 3   DROP TABLE public."productDetail_VariationOption";
       public         heap    postgres    false                        1259    234911 $   productDetail_VariationOption_id_seq    SEQUENCE     �   CREATE SEQUENCE public."productDetail_VariationOption_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."productDetail_VariationOption_id_seq";
       public          postgres    false    257            R           0    0 $   productDetail_VariationOption_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."productDetail_VariationOption_id_seq" OWNED BY public."productDetail_VariationOption".id;
          public          postgres    false    256            �            1259    234681    product_detail    TABLE     �   CREATE TABLE public.product_detail (
    id integer NOT NULL,
    quantity integer,
    image character varying(255),
    price integer,
    "productId" integer,
    sold integer DEFAULT 0,
    "isDeleted" boolean DEFAULT false
);
 "   DROP TABLE public.product_detail;
       public         heap    postgres    false            �            1259    234680    product_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_detail_id_seq;
       public          postgres    false    229            S           0    0    product_detail_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_detail_id_seq OWNED BY public.product_detail.id;
          public          postgres    false    228                       1259    234929    product_review    TABLE     
  CREATE TABLE public.product_review (
    id integer NOT NULL,
    review_title character varying(255),
    review_content character varying(255),
    rating double precision,
    review_date timestamp with time zone,
    "productId" integer,
    "userId" integer
);
 "   DROP TABLE public.product_review;
       public         heap    postgres    false                       1259    234928    product_review_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_review_id_seq;
       public          postgres    false    259            T           0    0    product_review_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_review_id_seq OWNED BY public.product_review.id;
          public          postgres    false    258            �            1259    234662    products    TABLE     h  CREATE TABLE public.products (
    id integer NOT NULL,
    product_name character varying(255),
    description character varying(255),
    brand character varying(255),
    discount_value double precision,
    image character varying(255),
    "inLivestream" boolean,
    "categoryId" integer,
    "storeId" integer,
    "isDeleted" boolean DEFAULT false
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    234661    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    227            U           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    226                       1259    234956    roles    TABLE     b   CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name public.enum_roles_role_name
);
    DROP TABLE public.roles;
       public         heap    postgres    false    963                       1259    234955    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    261            V           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    260            �            1259    234599    stores    TABLE       CREATE TABLE public.stores (
    id integer NOT NULL,
    shop_name character varying(255),
    description character varying(255),
    phone_number character varying(255),
    address character varying(255),
    avatar character varying(255),
    "userId" integer
);
    DROP TABLE public.stores;
       public         heap    postgres    false            �            1259    234598    stores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.stores_id_seq;
       public          postgres    false    217            W           0    0    stores_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;
          public          postgres    false    216            �            1259    234780    types    TABLE     ^   CREATE TABLE public.types (
    id integer NOT NULL,
    "typeName" character varying(255)
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    234779    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    241            X           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    240                       1259    234963    user_notification    TABLE     w   CREATE TABLE public.user_notification (
    id integer NOT NULL,
    "notificationId" integer,
    "userId" integer
);
 %   DROP TABLE public.user_notification;
       public         heap    postgres    false                       1259    234962    user_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.user_notification_id_seq;
       public          postgres    false    263            Y           0    0    user_notification_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.user_notification_id_seq OWNED BY public.user_notification.id;
          public          postgres    false    262            	           1259    234982 	   user_role    TABLE     g   CREATE TABLE public.user_role (
    id integer NOT NULL,
    "roleId" integer,
    "userId" integer
);
    DROP TABLE public.user_role;
       public         heap    postgres    false                       1259    234981    user_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_role_id_seq;
       public          postgres    false    265            Z           0    0    user_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_role_id_seq OWNED BY public.user_role.id;
          public          postgres    false    264            �            1259    234590    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    fullname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone_number character varying(255),
    address character varying(255),
    avatar character varying(255),
    "refreshToken" character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    234589    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            [           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            �            1259    234891 	   variation    TABLE     �   CREATE TABLE public.variation (
    id integer NOT NULL,
    type_name character varying(255) NOT NULL,
    description character varying(255)
);
    DROP TABLE public.variation;
       public         heap    postgres    false            �            1259    234890    variation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.variation_id_seq;
       public          postgres    false    253            \           0    0    variation_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.variation_id_seq OWNED BY public.variation.id;
          public          postgres    false    252            �            1259    234900    variation_option    TABLE     �   CREATE TABLE public.variation_option (
    id integer NOT NULL,
    type_value character varying(255) NOT NULL,
    "variationId" integer
);
 $   DROP TABLE public.variation_option;
       public         heap    postgres    false            �            1259    234899    variation_option_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variation_option_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.variation_option_id_seq;
       public          postgres    false    255            ]           0    0    variation_option_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.variation_option_id_seq OWNED BY public.variation_option.id;
          public          postgres    false    254            �            1259    234613    vouchers    TABLE     �  CREATE TABLE public.vouchers (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    "minSpend" integer NOT NULL,
    max_usage integer,
    quantity integer,
    used integer DEFAULT 0 NOT NULL,
    description character varying(255),
    deleted boolean DEFAULT false NOT NULL,
    "storeId" integer
);
    DROP TABLE public.vouchers;
       public         heap    postgres    false            �            1259    234612    vouchers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vouchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vouchers_id_seq;
       public          postgres    false    219            ^           0    0    vouchers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vouchers_id_seq OWNED BY public.vouchers.id;
          public          postgres    false    218            �           2604    234632    amount_discounts id    DEFAULT     z   ALTER TABLE ONLY public.amount_discounts ALTER COLUMN id SET DEFAULT nextval('public.amount_discounts_id_seq'::regclass);
 B   ALTER TABLE public.amount_discounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    234696    cart_product id    DEFAULT     r   ALTER TABLE ONLY public.cart_product ALTER COLUMN id SET DEFAULT nextval('public.cart_product_id_seq'::regclass);
 >   ALTER TABLE public.cart_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    234644    carts id    DEFAULT     d   ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);
 7   ALTER TABLE public.carts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    234656    categorys id    DEFAULT     l   ALTER TABLE ONLY public.categorys ALTER COLUMN id SET DEFAULT nextval('public.categorys_id_seq'::regclass);
 ;   ALTER TABLE public.categorys ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    234715    feedbacks id    DEFAULT     l   ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);
 ;   ALTER TABLE public.feedbacks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    234729 	   follow id    DEFAULT     f   ALTER TABLE ONLY public.follow ALTER COLUMN id SET DEFAULT nextval('public.follow_id_seq'::regclass);
 8   ALTER TABLE public.follow ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    234764    livestream_product id    DEFAULT     ~   ALTER TABLE ONLY public.livestream_product ALTER COLUMN id SET DEFAULT nextval('public.livestream_product_id_seq'::regclass);
 D   ALTER TABLE public.livestream_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    234748    livestreams id    DEFAULT     p   ALTER TABLE ONLY public.livestreams ALTER COLUMN id SET DEFAULT nextval('public.livestreams_id_seq'::regclass);
 =   ALTER TABLE public.livestreams ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237                        2604    234790    notifications id    DEFAULT     t   ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 ?   ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243                       2604    234844    order_detail id    DEFAULT     r   ALTER TABLE ONLY public.order_detail ALTER COLUMN id SET DEFAULT nextval('public.order_detail_id_seq'::regclass);
 >   ALTER TABLE public.order_detail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247                       2604    234863    order_voucher id    DEFAULT     t   ALTER TABLE ONLY public.order_voucher ALTER COLUMN id SET DEFAULT nextval('public.order_voucher_id_seq'::regclass);
 ?   ALTER TABLE public.order_voucher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249                       2604    234827 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245                       2604    234882    percentage_discounts id    DEFAULT     �   ALTER TABLE ONLY public.percentage_discounts ALTER COLUMN id SET DEFAULT nextval('public.percentage_discounts_id_seq'::regclass);
 F   ALTER TABLE public.percentage_discounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    251    251            	           2604    234915     productDetail_VariationOption id    DEFAULT     �   ALTER TABLE ONLY public."productDetail_VariationOption" ALTER COLUMN id SET DEFAULT nextval('public."productDetail_VariationOption_id_seq"'::regclass);
 Q   ALTER TABLE public."productDetail_VariationOption" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    257    257            �           2604    234684    product_detail id    DEFAULT     v   ALTER TABLE ONLY public.product_detail ALTER COLUMN id SET DEFAULT nextval('public.product_detail_id_seq'::regclass);
 @   ALTER TABLE public.product_detail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            
           2604    234932    product_review id    DEFAULT     v   ALTER TABLE ONLY public.product_review ALTER COLUMN id SET DEFAULT nextval('public.product_review_id_seq'::regclass);
 @   ALTER TABLE public.product_review ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258    259            �           2604    234665    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227                       2604    234959    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    261    261            �           2604    234602 	   stores id    DEFAULT     f   ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);
 8   ALTER TABLE public.stores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    234783    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                       2604    234966    user_notification id    DEFAULT     |   ALTER TABLE ONLY public.user_notification ALTER COLUMN id SET DEFAULT nextval('public.user_notification_id_seq'::regclass);
 C   ALTER TABLE public.user_notification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262    263                       2604    234985    user_role id    DEFAULT     l   ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);
 ;   ALTER TABLE public.user_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264    265            �           2604    234593    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    234894    variation id    DEFAULT     l   ALTER TABLE ONLY public.variation ALTER COLUMN id SET DEFAULT nextval('public.variation_id_seq'::regclass);
 ;   ALTER TABLE public.variation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253                       2604    234903    variation_option id    DEFAULT     z   ALTER TABLE ONLY public.variation_option ALTER COLUMN id SET DEFAULT nextval('public.variation_option_id_seq'::regclass);
 B   ALTER TABLE public.variation_option ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255            �           2604    234616    vouchers id    DEFAULT     j   ALTER TABLE ONLY public.vouchers ALTER COLUMN id SET DEFAULT nextval('public.vouchers_id_seq'::regclass);
 :   ALTER TABLE public.vouchers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                      0    234629    amount_discounts 
   TABLE DATA           C   COPY public.amount_discounts (id, amount, "voucherId") FROM stdin;
    public          postgres    false    221   �%                0    234693    cart_product 
   TABLE DATA           k   COPY public.cart_product (id, quantity, "cartId", "productDetailId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   &                0    234641    carts 
   TABLE DATA           -   COPY public.carts (id, "userId") FROM stdin;
    public          postgres    false    223   v&                0    234653 	   categorys 
   TABLE DATA           J   COPY public.categorys (id, category_name, description, image) FROM stdin;
    public          postgres    false    225   �&                0    234712 	   feedbacks 
   TABLE DATA           Q   COPY public.feedbacks (id, title, content, "dateFeedback", "userId") FROM stdin;
    public          postgres    false    233   �(                 0    234726    follow 
   TABLE DATA           9   COPY public.follow (id, "storeId", "userId") FROM stdin;
    public          postgres    false    235   )      $          0    234761    livestream_product 
   TABLE DATA           l   COPY public.livestream_product (id, "orderInLive", "expectedSell", "livestreamId", "productId") FROM stdin;
    public          postgres    false    239   %)      "          0    234745    livestreams 
   TABLE DATA           �   COPY public.livestreams (id, title, description, "roomId", nums_like, "inLive", start_time, end_time, thumbnail, "storeId") FROM stdin;
    public          postgres    false    237   �0      (          0    234787    notifications 
   TABLE DATA           r   COPY public.notifications (id, title, content, avatar, "createdAt", "statusRead", "userId", "typeId") FROM stdin;
    public          postgres    false    243   &G      ,          0    234841    order_detail 
   TABLE DATA           R   COPY public.order_detail (id, quantity, "orderId", "productDetailId") FROM stdin;
    public          postgres    false    247   CG      .          0    234860    order_voucher 
   TABLE DATA           C   COPY public.order_voucher (id, "orderId", "voucherId") FROM stdin;
    public          postgres    false    249   LH      *          0    234824    orders 
   TABLE DATA           �   COPY public.orders (id, order_sn, order_status, payment_method, total_price, fullname, phone, shipping_address, "createdAt", "updatedAt", "userId", discount, shipping_fee) FROM stdin;
    public          postgres    false    245   iH      0          0    234879    percentage_discounts 
   TABLE DATA           S   COPY public.percentage_discounts (id, percent, max_price, "voucherId") FROM stdin;
    public          postgres    false    251   �O      6          0    234912    productDetail_VariationOption 
   TABLE DATA           e   COPY public."productDetail_VariationOption" (id, "productDetailId", "variationOptionId") FROM stdin;
    public          postgres    false    257   �O                0    234681    product_detail 
   TABLE DATA           d   COPY public.product_detail (id, quantity, image, price, "productId", sold, "isDeleted") FROM stdin;
    public          postgres    false    229   �Q      8          0    234929    product_review 
   TABLE DATA           v   COPY public.product_review (id, review_title, review_content, rating, review_date, "productId", "userId") FROM stdin;
    public          postgres    false    259   {Y                0    234662    products 
   TABLE DATA           �   COPY public.products (id, product_name, description, brand, discount_value, image, "inLivestream", "categoryId", "storeId", "isDeleted") FROM stdin;
    public          postgres    false    227   Z      :          0    234956    roles 
   TABLE DATA           .   COPY public.roles (id, role_name) FROM stdin;
    public          postgres    false    261   2a                0    234599    stores 
   TABLE DATA           e   COPY public.stores (id, shop_name, description, phone_number, address, avatar, "userId") FROM stdin;
    public          postgres    false    217   �a      &          0    234780    types 
   TABLE DATA           /   COPY public.types (id, "typeName") FROM stdin;
    public          postgres    false    241   ac      <          0    234963    user_notification 
   TABLE DATA           K   COPY public.user_notification (id, "notificationId", "userId") FROM stdin;
    public          postgres    false    263   ~c      >          0    234982 	   user_role 
   TABLE DATA           ;   COPY public.user_role (id, "roleId", "userId") FROM stdin;
    public          postgres    false    265   �c                0    234590    users 
   TABLE DATA           w   COPY public.users (id, username, password, fullname, email, phone_number, address, avatar, "refreshToken") FROM stdin;
    public          postgres    false    215   d      2          0    234891 	   variation 
   TABLE DATA           ?   COPY public.variation (id, type_name, description) FROM stdin;
    public          postgres    false    253   �k      4          0    234900    variation_option 
   TABLE DATA           I   COPY public.variation_option (id, type_value, "variationId") FROM stdin;
    public          postgres    false    255   ?l                0    234613    vouchers 
   TABLE DATA           �   COPY public.vouchers (id, code, start_time, end_time, "minSpend", max_usage, quantity, used, description, deleted, "storeId") FROM stdin;
    public          postgres    false    219   'n      _           0    0    amount_discounts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.amount_discounts_id_seq', 2, true);
          public          postgres    false    220            `           0    0    cart_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cart_product_id_seq', 46, true);
          public          postgres    false    230            a           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 16, true);
          public          postgres    false    222            b           0    0    categorys_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categorys_id_seq', 40, true);
          public          postgres    false    224            c           0    0    feedbacks_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.feedbacks_id_seq', 1, false);
          public          postgres    false    232            d           0    0    follow_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.follow_id_seq', 3, true);
          public          postgres    false    234            e           0    0    livestream_product_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.livestream_product_id_seq', 393, true);
          public          postgres    false    238            f           0    0    livestreams_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.livestreams_id_seq', 110, true);
          public          postgres    false    236            g           0    0    notifications_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);
          public          postgres    false    242            h           0    0    order_detail_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_detail_id_seq', 61, true);
          public          postgres    false    246            i           0    0    order_voucher_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.order_voucher_id_seq', 1, false);
          public          postgres    false    248            j           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 61, true);
          public          postgres    false    244            k           0    0    percentage_discounts_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.percentage_discounts_id_seq', 1, false);
          public          postgres    false    250            l           0    0 $   productDetail_VariationOption_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."productDetail_VariationOption_id_seq"', 117, true);
          public          postgres    false    256            m           0    0    product_detail_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_detail_id_seq', 79, true);
          public          postgres    false    228            n           0    0    product_review_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_review_id_seq', 3, true);
          public          postgres    false    258            o           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 17, true);
          public          postgres    false    226            p           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 12, true);
          public          postgres    false    260            q           0    0    stores_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stores_id_seq', 9, true);
          public          postgres    false    216            r           0    0    types_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.types_id_seq', 1, false);
          public          postgres    false    240            s           0    0    user_notification_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_notification_id_seq', 1, false);
          public          postgres    false    262            t           0    0    user_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_role_id_seq', 23, true);
          public          postgres    false    264            u           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 16, true);
          public          postgres    false    214            v           0    0    variation_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.variation_id_seq', 23, true);
          public          postgres    false    252            w           0    0    variation_option_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.variation_option_id_seq', 72, true);
          public          postgres    false    254            x           0    0    vouchers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vouchers_id_seq', 2, true);
          public          postgres    false    218                       2606    234634 &   amount_discounts amount_discounts_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.amount_discounts
    ADD CONSTRAINT amount_discounts_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.amount_discounts DROP CONSTRAINT amount_discounts_pkey;
       public            postgres    false    221                       2606    234700 4   cart_product cart_product_cartId_productDetailId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT "cart_product_cartId_productDetailId_key" UNIQUE ("cartId", "productDetailId");
 `   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT "cart_product_cartId_productDetailId_key";
       public            postgres    false    231    231            !           2606    234698    cart_product cart_product_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT cart_product_pkey;
       public            postgres    false    231                       2606    234646    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    223                       2606    234660    categorys categorys_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categorys
    ADD CONSTRAINT categorys_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categorys DROP CONSTRAINT categorys_pkey;
       public            postgres    false    225            #           2606    234719    feedbacks feedbacks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT feedbacks_pkey;
       public            postgres    false    233            %           2606    234731    follow follow_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.follow DROP CONSTRAINT follow_pkey;
       public            postgres    false    235            '           2606    234733     follow follow_storeId_userId_key 
   CONSTRAINT     l   ALTER TABLE ONLY public.follow
    ADD CONSTRAINT "follow_storeId_userId_key" UNIQUE ("storeId", "userId");
 L   ALTER TABLE ONLY public.follow DROP CONSTRAINT "follow_storeId_userId_key";
       public            postgres    false    235    235            +           2606    234768 @   livestream_product livestream_product_livestreamId_productId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.livestream_product
    ADD CONSTRAINT "livestream_product_livestreamId_productId_key" UNIQUE ("livestreamId", "productId");
 l   ALTER TABLE ONLY public.livestream_product DROP CONSTRAINT "livestream_product_livestreamId_productId_key";
       public            postgres    false    239    239            -           2606    234766 *   livestream_product livestream_product_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.livestream_product
    ADD CONSTRAINT livestream_product_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.livestream_product DROP CONSTRAINT livestream_product_pkey;
       public            postgres    false    239            )           2606    234754    livestreams livestreams_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.livestreams
    ADD CONSTRAINT livestreams_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.livestreams DROP CONSTRAINT livestreams_pkey;
       public            postgres    false    237            1           2606    234795     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public            postgres    false    243            C           2606    234848 5   order_detail order_detail_orderId_productDetailId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT "order_detail_orderId_productDetailId_key" UNIQUE ("orderId", "productDetailId");
 a   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT "order_detail_orderId_productDetailId_key";
       public            postgres    false    247    247            E           2606    234846    order_detail order_detail_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_pkey;
       public            postgres    false    247            G           2606    234867 1   order_voucher order_voucher_orderId_voucherId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_voucher
    ADD CONSTRAINT "order_voucher_orderId_voucherId_key" UNIQUE ("orderId", "voucherId");
 ]   ALTER TABLE ONLY public.order_voucher DROP CONSTRAINT "order_voucher_orderId_voucherId_key";
       public            postgres    false    249    249            I           2606    234865     order_voucher order_voucher_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_voucher
    ADD CONSTRAINT order_voucher_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_voucher DROP CONSTRAINT order_voucher_pkey;
       public            postgres    false    249            3           2606    236078    orders orders_order_sn_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_sn_key UNIQUE (order_sn);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_sn_key;
       public            postgres    false    245            5           2606    236080    orders orders_order_sn_key1 
   CONSTRAINT     Z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_sn_key1 UNIQUE (order_sn);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_sn_key1;
       public            postgres    false    245            7           2606    236082    orders orders_order_sn_key2 
   CONSTRAINT     Z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_sn_key2 UNIQUE (order_sn);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_sn_key2;
       public            postgres    false    245            9           2606    236084    orders orders_order_sn_key3 
   CONSTRAINT     Z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_sn_key3 UNIQUE (order_sn);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_sn_key3;
       public            postgres    false    245            ;           2606    236076    orders orders_order_sn_key4 
   CONSTRAINT     Z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_sn_key4 UNIQUE (order_sn);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_sn_key4;
       public            postgres    false    245            =           2606    236086    orders orders_order_sn_key5 
   CONSTRAINT     Z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_sn_key5 UNIQUE (order_sn);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_sn_key5;
       public            postgres    false    245            ?           2606    236074    orders orders_order_sn_key6 
   CONSTRAINT     Z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_sn_key6 UNIQUE (order_sn);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_sn_key6;
       public            postgres    false    245            A           2606    234832    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    245            K           2606    234884 .   percentage_discounts percentage_discounts_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.percentage_discounts
    ADD CONSTRAINT percentage_discounts_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.percentage_discounts DROP CONSTRAINT percentage_discounts_pkey;
       public            postgres    false    251            Q           2606    234917 @   productDetail_VariationOption productDetail_VariationOption_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."productDetail_VariationOption"
    ADD CONSTRAINT "productDetail_VariationOption_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."productDetail_VariationOption" DROP CONSTRAINT "productDetail_VariationOption_pkey";
       public            postgres    false    257                       2606    234686 "   product_detail product_detail_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_detail
    ADD CONSTRAINT product_detail_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_detail DROP CONSTRAINT product_detail_pkey;
       public            postgres    false    229            S           2606    234936 "   product_review product_review_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT product_review_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_review DROP CONSTRAINT product_review_pkey;
       public            postgres    false    259                       2606    234669    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    227            U           2606    234961    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    261                       2606    234606    stores stores_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.stores DROP CONSTRAINT stores_pkey;
       public            postgres    false    217            /           2606    234785    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    241            W           2606    234970 =   user_notification user_notification_notificationId_userId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_notification
    ADD CONSTRAINT "user_notification_notificationId_userId_key" UNIQUE ("notificationId", "userId");
 i   ALTER TABLE ONLY public.user_notification DROP CONSTRAINT "user_notification_notificationId_userId_key";
       public            postgres    false    263    263            Y           2606    234968 (   user_notification user_notification_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_notification
    ADD CONSTRAINT user_notification_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.user_notification DROP CONSTRAINT user_notification_pkey;
       public            postgres    false    263            [           2606    234987    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    265                       2606    234597    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            O           2606    234905 &   variation_option variation_option_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.variation_option
    ADD CONSTRAINT variation_option_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.variation_option DROP CONSTRAINT variation_option_pkey;
       public            postgres    false    255            M           2606    234898    variation variation_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.variation
    ADD CONSTRAINT variation_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.variation DROP CONSTRAINT variation_pkey;
       public            postgres    false    253                       2606    234622    vouchers vouchers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vouchers
    ADD CONSTRAINT vouchers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vouchers DROP CONSTRAINT vouchers_pkey;
       public            postgres    false    219            \           1259    234998    user_role_user_id_role_id    INDEX     d   CREATE UNIQUE INDEX user_role_user_id_role_id ON public.user_role USING btree ("userId", "roleId");
 -   DROP INDEX public.user_role_user_id_role_id;
       public            postgres    false    265    265            _           2606    235984 0   amount_discounts amount_discounts_voucherId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.amount_discounts
    ADD CONSTRAINT "amount_discounts_voucherId_fkey" FOREIGN KEY ("voucherId") REFERENCES public.vouchers(id) ON UPDATE CASCADE ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.amount_discounts DROP CONSTRAINT "amount_discounts_voucherId_fkey";
       public          postgres    false    3347    219    221            d           2606    236015 %   cart_product cart_product_cartId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT "cart_product_cartId_fkey" FOREIGN KEY ("cartId") REFERENCES public.carts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT "cart_product_cartId_fkey";
       public          postgres    false    3351    231    223            e           2606    236020 .   cart_product cart_product_productDetailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT "cart_product_productDetailId_fkey" FOREIGN KEY ("productDetailId") REFERENCES public.product_detail(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT "cart_product_productDetailId_fkey";
       public          postgres    false    229    3357    231            `           2606    235989    carts carts_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT "carts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public.carts DROP CONSTRAINT "carts_userId_fkey";
       public          postgres    false    215    223    3343            f           2606    236025    feedbacks feedbacks_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT "feedbacks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT "feedbacks_userId_fkey";
       public          postgres    false    233    3343    215            g           2606    236030    follow follow_storeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.follow
    ADD CONSTRAINT "follow_storeId_fkey" FOREIGN KEY ("storeId") REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.follow DROP CONSTRAINT "follow_storeId_fkey";
       public          postgres    false    217    235    3345            h           2606    236035    follow follow_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.follow
    ADD CONSTRAINT "follow_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.follow DROP CONSTRAINT "follow_userId_fkey";
       public          postgres    false    3343    235    215            j           2606    236049 7   livestream_product livestream_product_livestreamId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.livestream_product
    ADD CONSTRAINT "livestream_product_livestreamId_fkey" FOREIGN KEY ("livestreamId") REFERENCES public.livestreams(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.livestream_product DROP CONSTRAINT "livestream_product_livestreamId_fkey";
       public          postgres    false    237    3369    239            k           2606    236054 4   livestream_product livestream_product_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.livestream_product
    ADD CONSTRAINT "livestream_product_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.livestream_product DROP CONSTRAINT "livestream_product_productId_fkey";
       public          postgres    false    227    239    3355            i           2606    236044 $   livestreams livestreams_storeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.livestreams
    ADD CONSTRAINT "livestreams_storeId_fkey" FOREIGN KEY ("storeId") REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.livestreams DROP CONSTRAINT "livestreams_storeId_fkey";
       public          postgres    false    237    3345    217            l           2606    236066 '   notifications notifications_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_typeId_fkey";
       public          postgres    false    3375    241    243            m           2606    236061 '   notifications notifications_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_userId_fkey";
       public          postgres    false    243    3343    215            o           2606    236094 &   order_detail order_detail_orderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT "order_detail_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT "order_detail_orderId_fkey";
       public          postgres    false    247    245    3393            p           2606    236099 .   order_detail order_detail_productDetailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT "order_detail_productDetailId_fkey" FOREIGN KEY ("productDetailId") REFERENCES public.product_detail(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT "order_detail_productDetailId_fkey";
       public          postgres    false    247    229    3357            q           2606    236104 (   order_voucher order_voucher_orderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_voucher
    ADD CONSTRAINT "order_voucher_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.order_voucher DROP CONSTRAINT "order_voucher_orderId_fkey";
       public          postgres    false    245    249    3393            r           2606    236109 *   order_voucher order_voucher_voucherId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_voucher
    ADD CONSTRAINT "order_voucher_voucherId_fkey" FOREIGN KEY ("voucherId") REFERENCES public.vouchers(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.order_voucher DROP CONSTRAINT "order_voucher_voucherId_fkey";
       public          postgres    false    219    3347    249            n           2606    236089    orders orders_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT "orders_userId_fkey";
       public          postgres    false    215    245    3343            s           2606    236114 8   percentage_discounts percentage_discounts_voucherId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.percentage_discounts
    ADD CONSTRAINT "percentage_discounts_voucherId_fkey" FOREIGN KEY ("voucherId") REFERENCES public.vouchers(id) ON UPDATE CASCADE ON DELETE SET NULL;
 d   ALTER TABLE ONLY public.percentage_discounts DROP CONSTRAINT "percentage_discounts_voucherId_fkey";
       public          postgres    false    219    3347    251            u           2606    236124 P   productDetail_VariationOption productDetail_VariationOption_productDetailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."productDetail_VariationOption"
    ADD CONSTRAINT "productDetail_VariationOption_productDetailId_fkey" FOREIGN KEY ("productDetailId") REFERENCES public.product_detail(id) ON UPDATE CASCADE ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public."productDetail_VariationOption" DROP CONSTRAINT "productDetail_VariationOption_productDetailId_fkey";
       public          postgres    false    229    257    3357            v           2606    236129 R   productDetail_VariationOption productDetail_VariationOption_variationOptionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."productDetail_VariationOption"
    ADD CONSTRAINT "productDetail_VariationOption_variationOptionId_fkey" FOREIGN KEY ("variationOptionId") REFERENCES public.variation_option(id) ON UPDATE CASCADE ON DELETE SET NULL;
 �   ALTER TABLE ONLY public."productDetail_VariationOption" DROP CONSTRAINT "productDetail_VariationOption_variationOptionId_fkey";
       public          postgres    false    257    255    3407            c           2606    236006 ,   product_detail product_detail_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_detail
    ADD CONSTRAINT "product_detail_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.product_detail DROP CONSTRAINT "product_detail_productId_fkey";
       public          postgres    false    3355    227    229            w           2606    236134 ,   product_review product_review_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT "product_review_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.product_review DROP CONSTRAINT "product_review_productId_fkey";
       public          postgres    false    259    3355    227            x           2606    236139 )   product_review product_review_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_review
    ADD CONSTRAINT "product_review_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.product_review DROP CONSTRAINT "product_review_userId_fkey";
       public          postgres    false    259    215    3343            a           2606    235994 !   products products_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categorys(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_categoryId_fkey";
       public          postgres    false    227    3353    225            b           2606    235999    products products_storeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_storeId_fkey" FOREIGN KEY ("storeId") REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_storeId_fkey";
       public          postgres    false    227    217    3345            ]           2606    235970    stores stores_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stores
    ADD CONSTRAINT "stores_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.stores DROP CONSTRAINT "stores_userId_fkey";
       public          postgres    false    3343    215    217            y           2606    236144 7   user_notification user_notification_notificationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_notification
    ADD CONSTRAINT "user_notification_notificationId_fkey" FOREIGN KEY ("notificationId") REFERENCES public.notifications(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.user_notification DROP CONSTRAINT "user_notification_notificationId_fkey";
       public          postgres    false    263    3377    243            z           2606    236149 /   user_notification user_notification_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_notification
    ADD CONSTRAINT "user_notification_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.user_notification DROP CONSTRAINT "user_notification_userId_fkey";
       public          postgres    false    215    263    3343            {           2606    236154    user_role user_role_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT "user_role_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.user_role DROP CONSTRAINT "user_role_roleId_fkey";
       public          postgres    false    261    3413    265            |           2606    236159    user_role user_role_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT "user_role_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.user_role DROP CONSTRAINT "user_role_userId_fkey";
       public          postgres    false    265    215    3343            t           2606    236119 2   variation_option variation_option_variationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.variation_option
    ADD CONSTRAINT "variation_option_variationId_fkey" FOREIGN KEY ("variationId") REFERENCES public.variation(id) ON UPDATE CASCADE ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.variation_option DROP CONSTRAINT "variation_option_variationId_fkey";
       public          postgres    false    255    3405    253            ^           2606    235979    vouchers vouchers_storeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vouchers
    ADD CONSTRAINT "vouchers_storeId_fkey" FOREIGN KEY ("storeId") REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.vouchers DROP CONSTRAINT "vouchers_storeId_fkey";
       public          postgres    false    219    217    3345                  x�3�44 NC.#N#0ˈ+F��� 0|�         _   x�}�K�0D���)E����a��'vox�J�c�%0tf雱j�Z�|�?D��q��L��\Z���P���Y@p���B�x㊛��h+D��#�         >   x���� ��m1l ���:"���,*E��ٜn.o^q�Q�q�+vl�q�=��           x�����1���S��#Y���H4@CJ$4��
�	���{

8]��	QP��&[P$/�o��'q{'�Ē���o�1/���V��	ֳ�)�s��ڟĚ[���yӬ�O&���P?>���b6^���	-�&�͘��I��ŉ�&I��7$R��%� έ�����b����O5k���>��6��3�]^�3ֻ�5'�9"&e����KIj_�,^l��Y����C�����j��#�$��!!��&+�7&X �Wؓ!{���z�r/����@?j5	��B�J
�qe2�i��=T/���l���{v�;�p��e�cN�+R*�R�2j�"h�\�=P�*d!C� ��ݓ��}�)F������V��`d�����6�n��?��*;�����S<g�y�8��HB�DBڨ�� }�8�|}ζx�mn�T7�W�*�C�h�IJ�tr�{�2���s\�F졮�n7��0��N=�Pc@���6���p�=9AD��2�l{���K�os�N��E����r��9�P"}��ǣ��/��x            x������ � �             x�3�4�44����� �      $   �  x�=X���(�}(f'|��V��ױ��w��,+�����������m��o]\϶~Kc��[׫�/t}��������ʍ�?k�ĕ�?,���ޱ��z��`�>k���W-����]����+��^Wv-�+�-�w��:��@����(���6�����zk՟6�[�`�o�Uk���*�m�[ka���*�m~o�Uk����hs�9k�6盳Vns�9+����mƛsc���ܘ3�]��}�w�_(��VRo��Z�m�Z��U����Yo����~O�������&r�3�Wc��������������S"�A��"�^oT5l�i+Xm�r:r�r:rR99W9%�_=�v��	j�C��z�-���CL�55���!�8ʁ&"�Q�UTq�<�ڎ�����>F�
#@Y��^��o;F��#@ɎT�Z~�)}�4�f��3�rP�\�"�0P������@�25�ɫa���4��B0P�+U�BPA���ܭa(�CI�8@��+�p��@��2���Z�"bl�������a�#�'A��{R�8�'I��9�������w�qyτ�Kz�*��{��D7����F*RYf眪��E���#UXNY�x�t�!^&}t�I��=u�\��6�dw��Bv����a,�s���Ʉ��/��N�2��4/�s��O��B>��\�`,dw
�"�SX�ܗ�,r��e��%,���6ٵqV�<aYd����r�]��"���E>m��߷���m,0����,mc9�g,�lKr�xYdp�2���r1Ҏ�ɠ-u�A{�>m��3OX65²ə}u�%���<��&gG�lrv�z��V$�n2x��Miw��c,��5h������H{�&��>�d7�G���e��4/d7����MvS�d7�/AvS��g���>�x	�� �W����%ȼ-7�V{n��k,��k,d���,Ƃ�������u|�i,���^��FqxO5��{�Q$�F�ME�v�}7��a�=�I�|��7QE���o���V�^F�3OX����/���o��g
�Y�x9�X���Ӿ{�Ǵ��2�����w���rm�=���Ӈ��w�/�]��٧�@�c�0��u�ګU��x��j�=��2�+6�G�1�6+a���~����-�}4�j��F�j.�(Yi�n����d5��$�����jn�46M������&kk�M�v�����&6�IB}�����ɺ{��tk�º���ҡ�K��F��VTu��Eu�	c�&�X��0j"���x��N*���j���QT+��SQ���kD-���q\#*˾�-eE��c�M�Ǜۤz��M*��ۤz���ˑKy� ����$�
u=��e�.�־{�:��_����x�]*�ηޥ���֫��,�=�j���TTX�w���y���QW��������@Q�z�B׳|w+��d�n(��ti���d�n*��d��Ut+R��F�H5�"��;fW�*��pS�3���sf���T��炊�/}4��LVt�8���ݣ+\=���|�*�g��E��!�\t���E��!�\���^.��Cz�<��³�0/<�����4/<�{�{�� ��7���%��w�=�w�=�w�=i�$W�^�����\�K��������]�"yN[����,�lձ	��c�0
1��V�����^��*������������P���✇�p.��/BN��{�KE��\J2�s��Υ(CM���
u9I����������CE����T��'�������Qs�>��LOE�ٓq�E�v.�eWF�\p�Y�Br�(���Ֆ�(��CE��*
.�PQc��m88#W_�b�>�!�`}wCX�>�!�����uiң�T4i�5]ZaME�Vx�����>XV�      "      x��];s%IV�տB8�5y�|)b<b#�|�4LO7���X<,\��'� ��b��?2���zw�oUIW���gF�Ӻ�����+/���_�������~���_���ߏ������c������1�؛y�cC�8w����;�%$�g6^>�;�%ۘ���7��>�}��|����#���ߗ������_;ʇ�����W��_կ޾Ó��Zʇ?��_�����O�_������ữ��|{��w��-z���w?�Fq�DFJ�&en���H���Mz㎑x��b�|\��0����lX�$���ۨ~v1.s7�z7)�l��M���>�����'җH�-�;qw�-Y���߱_���υ��s��.I E��_��(C
En��K���~s���= ���v	a�Y��(.�S��:�fa��i$g
�f����"�X ������- t粺�� wG  -��K ������w��}{��.��������U��MGc��b�	$Ėn��_;�@n���	�H��%��S5";��g1��W�7)�lf�$~p�Eq���'��;O;�B ���"QR|�8���5!�f$�a���pK-��0�3���A�[R�X�CL�$��~2�*͒5��1���y&���T!>��vA�00�0,"_���S��/�$a���!4C!!r��.�8K���zI��� ����cIq\��!�s�B%_��f�HI���۲��u-O�
��q?�-x{g���8�[\���A�L!8�z�F��c�f��j�h���;�� 2�;���8�l�_�5b 3p�əP-LaV6yXobp�z���9�zWT�Ga!�t~�DM��1��|Y�+s0ك�L��5�N)�rVQ��=�v�w^ϗVX��"�!�{�YA�����2�:�0epu[��#��	��5��L��pa�у���D��C
C&(Y�����Fi����4�"�9=�{��8DfOra��I6���
�E��⹒O��猏-C�"`�̎\i�9�J7����>��o?ܿ}�ݲ,[�q�puj��v%!H��;7�qa1od�F3GSM3��-�u}�<m��)��;~�tQ����;-�XxG	�_��o�߾�}S���� t!S���M���#S��� �Gd�cld�n�48k�����a�f��!#TWS|�~� .+Ov��Hv!�P����/:}�~q��E�W@����ݙ��"JL��^K|����[3ڢ��� E9lPXI��b�����r�I EH�3zC�$2Ӧ	2F[}�;�'f
{�����6ŋb�
��� a��Z*ш؇fM�^��dMu.!��E�&�`�ͣj�6�tG�ļ� T�a�*��D�+  ��D2͠�Ҧ:�L���o#䮱�ɞ���r	xA���5�z�EJi��-җW"�ZX8�Y�5⹛��DQ�ɩ��q��D�>QVۅB�R���J ��`_$��F)� q@��g##��l�R��ZK�^e�\��E_�%��/:(�!�H�|��H����w.��0��D��Q�
����@L�G���v�������� "�T�(���1%�����a��/���5.�.�qb�,:�_�Z�0��dλ��V��Lk�5�Ȯ'������>`���-��AY�B��+��p®Tkr�H��TA����곏H&o��j�mZ�E5�ǵ�PK�Z Y�/^@��������a�gG�������ʾ��E�����3[y-��Q{K.��)���I�s3�1�XO�=��w%g�9���ZL�F��_������Ƴ6���g��G��ך!�����*!Y]�� �+0�(%.�^�+���G�C�]�b�J���>�XnuU�]~��CX�E-}�|��ZV y�;L��.���� 7�,��	j�(1�Ma����»p'�`cnmF3�w��٨=�f�h[)��u!�@�s�Y� �=��,[X�`��YȹK0�N���$9��܆+��Ўb�k�bjA�)��n�&V�O+��ܲV��k_5("���"�"���ޕX(?2"�j/�[$mՁ�HTؕڋ�ߨ�(U$�$��e�$��d���M���]�8��ޣ�3���·EğV�g��\��@�C=����E�Ү!��	���,� g;Oܛm��OhV ���	8�����%m�A��ˋ7w�:�2*?7�]a#�*Q,� �\�Ҵ�$t��˯˟�ʮ��YA��*3�)�Z�P���Y�A����t g���7؆����� i��9n���̉����V��x�Z�a�ȏ[
 �%Т��1h�����pWb��o+c�|����įe�~pm}��h�FҢ�\4��仓�H6�� Qۊ�o�RCmp^$/:�������'��9����8�}�U�4*��l�Hdq�SD"�����_�
t(���9�����u��M�_�e!�aSB���_ҽ�eXp�L̈6�}Җ�wAN��<�ZK�pl�k��m5��ujU#�ě>7�����M+|nq��y��ΰu$|�F�J2�2n���d�M|WZ�1��kp?"<;��߶����;IK���8���B���U;g��1���	P���Q;O�y��{|��з�@�d��i�t%iy(d��Ӷ.ӐE'l�N�V��Z ��Iru��m9���?k�!�Я1 h���;_�����zEa���l�ǞEx�7�,	^S��Z��Z��[Y�3(Z��R�Q*�n��ړ�6�t�z����u��_���>��b�>W����tA:OC�Z�OY��nE����{2�v>T�����[�W>³�.EW���D8�s�|Ę��"����!T�q��Z-�KZ�[+s�J+��v�A�����3g:ypjN��ʝ�[����g�#��z��s�]q������~7�QN/c��C�
(G��:'�2lY�V�d��b�ޖ��#(�]���p h^X���Z��V劙�8sSV�^��N	��?�i=�*�[��r^2�g�����mft���Ϫv�z��T�X����b�L^R��^b�C������k�h
U��bͦ� ��Rus]��z_�~J8��0�ss��m3&SdBPD��\u<��@��m��x���Mh<X�ݷrmf�K�\J�̼��ѐ�zT1u�fB�!�PsX;����������K�/�b����.��U����6e�����6g4���7�n ��S��yObɺ��)o%�%�_f��J:��%2HI�-L�#��ޫ�8U�7A%e���x*�����Z��o8���6S�O��$N��C�I������p]Gr\^��}���ɹ�=D���4FH=xK����R��H��¶�xA��{�M��{�� �9��y��Eh���K-�0�]���R�`�g��q�i����0�`��?���G���b\�pa�$��J�7��8;�(�������z���j���sw3g+#6�e�M���1�;����jW�u�|�o��a���&�a%�;Jdb�:B��k�f�wp�۰.�;bx�@hQ>�i��{Y(�����@!v6{�:〇n]�b��+qյuD ^�Ǟd��|QGbrg�G��e����H�jH�!;��Jc��ġO7�������o�����͏?��m���*����� iKA{��m�D�e���L��ww�e�-�JI��l���Rk��S��9^��'�/��X��&��Jj2}r�-��R��!�?�0$1�έX�j>'k�ut�.xi���XHؒ{��jw�ff���	����p�R;�.�7�˯˟�|��ϫ��-�����o�AzA�I'��2dx��謡�%�8�#�1�|��znK��֩\X�� �C�t���J��D�(��h͔ڑԍ���B���Q|l��������>��e�`]v��$�z���6��Z�����g��º��u�Sx������"���2�Dl��� 6�bA�����Q�����W��_�s�ݧ̱'3�X \  G'pγ�8��	�ʺl�蹉�NCj���@�ea���މ������z5e$65� �\7��;&�O�k}�]LK�Ap����e����)��ޛZ�"�	�5$���_��,u� Y�qn�D�%�|��t�����lr��hC�q��i��������~�]:��c/��_3:��'�V@m� ��p��uFLE��s��Q�z�H���^ɖ�'���R'Ķ�t`�(%������T6]���+�n��%�C��/�)y�A�'�n�^/Yp:7%f"���m�F��~�%��iM�r,�R��2_&�_��\�3��{e�/9�!� ���J���m�~azEB�����}�'��@��J���>M/�Kյ��J��V;iݔJ;QϠrI��Z X|J�\�s�i� ��*���Ͱ��f?��
f{��������%�v!V����2���V#�uh��9��&(��x'MWe�\���v!��[ ��{t$�@t\:�����ܹ��LD����L������Ha�\_{�ʾ��H��5]i�z{�kr�>r�z�[1�@7�~�`;�ֳ�u���*oTB'�,��y>�9��W7Ħ�!l�Z�x~�M��Bj�����}yCė�L=1�ֻ0(�ՁGz�%��	�E�-�2jz4�蚰D�v�^��Ȼ۱O/D�à�oɲ_��gpD�e�B�Ga9���4�N�8о:�x��Sa�½�r%��|~�'�a��W�c�O��i�ܔ�]��M�e0ak��F�S�~~f����-wo�3�5�����plݖdFIo����͛sˣ��z���*�Uf��[��| EZ�[ϭhiO���'�`�$@`j����ns���&L��8����d��$���|52���bzS�/e;Vj�n>� ��v��g��&��材�}�u@>���Y���;�����\�gJ��ۥ������o޿�߼����_}���/{{0�:ci�6"�譝>�����w F�6�I��N�|��,�M����_/g>����w�y��^D�͝�����R8�j����B]��9�"�7���u�Ǯ0����8����u$dD�s����+M��t@�X-�s�0�T�e+����z3���Ϻu�\"�\G�I�10I����.K �F���������p����?>z����������;�!0�ڥ��M<}���E+�f��e��;g�G@�j*\�i5�!Y>���=�*Q����v}���7��������}@����`�k��$�|�o��@		V
�0�3�yk8e�7q������=�m#���"��FXm��9��ç�ʱ���"C��Y��B)~���|�
��/�M
q׻7��O1��k�82�����/S��CJA�ZץfB���`!��l�Xe��_^���h2D���m�W�h���Ŭ�<p��@G�A��9s��?�����a�:?��bC$�ڪ�cQ<����:�~���	9��{|[�Fw�SM�������	(�z�u��Md%��.�䓓r�T�`*3CfԵ�ar,���KX����3?����sY�~�"㇆����Dŷ��ʺ�����Ci���4ZN�k����͛7��n      (      x������ � �      ,   �   x���q�0�ޚ`\���sq�q�cP�䊨&��+���LG��d��z����C`*3�^�~	�y���L���&�M�9��Ԑ�"u�����"�F)���WBQ)��C��z��G�(E�3JQ)jE��VԊZ )Sњ�kE���ԴuZ )i%����'F	 )$��=ۚt �@�=���!&V	(����f��j�K[5�=���VY5k�U�VY��UV�Z�h9V9V?���T      .      x������ � �      *   6  x����n����)�&jtUu����aV�0,DBK$^	�DrrM��o�sM�8��<n�����zHn���7m{ ���r>VOu��
�<@�l�>x��O��x�|�Z %k�����7g���r}�z��D1Z���Z�E���<:�=���)�̆��/�Z�#�~�ws���_^���|���x���~�����{�<�������ˋ�g�����o�����>��|�~�}����~yqz��Gw��>;y��wo��/?�\�������٫W�+y]'?�{�b����<�N�{�����`�y����(��ۯ����f�F�B�[3B�Ѓ��_=<z*f�yt��藇����;�û���;9_������w��00$�H  v�zr={#%t���|oC�h�-�����-!�E!<xx|p����;��C�#�`� Tt=R�?�<�#�2��9p�j:�;�Pw"�0B0���u�ϕ�c�qZw!�_�����A�d|��l���`��Ȏ���)D�ZE#����ß������9t��X��Ѻ�r.���J;0��um��V�bb���r4	�4��J~7��p��%dt��{�~�'�AG$��ß�-\RpRt��|���z�z�F�FNG[9��č�����i,􇁇�YkU��iwp����y���@�ȅނ�㟑�Q�9,t l���/�8�Ao�gk�5]:*t,�^���tNxPd�� LNtUT�\���usm�G`^'@2�O���
�vႳ =��5wy�J2�����Q��."8�C&��M�}�m�w2�E�M�"�\��޿Ź�t�Ƨ4�E�.:�N��m�<�������ȥ"� Q ��}�����42r�5]��a��\�q���&��[��D;�UT�@�ENI�mV]~$�`��FQ��B]t��jja�*>�}�3���L�BG�.9��m���&&y#S�QT�����K�b��Djb�
O̓^9�99�y��]9oh�#�Iq+�(�5���~�0���l��
]Ptd�	n������JT䢒s1��5kl�꤅���fA�z���q���)��z|��n7o��o ����"}W*4��>�y���,Z�e&K+9���44Fd�mѾZ�\�����j�^;��B���H�9�Fr�_��t�e�	dA5��#��Eͣs̮55
=:��S�Q�ռV�C�j���(�jA�9����]Gsv���g�F�F��er�������B|V�DZ-i5�'�ͩ���F|FMGJ�Y���mP��������ZY �\k-�I�9����*�j��P�Nrw^���_|FMGZ�Fj���npC���T�VsZ���d&��,�6�f��R���5��S4r,3h:�jea e��55����@6�g*mi��.xԗ�w��1heu>A�"��sD�v��Վ����T�F+�oE-���ݭ4�l�cP����h�H�qYx���Pov���[�{]38y�v-|S�խ�����^v�W_������Ϳ���Ϻ?l�v�]��>�	���E(s�X۶䍴Ě��B!(B��=!!şF�x�e������k����`�������������ͷ럆8�CO5�e� ��Yz��AE�ˊ!rLlCK�8�L��#��[GZ��b@ƐZڪ>���&QHu�ՑVsZM�lS�G74�o�����4�j<Rc�hQ��4������j	�ki'䎆@N�~V�DZ-(5�>9jP��l�ѬZ��Z�j1x�^7���foÌ���ZRj�ol�1и`��g�J�ԼUj��4���!��QӑV�����,QE&`-�~f�1��foo�\���      0      x������ � �      6   �  x�%���� D�L1��b/��a/q�|GCdٲ���u�Q�3�L��uO�3�7Z�k-˞m��:v-���i�Uϒa}Zxv�������z����J{�������{l ���Qs�k_��Ԉ�&l�|#�"bs�="tX�£�#` k��OT�Ԉ�y�GM�7�ɗ��qv���)�\��(yXN�`յ�"�jѫH[
����4�� �1ɍ)�Nc
~Bc
�ߘ��iLQvS<;�)?;�)��Ɣ�Nc�c�1��7��6�L�Ɣ��Ɣ܀Ɣϼ1�oD�r}r�="u�8,ܺ>���0�D����کoD��Qw��cT����k�v��F����(Q|*�1�ɘ[�ḍ���t�c�(��n�(R/������q�}�j�>�hQ4��
h}4F�{���X�	�������l5��ܨ2*��n���q��t}B���CnG�h��DхD�L'P��nt ����ͧ�w��G�k��.         �  x����v�  ��)���'
����\k����8+�<�W��K��� �����|m���yjfV�JA
��8�qf��*0�hYa��ݔ���ju���+�;,�QS��_ū�C�>���*����Ӷ
}Z�6M�UX���g�'nC�_��m!R|Y�mA��!
,�9�v
S���.����Lf�t��Q�ތ����U���ɦ��B�k��K�n>�O�ʦ��������ݪM��M��T�O����f�.ig�p}�>��$+��5 vR��܍�F�$����/������jZ��9��l�g�i��{�uSB�6nd9���\�	�}�䛅���l����㑎� i�i�|S�+�~��^2�	ΏQ�;��'�E�-#c���V�,}(vG|��oV��J�n���X��j��`�>�dՠ�c��sr&���1J�&���n(�S���t=���<�U�/��-\��� E�Z�(5?�x�(%?-�m�E�Ƀt;u���:�O�[�Wa���r_�:��ӧUf�庨)�;���w�Fװ�ڢ��b�~���Hf>LV�l��\���3���k����\���M�h��&��-^�?�*�\u��؝j:�as�׎~Z���}/��+8T)�����AV7��NR�k���k^e��F�T��dW\kû}��O�L)?�d����܏����<`��_�auр=���x���if�e����Xsc8K�o���f߶q�}\gM��2K�Kb�u���/�K1�0��=L�J�p������>�J�8��֏���h>VW ��,v�w��B�1<`��b�[�+gW6��� [v���|�XV]�>�!b�׭��c�o��hI��HQ����]��*_*^wv�ᓖ��:Wk����NWW��k�܉�p"�CC���j�(�&)����e}���b��k�֘��l�Ŭ]���s]��o�wg���e��Z��610��,�Վ�Ϗ�KǈT��4�GڟC�V�A���&)}k�M�/h�xD%�3�݆U���U��Հ_�ԭr�<^[ǚ�{��|�D����A�~g�/�2<h0�CJ0���]tmǫ�4&⮺7���I� 6U�K/��]I�8���|nYRQ�e��i�663V��/�֘��4L�`���(Rw��Q[�;v��Ɩُ�D�̙jWPm�eo�9�q�g)����K�4�7 s�L1����B�8�����jhޱ�T��S��Ju�c�3�����zf~�Ԃ��y�����1������,�&ػP�d�L��~bCu���
0���������F�>@�"_����c
���̵")>�V�m)���"JT����N�R]2��V�j�U�j+�W��;e�_�����2�o'���D�4��T�?{�0$�/�y�c=� �0�B���i:#ʸǤQT��wz��2����aRf���{a����J�^+��Y�ѝ�`ը�4��a��y��T�n�Ji�>i��LDj�n���;����t��O��G;|W��oyk5F���T���ܒ�!>i��Y��M���z�Y܆�MF,n}<[���Q�bW��pp/��1���U�ZJZ;�B��Z�X��aَ'��� 1n޵S8G-�u��5��'�IY�K��KW1�l�T�[q��G�{e[��a0��Վ����χ�����@ȉ��(�
�Z���z�P�KRA��[���Tq�1��}��w��w�p6V�
���=٩k��v�h��N����.5����O�p���#�� �
6��040������|,�ڊ��M��徣���Uy�TD�z��;�.�l�R�TH[�ч���\ݾ��8���|	)�����X��Axg�ٷ���E�5��O,�$�s`�ݔ�2n�+Ճ��^'5k�H$�I�дަJ����6��I������>Y~s      8   �   x�3�K,�L,��ϳRp���/�R��,I�	άJ�R��~�kq�BA��]+s������c�^���P�p��=NN##c]C#]##+S+cs=KCmsN#NC3.c����l�������1�d=#S��1z\\\ �{?}           x��WO���?ӟ❊�.�����W�x���J64=����P�P+���APE��E�E�4����n�=�M�f$�f�M/�����q�~���=J�)�^��%$n���=�.��z���~-��w�P�
xV�������|R/��w�,�
i�������U:O�Oz
�<�@U� ��#Vi�f��b�07	9!��*��0P�4b�P��M�ԛM���tX�c2�i2��g�q����8��:~F�L�Ѥp��^}��K�z(O������f��s R-G��k%�"��q������iD}�Wo!���0!�[�Vo|"�x�"\�i��a:�`����IƔǣ��s��:�145L�����4�3�P����逆�crY`��@4$�WN��~�[]Ӡ��Y�ۇ��@�Y�"��u���Y��՛��Q�|��R�㏶ˠ��O�:���7��M�
��&䄥;Bo�vS�S߈'4��>��.hy{Mb�����K�#�%��`�nv[�q��n�#|����x�ěZ�-�� ��Y�b}�oJ����ᕰ^�� '�^=��������y��ʵ=�y��[���1ͣ"��Vk4��b\��7��rP-� �w�]]"0,�7��R��n0�6ȞsH�-܀%�Iu�E��1�_����&�_�02��{x�o��q�qw7�-�p�*��i��8���mzA���%�6��0�.8dm^�@�?O�����w�Cz3mD���~����!ED]|���`�
�}�]����@6�Cc^�O&㰌�?�b�%�F�<�B�,�[�ߓU��ӫ���[d}�Ǯ$����;�T�H�q�f�ٔ�FQ��OG3ϝ��nq�$G9p#7�Lf�z�F�x�yg<��ry�����6�@Y ��*�	���S�A�,QAv�����>�8��c跪_����m�Q�^�V�;4]dy��6��w$~�'����j�kpX����й��
=���.������+�m��������N@�6�:���l6���ʼ�ԋ���bb(��t��+�ԫEﯗo����݄�&�v���=��C�^Ed>�4�H�2~^u��Dg��l۶�QPPO��Q���S/pI���k��J��8<�"`w�`�R�DK9��b�بmJ�dD�F�8&�i =s9�Г����ǐrp�M�,��L�֡a�BC�c�d��Ꭾhj���_�%7�̤���T�Y���0�ќ#A�����%��(Y��{D�X���;�e4�x��~��ݘ�X���1-9�g��QlZ�Ě�0�DӐM [�#�����=��%�qWwB�w�����X}�ϓ�����h������5	���
��}�+2�e����g�9	��l:a�$[�o&^��R��rF)<�܍(/߿�!k�+D�
x�o�'����"c�v��\RCU��$	�n�ٚ9F��Z��;*f�?m���$Va)w�2n[px|�@9<���V�0U�4}:��$!	��q���gӡt��<Á� ��E]���]2���������� ���F#�hl����	w8��q�c���a9M]S�0��e�(�sƳ9�̛�*Q5��b��:����)m_P��"=�/�݂�K9
J��f��Y��N�a�5b��h�k��&���&-�/���(X���n�s�Cd܁͎�3��ě�@��n:c{��y�^2r<V��-�0�*�b�á~@�� �"7�:���銰b����]-��3�4�(�|^84#�_T?ٿw��J��      :   A   x�3�L*�L-�2�,N��2�9Sr3�L��0	3��9T�&a	�04��¤��r1z\\\ �l         �  x�푿��0���)��$�8���9t��؂	�e���.:�p'j���5[f�{������tH�f�����h~utf�[ӂ�['�����
t��>��G�N��v��R�4z��ή��)_�d��m������'ڨ�A���;-��?���N7`��\W���k����v�!�|l��-M;�I�u��i�� ;�?�j	NB�~�GM2���<H��~��m�V�J�E��~��hL������o���1D,G0'���u�;e��{�
&}�od:(ۧ�c�+)��B�:E��VuA
F	C�@��}�*k�#�����/3X��aH ,i�~��*\�j�#f�i#��p�?�G�ʲ���o�#1�N���W`Z�_H��mn�������t��)��2v1��t � B�an�n��]~PC�"��~�o�BKRC�����ϳ8�D���      &      x������ � �      <      x������ � �      >   V   x���1��f1�H9&���_����T���'nnܼ�F� �Z(��h��A;��/��M���x4'��6����0"         �  x���K������Oa���6���؀m��F����(��e�E4�l�2�4�YD%Ҍ4��ˎ���o�2���;����~UuΩ+��������Q仞��M��bm��,�#�N%;��,E�ה@/��]z~��,V\�%6�p�Jp���Y�����1�	F6��v�eY���O���?}���Wz�PX` ����T�Hth@���6)q�<" ���N&�^�83�9.<֠ue�O���I~Y=���*�å�����,�7 �!�m���m��t<� �������[�<������o]�p��s-x��*H�/h���������4�`e�e�|����o�ǧ5���ЯżAt]7���h&>	J���]A��M�ϑ�?�l�y
�O�: �o�o�E��?4[��Sd�W���}��`keE�&�b�l�����e�]�ۻ�H3�8)��g���M�mrd��>�Ub`���(�'����p�8}���i���QmTv2*�*z ����56H�kJ�ő��i_ܮ�9��as6���K�4'�U���I�SR��&IH=h?���fL�^OQ�t��Rv���#5�ڙ%,��QxpoA�I���w�l��m����'�^�`6Y�e��6z�������kю?gJhÂx�����6���J�����3��� $�mp�y0�,�ي��(����G%�hRŒ�LB�X�[�R�����WدDЅ(�Q%�OeU��P	>���0�f��Th�k�h��Y����7��{�M��e��A/RNS�0{��0��yC�h;��O�������^ ���ѧ�:\:loorPd{��<����p,O�]6��l�6ǫ����&����h@�$�Fl�>��T�>/?����'�i�M�WM�]4�H�8U�v�~��n1s�W�I%d�`���/��Y�xf�]Xh����[D`�߁��<���:���΂�{3�����K{�Z�9�a�m����P�	8x�P�!�ͪJ�a.n�UKņnY?�]%_3Q$6�R�+�{�>�����X � �_X��j��,		VnL�\��A��Ҥ���h3^��K���6�݀X��S/:��[C�`SD�w�)�����D>��$!D����D+B���iHL�lfJ+}��yjhz�wF�
Q���"��96�ƹ�4�i����ށ织�2�d�K^0Q��4?���T��ZP
�i3���3Q�Tɮ��L��-7�S�� �A�_��HL�P�>��ǯ��n��W�&SIv�,�$?L�x����H��S3�޼I˫�n45�����4�W���ITѨZS�xaa��0d]0����]P-�E�A�B:��FTEn���K0C�K얛LK�q�ǭ| k~�ӭ�<o�@�dk��:+aٓ�[����=~���4,����aQth�oL���L�{~�VFK?�ʀ���D���t�7ar���*G Or�����V�ŐuAw����`�� �i�u��V�����2G<X��&��*{'݅~o��qym�c�H�I�%ǝ^��Ku�v���|�I��J�z�:̇p��j�����r�DTV�u��%yi;�/mM1����(���d;�.��i�"[�Ug����� �X�n��D��Ʃ�6�T�l��CQ���q�G'
9ō�gZ���$l(�vU6NkS�g#�B�"ܫ�[��:J�X���6#ҩKI��!���㢭wGw�ń�)�er�yW�IP����'�	���eu^�5S6tk�td�T[���80�91�)�W��/'G��Q�*t����Y<���q9�Z�*���t:�מw.���4�[�Ւ��qh�K�6���f'��C�t�O�I����")Y^�;kr��S�#�h�Й�&����ؾn�"nnn���+      2   �   x�3�t���/���2�άJ���&pAS����0ӌ����R˜�'�ᮅ� �\��R(~�k}2�oh�0��]�]�]���9� 19���5E2�]�9����%ܝFp�rz�pla^:�r��Ld!tW��qqq �gk      4   �  x�M��n�@���<�� <��},)��ȁK�F�E�T!A<�4H�!�GWy�	3�����F����cƓ�d�L�z=���(8��P�y�.i)���Xa��q*oJ`ի���ǄdĦOX���׫�&����ƓE�̛�*��fW'Y2m�5r�Kp�g
���ݟ�%
����G`�vg
1�m����m�(������d%ec�����vQ�aTgxN�x�1� ��B,�V�M�iX>#w#(��+�=�����O&WA������|�l���K���}Qvj��( ��<;r�#ZX�������O�8#�� ���yrE_���r���a���v�\�變��w���o�����}��}S9��V*Kʊ�T�Ĩ��Q���gJ�uA%*mk����wR57A;��e����IR��_Yl��|q��z��vln��ˮ�P���_p���
�DD� <��)         q   x�3�s600�4202�54�52U00�#=Scms�����H�� 8�4��	�U*�^�P�_���Z� 47�Ӑ�l�1V;̌���06@H[@�Xb�$F��� �t.p     