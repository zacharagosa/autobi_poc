include: "/models/verizon_autobi.model.lkml"

view: transferred_calls {
  derived_table: {
    explore_source: icm_summary_fact_exp {
      column: call_count {}
      column: ivr_call_id {}
      filters: {
        field: icm_summary_fact_exp.ivr_call_id
        value: "-NULL"
      }
    }
  }
  dimension: transfer_call_count {
    description: "The Number of Calls - Counting the Distinct ACSS Call ID"
    type: number
    sql: ${TABLE}.call_count ;;
  }

  dimension: call_transfer_yes_no {
    type: yesno
    sql: ${transfer_call_count} > 1 ;;
  }

  measure: transfer_call_total {
    type: count_distinct
    sql: ${ivr_call_id} ;;
    filters: [ivr_call_id: "-NULL", call_transfer_yes_no: "Yes"]
  }
  dimension: ivr_call_id {
    primary_key: yes
    description: "A unique identifier for the call in the Interactive Voice Response (IVR) system."
  }
}
