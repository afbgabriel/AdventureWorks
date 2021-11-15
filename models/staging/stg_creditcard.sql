with source as(
    select 
        creditcardid
        , cardtype
        , cardnumber
        , expyear
        , expmonth
        , modifieddate
    from {{ source('erpadventureworks','creditcard')}}
)
select * from source