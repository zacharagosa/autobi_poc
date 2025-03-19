# The name of this view in Looker is "Cust Acct Line Pplan Exp"
view: cust_acct_line_pplan_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.cust_acct_line_pplan_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acct Num" in Explore.

  dimension: acct_num {
    type: string
    description: "The account number of the subscriber."
    sql: ${TABLE}.acct_num ;;
  }

  dimension: area_cd {
    type: string
    description: "Area code (cd) for the customer's location."
    sql: ${TABLE}.area_cd ;;
  }

  dimension: client_id {
    type: string
    description: "The unique identifier for the client."
    sql: ${TABLE}.client_id ;;
  }

  dimension: cust_id {
    type: string
    description: "Customer Identifier"
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "Customer Line Identifier"
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: indir_chnl_sso_id {
    type: string
    sql: ${TABLE}.indir_chnl_sso_id ;;
  }

  dimension: instance_ind {
    type: string
    sql: ${TABLE}.instance_ind ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_upd_dt {
    type: time
    description: "Last updated date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }

  dimension: ord_src_sys_cd {
    type: string
    sql: ${TABLE}.ord_src_sys_cd ;;
  }

  dimension: pplan_bndl_type_cd {
    type: string
    description: "Price Plan Bundle Type Code"
    sql: ${TABLE}.pplan_bndl_type_cd ;;
  }

  dimension: pplan_cd {
    type: string
    description: "The Price Plan Code identifies the price plans offered by Verizon Wireless wholesale and retail customers."
    sql: ${TABLE}.pplan_cd ;;
  }

  dimension_group: pplan_eff_dt {
    type: time
    description: "Effective date when the price plan for the service became active, reflecting the start of the billing cycle."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pplan_eff_dt ;;
  }

  dimension_group: pplan_exp_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pplan_exp_dt ;;
  }

  dimension: pplan_line_acct_cd {
    type: string
    description: "Account code for the customer's plan."
    sql: ${TABLE}.pplan_line_acct_cd ;;
  }

  dimension: pplan_mkt_cd {
    type: string
    sql: ${TABLE}.pplan_mkt_cd ;;
  }

  dimension: sls_dist_chnl_type_cd {
    type: string
    description: "Sales distribution channel type."
    sql: ${TABLE}.sls_dist_chnl_type_cd ;;
  }

  dimension: sls_outlet_id {
    type: string
    description: "Uniquely identifies a location (outlet) where the sales of Verizon Wireless products and services occur."
    sql: ${TABLE}.sls_outlet_id ;;
  }

  dimension: sls_prsn_id {
    type: string
    description: "The Sales Person Id identifies the Verizon Wireless employee who sold cellular service. VISION SPECIFIC INFO : E in first position = Direct sales representative sold the service, T in first position = Telemarketing rep sold the service."
    sql: ${TABLE}.sls_prsn_id ;;
  }

  dimension: sor_id {
    type: string
    description: "Identifier for the source system of record that is populating the data warehouse instance. Always use 'V'"
    sql: ${TABLE}.sor_id ;;
  }

  dimension_group: src_db_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.src_db_ts ;;
  }

  dimension_group: svc_eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.svc_eff_dt ;;
  }

  dimension_group: svc_exp_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.svc_exp_dt ;;
  }

  dimension: svc_id {
    type: string
    description: "Service ID associated with the device"
    sql: ${TABLE}.svc_id ;;
  }

  dimension_group: trans_dt {
    type: time
    description: "Transaction date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.trans_dt ;;
  }

  dimension_group: trans_ts {
    type: time
    description: "Transaction timestamp"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.trans_ts ;;
  }

  dimension: user_id {
    type: string
    description: "Identification of the user who performed the action associated with the row."
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
