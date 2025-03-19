# The name of this view in Looker is "Cust Acct Line Exp"
view: cust_acct_line_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.cust_acct_line_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acct Num" in Explore.

  dimension: acct_num {
    type: string
    description: "The account number of the subscriber."
    sql: ${TABLE}.acct_num ;;
  }

  dimension: act_change_reas_cd {
    type: string
    sql: ${TABLE}.act_change_reas_cd ;;
  }

  dimension: actn_mkt_seg_cd {
    type: string
    sql: ${TABLE}.actn_mkt_seg_cd ;;
  }

  dimension: age_input_premier {
    type: string
    sql: ${TABLE}.age_input_premier ;;
  }

  dimension: alltel_src_bill_acct_id {
    type: string
    sql: ${TABLE}.alltel_src_bill_acct_id ;;
  }

  dimension: alltel_src_sub_unique_id {
    type: string
    sql: ${TABLE}.alltel_src_sub_unique_id ;;
  }

  dimension: area_cd {
    type: string
    description: "Area code (cd) for the customer's location."
    sql: ${TABLE}.area_cd ;;
  }

  dimension: aup_ind {
    type: string
    sql: ${TABLE}.aup_ind ;;
  }

  dimension: auto_port_cd {
    type: string
    sql: ${TABLE}.auto_port_cd ;;
  }

  dimension: bill_acct_cd {
    type: string
    sql: ${TABLE}.bill_acct_cd ;;
  }

  dimension: birth_year {
    type: number
    description: "The year in which the subscriber was born."
    sql: ${TABLE}.birth_year ;;
  }

  dimension: budget_ctr_cd {
    type: string
    sql: ${TABLE}.budget_ctr_cd ;;
  }

  dimension: bus_id {
    type: string
    sql: ${TABLE}.bus_id ;;
  }

  dimension: bus_nm {
    type: string
    description: "The name of the business associated with the fixed 5G service, if applicable. This is relevant for business customers."
    sql: ${TABLE}.bus_nm ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: cntrct_eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cntrct_eff_dt ;;
  }

  dimension_group: cntrct_end_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cntrct_end_dt ;;
  }

  dimension: cntrct_num {
    type: string
    sql: ${TABLE}.cntrct_num ;;
  }

  dimension: cntrct_prd_mth {
    type: number
    sql: ${TABLE}.cntrct_prd_mth ;;
  }

  dimension: cntrct_sls_dist_chnl_type_cd {
    type: string
    sql: ${TABLE}.cntrct_sls_dist_chnl_type_cd ;;
  }

  dimension: cntrct_sls_outlet_id {
    type: string
    sql: ${TABLE}.cntrct_sls_outlet_id ;;
  }

  dimension: cntrct_sls_prsn_id {
    type: string
    sql: ${TABLE}.cntrct_sls_prsn_id ;;
  }

  dimension_group: cntrct_term_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cntrct_term_dt ;;
  }

  dimension: cntrct_term_fee {
    type: number
    sql: ${TABLE}.cntrct_term_fee ;;
  }

  dimension: cntrct_term_id {
    type: string
    sql: ${TABLE}.cntrct_term_id ;;
  }

  dimension: cntrct_user_id {
    type: string
    sql: ${TABLE}.cntrct_user_id ;;
  }

  dimension: comptr_cd {
    type: string
    sql: ${TABLE}.comptr_cd ;;
  }

  dimension: conv_deact_change_reas_cd {
    type: string
    sql: ${TABLE}.conv_deact_change_reas_cd ;;
  }

  dimension_group: conv_line_term_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.conv_line_term_dt ;;
  }

  dimension: conv_mtn_status_ind {
    type: string
    sql: ${TABLE}.conv_mtn_status_ind ;;
  }

  dimension: corp_reporting_cd {
    type: string
    sql: ${TABLE}.corp_reporting_cd ;;
  }

  dimension: cpni_ind {
    type: string
    sql: ${TABLE}.cpni_ind ;;
  }

  dimension: credit_app_num {
    type: string
    description: "This is the credit application number for the customer."
    sql: ${TABLE}.credit_app_num ;;
  }

  dimension: credit_class_ind {
    type: string
    sql: ${TABLE}.credit_class_ind ;;
  }

  dimension: cust_assoc_id {
    type: string
    sql: ${TABLE}.cust_assoc_id ;;
  }

  dimension: cust_id {
    type: string
    description: "Customer Identifier"
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "Customer Line Identifier"
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: cust_type_cd {
    type: string
    description: "Code indicating the customer type."
    sql: ${TABLE}.cust_type_cd ;;
  }

  dimension: deact_change_reas_cd {
    type: string
    sql: ${TABLE}.deact_change_reas_cd ;;
  }

  dimension: device_prod_nm {
    type: string
    description: "Device Product Name"
    sql: ${TABLE}.device_prod_nm ;;
  }

  dimension: device_type_cd {
    type: string
    description: "Device Type Code."
    sql: ${TABLE}.device_type_cd ;;
  }

  dimension: dscnt_plan_cd {
    type: string
    description: "Discount Plan code"
    sql: ${TABLE}.dscnt_plan_cd ;;
  }

  dimension: elec_sign_capt_ind {
    type: string
    sql: ${TABLE}.elec_sign_capt_ind ;;
  }

  dimension: emin {
    type: string
    sql: ${TABLE}.emin ;;
  }

  dimension: eqp_device_id {
    type: string
    description: "Unique identifier of the equipment device."
    sql: ${TABLE}.eqp_device_id ;;
  }

  dimension: eqp_prod_id {
    type: string
    description: "The equipment product ID of the caller's device."
    sql: ${TABLE}.eqp_prod_id ;;
  }

  dimension: eqp_status_cd {
    type: string
    sql: ${TABLE}.eqp_status_cd ;;
  }

  dimension: eqp_type_cd {
    type: string
    sql: ${TABLE}.eqp_type_cd ;;
  }

  dimension_group: esn_change_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.esn_change_dt ;;
  }

  dimension: esn_change_reas_cd {
    type: string
    description: "Captures the reason code for an ESN change."
    sql: ${TABLE}.esn_change_reas_cd ;;
  }

  dimension: esn_num {
    type: string
    sql: ${TABLE}.esn_num ;;
  }

  dimension_group: esn_redempt_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.esn_redempt_dt ;;
  }

  dimension: fin_mkt_cd {
    type: string
    sql: ${TABLE}.fin_mkt_cd ;;
  }

  dimension: geo_cd {
    type: string
    description: "Geographic code associated"
    sql: ${TABLE}.geo_cd ;;
  }

  dimension: geo_ind {
    type: string
    sql: ${TABLE}.geo_ind ;;
  }

  dimension: handicap_ind {
    type: string
    sql: ${TABLE}.handicap_ind ;;
  }

  dimension: iec_cd {
    type: string
    sql: ${TABLE}.iec_cd ;;
  }

  dimension_group: insert_dt {
    type: time
    description: "Date the record was inserted."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.insert_dt ;;
  }

  dimension: instance_ind {
    type: string
    sql: ${TABLE}.instance_ind ;;
  }

  dimension_group: last_cycle_dt {
    type: time
    description: "Last cycle date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_cycle_dt ;;
  }

  dimension_group: last_upd_dt {
    type: time
    description: "Last updated date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }

  dimension_group: line_act_dt {
    type: time
    description: "Date when line was activated"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.line_act_dt ;;
  }

  dimension_group: line_term_dt {
    type: time
    description: "Date when line was terminated"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.line_term_dt ;;
  }

  dimension: line_type_cd {
    type: string
    description: "Code indicating the type of line associated with the row. Values are: W - VZW Wireless, H - VZ Hub, O - OnStar Referral plan, T - Telemetry plan, I - ODI device line. Telemetry filtered out of most consumer reporting ('H' , 'O', 'T' )"
    sql: ${TABLE}.line_type_cd ;;
  }

  dimension: ln_credit_class_ind {
    type: string
    sql: ${TABLE}.ln_credit_class_ind ;;
  }

  dimension_group: merit_exp_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.merit_exp_dt ;;
  }

  dimension: mkt_cd {
    type: string
    description: "Code used by Verizon Wireless to report on information by its lowest geographic structure."
    sql: ${TABLE}.mkt_cd ;;
  }

  dimension: mtn {
    type: string
    description: "The Mobile Telephone Number"
    sql: ${TABLE}.mtn ;;
  }

  dimension_group: mtn_act_dt {
    type: time
    description: "Date MTN was activated"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mtn_act_dt ;;
  }

  dimension: mtn_status_ind {
    type: string
    description: "The Mobile Telephone Number Status Indicator indicates the current status of a mobile telephone number.A - active C - Changed to different number D - deactivated S - suspended O - other X - converted lineVision status codes A, AC, AR, AT are grouped as AVision status codes D, R are grouped as DVision status codes B, S are grouped as S"
    sql: ${TABLE}.mtn_status_ind ;;
  }

  dimension_group: mtn_zone_act_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mtn_zone_act_dt ;;
  }

  dimension_group: mtn_zone_deact_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mtn_zone_deact_dt ;;
  }

  dimension: mtn_zone_id {
    type: string
    sql: ${TABLE}.mtn_zone_id ;;
  }

  dimension: ne2_dscnt_amt {
    type: number
    sql: ${TABLE}.ne2_dscnt_amt ;;
  }

  dimension_group: ne2_redempt_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ne2_redempt_dt ;;
  }

  dimension: nm_first {
    type: string
    description: "First name of customer"
    sql: ${TABLE}.nm_first ;;
  }

  dimension: nm_last {
    type: string
    description: "Last name of customer"
    sql: ${TABLE}.nm_last ;;
  }

  dimension: nm_mdlin {
    type: string
    description: "Middle name of customer"
    sql: ${TABLE}.nm_mdlin ;;
  }

  dimension: nm_prfx {
    type: string
    sql: ${TABLE}.nm_prfx ;;
  }

  dimension: orig_cust_id {
    type: string
    sql: ${TABLE}.orig_cust_id ;;
  }

  dimension: orig_cust_line_seq_id {
    type: string
    sql: ${TABLE}.orig_cust_line_seq_id ;;
  }

  dimension: orig_sor_id {
    type: string
    sql: ${TABLE}.orig_sor_id ;;
  }

  dimension: port_confirm_ind {
    type: string
    description: "Indicator flag confirming if the porting request was successful"
    sql: ${TABLE}.port_confirm_ind ;;
  }

  dimension_group: port_eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.port_eff_dt ;;
  }

  dimension: port_status_cd {
    type: string
    description: "Code indicating the current status of the porting request (e.g., PI, PO)"
    sql: ${TABLE}.port_status_cd ;;
  }

  dimension_group: pplan_eff_dt {
    type: time
    description: "Date when price plan became active"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pplan_eff_dt ;;
  }

  dimension: prepaid_ind {
    type: string
    description: "Indicator specifying whether the service is prepaid."
    sql: ${TABLE}.prepaid_ind ;;
  }

  dimension: prism_seq_num {
    type: string
    sql: ${TABLE}.prism_seq_num ;;
  }

  dimension: prod_nm {
    type: string
    description: "Product name associated with the MTN."
    sql: ${TABLE}.prod_nm ;;
  }

  dimension: rev_gen_ind {
    type: string
    sql: ${TABLE}.rev_gen_ind ;;
  }

  dimension: scrty_dep_amt {
    type: number
    sql: ${TABLE}.scrty_dep_amt ;;
  }

  dimension: scrty_dep_ind {
    type: string
    sql: ${TABLE}.scrty_dep_ind ;;
  }

  dimension: scrty_dep_int_amt {
    type: number
    sql: ${TABLE}.scrty_dep_int_amt ;;
  }

  dimension: scrty_dep_pay_amt {
    type: number
    sql: ${TABLE}.scrty_dep_pay_amt ;;
  }

  dimension: scrty_dep_status_cd {
    type: string
    sql: ${TABLE}.scrty_dep_status_cd ;;
  }

  dimension: sim_num {
    type: string
    sql: ${TABLE}.sim_num ;;
  }

  dimension: sls_dist_chnl_type_cd {
    type: string
    description: "Sales distribution channel type."
    sql: ${TABLE}.sls_dist_chnl_type_cd ;;
  }

  dimension: sls_outlet_id {
    type: string
    description: "Uniquely identifies a location (outlet) where the sales of Verizon Wireless products and services occur."
    sql: ${TABLE}.sls_outlet_id ;;
  }

  dimension: sls_prsn_id {
    type: string
    description: "The Sales Person Id identifies the Verizon Wireless employee who sold cellular service. VISION SPECIFIC INFO : E in first position = Direct sales representative sold the service, T in first position = Telemarketing rep sold the service."
    sql: ${TABLE}.sls_prsn_id ;;
  }

  dimension: sor_id {
    type: string
    description: "Identifier for the source system of record that is populating the data warehouse instance. Always use 'V'"
    sql: ${TABLE}.sor_id ;;
  }

  dimension: static_ip_addr {
    type: string
    sql: ${TABLE}.static_ip_addr ;;
  }

  dimension_group: static_ip_addr_eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.static_ip_addr_eff_dt ;;
  }

  dimension_group: static_ip_addr_term_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.static_ip_addr_term_dt ;;
  }

  dimension: static_ip_addr_type {
    type: string
    sql: ${TABLE}.static_ip_addr_type ;;
  }

  dimension: static_ip_ver_num {
    type: string
    sql: ${TABLE}.static_ip_ver_num ;;
  }

  dimension: static_ipv6_addr {
    type: string
    sql: ${TABLE}.static_ipv6_addr ;;
  }

  dimension: vf_imsi {
    type: string
    sql: ${TABLE}.vf_imsi ;;
  }

  dimension: vsn_cust_type_cd {
    type: string
    description: "The type of customer, as defined by VSN. Consumer indicated by PE, ME. Business end user indicated by BE etc"
    sql: ${TABLE}.vsn_cust_type_cd ;;
  }

  dimension: vzw_imsi {
    type: string
    sql: ${TABLE}.vzw_imsi ;;
  }

  dimension_group: warr_eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.warr_eff_dt ;;
  }

  dimension: warr_lgth {
    type: string
    sql: ${TABLE}.warr_lgth ;;
  }

  dimension: xmkt_acct_ind {
    type: string
    sql: ${TABLE}.xmkt_acct_ind ;;
  }

  dimension: xmkt_acct_num {
    type: string
    sql: ${TABLE}.xmkt_acct_num ;;
  }
  measure: count {
    type: count
  }
}
