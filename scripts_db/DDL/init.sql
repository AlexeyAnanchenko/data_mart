CREATE TABLE IF NOT EXISTS public.shop (
    shop_id serial PRIMARY KEY,
    shop_name varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.products (
    product_id serial PRIMARY KEY,
    product_name varchar(50) NOT NULL,
    price numeric(8,2)
);

CREATE TABLE IF NOT EXISTS public.plan (
    plan_id serial PRIMARY KEY,
    shop_id int REFERENCES public.shop (shop_id) ON DELETE CASCADE,
    product_id int REFERENCES public.products (product_id) ON DELETE CASCADE,
    plan_cnt int NOT NULL,
    plan_date date NOT NULL
);

CREATE TABLE IF NOT EXISTS public.sales (
    sales_id serial PRIMARY KEY,
    shop_id int REFERENCES public.shop (shop_id) ON DELETE CASCADE,
    product_id int REFERENCES public.products (product_id) ON DELETE CASCADE,
    sales_date date NOT NULL,
    sales_cnt int NOT NULL
);
