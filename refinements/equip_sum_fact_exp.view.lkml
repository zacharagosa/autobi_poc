include: "/views/equip_sum_fact_exp.view.lkml"

view: +equip_sum_fact_exp {

  dimension: is_upgrade {
    type: yesno
    sql: ${acq_ret_ind} = 'R'
      AND ${net_sales} > 0
      AND ${fin_upg_flag} = 'Y'
      AND UPPER(${order_type}) = 'PS'
      AND ${rev_gen_ind}='Y'
       ;;
    description: "A calculated field that determines if a record represents a device upgrade based on the specified criteria."
  }

  dimension: primary_key {
    type: number
    primary_key: yes
    sql: ${cust_id} || ${cust_line_seq_id}  ;;
  }

  # dimension: customer_duration {
  #   description: "Time between upgrade and churn"
  #   type: duration_month
  #   sql_start: ${churn_sum_fact_exp.trans_dt_raw} ;;
  #   sql_end: ${rpt_mth_raw} ;;
  # }

}
