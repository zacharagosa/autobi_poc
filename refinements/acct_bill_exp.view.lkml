include: "/views/acct_bill_exp.view.lkml"

view: +acct_bill_exp {

  dimension_group: bill_dt {
    description: "More detailed description"
  }

 }
