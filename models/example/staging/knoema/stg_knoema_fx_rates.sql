with source as (
 
    select * from {{source('PUBLIC_DATA_FREE','FX_RATES_TIMESERIES') }}
 
), 
 
renamed as (
 
select 
 
        "BASE_CURRENCY_ID" as ID,
        "VARIABLE" as stock_value 
 
from source 
 
) 
 
select * from renamed
 
