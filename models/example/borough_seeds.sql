with trial as (

  select * from {{ ref('nyc_borough_seed') }}
),

final as(

  select year, variety
  from trial
)

select * from final
