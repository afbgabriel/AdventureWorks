with
    source as (
        select
            productid	
            , name as productname
            , productnumber	
            , sellenddate	
            , safetystocklevel	
            , finishedgoodsflag	
            , class	
            , makeflag	
            , reorderpoint	
            , standardcost	
            , style	
            , listprice	
            , daystomanufacture	
            , productline	
            , size		
            , color	
            , sellstartdate	
            , weight
            , modifieddate	
            , rowguid	
            , productsubcategoryid	
            , productmodelid
            , sizeunitmeasurecode
            , weightunitmeasurecode	
  
        from {{ source('erpadventureworks', 'product') }}
    )
select * from source