# The name of this view in Looker is "Churn Sum Fact Exp"
view: churn_sum_fact_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.churn_sum_fact_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acct Num" in Explore.

  dimension: acct_num {
    type: string
    description: "Customer's Account Number"
    sql: ${TABLE}.acct_num ;;
  }

  dimension: address_1 {
    type: string
    description: "Address 1 of the nearest store"
    sql: ${TABLE}.address_1 ;;
  }

  dimension: address_2 {
    type: string
    description: "Address 2 of the nearest store"
    sql: ${TABLE}.address_2 ;;
  }

  dimension: arpu_6month_line_avg {
    type: number
    description: "Six month average ARPU ( Average Revenue Per User) for line."
    sql: ${TABLE}.arpu_6month_line_avg ;;
  }

  dimension: birth_year {
    type: number
    description: "Birth year"
    sql: ${TABLE}.birth_year ;;
  }

  dimension: city {
    type: string
    description: "City of the store"
    sql: ${TABLE}.city ;;
  }

  dimension: cma_cd {
    type: number
    description: "Cellular market area code"
    sql: ${TABLE}.cma_cd ;;
  }

  dimension: cma_name {
    type: string
    description: "Cellular market area name"
    sql: ${TABLE}.cma_name ;;
  }

  dimension: cma_tier_cd {
    type: number
    description: "Cellular market area tier cd"
    sql: ${TABLE}.cma_tier_cd ;;
  }

  dimension: coe_pplan_service_type_desc {
    type: string
    description: "Plan Service type description"
    sql: ${TABLE}.coe_pplan_service_type_desc ;;
  }

  dimension: coe_pplan_sub_type_desc {
    type: string
    description: "The description of the COE Price Plan sub-type, which further defines the target market for the PPLAN. Business friendly names for reporting"
    sql: ${TABLE}.coe_pplan_sub_type_desc ;;
  }

  dimension: common_fios_customer_category {
    type: string
    description: "Common Customer Category"
    sql: ${TABLE}.common_fios_customer_category ;;
  }

  dimension: contract_mths_rem {
    type: number
    description: "Contract months remaining"
    sql: ${TABLE}.contract_mths_rem ;;
  }

  dimension: county {
    type: string
    description: "County of the store"
    sql: ${TABLE}.county ;;
  }

  dimension: curr_contract_term {
    type: string
    description: "Current Contract term"
    sql: ${TABLE}.curr_contract_term ;;
  }

  dimension: cust_id {
    type: string
    description: "Customer ID"
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "Customer's Line Sequence ID"
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: cust_type_cd {
    type: string
    description: "Customer Type code"
    sql: ${TABLE}.cust_type_cd ;;
  }

  dimension: data_tier {
    type: string
    description: "Data Tier"
    sql: ${TABLE}.data_tier ;;
  }

  dimension: decile_num {
    type: number
    description: "Decile value calculated for the model"
    sql: ${TABLE}.decile_num ;;
  }

  dimension: device_brand_nm {
    type: string
    description: "Device Brand Name"
    sql: ${TABLE}.device_brand_nm ;;
  }

  dimension: device_grouping {
    type: string
    description: "Device Group like Apple/Android/Tablet"
    sql: ${TABLE}.device_grouping ;;
  }

  dimension: disc_reas_desc {
    type: string
    description: "Disconnect Reason Description"
    sql: ${TABLE}.disc_reas_desc ;;
  }

  dimension: disconnects {
    type: number
    description: "Disconnect flag"
    sql: ${TABLE}.disconnects ;;
  }

  dimension: distance {
    type: number
    description: "Distance in meters"
    sql: ${TABLE}.distance ;;
  }

  dimension: district_cd {
    type: string
    description: "district code"
    sql: ${TABLE}.district_cd ;;
  }

  dimension: district_desc {
    type: string
    description: "district description"
    sql: ${TABLE}.district_desc ;;
  }

  dimension: dma_cd {
    type: number
    description: "Designated market area code"
    sql: ${TABLE}.dma_cd ;;
  }

  dimension: dma_name {
    type: string
    description: "Designated market area name"
    sql: ${TABLE}.dma_name ;;
  }

  dimension: dma_tier_cd {
    type: number
    description: "Designated market area tier code"
    sql: ${TABLE}.dma_tier_cd ;;
  }

  dimension: ending_customers {
    type: number
    description: "Ending Customer Flag(Active/Disconnect)"
    sql: ${TABLE}.ending_customers ;;
  }

  dimension: fios_qualified {
    type: number
    sql: ${TABLE}.fios_qualified ;;
  }

  dimension: fwa_ind {
    type: string
    description: "FWA indicator"
    sql: ${TABLE}.fwa_ind ;;
  }

  dimension: fwa_ord_type_desc {
    type: string
    description: "FWA Order type description"
    sql: ${TABLE}.fwa_ord_type_desc ;;
  }

  dimension: fwa_qualified {
    type: number
    sql: ${TABLE}.fwa_qualified ;;
  }

  dimension: in_contract_term {
    type: string
    description: "Contract term"
    sql: ${TABLE}.in_contract_term ;;
  }

  dimension: involuntary_disconnects {
    type: number
    description: "Involuntary Disconnect Flag"
    sql: ${TABLE}.involuntary_disconnects ;;
  }

  dimension: line_zip_cd {
    type: string
    description: "Line ZIp Code"
    sql: ${TABLE}.line_zip_cd ;;
  }

  dimension: mkt_cd {
    type: string
    description: "Market Code"
    sql: ${TABLE}.mkt_cd ;;
  }

  dimension: mobile_home_grp {
    type: string
    description: "Mobile and Home indicator"
    sql: ${TABLE}.mobile_home_grp ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: mth {
    type: time
    description: "Churn Analysis Report Month"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mth ;;
  }

  dimension: mtn {
    type: string
    description: "Mobile telephone Number"
    sql: ${TABLE}.mtn ;;
  }

  dimension: port_carrier_cd {
    type: string
    sql: ${TABLE}.port_carrier_cd ;;
  }

  dimension: port_in_total_post {
    type: number
    sql: ${TABLE}.port_in_total_post ;;
  }

  dimension: port_in_total_pre {
    type: number
    sql: ${TABLE}.port_in_total_pre ;;
  }

  dimension: port_out_total_post {
    type: number
    sql: ${TABLE}.port_out_total_post ;;
  }

  dimension: port_out_total_pre {
    type: number
    sql: ${TABLE}.port_out_total_pre ;;
  }

  dimension: pos_location_code {
    type: string
    description: "Location code of the store"
    sql: ${TABLE}.pos_location_code ;;
  }

  dimension: prepaid_ind {
    type: string
    description: "Prepaid Indicator"
    sql: ${TABLE}.prepaid_ind ;;
  }

  dimension: primary_driver {
    type: string
    description: "High level call drivers assigned to each call based on the topic of conversation between customer and call center rep (e.g., Troubleshooting, billing, pricing, promo etc). Predicated Primary reason for the customer to deactivate"
    sql: ${TABLE}.primary_driver ;;
  }

  dimension: primary_enodeb {
    type: string
    description: "Primary enodeb details"
    sql: ${TABLE}.primary_enodeb ;;
  }

  dimension: primary_reason {
    type: string
    description: "Primary reason for call"
    sql: ${TABLE}.primary_reason ;;
  }

  dimension: primary_sector {
    type: number
    description: "primary sector"
    sql: ${TABLE}.primary_sector ;;
  }

  dimension: promo_type {
    type: string
    description: "Promo type"
    sql: ${TABLE}.promo_type ;;
  }

  dimension: region_desc {
    type: string
    description: "Region description"
    sql: ${TABLE}.region_desc ;;
  }

  dimension: score_centile_fwa {
    type: number
    description: "Score Centile for FWA model."
    sql: ${TABLE}.score_centile_fwa ;;
  }

  dimension: score_centile_in_mkt {
    type: number
    description: "Score Centile for In Market model."
    sql: ${TABLE}.score_centile_in_mkt ;;
  }

  dimension: score_centile_po_wk {
    type: number
    description: "Score Centile for PO Weekly model."
    sql: ${TABLE}.score_centile_po_wk ;;
  }

  dimension: score_decile_fwa {
    type: number
    description: "ScoreDecile for FWA model."
    sql: ${TABLE}.score_decile_fwa ;;
  }

  dimension: score_decile_in_mkt {
    type: number
    description: "ScoreDecile for In Market. Churn Decile - Low ( 1 to 4) Medium (5,6,7) High (8,9,10)"
    sql: ${TABLE}.score_decile_in_mkt ;;
  }

  dimension: score_decile_po_wk {
    type: number
    description: "ScoreDecile for PO Weekly model."
    sql: ${TABLE}.score_decile_po_wk ;;
  }

  dimension: score_group {
    type: string
    description: "score_group indicator for Mobile and FWA"
    sql: ${TABLE}.score_group ;;
  }

  dimension: score_value {
    type: number
    description: "score value of the model"
    sql: ${TABLE}.score_value ;;
  }

  dimension: score_value_fwa {
    type: number
    description: "Score Value for FWA model"
    sql: ${TABLE}.score_value_fwa ;;
  }

  dimension: score_value_in_mkt {
    type: number
    description: "Score Value for In Market model"
    sql: ${TABLE}.score_value_in_mkt ;;
  }

  dimension: score_value_po_wk {
    type: number
    description: "Score Value for PO Weekly model"
    sql: ${TABLE}.score_value_po_wk ;;
  }

  dimension: secondary_driver {
    type: string
    description: "Further details into the topic of conversation between customer and call center rep (e.g., Troubleshooting – Device Setting Issues )"
    sql: ${TABLE}.secondary_driver ;;
  }

  dimension: secondary_reason {
    type: string
    description: "Secondary reson for call"
    sql: ${TABLE}.secondary_reason ;;
  }

  dimension: state {
    type: string
    description: "state of the store"
    sql: ${TABLE}.state ;;
  }

  dimension: tenure {
    type: string
    description: "Tenure"
    sql: ${TABLE}.tenure ;;
  }

  dimension: territory_cd {
    type: string
    description: "territory code"
    sql: ${TABLE}.territory_cd ;;
  }

  dimension: territory_desc {
    type: string
    description: "territory description"
    sql: ${TABLE}.territory_desc ;;
  }

  dimension_group: trans_dt {
    type: time
    description: "Date the disconnected is initiated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.trans_dt ;;
  }

  dimension_group: trans_mth {
    type: time
    description: "Month the disconnected is initiated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.trans_mth ;;
  }

  dimension: voluntary_disconnects {
    type: number
    description: "Voluntary Disconnect Flag"
    sql: ${TABLE}.voluntary_disconnects ;;
  }

  dimension: vz2_region_cd {
    type: string
    description: "region code"
    sql: ${TABLE}.vz2_region_cd ;;
  }

  dimension: vz2_region_desc {
    type: string
    description: "region description"
    sql: ${TABLE}.vz2_region_desc ;;
  }

  dimension: zip_code {
    type: zipcode
    description: "Zip code of the store"
    sql: ${TABLE}.zip_code ;;
  }
  measure: count {
    type: count
    drill_fields: [dma_name, cma_name]
  }
}
