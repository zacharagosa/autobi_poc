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
