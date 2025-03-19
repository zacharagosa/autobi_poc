# The name of this view in Looker is "Vz2 Segmt Dim Ref"
view: vz2_segmt_dim_ref {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.vz2_segmt_dim_ref` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Curr Prev Ind" in Explore.

  dimension: curr_prev_ind {
    type: string
    description: "CURR_PREV_IND = 'C' indicates current data, CURR_PREV_IND = 'P' indicates row with one of the prior data"
    sql: ${TABLE}.curr_prev_ind ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: eff_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.eff_dt ;;
  }

  dimension_group: exp_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.exp_dt ;;
  }

  dimension_group: insert_dt {
    type: time
    description: "Date the record was inserted."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.insert_dt ;;
  }

  dimension_group: last_upd_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }

  dimension: vz2_segmt_cd {
    type: string
    description: "The Verizon 2 segment code that identifies the segment of the data."
    sql: ${TABLE}.vz2_segmt_cd ;;
  }

  dimension: vz2_segmt_class_desc {
    type: string
    sql: ${TABLE}.vz2_segmt_class_desc ;;
  }

  dimension: vz2_segmt_class_rpt_key {
    type: string
    sql: ${TABLE}.vz2_segmt_class_rpt_key ;;
  }

  dimension: vz2_segmt_ctgry_desc {
    type: string
    description: "Segment category description Examples - Wireless Consumer Revenue, Wireless Corporate Revenue, Wireless Business Revenue"
    sql: ${TABLE}.vz2_segmt_ctgry_desc ;;
  }

  dimension: vz2_segmt_ctgry_rpt_key {
    type: string
    sql: ${TABLE}.vz2_segmt_ctgry_rpt_key ;;
  }

  dimension: vz2_segmt_desc {
    type: string
    sql: ${TABLE}.vz2_segmt_desc ;;
  }

  dimension: vz2_segmt_rpt_key {
    type: string
    sql: ${TABLE}.vz2_segmt_rpt_key ;;
  }

  dimension: vz2_segmt_sub_type_desc {
    type: string
    sql: ${TABLE}.vz2_segmt_sub_type_desc ;;
  }

  dimension: vz2_segmt_sub_type_rpt_key {
    type: string
    sql: ${TABLE}.vz2_segmt_sub_type_rpt_key ;;
  }

  dimension: vz2_segmt_type_desc {
    type: string
    sql: ${TABLE}.vz2_segmt_type_desc ;;
  }

  dimension: vz2_segmt_type_rpt_key {
    type: string
    sql: ${TABLE}.vz2_segmt_type_rpt_key ;;
  }
  measure: count {
    type: count
  }
}
