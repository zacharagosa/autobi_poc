# Define the database connection to be used for this model.
connection: "looker-private-demo"

# include all the views
include: "/views/**/*.view.lkml"
include: "/refinements/*"
include: "/derived_tables/*"


# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: verizon_autobi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: verizon_autobi_default_datagroup

explore: cust_acct_line_pplan_exp {}

explore: device_usage_age_exp {}

explore: acct_bill_exp {
  description: "This table contains Customer bill information at account level"

}

explore: device_dp_map {}

explore: churn_sum_fact_exp {
  join: equip_sum_fact_exp {
    relationship: many_to_one
    sql_on: ${churn_sum_fact_exp.cust_id} = ${equip_sum_fact_exp.cust_id} ;;
  }

}

explore: cust_acct_line_exp {}

explore: acss_repeat_call_detail_exp {}

explore: dla_sum_fact_exp {
  label: "Daily Activity (dla_sum_fact_exp)"
  description: "This table provides a summary of daily activity for customers including activations, deactivations etc"
  join: vz2_segmt_dim_ref {
    relationship: many_to_one
    sql_on: ${dla_sum_fact_exp.vz2_segmt_cd} = ${vz2_segmt_dim_ref.vz2_segmt_cd};;
  }
}

explore: icm_summary_fact_exp {
  label: "Call in Rate Analysis"
  description: "Customer call related information with IVR agent's details .This table contains metrics related to Enterprise Call Center Reporting (eccr) interactions. It provides information on call center center (ctr) performance, including local queue time, hold time, and delay time."
  join: surge_callers {
    relationship: one_to_one
    sql_on: ${icm_summary_fact_exp.acss_call_id} = ${surge_callers.acss_call_id} ;;
  }
  join: transferred_calls {
    relationship: many_to_one
    sql_on: ${icm_summary_fact_exp.ivr_call_id} = ${transferred_calls.ivr_call_id} ;;
  }

  join: repeat_callers {
    relationship: many_to_one
    sql_on: ${icm_summary_fact_exp.acss_call_id} = ${repeat_callers.acss_call_id} ;;
}
}

explore: fixed_5g_summary_fact_exp {}

explore: price_plan {}

explore: equip_sum_fact_exp {}

explore: ivr_call_exp {}

explore: vz2_segmt_dim_ref {}

explore: subs_sum_fact_exp {}
