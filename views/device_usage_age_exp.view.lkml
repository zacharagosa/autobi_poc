# The name of this view in Looker is "Device Usage Age Exp"
view: device_usage_age_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.device_usage_age_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: contract_end_dt {
    type: time
    description: "Contract End Date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.contract_end_dt ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Contract Mths Rem" in Explore.

  dimension: contract_mths_rem {
    type: number
    description: "Remainng months to complete the contract"
    sql: ${TABLE}.contract_mths_rem ;;
  }

  dimension_group: contract_start_dt {
    type: time
    description: "Contract Start Date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.contract_start_dt ;;
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

  dimension: device_prod_nm {
    type: string
    description: "Device Product Name"
    sql: ${TABLE}.device_prod_nm ;;
  }

  dimension_group: eff_dt {
    type: time
    description: "Device Effective Date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.eff_dt ;;
  }

  dimension: loan_status_ind {
    type: string
    description: "Loan Status Indicator"
    sql: ${TABLE}.loan_status_ind ;;
  }

  dimension: mtn {
    type: string
    description: "The Mobile Telephone Number"
    sql: ${TABLE}.mtn ;;
  }

  dimension: prod_mfg_cd {
    type: string
    description: "Product Manufacture code"
    sql: ${TABLE}.prod_mfg_cd ;;
  }

  dimension_group: rpt_mth {
    type: time
    description: "Report month"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rpt_mth ;;
  }

  dimension: sor_product_family {
    type: string
    description: "Device Product Family"
    sql: ${TABLE}.sor_product_family ;;
  }

  dimension: usage_months {
    type: number
    description: "Device Usage in months"
    sql: ${TABLE}.usage_months ;;
  }
  measure: count {
    type: count
  }
}
