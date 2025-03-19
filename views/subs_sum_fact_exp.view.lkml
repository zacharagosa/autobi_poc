# The name of this view in Looker is "Subs Sum Fact Exp"
view: subs_sum_fact_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.subs_sum_fact_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Access Amt" in Explore.

  dimension: access_amt {
    type: number
    description: "The total amount of data accessed by the subscriber."
    sql: ${TABLE}.access_amt ;;
  }

  dimension: acct_access_amt {
    type: number
    description: "Amount of access to account"
    sql: ${TABLE}.acct_access_amt ;;
  }

  dimension: acct_data_access_amt {
    type: number
    description: "The total amount of data accessed by the subscriber through their account."
    sql: ${TABLE}.acct_data_access_amt ;;
  }

  dimension: acct_fraction {
    type: number
    description: "Fraction of the account that is being considered."
    sql: ${TABLE}.acct_fraction ;;
  }

  dimension: acct_num {
    type: string
    description: "The account number of the subscriber."
    sql: ${TABLE}.acct_num ;;
  }

  dimension: acct_pricing_grp {
    type: string
    description: "Group that determines the pricing for the account."
    sql: ${TABLE}.acct_pricing_grp ;;
  }

  dimension: acct_voice_access_amt {
    type: number
    description: "The amount of money that can be accessed for voice usage on the account."
    sql: ${TABLE}.acct_voice_access_amt ;;
  }

  dimension: area_cd {
    type: string
    description: "Area code (cd) for the customer's location."
    sql: ${TABLE}.area_cd ;;
  }

  dimension: area_desc {
    type: string
    description: "Description of the geographic area in which the subscription is located (e.g., South, Midwest, North, East, West)."
    sql: ${TABLE}.area_desc ;;
  }

  dimension: bgid {
    type: string
    description: "Verizon ID"
    sql: ${TABLE}.bgid ;;
  }

  dimension: birth_year {
    type: number
    description: "The year in which the subscriber was born."
    sql: ${TABLE}.birth_year ;;
  }

  dimension: bonus_data_allow {
    type: string
    description: "The amount of additional data that is available to the customer as a bonus."
    sql: ${TABLE}.bonus_data_allow ;;
  }

  dimension: boost_data_allow {
    type: string
    description: "Additional high-speed data purchased by the customer to enhance their data allowance."
    sql: ${TABLE}.boost_data_allow ;;
  }

  dimension: carryover_data_allow {
    type: string
    description: "The amount of data that the subscriber is allowed to carry over from one month to the next."
    sql: ${TABLE}.carryover_data_allow ;;
  }

  dimension: channel_type {
    type: string
    description: "Type of channel used to transmit and receive calls."
    sql: ${TABLE}.channel_type ;;
  }

  dimension: coe_data_pplan_access_amt {
    type: number
    description: "Amount of data pre-plan access from the Center of Excellence (coe)."
    sql: ${TABLE}.coe_data_pplan_access_amt ;;
  }

  dimension: coe_pplan_class_desc {
    type: string
    description: "Center of Excellence (COE) Price Plan Class Description provides a detailed description of the customer's price plan class -2 unique values,Unlimited Data,Metered / Other"
    sql: ${TABLE}.coe_pplan_class_desc ;;
  }

  dimension: coe_pplan_ctgry_desc {
    type: string
    description: "Center of Excellence price plan category description. examples -Prepaid Daily,Prepaid Smartphone,Prepaid Smartphone Unlimited,Prepaid Basic,Prepaid Other,myPlans etc"
    sql: ${TABLE}.coe_pplan_ctgry_desc ;;
  }

  dimension: coe_pplan_group {
    type: string
    description: "The PPLAN price plan group associated with the Center of Excellence."
    sql: ${TABLE}.coe_pplan_group ;;
  }

  dimension: coe_pplan_segmt_desc {
    type: string
    description: "The description of the Center of Excellence (COE) Price Plan segment, which defines the target market for the PPLAN."
    sql: ${TABLE}.coe_pplan_segmt_desc ;;
  }

  dimension: coe_pplan_service_type_desc {
    type: string
    description: "Description of the service type included in the customer's plan."
    sql: ${TABLE}.coe_pplan_service_type_desc ;;
  }

  dimension: coe_pplan_sub_type_desc {
    type: string
    description: "The description of the COE Price Plan sub-type, which further defines the target market for the PPLAN. Business friendly names for reporting"
    sql: ${TABLE}.coe_pplan_sub_type_desc ;;
  }

  dimension: coe_pplan_type_desc {
    type: string
    description: "Description of the PPAN type offered by the COE."
    sql: ${TABLE}.coe_pplan_type_desc ;;
  }

  dimension: coe_prod_type_cd {
    type: string
    description: "The type of product used by the subscriber."
    sql: ${TABLE}.coe_prod_type_cd ;;
  }

  dimension: coe_voice_pplan_access_amt {
    type: number
    description: "The amount of money that can be accessed for voice usage under the customer's price plan."
    sql: ${TABLE}.coe_voice_pplan_access_amt ;;
  }

  dimension: curr_contract_term {
    type: string
    description: "Current term of the contract."
    sql: ${TABLE}.curr_contract_term ;;
  }

  dimension: cust_id {
    type: string
    description: "The unique identifier for the customer."
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "The sequence number of the customer's line of service."
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: cust_type_cd {
    type: string
    description: "Customer type code, indicating the type of customer (e.g., individual, business, government)."
    sql: ${TABLE}.cust_type_cd ;;
  }

  dimension: data_access_amt {
    type: number
    description: "The total amount of data accessed by the subscriber."
    sql: ${TABLE}.data_access_amt ;;
  }

  dimension: data_tier {
    type: string
    description: "Tier of data usage."
    sql: ${TABLE}.data_tier ;;
  }

  dimension: device_brand_nm {
    type: string
    description: "The brand name of the subscriber's device."
    sql: ${TABLE}.device_brand_nm ;;
  }

  dimension: device_generation {
    type: string
    description: "Generation of the device associated with the subscription, indicating the technological advancement of the device."
    sql: ${TABLE}.device_generation ;;
  }

  dimension: device_grouping {
    type: string
    description: "The grouping of the device for billing purposes (e.g., primary device, secondary device)."
    sql: ${TABLE}.device_grouping ;;
  }

  dimension: device_prod_nm {
    type: string
    description: "The name of the device product associated with the subscription."
    sql: ${TABLE}.device_prod_nm ;;
  }

  dimension: device_type_cd {
    type: string
    description: "The code indicating the type of device (e.g., smartphone, tablet)."
    sql: ${TABLE}.device_type_cd ;;
  }

  dimension: duns_loc_num {
    type: string
    description: "The D-U-N-S number of the location associated with the subscription."
    sql: ${TABLE}.duns_loc_num ;;
  }

  dimension: ecpd_profile_id {
    type: string
    description: "The identifier of the subscriber's ecpd profile."
    sql: ${TABLE}.ecpd_profile_id ;;
  }

  dimension: edw_edge_qualified_ind {
    type: string
    description: "Indicator for whether the subscription is eligible for Enhanced Data for Global Evolution (EDGE) services."
    sql: ${TABLE}.edw_edge_qualified_ind ;;
  }

  dimension: ending_customers {
    type: number
    description: "Total number of ending customers for the specified period."
    sql: ${TABLE}.ending_customers ;;
  }

  dimension: eqp_device_id {
    type: string
    description: "The unique identifier of the subscriber's equipment device."
    sql: ${TABLE}.eqp_device_id ;;
  }

  dimension: eqp_prod_nm {
    type: string
    description: "The name of the equipment product used by the subscriber."
    sql: ${TABLE}.eqp_prod_nm ;;
  }

  dimension: esn_num {
    type: string
    description: "The electronic serial number of the subscriber's device."
    sql: ${TABLE}.esn_num ;;
  }

  dimension: ethnicity_segmt {
    type: string
    description: "The subscriber's ethnicity segment."
    sql: ${TABLE}.ethnicity_segmt ;;
  }

  dimension: f1k_ind {
    type: string
    description: "Indicates whether the subscriber is a f1k customer."
    sql: ${TABLE}.f1k_ind ;;
  }

  dimension: gift_data_allow {
    type: string
    description: "The amount of data that can be used without charge as part of a gift promotion."
    sql: ${TABLE}.gift_data_allow ;;
  }

  dimension: in_contract_term {
    type: string
    description: "Indicates whether the subscriber is in a contract term."
    sql: ${TABLE}.in_contract_term ;;
  }

  dimension: lang_pref_ind {
    type: string
    description: "Indicates the subscriber's preferred language."
    sql: ${TABLE}.lang_pref_ind ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_upd_dt {
    type: time
    description: "The date and time when the subscription record was last updated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }

  dimension: life_stage_segmt {
    type: string
    description: "Life stage segment of the customer, indicating the stage of the customer's life cycle (e.g., young adult, mature adult, senior)."
    sql: ${TABLE}.life_stage_segmt ;;
  }

  dimension: line_type_cd {
    type: string
    description: "Code indicating the type of line associated with the row. Values are: W - VZW Wireless, H - VZ Hub, O - OnStar Referral plan, T - Telemetry plan, I - ODI device line. Used to differentiate between Wireless \u0026 Telemetry devices. Telemetry filtered out of most consumer reporting ('H' , 'O', 'T' )"
    sql: ${TABLE}.line_type_cd ;;
  }

  dimension: loan_num {
    type: string
    description: "The unique loan number assigned to the loan associated with the subscription."
    sql: ${TABLE}.loan_num ;;
  }

  dimension: managed_ind {
    type: string
    description: "An indicator specifying whether the subscription is managed by Verizon Wireless.Managed Market Indicator. Values (C, U) Consolidated markets are owned managed by Verizon. Unconsolidated are markets that are managed by Verizon but owned by other company due to mergers and will be spun off and are typically excluded from reporting."
    sql: ${TABLE}.managed_ind ;;
  }

  dimension: master_agent_area_cd {
    type: string
    description: "Identifies the geographic area of the master agent associated with the subscription."
    sql: ${TABLE}.master_agent_area_cd ;;
  }

  dimension: master_agent_id {
    type: string
    description: "Unique identifier for the master agent."
    sql: ${TABLE}.master_agent_id ;;
  }

  dimension: mgd_segmt {
    type: string
    description: "Market Segment classifies customers based on their business or personal needs."
    sql: ${TABLE}.mgd_segmt ;;
  }

  dimension: mkt_cd {
    type: string
    description: "The code used by Verizon Wireless to report on information by its lowest geographic structure."
    sql: ${TABLE}.mkt_cd ;;
  }

  dimension: mnc_ind {
    type: string
    description: "Indicates if the customer is part of a Multi-National Company (MNC)."
    sql: ${TABLE}.mnc_ind ;;
  }

  dimension: mtn {
    type: string
    description: "The mobile telephone number associated with the subscription."
    sql: ${TABLE}.mtn ;;
  }

  dimension: odi_ind {
    type: string
    description: "An indicator specifying whether the subscription is part of the Open Development Initiative."
    sql: ${TABLE}.odi_ind ;;
  }

  dimension: orig_sor_id {
    type: string
    description: "The identifier for the source system that originated the subscription."
    sql: ${TABLE}.orig_sor_id ;;
  }

  dimension: plan_data_allow {
    type: string
    description: "The amount of data that can be used per month as part of the customer's plan."
    sql: ${TABLE}.plan_data_allow ;;
  }

  dimension: plan_type {
    type: string
    description: "Type of plan associated with the device, such as 'Individual' or 'Family'."
    sql: ${TABLE}.plan_type ;;
  }

  dimension: pplan_cd {
    type: string
    description: "The Price Plan Code identifies the price plans offered by Verizon Wireless wholesale and retail customers."
    sql: ${TABLE}.pplan_cd ;;
  }

  dimension: pplan_group {
    type: string
    description: "Price Plan Group defines the customer's price plan group."
    sql: ${TABLE}.pplan_group ;;
  }

  dimension: pplan_line_acct_cd {
    type: string
    description: "Account code for the customer's plan."
    sql: ${TABLE}.pplan_line_acct_cd ;;
  }

  dimension: pplan_mkt_cd {
    type: string
    description: "Price plan market code that identifies the wholesale or retail market of a price plan offered by Verizon Wireless."
    sql: ${TABLE}.pplan_mkt_cd ;;
  }

  dimension: pplan_service_type_cd {
    type: string
    description: "The type of service associated with the PPLAN Price Plan, such as voice, data, or messaging."
    sql: ${TABLE}.pplan_service_type_cd ;;
  }

  dimension: pplan_share {
    type: string
    description: "The share of the price plan that is being used by the customer."
    sql: ${TABLE}.pplan_share ;;
  }

  dimension: prepaid_ind {
    type: string
    description: "Indicator specifying whether the service is prepaid."
    sql: ${TABLE}.prepaid_ind ;;
  }

  dimension: prod_nm {
    type: string
    description: "The name of the product associated with the subscription."
    sql: ${TABLE}.prod_nm ;;
  }

  dimension: promo_type {
    type: string
    description: "The type of promotion applied to the subscription, such as a discount or free data."
    sql: ${TABLE}.promo_type ;;
  }

  dimension: region_cd {
    type: string
    description: "Code representing the region for which the data is provided."
    sql: ${TABLE}.region_cd ;;
  }

  dimension: region_desc {
    type: string
    description: "Description of the region where the customer is located."
    sql: ${TABLE}.region_desc ;;
  }

  dimension: rev_gen_ind {
    type: string
    description: "Revenue generation indicator, denoting whether the subscription is active and generating revenue. Indicates if they are a paying customer, test line, concession line"
    sql: ${TABLE}.rev_gen_ind ;;
  }

  dimension: rltd_acct_id {
    type: string
    description: "Identifier for the related account."
    sql: ${TABLE}.rltd_acct_id ;;
  }

  dimension: rollup_cd {
    type: string
    description: "Code for rollup."
    sql: ${TABLE}.rollup_cd ;;
  }

  dimension_group: rpt_mth {
    type: time
    description: "Reporting month for which the data is provided."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rpt_mth ;;
  }

  dimension: rpt_pplan_cd {
    type: string
    description: "Report Price Plan Code identifies the price plan code for reporting purposes."
    sql: ${TABLE}.rpt_pplan_cd ;;
  }

  dimension: rpt_year {
    type: number
    description: "The year of the report."
    sql: ${TABLE}.rpt_year ;;
  }

  dimension: sls_outlet_id {
    type: string
    description: "Uniquely identifies a location (outlet) where the sales of Verizon Wireless products and services occur."
    sql: ${TABLE}.sls_outlet_id ;;
  }

  dimension: sor_id {
    type: string
    description: "Identifier for the source system of record that is populating the data warehouse."
    sql: ${TABLE}.sor_id ;;
  }

  dimension: sp_acct_fraction {
    type: number
    description: "Systems \u0026 Programming account fraction, indicating the portion of the subscription revenue allocated to the Systems \u0026 Programming department."
    sql: ${TABLE}.sp_acct_fraction ;;
  }

  dimension: sub_region_cd {
    type: string
    description: "The sub-region code of the subscriber."
    sql: ${TABLE}.sub_region_cd ;;
  }

  dimension: subsidy_amt {
    type: number
    description: "The amount of subsidy that was applied to the device purchase."
    sql: ${TABLE}.subsidy_amt ;;
  }

  dimension: tenure {
    type: string
    description: "The length of time that the subscriber has been a Verizon Wireless customer."
    sql: ${TABLE}.tenure ;;
  }

  dimension: total_data_allow {
    type: string
    description: "Total data allowance assigned to the subscription, including both base and bonus data."
    sql: ${TABLE}.total_data_allow ;;
  }

  dimension: vertical {
    type: string
    description: "Industry or sector to which the subscriber belongs."
    sql: ${TABLE}.vertical ;;
  }

  dimension: ves_account_id {
    type: string
    description: "Unique identifier for the Verizon Enterprise Services (VES) account."
    sql: ${TABLE}.ves_account_id ;;
  }

  dimension: vlc_amt {
    type: number
    description: "Variable Line Cost amount, representing a cost to Verizon associated with the subscription."
    sql: ${TABLE}.vlc_amt ;;
  }

  dimension: voice_access_amt {
    type: number
    description: "Total voice access amount for the specified period."
    sql: ${TABLE}.voice_access_amt ;;
  }

  dimension: vpc_amt {
    type: number
    description: "The amount of Verizon Points earned by the subscriber."
    sql: ${TABLE}.vpc_amt ;;
  }

  dimension: vsn_cust_type_cd {
    type: string
    description: "The type of customer, as defined by VSN. Consumer indicated by PE, ME. Business end user indicated by BE etc"
    sql: ${TABLE}.vsn_cust_type_cd ;;
  }

  dimension: vz2_segmt_cd {
    type: string
    description: "VZ2 segment code for the customer."
    sql: ${TABLE}.vz2_segmt_cd ;;
  }

  dimension: vzw_value {
    type: string
    description: "Value of the product or service provided to the customer by Verizon Wireless (vzw)."
    sql: ${TABLE}.vzw_value ;;
  }
  measure: count {
    type: count
  }
}
