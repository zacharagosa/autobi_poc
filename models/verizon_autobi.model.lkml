# Define the database connection to be used for this model.
connection: "looker-private-demo"

# include all the views
include: "/views/**/*.view.lkml"
include: "/refinements/*"


# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: verizon_autobi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: verizon_autobi_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Verizon Autobi"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

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
  join: surge_callers {
    relationship: one_to_one
    sql_on: ${icm_summary_fact_exp.acss_call_id} = ${surge_callers.acss_call_id} ;;
  }
}

explore: fixed_5g_summary_fact_exp {}

explore: price_plan {}

explore: equip_sum_fact_exp {}

explore: ivr_call_exp {}

explore: vz2_segmt_dim_ref {}

explore: subs_sum_fact_exp {}
