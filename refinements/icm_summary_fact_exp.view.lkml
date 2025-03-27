include: "/views/icm_summary_fact_exp.view.lkml"

view: +icm_summary_fact_exp {

  dimension: primary_key {
    type: string
    primary_key: yes
    sql: ROW_NUMBER()over ;;
  }


  dimension: call_answered_yes_no {
    type: yesno
    sql: ${answered_cnt} = 1 ;;
  }

  measure: call_answered_count {
    type: count
    filters: [call_answered_yes_no: "Yes"]
  }

  measure: call_count {
    type: count
    filters: [acss_call_id: "-NULL"]
  }

  dimension: transfer_flag {
    type: yesno
    sql: ${TABLE}.transfer_flag = 1 ;;
  }

  measure: call_transfer_total {
    type: count_distinct
    filters: [acss_call_id: "-NULL", transfer_flag: "Yes"]
  }

  measure: total_talk_time_seconds {
    type: sum
    sql: ${handle_tm_seconds} ;;
  }

  measure: average_talk_time_seconds {
    description: "Average Call Duration - Average call time calculated in seconds"
    type: average
    sql: ${handle_tm_seconds} ;;
    value_format_name: decimal_0
    filters: [call_answered_yes_no: "Yes"]
  }

  measure: abandoned_call_count{
    type: count
    filters: [abandons_cnt: "1"]
  }

  measure: avg_time_to_abandon_seconds {
    type: average
    sql: ${time_to_aband_seconds} ;;
    filters: [abandons_cnt: "1"]
    value_format_name: decimal_1
  }

  measure: min_time_to_abandon_seconds {
    type: min
    sql: ${time_to_aband_seconds} ;;
    filters: [abandons_cnt: "1"]
  }

  measure: max_time_to_abandon_seconds {
    type: max
    sql: ${time_to_aband_seconds} ;;
    filters: [abandons_cnt: "1"]
  }


 }



view: surge_callers {
  derived_table: {
    sql: SELECT

                  a.acss_call_id,

                  ROW_NUMBER() OVER (PARTITION BY DATE_TRUNC(DATE(a.call_answer_dt), MONTH), a.cust_id, a.mtn ORDER BY a.call_answer_dt, a.call_answer_tm ASC) AS call_num,
                  DATE_DIFF(
                      CAST(MAX(a.call_answer_dt) OVER (PARTITION BY DATE_TRUNC(DATE(a.call_answer_dt), MONTH), a.cust_id, a.mtn ORDER BY a.call_answer_dt, a.call_answer_tm ASC) AS DATE),
                      CAST(MIN(a.call_answer_dt) OVER (PARTITION BY DATE_TRUNC(DATE(a.call_answer_dt), MONTH), a.cust_id, a.mtn ORDER BY a.call_answer_dt, a.call_answer_tm ASC) AS DATE),
                      DAY
                  ) AS repeat_calls
              FROM
                  `aragosalooker.verizon_autobi.icm_summary_fact_exp`  as a
              WHERE a.cust_id IS NOT NULL
             ;;
  }

  measure: surge_call_count {
    type: count
    drill_fields: [detail*]
    description: "This is the total amount of calls that are from surge callers. A surge caller is defined by callers who call >2 times"
    filters: [is_surge_caller: "Yes"]
  }

  dimension: acss_call_id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.acss_call_id ;;
  }

  dimension: call_num {
    type: number
    sql: ${TABLE}.call_num ;;
  }

  dimension: repeat_calls {
    type: number
    sql: ${TABLE}.repeat_calls ;;
  }


  dimension: is_surge_caller {
    type: yesno
    sql: ${call_num} >= 3 and ${repeat_calls} between 0 and 7  ;;
  }

  set: detail {
    fields: [
      acss_call_id,
      call_num,
      repeat_calls
    ]
  }
}
