with
    source as (
        select
            stateprovinceid
            , countryregioncode
            , territoryid 
            , stateprovincecode		
            , isonlystateprovinceflag	
            , name as statename
            , rowguid	
            , modifieddate	

            /* Stitch */
            , _sdc_table_version
            , _sdc_received_at	
            , _sdc_sequence	
            , _sdc_batched_at

        from {{ source('erpadventureworks', 'stateprovince') }}
    )

select * from source