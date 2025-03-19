include: "/views/dla_sum_fact_exp.view.lkml"

view: +dla_sum_fact_exp {

  measure: total_activations {
    type: sum
    filters: [activity_cd: "D%"]
    value_format_name: decimal_0

  }

  measure: total_deactivations {
    type: sum
    filters: [activity_cd: "AC"]
    value_format_name: decimal_0
  }
  measure: net_adds {
    type: number
    sql: ${total_activations} - ${total_deactivations} ;;
    value_format_name: decimal_0
  }
 }
