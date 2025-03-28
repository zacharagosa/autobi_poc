include: "/views/churn_sum_fact_exp.view.lkml"

view: +churn_sum_fact_exp {

  dimension: disconnects {
    type: yesno
    sql: ${TABLE}.disconnects = 1 ;;
  }

  dimension: primary_key {
    type: number
    primary_key: yes
    sql: ROW_NUMBER()over ;;
  }



  dimension: days_to_churn {
    description: "The number of days to churn from any transaction"
    type: number
    sql: date_diff(${trans_dt_raw}, ${equip_sum_fact_exp.invc_dt_raw}, day) ;;
  }

  measure: average_days_to_churn {
    type: average
    sql: ${days_to_churn} ;;
    value_format_name: decimal_1
  }

}
