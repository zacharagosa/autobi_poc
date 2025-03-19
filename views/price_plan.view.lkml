# The name of this view in Looker is "Price Plan"
view: price_plan {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.price_plan` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Access Amt" in Explore.

  dimension: access_amt {
    type: number
    description: "Dollar amount charged to access the price plan."
    sql: ${TABLE}.access_amt ;;
  }

  dimension: access_tier_num {
    type: number
    description: "Access tier number."
    sql: ${TABLE}.access_tier_num ;;
  }

  dimension: act_fee {
    type: number
    description: "Fee associated with ACT."
    sql: ${TABLE}.act_fee ;;
  }

  dimension: allow_tier_num {
    type: number
    description: "Number of allowed tiers."
    sql: ${TABLE}.allow_tier_num ;;
  }

  dimension: alltel_product_grp_key {
    type: number
    description: "The key of the Alltel product group."
    sql: ${TABLE}.alltel_product_grp_key ;;
  }

  dimension: anlg_dgtl_ind {
    type: string
    description: "An indicator specifying whether the price plan is analog or digital."
    sql: ${TABLE}.anlg_dgtl_ind ;;
  }

  dimension: bi_data_allow_tier_cd {
    type: string
    description: "Billing Inquiry - Data Allowance Tier Code"
    sql: ${TABLE}.bi_data_allow_tier_cd ;;
  }

  dimension: bi_data_allow_tier_desc {
    type: string
    description: "Description of the data allowance tier for the billing inquiry."
    sql: ${TABLE}.bi_data_allow_tier_desc ;;
  }

  dimension: bi_data_allow_tier_desc_abbrv {
    type: string
    description: "Billing Inquiry Data Allowance Tier Description Abbreviation"
    sql: ${TABLE}.bi_data_allow_tier_desc_abbrv ;;
  }

  dimension: bi_data_allow_tier_unit_meas {
    type: string
    description: "The unit of measurement for the data allowance tier."
    sql: ${TABLE}.bi_data_allow_tier_unit_meas ;;
  }

  dimension: bi_data_allow_tier_value {
    type: number
    description: "The value of the data allowance tier in the Billing Inquiry (BI) system."
    sql: ${TABLE}.bi_data_allow_tier_value ;;
  }

  dimension: bi_pplan_access_amt {
    type: number
    description: "Access amount for billing inquiry report price plan."
    sql: ${TABLE}.bi_pplan_access_amt ;;
  }

  dimension: bi_pplan_class_cd {
    type: string
    description: "Billing inquiry price plan class code."
    sql: ${TABLE}.bi_pplan_class_cd ;;
  }

  dimension: bi_pplan_class_desc {
    type: string
    description: "Billing Inquiry Price Plan Class Description."
    sql: ${TABLE}.bi_pplan_class_desc ;;
  }

  dimension: bi_pplan_class_desc_abbrv {
    type: string
    description: "Describes the billing class of this price plan. The value is abbreviated."
    sql: ${TABLE}.bi_pplan_class_desc_abbrv ;;
  }

  dimension: bi_pplan_ctgry_cd {
    type: string
    description: "Category code for billing inquiry price plans."
    sql: ${TABLE}.bi_pplan_ctgry_cd ;;
  }

  dimension: bi_pplan_ctgry_desc {
    type: string
    description: "Billing Inquiry Price Plan Category Description."
    sql: ${TABLE}.bi_pplan_ctgry_desc ;;
  }

  dimension: bi_pplan_ctgry_desc_abbrv {
    type: string
    description: "Billing Inquiry - Abbreviation of Billing Plan Category Description."
    sql: ${TABLE}.bi_pplan_ctgry_desc_abbrv ;;
  }

  dimension: bi_pplan_desc {
    type: string
    description: "Billing inquiry price plan description."
    sql: ${TABLE}.bi_pplan_desc ;;
  }

  dimension: bi_pplan_desc_abbrv {
    type: string
    description: "Billing Inquiry Price Plan Description Abbreviation"
    sql: ${TABLE}.bi_pplan_desc_abbrv ;;
  }

  dimension: bi_pplan_msg_allow_cnt {
    type: number
    description: "Billing Inquiry - Message allowance count."
    sql: ${TABLE}.bi_pplan_msg_allow_cnt ;;
  }

  dimension: bi_pplan_pk_allow_min {
    type: number
    description: "Billing Inquiry - PPLAN Package Allowance Minutes."
    sql: ${TABLE}.bi_pplan_pk_allow_min ;;
  }

  dimension: bi_pplan_rpt_key {
    type: string
    description: "Billing Inquiry Price Plan Report Key"
    sql: ${TABLE}.bi_pplan_rpt_key ;;
  }

  dimension: bi_pplan_segmt_cd {
    type: string
    description: "Billing Inquiry - Price Plan Segment Code"
    sql: ${TABLE}.bi_pplan_segmt_cd ;;
  }

  dimension: bi_pplan_segmt_desc {
    type: string
    description: "The Billing Inquiry price plan segment description."
    sql: ${TABLE}.bi_pplan_segmt_desc ;;
  }

  dimension: bi_pplan_segmt_grp_cd {
    type: string
    description: "Billing Inquiry - Segment group code."
    sql: ${TABLE}.bi_pplan_segmt_grp_cd ;;
  }

  dimension: bi_pplan_segmt_grp_desc {
    type: string
    description: "Billing Inquiry Price Plan Segment Group Description"
    sql: ${TABLE}.bi_pplan_segmt_grp_desc ;;
  }

  dimension: bi_pplan_segmt_key {
    type: string
    description: "Billing Inquiry Price Plan Segment Key."
    sql: ${TABLE}.bi_pplan_segmt_key ;;
  }

  dimension: bi_pplan_service_type_cd {
    type: string
    description: "The type of service associated with the price plan."
    sql: ${TABLE}.bi_pplan_service_type_cd ;;
  }

  dimension: bi_pplan_service_type_desc {
    type: string
    description: "Billing Inquiry - Describes the type of service associated with the price plan."
    sql: ${TABLE}.bi_pplan_service_type_desc ;;
  }

  dimension: bi_pplan_service_type_desc_abr {
    type: string
    description: "Billing Inquiry - Abbreviated description of the type of service associated with the price plan."
    sql: ${TABLE}.bi_pplan_service_type_desc_abr ;;
  }

  dimension: bi_pplan_sub_type_cd {
    type: string
    description: "Billing inquiry sub-type code for this price plan."
    sql: ${TABLE}.bi_pplan_sub_type_cd ;;
  }

  dimension: bi_pplan_sub_type_desc {
    type: string
    description: "Sub-type of billing plan."
    sql: ${TABLE}.bi_pplan_sub_type_desc ;;
  }

  dimension: bi_pplan_sub_type_desc_abbrv {
    type: string
    description: "Abbreviated description of the billing inquiry price plan sub-type."
    sql: ${TABLE}.bi_pplan_sub_type_desc_abbrv ;;
  }

  dimension: bi_pplan_term_ind {
    type: string
    description: "Billing Inquiry Price Plan Term Indicator."
    sql: ${TABLE}.bi_pplan_term_ind ;;
  }

  dimension: bi_pplan_tot_allow_min {
    type: number
    description: "Total number of free minutes allowed as per Billing Inquiry PPLAN data"
    sql: ${TABLE}.bi_pplan_tot_allow_min ;;
  }

  dimension: bi_pplan_type_cd {
    type: string
    description: "Billing Inquiry - Price Plan Type Code"
    sql: ${TABLE}.bi_pplan_type_cd ;;
  }

  dimension: bi_pplan_type_desc {
    type: string
    description: "Billing Inquiry - Describes the type of price plan."
    sql: ${TABLE}.bi_pplan_type_desc ;;
  }

  dimension: bi_pplan_type_desc_abbrv {
    type: string
    description: "Abbreviated description of the billing inquiry price plan type."
    sql: ${TABLE}.bi_pplan_type_desc_abbrv ;;
  }

  dimension: bi_rpt_pplan_cd {
    type: string
    description: "The code for the price plan."
    sql: ${TABLE}.bi_rpt_pplan_cd ;;
  }

  dimension: bi_rpt_pplan_desc {
    type: string
    description: "Billing Inquiry - Report Price Plan Description"
    sql: ${TABLE}.bi_rpt_pplan_desc ;;
  }

  dimension: bi_rpt_pplan_desc_abbrv {
    type: string
    description: "Billing Inquiry Report Price Plan Description Abbreviation."
    sql: ${TABLE}.bi_rpt_pplan_desc_abbrv ;;
  }

  dimension: bill_in_arrear_ind {
    type: string
    description: "Indicator for bill in arrears."
    sql: ${TABLE}.bill_in_arrear_ind ;;
  }

  dimension: budget_access_tier_num {
    type: number
    description: "The budget access tier number."
    sql: ${TABLE}.budget_access_tier_num ;;
  }

  dimension: cntrct_term_ind {
    type: number
    description: "Indicator of the duration of the customer's contract. The contract may be either a fixed-term contract or a no-term contract."
    sql: ${TABLE}.cntrct_term_ind ;;
  }

  dimension: coe_data_pplan_access_amt {
    type: number
    description: "Amount that shows the price set by the Center of Excellence for data access."
    sql: ${TABLE}.coe_data_pplan_access_amt ;;
  }

  dimension: coe_pplan_class_desc {
    type: string
    description: "The class of the price plan."
    sql: ${TABLE}.coe_pplan_class_desc ;;
  }

  dimension: coe_pplan_ctgry_desc {
    type: string
    description: "Center of Excellence price plan category description. examples -Prepaid Daily,Prepaid Smartphone,Prepaid Smartphone Unlimited,Prepaid Basic,Prepaid Other,myPlans etc"
    sql: ${TABLE}.coe_pplan_ctgry_desc ;;
  }

  dimension: coe_pplan_group {
    type: string
    description: "Center of Excellence - Price Plan Group Defines the price plan's group, such as individual, family, or business"
    sql: ${TABLE}.coe_pplan_group ;;
  }

  dimension: coe_pplan_segmt_desc {
    type: string
    description: "Description of the Center of Excellence price plan segment."
    sql: ${TABLE}.coe_pplan_segmt_desc ;;
  }

  dimension: coe_pplan_service_type_desc {
    type: string
    description: "Center of Excellence price plan service type description. This field defines what type of service is offered with the price plan."
    sql: ${TABLE}.coe_pplan_service_type_desc ;;
  }

  dimension: coe_pplan_sub_type_desc {
    type: string
    description: "The description of the COE Price Plan sub-type, which further defines the target market for the PPLAN. Business friendly names for reporting"
    sql: ${TABLE}.coe_pplan_sub_type_desc ;;
  }

  dimension: coe_pplan_type_desc {
    type: string
    description: "Description of the Center of Excellence price plan type."
    sql: ${TABLE}.coe_pplan_type_desc ;;
  }

  dimension: coe_prod_type_cd {
    type: string
    description: "Center of Excellence product type code."
    sql: ${TABLE}.coe_prod_type_cd ;;
  }

  dimension: coe_voice_pplan_access_amt {
    type: number
    description: "Amount that shows the price set by the Center of Excellence for access to Verizon Order Inquiry Center."
    sql: ${TABLE}.coe_voice_pplan_access_amt ;;
  }

  dimension: collect_cd {
    type: string
    description: "Collect call code"
    sql: ${TABLE}.collect_cd ;;
  }

  dimension: ctgry_cd {
    type: string
    description: "Category Code."
    sql: ${TABLE}.ctgry_cd ;;
  }

  dimension: data_access_amt {
    type: number
    description: "Data access amount."
    sql: ${TABLE}.data_access_amt ;;
  }

  dimension: data_allow_cnt {
    type: number
    description: "The number of data units that are allowed with the price plan."
    sql: ${TABLE}.data_allow_cnt ;;
  }

  dimension: data_allow_share_ind {
    type: string
    description: "An indicator specifying whether the data allowance can be shared."
    sql: ${TABLE}.data_allow_share_ind ;;
  }

  dimension: data_anytime_rt {
    type: number
    description: "The data anytime rate."
    sql: ${TABLE}.data_anytime_rt ;;
  }

  dimension: data_off_peak_rt {
    type: number
    description: "Data off-peak usage rate."
    sql: ${TABLE}.data_off_peak_rt ;;
  }

  dimension: data_ovg_unit_of_meas_desc {
    type: string
    description: "Managed Electronic Authentication Services description of the unit of measure for data overage associated with the price plan."
    sql: ${TABLE}.data_ovg_unit_of_meas_desc ;;
  }

  dimension: data_peak_rt {
    type: number
    description: "Data peak rate."
    sql: ${TABLE}.data_peak_rt ;;
  }

  dimension: data_unit_meas_desc {
    type: string
    description: "Indicates the unit of measurement for the data allowance."
    sql: ${TABLE}.data_unit_meas_desc ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: eff_dt {
    type: time
    description: "The effective date of the price plan."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.eff_dt ;;
  }

  dimension: eis_inc_ind {
    type: string
    description: "EIS (Enterprise Infrastructure Services) included indicator."
    sql: ${TABLE}.eis_inc_ind ;;
  }

  dimension: first_incnmg_min_free_ind {
    type: string
    description: "Indicator for whether or not the first incoming minute is free"
    sql: ${TABLE}.first_incnmg_min_free_ind ;;
  }

  dimension_group: last_upd_dt {
    type: time
    description: "The date and time when the row was last updated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }

  dimension: mobreach_off_pk_rt {
    type: number
    description: "Off-peak rate for calls that are not part of a calling plan."
    sql: ${TABLE}.mobreach_off_pk_rt ;;
  }

  dimension: mobreach_pk_rt {
    type: number
    description: "Moreach peak rate."
    sql: ${TABLE}.mobreach_pk_rt ;;
  }

  dimension: msg_allow_cnt {
    type: number
    description: "The total number of free messages allowed within the Price Plan."
    sql: ${TABLE}.msg_allow_cnt ;;
  }

  dimension: msg_allow_share_ind {
    type: string
    description: "Indicator specifying if sharing of message allowance is allowed on this price plan."
    sql: ${TABLE}.msg_allow_share_ind ;;
  }

  dimension: msg_incoming_rt {
    type: number
    description: "Reference table for incoming Multi-Service Gateway messages."
    sql: ${TABLE}.msg_incoming_rt ;;
  }

  dimension: msg_outgoing_rt {
    type: number
    description: "Message outgoing rate."
    sql: ${TABLE}.msg_outgoing_rt ;;
  }

  dimension: mtn_to_mtn_min_rt {
    type: number
    description: "Mobile Telephone Number to Mobile Telephone Number minute rate."
    sql: ${TABLE}.mtn_to_mtn_min_rt ;;
  }

  dimension: mtn_to_mtn_optn_ind {
    type: string
    description: "Indicator for mountain to mountain option."
    sql: ${TABLE}.mtn_to_mtn_optn_ind ;;
  }

  dimension: non_vz_off_pk_rt {
    type: number
    description: "Reference Table that specifies the off-peak rate for non-Verizon calls."
    sql: ${TABLE}.non_vz_off_pk_rt ;;
  }

  dimension: non_vz_pk_rt {
    type: number
    description: "Non-Verizon peak rate."
    sql: ${TABLE}.non_vz_pk_rt ;;
  }

  dimension: off_pk_allow_min {
    type: number
    description: "Number of free minutes allowed off-peak."
    sql: ${TABLE}.off_pk_allow_min ;;
  }

  dimension: off_pk_min_rt {
    type: number
    description: "Off-peak minute rate."
    sql: ${TABLE}.off_pk_min_rt ;;
  }

  dimension: omni_roamer_typ_cd {
    type: string
    description: "The type of omni-roamer."
    sql: ${TABLE}.omni_roamer_typ_cd ;;
  }

  dimension: pk_allow_min {
    type: number
    description: "The number of peak minutes allowed."
    sql: ${TABLE}.pk_allow_min ;;
  }

  dimension: pk_min_rt {
    type: number
    description: "Peak minute rate."
    sql: ${TABLE}.pk_min_rt ;;
  }

  dimension: pplan_bndl_type_cd {
    type: string
    description: "Price Plan Bundle Type Code"
    sql: ${TABLE}.pplan_bndl_type_cd ;;
  }

  dimension: pplan_brand_nm_cd {
    type: string
    description: "This field represents the carrier's brand for this price plan."
    sql: ${TABLE}.pplan_brand_nm_cd ;;
  }

  dimension: pplan_cd {
    type: string
    description: "The unique code that identifies the price plan."
    sql: ${TABLE}.pplan_cd ;;
  }

  dimension: pplan_class_cd {
    type: string
    description: "Code representing the class of price plan, such as Basic or Premium."
    sql: ${TABLE}.pplan_class_cd ;;
  }

  dimension: pplan_desc {
    type: string
    description: "Description of the price plan."
    sql: ${TABLE}.pplan_desc ;;
  }

  dimension: pplan_footprint_nm {
    type: string
    description: "Footprints are defined as a grouping of System Identifiers Billing Identification numbers SID BIDs that can be used across many Banded Geographic Service Areas BGSAs."
    sql: ${TABLE}.pplan_footprint_nm ;;
  }

  dimension: pplan_geo_cd {
    type: string
    description: "Geographic code associated with the price plan."
    sql: ${TABLE}.pplan_geo_cd ;;
  }

  dimension: pplan_handset_req_cd {
    type: string
    description: "Identifies whether this price plan requires a specific type of handset."
    sql: ${TABLE}.pplan_handset_req_cd ;;
  }

  dimension: pplan_home_rt_cvrg_cd {
    type: string
    description: "Price Plan Home Reference Table Coverage Code."
    sql: ${TABLE}.pplan_home_rt_cvrg_cd ;;
  }

  dimension: pplan_line_acct_cd {
    type: string
    description: "Line account code associated with the PPLAN."
    sql: ${TABLE}.pplan_line_acct_cd ;;
  }

  dimension: pplan_mkt_cd {
    type: string
    description: "Price plan Market Code identifies the wholesale or retail market of a price plan offered by Verizon Wireless."
    sql: ${TABLE}.pplan_mkt_cd ;;
  }

  dimension: pplan_processing_type_cd {
    type: string
    description: "Code indicating the type of processing associated with the price plan."
    sql: ${TABLE}.pplan_processing_type_cd ;;
  }

  dimension: pplan_prod_line_cd {
    type: string
    description: "Price Plan Product Line Code"
    sql: ${TABLE}.pplan_prod_line_cd ;;
  }

  dimension: pplan_promo_cd {
    type: string
    description: "Cord for the price plan promotion."
    sql: ${TABLE}.pplan_promo_cd ;;
  }

  dimension: pplan_pymnt_type_cd {
    type: string
    description: "The type of payment for the price plan."
    sql: ${TABLE}.pplan_pymnt_type_cd ;;
  }

  dimension: pplan_share_cd {
    type: string
    description: "Code representing different categories of PPLANs that can be shared by a subscriber. Indicates the shareability of a particular PPLAN."
    sql: ${TABLE}.pplan_share_cd ;;
  }

  dimension: pplan_type_cd {
    type: string
    description: "The type of price plan."
    sql: ${TABLE}.pplan_type_cd ;;
  }

  dimension: prepaid_ind {
    type: string
    description: "An indicator specifying whether the price plan is prepaid or postpaid."
    sql: ${TABLE}.prepaid_ind ;;
  }

  dimension: pri_sec_ind {
    type: string
    description: "Indicator specifying if the plan is primary or secondary."
    sql: ${TABLE}.pri_sec_ind ;;
  }

  dimension: price_plan_desc {
    type: string
    sql: ${TABLE}.price_plan_desc ;;
  }

  dimension: segmt_cd {
    type: string
    description: "Code representing customer segment, such as Residential or Business."
    sql: ${TABLE}.segmt_cd ;;
  }

  dimension: singl_rt_usa {
    type: string
    description: "Reference table for the single rate for usage within the USA associated with the price plan."
    sql: ${TABLE}.singl_rt_usa ;;
  }

  dimension: sor_id {
    type: string
    description: "Identifier for the source system of record that is populating a Data Warehouse instance. Always use 'V'"
    sql: ${TABLE}.sor_id ;;
  }

  dimension: sprss_ind {
    type: string
    description: "Indicator for SPRINT."
    sql: ${TABLE}.sprss_ind ;;
  }

  dimension: std_access_tier_num {
    type: number
    description: "Standard access tier number."
    sql: ${TABLE}.std_access_tier_num ;;
  }

  dimension: term_ind {
    type: string
    description: "Indicator for term."
    sql: ${TABLE}.term_ind ;;
  }

  dimension: tot_allow_min {
    type: number
    description: "Total number of free minutes allowed for the month"
    sql: ${TABLE}.tot_allow_min ;;
  }

  dimension: voice_allow_share_ind {
    type: string
    description: "Indicates whether or not the plan allows for sharing of voice minutes."
    sql: ${TABLE}.voice_allow_share_ind ;;
  }

  dimension: vz_ld_off_pk_rt {
    type: number
    description: "Verizon long distance off-peak rate."
    sql: ${TABLE}.vz_ld_off_pk_rt ;;
  }

  dimension: vz_ld_pk_rt {
    type: number
    description: "Verizon Long Distance Peak rate reference table."
    sql: ${TABLE}.vz_ld_pk_rt ;;
  }

  dimension: vz_ld_rt_desc {
    type: string
    description: "Description of the Verizon long distance rate."
    sql: ${TABLE}.vz_ld_rt_desc ;;
  }

  dimension: vz_ld_rt_id {
    type: string
    description: "Reference to the Verizon Long Distance Reference Table"
    sql: ${TABLE}.vz_ld_rt_id ;;
  }

  dimension: wkend_min_rt {
    type: number
    description: "Weekend minutes rate."
    sql: ${TABLE}.wkend_min_rt ;;
  }

  dimension: wkend_rt_ind {
    type: string
    description: "Indicator for weekend rate."
    sql: ${TABLE}.wkend_rt_ind ;;
  }
  measure: count {
    type: count
  }
}
