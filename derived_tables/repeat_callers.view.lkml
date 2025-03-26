
view: repeat_callers {
  view_label: "Repeat Call Facts"
  derived_table: {
    sql: SELECT
            calls.acss_call_id as acss_call_id
            , calls.call_answer_dt
            , COUNT(DISTINCT repeat_calls.acss_call_id) AS number_subsequent_calls
            , MIN(repeat_calls.call_answer_dt) AS next_call_date
            , MIN(repeat_calls.acss_call_id) AS next_call_id
          FROM `aragosalooker.verizon_autobi.icm_summary_fact_exp` as calls
          LEFT JOIN `aragosalooker.verizon_autobi.icm_summary_fact_exp` repeat_calls
            ON calls.cust_id = repeat_calls.cust_id
            AND calls.call_answer_dt < repeat_calls.call_answer_dt
          GROUP BY 1, 2 ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: acss_call_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.acss_call_id ;;
    hidden: yes
  }

  dimension: number_subsequent_calls {
    type: number
    sql: ${TABLE}.number_subsequent_calls ;;
  }

  dimension: call_answer_dt {
    type: date
    hidden: yes
    datatype: date
    sql: ${TABLE}.call_answer_dt ;;
  }

  dimension: next_call_date {
    type: date
    datatype: date
    sql: ${TABLE}.next_call_date ;;
  }

  dimension: next_call_id {
    type: string

    sql: ${TABLE}.next_call_id ;;
  }

  dimension: has_repeat_call {
    type: yesno
    sql: ${next_call_id} is not null ;;
  }

  dimension: days_until_next_call {
    label: "Days Until Next Call"
    description: "Days until the customer placed their next Call"
    type: number
    view_label: "Repeat Call Facts"
    sql: TIMESTAMP_DIFF(${call_answer_dt},${next_call_date}, DAY) ;;
  }

  dimension: repeat_calls_within_30d {
    label: "Repeat Calls within 30 Days"
    description: "Whether the customer placed another call within 30 days"
    type: yesno
    view_label: "Repeat Call Facts"
    sql: ${days_until_next_call} <= 30 ;;
  }

  dimension: repeat_calls_within_15d{
    label: "Repeat Calls within 15 Days"
    description: "Whether the customer placed another Calls within 15 days"
    type: yesno
    sql:  ${days_until_next_call} <= 15;;
  }

  measure: count_with_repeat_call_within_30d {
    label: "Count with Repeat Calls within 30 Days"
    description: "Whether the customer placed another call within 30 days total count"
    type: count_distinct
    sql: ${acss_call_id} ;;
    view_label: "Repeat Call Facts"

    filters: {
      field: repeat_calls_within_30d
      value: "Yes"
    }
  }

  measure: count_of_first_time_calls_within_30d{
    label: "Count of Calls with First Time callers within 30 Days"
    description: "Number of Calls from customers who haven't called in the last 30 days"
    type: count_distinct
    sql: ${acss_call_id} ;;
    view_label: "Repeat Call Facts"

    filters: {
      field: repeat_calls_within_30d
      value: "Yes"
    }
  }

  measure: count_of_first_time_callers_within_30d{
    label: "Count Customers who haven't called within 30 Days"
    description: "Number of distinct customers who haven't called in the last 30 days"
    type: count_distinct
    sql: ${icm_summary_fact_exp.cust_id} ;;
    view_label: "Repeat Call Facts"

    filters: {
      field: repeat_calls_within_30d
      value: "Yes"
    }
  }


  measure: 30_day_repeat_call_rate {
    description: "The percentage of customers who purchase again within 30 days. Measures buying propensity."
    view_label: "Repeat Call Facts"
    type: number
    value_format_name: percent_1
    sql: 1.0 * ${count_with_repeat_call_within_30d} / (CASE WHEN ${icm_summary_fact_exp.call_count} = 0 THEN NULL ELSE ${icm_summary_fact_exp.call_count} END) ;;
    drill_fields: [products.brand, count_with_repeat_call_within_30d]
  }

  set: detail {
    fields: [
      acss_call_id,
      number_subsequent_calls,
      next_call_date,
      next_call_id
    ]
  }
}
