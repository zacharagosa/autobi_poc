# The name of this view in Looker is "Acct Bill Exp"
view: acct_bill_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.acct_bill_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Access Amt" in Explore.

  dimension: access_amt {
    type: number
    description: "The amount of the bill that is attributable to access fees."
    sql: ${TABLE}.access_amt ;;
  }

  dimension: access_disc_amt {
    type: number
    sql: ${TABLE}.access_disc_amt ;;
  }

  dimension: access_no_disc_amt {
    type: number
    description: "The amount of the bill for access charges without any discounts applied."
    sql: ${TABLE}.access_no_disc_amt ;;
  }

  dimension: access_prorate_amt {
    type: number
    description: "The amount of prorated charges for access fees on the current bill."
    sql: ${TABLE}.access_prorate_amt ;;
  }

  dimension: acct_lvl_content_amt {
    type: number
    description: "Amount charged for account level content."
    sql: ${TABLE}.acct_lvl_content_amt ;;
  }

  dimension: acct_num {
    type: string
    sql: ${TABLE}.acct_num ;;
  }

  dimension: airtime_usage_disc_amt {
    type: number
    sql: ${TABLE}.airtime_usage_disc_amt ;;
  }

  dimension: airtime_usage_no_disc_amt {
    type: number
    description: "The amount of the bill for airtime usage without any discounts applied."
    sql: ${TABLE}.airtime_usage_no_disc_amt ;;
  }

  dimension: airtime_usg_amt {
    type: number
    sql: ${TABLE}.airtime_usg_amt ;;
  }

  dimension: area_cd {
    type: string
    sql: ${TABLE}.area_cd ;;
  }

  dimension: bill_120_day_amt {
    type: number
    description: "The total amount of charges incurred over the past 120 days."
    sql: ${TABLE}.bill_120_day_amt ;;
  }

  dimension: bill_150_day_amt {
    type: number
    sql: ${TABLE}.bill_150_day_amt ;;
  }

  dimension: bill_180_day_amt {
    type: number
    description: "The total amount of charges incurred over the past 180 days."
    sql: ${TABLE}.bill_180_day_amt ;;
  }

  dimension: bill_210_day_amt {
    type: number
    sql: ${TABLE}.bill_210_day_amt ;;
  }

  dimension: bill_30_day_amt {
    type: number
    description: "The amount of the bill that is past due by 30 days or more."
    sql: ${TABLE}.bill_30_day_amt ;;
  }

  dimension: bill_60_day_amt {
    type: number
    sql: ${TABLE}.bill_60_day_amt ;;
  }

  dimension: bill_90_day_amt {
    type: number
    description: "The amount of the bill that is past due by 90 days or more."
    sql: ${TABLE}.bill_90_day_amt ;;
  }

  dimension: bill_bal_amt {
    type: number
    sql: ${TABLE}.bill_bal_amt ;;
  }

  dimension: bill_curr_amt {
    type: number
    sql: ${TABLE}.bill_curr_amt ;;
  }

  dimension: bill_cycle_ind {
    type: string
    sql: ${TABLE}.bill_cycle_ind ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: bill_dt {
    type: time
    description: "The date on which the current bill was generated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.bill_dt ;;
  }

  dimension: bill_invc_num {
    type: string
    description: "The invoice number for the current bill."
    sql: ${TABLE}.bill_invc_num ;;
  }

  dimension: bill_print_ind {
    type: string
    description: "Indicates whether the bill is printed."
    sql: ${TABLE}.bill_print_ind ;;
  }

  dimension: bill_tot_amt {
    type: number
    description: "Total amount due on the bill."
    sql: ${TABLE}.bill_tot_amt ;;
  }

  dimension: cust_id {
    type: string
    description: "The unique identifier for the customer associated with the current bill."
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cyc_mth_yr {
    type: string
    description: "The billing cycle month and year."
    sql: ${TABLE}.cyc_mth_yr ;;
  }

  dimension: data_amt {
    type: number
    sql: ${TABLE}.data_amt ;;
  }

  dimension: delinq_cycles_cnt {
    type: number
    description: "The number of delinquent cycles on the account."
    sql: ${TABLE}.delinq_cycles_cnt ;;
  }

  dimension: eqp_amt {
    type: number
    description: "Amount charged for equipment."
    sql: ${TABLE}.eqp_amt ;;
  }

  dimension: feat_amt {
    type: number
    sql: ${TABLE}.feat_amt ;;
  }

  dimension: feat_disc_amt {
    type: number
    sql: ${TABLE}.feat_disc_amt ;;
  }

  dimension: feat_no_disc_amt {
    type: number
    sql: ${TABLE}.feat_no_disc_amt ;;
  }

  dimension: fed_tax_amt {
    type: number
    sql: ${TABLE}.fed_tax_amt ;;
  }

  dimension: instance_ind {
    type: string
    description: "An indicator that specifies whether the current bill is an instance of a recurring billing cycle."
    sql: ${TABLE}.instance_ind ;;
  }

  dimension_group: last_upd_dt {
    type: time
    description: "Date and time when the bill was last updated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }

  dimension: late_pymnt_chrg_amt {
    type: number
    description: "The amount of late payment charges on the current bill."
    sql: ${TABLE}.late_pymnt_chrg_amt ;;
  }

  dimension: lndln_chrg_amt {
    type: number
    description: "Amount charged for landline calls."
    sql: ${TABLE}.lndln_chrg_amt ;;
  }

  dimension: local_tax_amt {
    type: number
    description: "The amount of local taxes charged on the current bill."
    sql: ${TABLE}.local_tax_amt ;;
  }

  dimension: maj_mkt_id {
    type: string
    sql: ${TABLE}.maj_mkt_id ;;
  }

  dimension: mkt_cd {
    type: string
    description: "Code used by Verizon Wireless to report on information by its lowest geographic structure."
    sql: ${TABLE}.mkt_cd ;;
  }

  dimension: mtn_lvl_content_amt {
    type: number
    sql: ${TABLE}.mtn_lvl_content_amt ;;
  }

  dimension: occ_amt {
    type: number
    sql: ${TABLE}.occ_amt ;;
  }

  dimension: oth_tax_amt {
    type: number
    sql: ${TABLE}.oth_tax_amt ;;
  }

  dimension: prev_due_amt {
    type: number
    sql: ${TABLE}.prev_due_amt ;;
  }

  dimension: ptt_amt {
    type: number
    description: "The amount of charges for Push to Talk services on the current bill."
    sql: ${TABLE}.ptt_amt ;;
  }

  dimension_group: pymnt_due_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pymnt_due_dt ;;
  }

  dimension: pymnt_recvd_amt {
    type: number
    description: "The amount of payment that has been received on the account."
    sql: ${TABLE}.pymnt_recvd_amt ;;
  }

  dimension: pymnt_revrs_amt {
    type: number
    description: "Amount of payment reversals."
    sql: ${TABLE}.pymnt_revrs_amt ;;
  }

  dimension: roam_airtime_call_amt {
    type: number
    sql: ${TABLE}.roam_airtime_call_amt ;;
  }

  dimension: roam_data_amt {
    type: number
    sql: ${TABLE}.roam_data_amt ;;
  }

  dimension: roam_glbl_data_amt {
    type: number
    description: "Amount charged for roaming global data."
    sql: ${TABLE}.roam_glbl_data_amt ;;
  }

  dimension: roam_lndln_call_amt {
    type: number
    sql: ${TABLE}.roam_lndln_call_amt ;;
  }

  dimension_group: settlement_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.settlement_dt ;;
  }

  dimension: sor_id {
    type: string
    sql: ${TABLE}.sor_id ;;
  }

  dimension: split_bill_data_amt {
    type: number
    description: "The amount of the bill that is attributable to data usage."
    sql: ${TABLE}.split_bill_data_amt ;;
  }

  dimension: split_bill_occ_feat_amt {
    type: number
    description: "Amount charged for split bill occurrences."
    sql: ${TABLE}.split_bill_occ_feat_amt ;;
  }

  dimension: srcg_amt {
    type: number
    sql: ${TABLE}.srcg_amt ;;
  }

  dimension: state_tax_amt {
    type: number
    sql: ${TABLE}.state_tax_amt ;;
  }

  dimension: uim_invc_typ {
    type: string
    sql: ${TABLE}.uim_invc_typ ;;
  }

  dimension: xmkt_acct_ind {
    type: string
    description: "An indicator for whether the account is a cross-market account."
    sql: ${TABLE}.xmkt_acct_ind ;;
  }

  dimension: xmkt_acct_num {
    type: string
    sql: ${TABLE}.xmkt_acct_num ;;
  }
  measure: count {
    type: count
  }
}
