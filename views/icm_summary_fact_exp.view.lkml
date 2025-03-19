# The name of this view in Looker is "Icm Summary Fact Exp"
view: icm_summary_fact_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.icm_summary_fact_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Abandons Cnt" in Explore.

  dimension: abandons_cnt {
    type: number
    description: "The number of abandoned calls. Values 0, 1"
    sql: ${TABLE}.abandons_cnt ;;
  }

  dimension: acd_appl_id {
    type: number
    description: "The identifier of the Automatic Call Delivery (ACD) application that was used to route the call."
    sql: ${TABLE}.acd_appl_id ;;
  }

  dimension: acd_area_nm {
    type: string
    description: "Automatic Call Delivery area name of the caller , ie IVR Queue Name/Department Example - Prepay,SPC,WestCentral,Federal Accounts etc . Area code nulls indicate Internal"
    sql: ${TABLE}.acd_area_nm ;;
  }

  dimension: acd_area_nm_agent {
    type: string
    description: "The ACD (Automatic Call Delivery) area name agent identifies the area of the call center that handled the call."
    sql: ${TABLE}.acd_area_nm_agent ;;
  }

  dimension: acss_call_id {
    type: string
    description: "The unique identifier for the call in the Automated Customer Support System (ACSS)."
    sql: ${TABLE}.acss_call_id ;;
  }

  dimension: agent_group_id {
    type: number
    description: "The identifier of the agent group that handled the call."
    sql: ${TABLE}.agent_group_id ;;
  }

  dimension: ansr_30_cnt {
    type: number
    description: "The number of calls that were answered within 30 seconds."
    sql: ${TABLE}.ansr_30_cnt ;;
  }

  dimension: ansr_30_to_40_cnt {
    type: number
    description: "The number of calls that were answered within 30 to 40 seconds."
    sql: ${TABLE}.ansr_30_to_40_cnt ;;
  }

  dimension: answer_half_hr {
    type: number
    description: "The time it took to answer the call, in half-hour increments."
    sql: ${TABLE}.answer_half_hr ;;
  }

  dimension: answered_cnt {
    type: number
    description: "Indicator to denote if the call was answered or not"
    sql: ${TABLE}.answered_cnt ;;
  }

  dimension: bus_rule {
    type: string
    description: "The business rule that was applied to the customer's account."
    sql: ${TABLE}.bus_rule ;;
  }

  dimension: cacs_state_cd {
    type: string
    description: "The state of the customer's account in the Computer Assisted Collection System (CACS)."
    sql: ${TABLE}.cacs_state_cd ;;
  }

  dimension: cacs_work_state_cd {
    type: string
    description: "Code indicating the work state of the Computer Assisted Collection System (CACS) at the time of the call."
    sql: ${TABLE}.cacs_work_state_cd ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: call_answer_dt {
    type: time
    description: "The call answer date is the date on which the call was answered."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.call_answer_dt ;;
  }

  dimension: call_answer_tm {
    type: string
    description: "Time it took for the call to be answered in seconds."
    sql: ${TABLE}.call_answer_tm ;;
  }

  dimension: call_dispo_flag {
    type: number
    description: "A flag that indicates the disposition of the call, such as whether it was answered, abandoned, or transferred."
    sql: ${TABLE}.call_dispo_flag ;;
  }

  dimension: call_duration_seconds {
    type: number
    description: "The duration of the call, in seconds."
    sql: ${TABLE}.call_duration_seconds ;;
  }

  dimension_group: call_end_dt {
    type: time
    description: "The date and time when the call ended."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.call_end_dt ;;
  }

  dimension: call_end_tm {
    type: string
    description: "The time the call ended."
    sql: ${TABLE}.call_end_tm ;;
  }

  dimension: call_offered_cnt {
    type: number
    description: "The number of times the call was offered to an agent."
    sql: ${TABLE}.call_offered_cnt ;;
  }

  dimension: call_reas_cd {
    type: string
    description: "call reason code"
    sql: ${TABLE}.call_reas_cd ;;
  }

  dimension: call_status {
    type: string
    description: "call status"
    sql: ${TABLE}.call_status ;;
  }

  dimension: callcenterid {
    type: number
    description: "Identifier for the call center that handled the call."
    value_format_name: id
    sql: ${TABLE}.callcenterid ;;
  }

  dimension: callcenterid_agent {
    type: number
    description: "The call center ID of the agent who handled the call."
    sql: ${TABLE}.callcenterid_agent ;;
  }

  dimension: callers_region {
    type: string
    description: "The region of the caller."
    sql: ${TABLE}.callers_region ;;
  }

  dimension: client_application_cd {
    type: string
    description: "client application code"
    sql: ${TABLE}.client_application_cd ;;
  }

  dimension: client_channel_cd {
    type: string
    description: "client channel code"
    sql: ${TABLE}.client_channel_cd ;;
  }

  dimension: cust_id {
    type: string
    description: "The unique identifier for the customer."
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "The sequence ID of the customer line."
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: cust_value {
    type: string
    description: "Value of the customer to Verizon Wireless, based on factors such as their usage patterns, loyalty, and profitability."
    sql: ${TABLE}.cust_value ;;
  }

  dimension: delay_answer_seconds {
    type: number
    description: "The amount of time, in seconds, that the call was delayed before being answered by an agent."
    sql: ${TABLE}.delay_answer_seconds ;;
  }

  dimension: delay_tm_seconds {
    type: number
    description: "The delay time in seconds is the additional time that has been requested for response."
    sql: ${TABLE}.delay_tm_seconds ;;
  }

  dimension: dev_cat_cd {
    type: string
    description: "dev category code"
    sql: ${TABLE}.dev_cat_cd ;;
  }

  dimension: ecc_sm_ind {
    type: string
    description: "An indicator that specifies whether the call was handled by the Ebonding Collaboration Center (ECC) Switching Module (SM)."
    sql: ${TABLE}.ecc_sm_ind ;;
  }

  dimension: eccr_call_ctr_cd {
    type: string
    description: "The enterprise contact center reporting (ECCR) call center code identifies the call center that handled the call."
    sql: ${TABLE}.eccr_call_ctr_cd ;;
  }

  dimension: eccr_dept_nm {
    type: string
    description: "The name of the Enterprise Contact Center Reporting (ECCR) department.Call centers agents are mapped to department to handle appropriate calls based on their specialization"
    sql: ${TABLE}.eccr_dept_nm ;;
  }

  dimension: eccr_dept_nm_agent {
    type: string
    description: "The ECCR (Enterprise Contact Center Reporting) department name agent identifies the department of the call center that handled the call."
    sql: ${TABLE}.eccr_dept_nm_agent ;;
  }

  dimension: eccr_line_bus_nm {
    type: string
    description: "ECCR line business name."
    sql: ${TABLE}.eccr_line_bus_nm ;;
  }

  dimension: eccr_line_bus_nm_agent {
    type: string
    description: "Enterprise Contact Center Reporting Line Business Name Agent (Eccr Line Bus Nm Agent) identifies the business unit or line of business associated with the agent who handled the call, providing context on the agent's area of expertise or specialization."
    sql: ${TABLE}.eccr_line_bus_nm_agent ;;
  }

  dimension: eccr_super_line_bus_nm {
    type: string
    description: "The name of the business unit that owns the ECCR super line."
    sql: ${TABLE}.eccr_super_line_bus_nm ;;
  }

  dimension: eid {
    type: string
    description: "The Endpoint Identifier assigned to the customer."
    sql: ${TABLE}.eid ;;
  }

  dimension: eqp_prod_id {
    type: string
    description: "The equipment product ID of the caller's device."
    sql: ${TABLE}.eqp_prod_id ;;
  }

  dimension: final_call_dispo {
    type: number
    description: "The final disposition of the call, indicating the outcome of the call attempt. Possible values include 'ANSWERED', 'BUSY', 'FAILED', 'NO ANSWER', and 'UNKNOWN'."
    sql: ${TABLE}.final_call_dispo ;;
  }

  dimension: final_object_id {
    type: number
    description: "The final object ID associated with the call."
    sql: ${TABLE}.final_object_id ;;
  }

  dimension: first_bill_cd {
    type: string
    description: "The first bill code associated with the call."
    sql: ${TABLE}.first_bill_cd ;;
  }

  dimension: handle_tm_seconds {
    type: number
    description: "The total time in seconds that the call was handled."
    sql: ${TABLE}.handle_tm_seconds ;;
  }

  dimension: high_risk_ind {
    type: string
    description: "Indicates whether the call was high-risk."
    sql: ${TABLE}.high_risk_ind ;;
  }

  dimension: hold_tm_seconds {
    type: number
    description: "The hold time in seconds is the amount of time that the caller spent on hold during the call."
    sql: ${TABLE}.hold_tm_seconds ;;
  }

  dimension: hpr_cd {
    type: string
    description: "high priority code"
    sql: ${TABLE}.hpr_cd ;;
  }

  dimension: icm_acct_type_cd {
    type: string
    description: "The ICM (Intelligent Contact Manager) account type code identifies the type of account that the caller has."
    sql: ${TABLE}.icm_acct_type_cd ;;
  }

  dimension: ivr_call_id {
    type: string
    description: "A unique identifier for the call in the Interactive Voice Response (IVR) system."
    sql: ${TABLE}.ivr_call_id ;;
  }

  dimension: ivr_cust_src_cd {
    type: string
    description: "The source of the customer's call to the Interactive Voice Response (IVR) system."
    sql: ${TABLE}.ivr_cust_src_cd ;;
  }

  dimension: lang_pref_ind {
    type: string
    description: "The language preference indicator identifies the preferred language of the caller."
    sql: ${TABLE}.lang_pref_ind ;;
  }

  dimension: local_q_tm_seconds {
    type: number
    description: "The local queue time in seconds is the amount of time that the caller spent in the queue before their call was answered."
    sql: ${TABLE}.local_q_tm_seconds ;;
  }

  dimension: mtn {
    type: string
    description: "The mobile telephone number of the caller."
    sql: ${TABLE}.mtn ;;
  }

  dimension: onebill_ind {
    type: string
    description: "An indicator that specifies whether the customer is enrolled in the One Bill program."
    sql: ${TABLE}.onebill_ind ;;
  }

  dimension: onstar_ind {
    type: string
    description: "Indicator for whether the call was made through OnStar."
    sql: ${TABLE}.onstar_ind ;;
  }

  dimension: orig_ivr_call_id {
    type: string
    description: "original ivr call identifier"
    sql: ${TABLE}.orig_ivr_call_id ;;
  }

  dimension: peripheral_call_type {
    type: number
    description: "The type of peripheral call."
    sql: ${TABLE}.peripheral_call_type ;;
  }

  dimension: recoverykey {
    type: string
    description: "The unique identifier for the customer's recovery key."
    sql: ${TABLE}.recoverykey ;;
  }

  dimension: rep_type_cd {
    type: string
    description: "Indicates the type of representative who handled the call, such as a customer service representative, technical support representative, or sales representative."
    sql: ${TABLE}.rep_type_cd ;;
  }

  dimension: ring_tm_seconds {
    type: number
    description: "The ring time in seconds is the amount of time that the phone rang before the caller answered."
    sql: ${TABLE}.ring_tm_seconds ;;
  }

  dimension: route_value {
    type: string
    description: "The value of the route that was used to direct the call."
    sql: ${TABLE}.route_value ;;
  }

  dimension: routercallkey {
    type: string
    description: "router call key"
    sql: ${TABLE}.routercallkey ;;
  }

  dimension: routercallkeyday {
    type: number
    description: "router call key day"
    sql: ${TABLE}.routercallkeyday ;;
  }

  dimension: script_nm {
    type: string
    description: "The name of the script that was used to handle the customer's call."
    sql: ${TABLE}.script_nm ;;
  }

  dimension: sor_id {
    type: string
    description: "Identifier for the source system of record that is populating the data warehouse instance. Always use 'V'"
    sql: ${TABLE}.sor_id ;;
  }

  dimension: specialization_cd {
    type: string
    description: "specialization code"
    sql: ${TABLE}.specialization_cd ;;
  }

  dimension: super_bus_rule {
    type: string
    description: "super busines rule name"
    sql: ${TABLE}.super_bus_rule ;;
  }

  dimension: super_call_type_cd {
    type: string
    description: "name of super call type"
    sql: ${TABLE}.super_call_type_cd ;;
  }

  dimension: super_skill_group {
    type: string
    description: "super skill group name"
    sql: ${TABLE}.super_skill_group ;;
  }

  dimension: talk_tm_seconds {
    type: number
    description: "Total talk time for the call in seconds."
    sql: ${TABLE}.talk_tm_seconds ;;
  }

  dimension: time_to_aband_seconds {
    type: number
    description: "The time it took for the caller to abandon the call, in seconds."
    sql: ${TABLE}.time_to_aband_seconds ;;
  }

  dimension: tm_zone_offset {
    type: number
    description: "The time zone offset of the caller."
    sql: ${TABLE}.tm_zone_offset ;;
  }

  dimension: transfer_flag {
    type: string
    description: "Indicates whether the call was transferred."
    sql: ${TABLE}.transfer_flag ;;
  }

  dimension: transfer_point {
    type: string
    description: "The point at which the call was transferred to another agent."
    sql: ${TABLE}.transfer_point ;;
  }

  dimension: work_tm_seconds {
    type: number
    description: "The total amount of time spent on the call, in seconds, including talk time, hold time, and other activities."
    sql: ${TABLE}.work_tm_seconds ;;
  }
  measure: count {
    type: count
  }
}
