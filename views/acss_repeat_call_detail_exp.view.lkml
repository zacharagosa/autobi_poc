# The name of this view in Looker is "Acss Repeat Call Detail Exp"
view: acss_repeat_call_detail_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.acss_repeat_call_detail_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acct Num" in Explore.

  dimension: acct_num {
    type: string
    description: "The account number of the customer who made the call."
    sql: ${TABLE}.acct_num ;;
  }

  dimension: acd_call_id {
    type: string
    description: "The Automatic Call Delivery (ACD) call ID associated with the repeat ACSS call."
    sql: ${TABLE}.acd_call_id ;;
  }

  dimension: acss_call_id {
    type: string
    description: "Unique identifier for the ACSS call."
    sql: ${TABLE}.acss_call_id ;;
  }

  dimension: acss_call_type_cd {
    type: string
    description: "The type of ACSS call. Possible values include: 'Inbound', 'Outbound', 'Internal', 'Other'."
    sql: ${TABLE}.acss_call_type_cd ;;
  }

  dimension: acss_dept_id {
    type: string
    description: "ID of the ACSS department that handled the repeat call."
    sql: ${TABLE}.acss_dept_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: acss_last_upd_ts {
    type: time
    description: "The date and time when the record was last updated in ACSS."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.acss_last_upd_ts ;;
  }

  dimension: acss_user_id {
    type: string
    description: "The ID of the ACSS user who handled the call."
    sql: ${TABLE}.acss_user_id ;;
  }

  dimension: active_cnt {
    type: number
    description: "Number of times the customer has been active on the line in the past 31 days."
    sql: ${TABLE}.active_cnt ;;
  }

  dimension_group: call_disconnect_dt {
    type: time
    description: "The date and time the call was disconnected."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.call_disconnect_dt ;;
  }

  dimension_group: call_disconnect_ts {
    type: time
    description: "The timestamp at which the call was disconnected."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.call_disconnect_ts ;;
  }

  dimension_group: call_disconnect_ts_est {
    type: time
    description: "The estimated date and time when the call ended."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.call_disconnect_ts_est ;;
  }

  dimension_group: call_end_dt {
    type: time
    description: "The date and time the call ended."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.call_end_dt ;;
  }

  dimension_group: call_end_ts {
    type: time
    description: "The timestamp at which the call ended."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.call_end_ts ;;
  }

  dimension_group: call_end_ts_est {
    type: time
    description: "The estimated timestamp at which the call ended."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.call_end_ts_est ;;
  }

  dimension_group: call_start_dt {
    type: time
    description: "The date and time the call started."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.call_start_dt ;;
  }

  dimension_group: call_start_dt_ts {
    type: time
    description: "The date and time when the call started."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.call_start_dt_ts ;;
  }

  dimension_group: call_start_est_dt {
    type: time
    description: "Estimated date and time when the call started."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.call_start_est_dt ;;
  }

  dimension_group: call_start_ts_est {
    type: time
    description: "The estimated timestamp at which the call started."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.call_start_ts_est ;;
  }

  dimension: cs_active_cnt {
    type: number
    description: "Count of active Customer Service (CS) calls at the time of the repeat call."
    sql: ${TABLE}.cs_active_cnt ;;
  }

  dimension: cust_id {
    type: string
    description: "Identification number assigned to a customer."
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "Unique identifier for the customer's line of service."
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: hr_emp_id {
    type: string
    description: "The ID of the HR employee associated with the call."
    sql: ${TABLE}.hr_emp_id ;;
  }

  dimension_group: insert_dt {
    type: time
    description: "The date and time the record was inserted into the table."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.insert_dt ;;
  }

  dimension: ivr_call_id {
    type: string
    description: "Unique identifier for the Interactive Voice Response (IVR) call."
    sql: ${TABLE}.ivr_call_id ;;
  }

  dimension_group: last_upd_dt {
    type: time
    description: "Date and time when the record was last updated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }

  dimension: mtn {
    type: string
    description: "Customer's mobile telephone number."
    sql: ${TABLE}.mtn ;;
  }

  dimension: repeat_15_day {
    type: number
    description: "Flag indicating whether the call was a repeat call within 15 days of a previous call."
    sql: ${TABLE}.repeat_15_day ;;
  }

  dimension: repeat_2_hour {
    type: number
    description: "Flag indicating whether the call was a repeat call within 2 hours of a previous call."
    sql: ${TABLE}.repeat_2_hour ;;
  }

  dimension: repeat_31_day {
    type: number
    description: "Indicates whether the customer has made a repeat call within the last 31 days."
    sql: ${TABLE}.repeat_31_day ;;
  }

  dimension: repeat_3_day {
    type: number
    description: "A flag indicating whether the call was a repeat call within the last 3 days."
    sql: ${TABLE}.repeat_3_day ;;
  }

  dimension: repeat_7_day {
    type: number
    description: "Indicates whether the customer has made a repeat call within the last 7 days."
    sql: ${TABLE}.repeat_7_day ;;
  }

  dimension: repeat_acss_call_id {
    type: string
    description: "A unique identifier for the repeat ACSS call."
    sql: ${TABLE}.repeat_acss_call_id ;;
  }

  dimension: repeat_acss_dept_id {
    type: string
    description: "The department ID of the representative who handled the repeated call."
    sql: ${TABLE}.repeat_acss_dept_id ;;
  }

  dimension_group: repeat_call_dt {
    type: time
    description: "Date and time of the repeat call."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.repeat_call_dt ;;
  }

  dimension_group: repeat_call_ts {
    type: time
    description: "Timestamp of the repeat call."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.repeat_call_ts ;;
  }

  dimension_group: repeat_call_ts_est {
    type: time
    description: "The estimated time stamp of the repeat call."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.repeat_call_ts_est ;;
  }

  dimension: repeat_hr_emp_id {
    type: string
    description: "The employee ID of the representative who handled the call."
    sql: ${TABLE}.repeat_hr_emp_id ;;
  }

  dimension: repeat_interval {
    type: number
    description: "The interval between the current call and the previous repeat call."
    sql: ${TABLE}.repeat_interval ;;
  }

  dimension: repeat_same_day {
    type: number
    description: "Flag indicating whether the call was a repeat call on the same day as a previous call."
    sql: ${TABLE}.repeat_same_day ;;
  }

  dimension: vsn_cust_type_cd {
    type: string
    description: "The type of customer, as defined by VSN. Consumer indicated by PE, ME. Business end user indicated by BE etc"
    sql: ${TABLE}.vsn_cust_type_cd ;;
  }
  measure: count {
    type: count
  }
}
