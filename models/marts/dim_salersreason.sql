with 
    salesreason as (
        select
            salesreasonid
            , reasontype
            , reasonname
        from {{ ref('stg_salesreason') }}    
    )
    
    , salesreasonorder as (
        select 
            salesorderid
            , salesreasonid
	    from {{ ref('stg_salesorderheadersalesreason') }}
    )
    
    , reason as (
        select
            salesreasonorder.salesorderid
            , salesreason.salesreasonid
            , salesreason.reasontype
            , salesreason.reasonname
        from salesreasonorder
        left join salesreason on salesreason.salesreasonid = salesreasonorder.salesreasonid
        where salesreasonorder.salesreasonid is not Null
    )

   select * from reason