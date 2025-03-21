include: "/views/dla_sum_fact_exp.view.lkml"

view: +dla_sum_fact_exp {

  dimension: primary_key {
    type: number
    primary_key: yes
    sql: ROW_NUMBER()over ;;
  }

  measure: total_activations {
    type: count
    filters: [activity_cd: "AC"]
    value_format_name: decimal_0
  }

  measure: total_deactivations {
    type: count
    filters: [activity_cd: "D%"]
    value_format_name: decimal_0
  }
  measure: total_voluntary_disconnects {
    type: count
    filters: [voluntary_disconnects: ">0"]
  }
  measure: net_adds {
    description: "Number of Net Adds"
    type: number
    sql: ${total_activations} - ${total_deactivations} ;;
    value_format_name: decimal_0
  }

  dimension: data_tier {

  }
  dimension: prepaid_ind {
    type: yesno
    sql: ${TABLE}.prepaid_ind ;;
  }
 }
