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

  dimension_group: invc_dt {
    type: time
    label: "Invoice"
    description: "The date the invoice was created."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: date(${TABLE}.invc_dt) ;;
  }


  dimension: primary_key {
    type: number
    primary_key: yes
    sql: ${cust_id} || ${cust_line_seq_id}  ;;
  }

  measure: total_sales {
    type: number
    sql: ${sales_qty} ;;
    value_format_name: usd
  }

  # dimension: customer_duration {
  #   description: "Time between upgrade and churn"
  #   type: duration_month
  #   sql_start: ${churn_sum_fact_exp.trans_dt_raw} ;;
  #   sql_end: ${rpt_mth_raw} ;;
  # }

}
