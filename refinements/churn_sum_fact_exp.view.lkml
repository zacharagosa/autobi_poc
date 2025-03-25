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

}
