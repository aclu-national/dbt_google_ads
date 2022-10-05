{{ config(enabled=var('ad_reporting__google_ads_enabled', True)) }}

with stats as (

    select *
    from {{ var('campaign_network_state_stats') }}
)

select *
from stats
