with source_nycdata as (
  select * from {{ source('test', 'nyccollision') }}
),

final as (
  select * from source_nycdata
)

select * from final
