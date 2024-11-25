with
    fct as (
        select
            c.c_custkey,
            c.c_name,
            count(distinct o.o_orderkey) as nb_orders,
            sum(o.o_totalprice) as tot_price,
            e.c_expamount
        from {{ ref("stg_customer") }} c
        left join {{ ref("stg_order") }} o on c.c_custkey = o.o_custkey
        left join {{ ref("customer_expect") }} e on c.c_custkey = e.c_custkey
        group by c.c_custkey, c.c_name, e.c_expamount
    )
select *
from fct
