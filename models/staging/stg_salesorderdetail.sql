with
    source as (
        select 
            salesorderdetailid
            , salesorderid
            , productid
            , specialofferid
            , orderqty			
            , unitprice	
            , unitpricediscount	
            , carriertrackingnumber
            , rowguid	
            , modifieddate
        from {{ source('erpadventureworks','salesorderdetail') }}
    )
select * from source