with
    source as (
        select
            salesorderid
            , customerid	
            , salespersonid	
            , territoryid
            , billtoaddressid	
            , shiptoaddressid
            , shipmethodid	
            , currencyrateid 
            , creditcardid
            , orderdate	
            , duedate	
            , shipdate	
            , revisionnumber
            , status	
            , onlineorderflag	
            , purchaseordernumber	
            , accountnumber	
            , creditcardapprovalcode	
            , subtotal	
            , taxamt	
            , freight	
            , totaldue	
            , rowguid	
            , modifieddate	
        from {{ source('erpadventureworks','salesorderheader') }}
    )
select * from source