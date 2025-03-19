# The name of this view in Looker is "Dla Sum Fact Exp"
view: dla_sum_fact_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.dla_sum_fact_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Access Amt" in Explore.

  dimension: access_amt {
    type: number
    description: "Net dollar amount of the recurring monthly service charge that the customer is billed for all lines of service on a customer account for a particular billing cycle."
    sql: ${TABLE}.access_amt ;;
  }

  dimension: acct_access_amt {
    type: number
    description: "Account level price plan access amount. The amount will be populated on each line participating in an account level price plan."
    sql: ${TABLE}.acct_access_amt ;;
  }

  dimension: acct_data_access_amt {
    type: number
    description: "Amount or value related to account data access, possibly indicating usage or charges."
    sql: ${TABLE}.acct_data_access_amt ;;
  }

  dimension: acct_num {
    type: string
    description: "The account number of the customer."
    sql: ${TABLE}.acct_num ;;
  }

  dimension: acct_voice_access_amt {
    type: number
    description: "Amount of voice access included in the account for the device."
    sql: ${TABLE}.acct_voice_access_amt ;;
  }

  dimension: act_cnt {
    type: number
    description: "Activation count"
    sql: ${TABLE}.act_cnt ;;
  }

  dimension: activity_cd {
    type: string
    description: "The Activity Code indicates if the activity for a particular line of service on a customer account is an activation, deactivation or reactivation.VISION SPECIFIC INFO: AC - Activation DE - Deactivation RE - Reactivation PC- Price Plan change D3- Postpaid deactivation that occurs within 30 days of activation D6- Prepaid deactivation that occurs within 60 days of activation.I2K SPECIFIC INFO : AC = Activation DE = Deactivation RE = Reactivation"
    sql: ${TABLE}.activity_cd ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: activity_dt {
    type: time
    description: "The date on which the activity occurred."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.activity_dt ;;
  }

  dimension: area_cd {
    type: string
    description: "The code for the area in which the PPLAN price plan is sold."
    sql: ${TABLE}.area_cd ;;
  }

  dimension: area_desc {
    type: string
    description: "The geographic region where the customer is located, based on their ZIP code."
    sql: ${TABLE}.area_desc ;;
  }

  dimension: birth_year {
    type: number
    description: "Birth year of the customer using the device with this ESN"
    sql: ${TABLE}.birth_year ;;
  }

  dimension: bonus_data_allow {
    type: string
    description: "The amount of bonus data allowance for the PPLAN price plan."
    sql: ${TABLE}.bonus_data_allow ;;
  }

  dimension: boost_data_allow {
    type: string
    description: "Indicates whether the account has a data boost subscription, which provides additional high-speed data allowance."
    sql: ${TABLE}.boost_data_allow ;;
  }

  dimension: carryover_data_allow {
    type: string
    description: "The amount of data that is allowed to be carried over to the next month."
    sql: ${TABLE}.carryover_data_allow ;;
  }

  dimension: change_reas_cd {
    type: string
    description: "Change reason code; Code indicating the reason for a change in the MTN's status."
    sql: ${TABLE}.change_reas_cd ;;
  }

  dimension: channel_type {
    type: string
    description: "The type of channel through which the customer acquired the service."
    sql: ${TABLE}.channel_type ;;
  }

  dimension: churn_score_decile {
    type: number
    description: "The decile of the churn score for the PPLAN price plan."
    sql: ${TABLE}.churn_score_decile ;;
  }

  dimension: curr_contract_term {
    type: string
    description: "The current contract term for the customer."
    sql: ${TABLE}.curr_contract_term ;;
  }

  dimension: cust_id {
    type: string
    description: "Unique identifier for the customer."
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "The sequence ID of the customer's line."
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: cust_type_cd {
    type: string
    description: "The customer type code that identifies the type of customer."
    sql: ${TABLE}.cust_type_cd ;;
  }

  dimension: data_access_amt {
    type: number
    description: "The name of the equipment product used by the customer."
    sql: ${TABLE}.data_access_amt ;;
  }

  dimension: data_tier {
    type: string
    description: "A flag indicating the data tier of the customer. Example - Internet, Smartphone, Basic, BASIC etc"
    sql: ${TABLE}.data_tier ;;
  }

  dimension: deact_d3_cnt {
    type: number
    description: "The number of days since the device was deactivated."
    sql: ${TABLE}.deact_d3_cnt ;;
  }

  dimension: deact_d6_cnt {
    type: number
    description: "Number of deactivations within the last 6 days."
    sql: ${TABLE}.deact_d6_cnt ;;
  }

  dimension: deact_de_cnt {
    type: number
    description: "The number of times the customer's account has been deactivated due to non-payment or other reasons."
    sql: ${TABLE}.deact_de_cnt ;;
  }

  dimension: device_brand_nm {
    type: string
    description: "The brand name of the device."
    sql: ${TABLE}.device_brand_nm ;;
  }

  dimension: device_generation {
    type: string
    description: "The generation of the customer's device, indicating its age and technological capabilities."
    sql: ${TABLE}.device_generation ;;
  }

  dimension: device_grouping {
    type: string
    description: "Name of the device grouping."
    sql: ${TABLE}.device_grouping ;;
  }

  dimension: device_prod_nm {
    type: string
    description: "Name of the device product."
    sql: ${TABLE}.device_prod_nm ;;
  }

  dimension: device_type_cd {
    type: string
    description: "Code indicating the device type (e.g., ODI device, Alltel device, Verizon device, VoRA device, 4G SIM card)."
    sql: ${TABLE}.device_type_cd ;;
  }

  dimension: duns_loc_num {
    type: string
    description: "Data Universal Numbering System (DUNS) location number; Unique identifier for an organization's location."
    sql: ${TABLE}.duns_loc_num ;;
  }

  dimension: ecpd_profile_id {
    type: string
    description: "Unique identifier of a customer profile in the Enterprise Customer Profile Database"
    sql: ${TABLE}.ecpd_profile_id ;;
  }

  dimension: edw_edge_qualified_ind {
    type: string
    description: "Indicates whether the device is eligible for Enhanced Data for Global Evolution (EDGE) technology, which provides faster data speeds."
    sql: ${TABLE}.edw_edge_qualified_ind ;;
  }

  dimension: eqp_device_id {
    type: string
    description: "The identifier used in Converge Media Management to uniquely identify a set-top box. It is derived differently depending on the type of STB: 1) For Cisco STBs, this is the 12 digit hex MAC address stripped of separators. 2) For Motorola STBs, this is the short form of the unit address converted to a 9 digit hex value with leading zeros."
    sql: ${TABLE}.eqp_device_id ;;
  }

  dimension: eqp_prod_nm {
    type: string
    description: "The Prod Name of the device which can be tied to the customer."
    sql: ${TABLE}.eqp_prod_nm ;;
  }

  dimension: esn_num {
    type: string
    description: "Electronic Serial Number for a specific device"
    sql: ${TABLE}.esn_num ;;
  }

  dimension: ethnicity_segmt {
    type: string
    description: "Identifies the ethnicity of the customer."
    sql: ${TABLE}.ethnicity_segmt ;;
  }

  dimension: f1k_ind {
    type: string
    description: "An indicator for whether a customer using this ESN has been included in First 1K reporting"
    sql: ${TABLE}.f1k_ind ;;
  }

  dimension: gift_data_allow {
    type: string
    description: "Data allowance for Growth Initiatives for Teachers (GIFT) devices."
    sql: ${TABLE}.gift_data_allow ;;
  }

  dimension: gross_adds {
    type: number
    description: "Number of gross adds within a specified time period."
    sql: ${TABLE}.gross_adds ;;
  }

  dimension_group: hdp_insert_dt {
    type: time
    description: "The date and time that the record was inserted into the table."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.hdp_insert_dt_time ;;
  }

  dimension: in_contract_term {
    type: string
    description: "A flag indicating whether the customer is in a contract term."
    sql: ${TABLE}.in_contract_term ;;
  }

  dimension: involuntary_disconnects {
    type: number
    description: "Customer has Involuntarily disconnected"
    sql: ${TABLE}.involuntary_disconnects ;;
  }

  dimension: lang_pref_ind {
    type: string
    description: "Indicates the preferred language of the customer for communication with Verizon"
    sql: ${TABLE}.lang_pref_ind ;;
  }

  dimension: life_stage_segmt {
    type: string
    description: "The customer's life stage segment, which categorizes customers based on their age, income, and other demographic factors."
    sql: ${TABLE}.life_stage_segmt ;;
  }

  dimension: line_type_cd {
    type: string
    description: "Code indicating the type of line associated with the row. Values are: W - VZW Wireless, H - VZ Hub, O - OnStar Referral plan, T - Telemetry plan, I - ODI device line. Used to differentiate between Wireless \u0026 Telemetry devices. Telemetry filtered out of most consumer reporting ('H' , 'O', 'T' )"
    sql: ${TABLE}.line_type_cd ;;
  }

  dimension: loan_num {
    type: string
    description: "The number of loans taken out by the customer."
    sql: ${TABLE}.loan_num ;;
  }

  dimension: managed_ind {
    type: string
    description: "An indicator specifying whether the subscription is managed by Verizon Wireless.Managed Market Indicator. Values (C, U) Consolidated markets are owned managed by Verizon. Unconsolidated are markets that are managed by Verizon but owned by other company due to mergers and will be spun off and are typically excluded from reporting."
    sql: ${TABLE}.managed_ind ;;
  }

  dimension: master_agent_area_cd {
    type: string
    description: "The code of the area in which the master agent who sold the customer their Verizon service is located."
    sql: ${TABLE}.master_agent_area_cd ;;
  }

  dimension: master_agent_id {
    type: string
    description: "The master agent ID that identifies the master agent responsible for the data."
    sql: ${TABLE}.master_agent_id ;;
  }

  dimension: mgd_segmt {
    type: string
    description: "Market Segment of the customer using the device with this ESN"
    sql: ${TABLE}.mgd_segmt ;;
  }

  dimension: mkt_cd {
    type: string
    description: "Market code used by Verizon Wireless to report on information by its lowest geographic structure."
    sql: ${TABLE}.mkt_cd ;;
  }

  dimension: mnc_ind {
    type: string
    description: "Indicator for whether the customer is a multi-national company."
    sql: ${TABLE}.mnc_ind ;;
  }

  dimension: mtn {
    type: string
    description: "Mobile Telephone Number; Unique identifier for a mobile phone."
    sql: ${TABLE}.mtn ;;
  }

  dimension: odi_ind {
    type: string
    description: "Indicates whether the device is an Open Development Initiative (ODI) device."
    sql: ${TABLE}.odi_ind ;;
  }

  dimension: orig_sor_id {
    type: string
    sql: ${TABLE}.orig_sor_id ;;
  }

  dimension: plan_data_allow {
    type: string
    description: "Data allowance specified in the device's plan."
    sql: ${TABLE}.plan_data_allow ;;
  }

  dimension: plan_type {
    type: string
    description: "Type of plan associated with the device."
    sql: ${TABLE}.plan_type ;;
  }

  dimension: port_carrier_cd {
    type: string
    description: "The carrier code of the network from which the customer ported their phone number to Verizon."
    sql: ${TABLE}.port_carrier_cd ;;
  }

  dimension: port_status_cd {
    type: string
    description: "The status code for the customer's port."
    sql: ${TABLE}.port_status_cd ;;
  }

  dimension: pplan_cd {
    type: string
    description: "The code for the PPLAN price plan."
    sql: ${TABLE}.pplan_cd ;;
  }

  dimension: pplan_group {
    type: string
    description: "The price plan group that the customer using the device with this ESN is subscribed to"
    sql: ${TABLE}.pplan_group ;;
  }

  dimension: pplan_line_acct_cd {
    type: string
    description: "The account code for the PPLAN price plan line."
    sql: ${TABLE}.pplan_line_acct_cd ;;
  }

  dimension: pplan_mkt_cd {
    type: string
    description: "The price plan market code that identifies the market of the price plan."
    sql: ${TABLE}.pplan_mkt_cd ;;
  }

  dimension: pplan_service_type_cd {
    type: string
    description: "The service type code for the customer's price plan."
    sql: ${TABLE}.pplan_service_type_cd ;;
  }

  dimension: pplan_share {
    type: string
    description: "The share of the PPLAN price plan in the market."
    sql: ${TABLE}.pplan_share ;;
  }

  dimension: prepaid_ind {
    type: string
    description: "An indicator for whether the PPLAN price plan is prepaid."
    sql: ${TABLE}.prepaid_ind ;;
  }

  dimension: prod_nm {
    type: string
    description: "Product name associated with the MTN."
    sql: ${TABLE}.prod_nm ;;
  }

  dimension: promo_type {
    type: string
    description: "The promotion type that identifies the type of promotion."
    sql: ${TABLE}.promo_type ;;
  }

  dimension: react_cnt {
    type: number
    description: "The number of times the customer has reactivated a disconnected line."
    sql: ${TABLE}.react_cnt ;;
  }

  dimension: region_cd {
    type: string
    description: "The region code that identifies the geographic region of the data."
    sql: ${TABLE}.region_cd ;;
  }

  dimension: region_desc {
    type: string
    description: "The description of the region where the customer is located."
    sql: ${TABLE}.region_desc ;;
  }

  dimension: rev_gen_ind {
    type: string
    description: "The revenue generation indicator that identifies whether the data is for revenue generation. Indicates if they are a paying customer, test line, concession line"
    sql: ${TABLE}.rev_gen_ind ;;
  }

  dimension: rltd_acct_id {
    type: string
    description: "The ID of the related account for the PPLAN price plan."
    sql: ${TABLE}.rltd_acct_id ;;
  }

  dimension: rollup_cd {
    type: string
    description: "A code used to roll up the data into a larger grouping."
    sql: ${TABLE}.rollup_cd ;;
  }

  dimension_group: rpt_mth {
    type: time
    description: "The reporting month that the data is for."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rpt_mth ;;
  }

  dimension: rpt_pplan_cd {
    type: string
    description: "The Report Price Plan Code identifies the rolled up price plan associated with the Verizon Wireless Customers."
    sql: ${TABLE}.rpt_pplan_cd ;;
  }

  dimension: rpt_year {
    type: number
    description: "The year of the report."
    sql: ${TABLE}.rpt_year ;;
  }

  dimension: sls_outlet_id {
    type: string
    description: "Unique identifier for a specific location where Verizon products and services are sold"
    sql: ${TABLE}.sls_outlet_id ;;
  }

  dimension: sls_prsn_id {
    type: string
    description: "The unique identifier of the salesperson who sold the cellular service to the customer."
    sql: ${TABLE}.sls_prsn_id ;;
  }

  dimension: sor_id {
    type: string
    description: "The source system of record ID that identifies the source system that populated the data. Always use 'V'"
    sql: ${TABLE}.sor_id ;;
  }

  dimension: sub_region_cd {
    type: string
    description: "Indicates a sub-region within a larger geographic region"
    sql: ${TABLE}.sub_region_cd ;;
  }

  dimension: tenure {
    type: string
    description: "Length of time subscriber has been a customer. Based on line activation date."
    sql: ${TABLE}.tenure ;;
  }

  dimension: total_data_allow {
    type: string
    description: "The total data allowance that identifies the total data allowance for the customer."
    sql: ${TABLE}.total_data_allow ;;
  }

  dimension: user_id {
    type: string
    description: "User associated with the MTN."
    sql: ${TABLE}.user_id ;;
  }

  dimension: vertical {
    type: string
    description: "The vertical market segment for the PPLAN price plan."
    sql: ${TABLE}.vertical ;;
  }

  dimension: ves_account_id {
    type: string
    description: "The account ID for the customer's Verizon Enterprise Services account."
    sql: ${TABLE}.ves_account_id ;;
  }

  dimension: voice_access_amt {
    type: number
    description: "Voice access amount - used to track the amount of voice access usage for the customer."
    sql: ${TABLE}.voice_access_amt ;;
  }

  dimension: voluntary_disconnects {
    type: number
    description: "Number of voluntary disconnections."
    sql: ${TABLE}.voluntary_disconnects ;;
  }

  dimension: vsn_cust_type_cd {
    type: string
    description: "The type of customer, as defined by VSN. Consumer indicated by PE, ME. Business end user indicated by BE etc"
    sql: ${TABLE}.vsn_cust_type_cd ;;
  }

  dimension: vz2_segmt_cd {
    type: string
    description: "The Verizon 2 segment code that identifies the segment of the data."
    sql: ${TABLE}.vz2_segmt_cd ;;
  }

  dimension: vzw_value {
    type: string
    description: "The value of the PPLAN price plan to Verizon Wireless."
    sql: ${TABLE}.vzw_value ;;
  }
  measure: count {
    type: count
  }
}
