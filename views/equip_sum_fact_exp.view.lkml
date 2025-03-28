# The name of this view in Looker is "Equip Sum Fact Exp"
view: equip_sum_fact_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.equip_sum_fact_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acct Num" in Explore.

  dimension: acct_num {
    type: string
    description: "Account number associated with the equipment transaction."
    sql: ${TABLE}.acct_num ;;
  }

  dimension: acq_ret_ind {
    type: string
    description: "Indicates whether the transaction is an acquisition or a retention transaction. Values - A, R. A - new customer, R - Retention"
    sql: ${TABLE}.acq_ret_ind ;;
  }

  dimension: act_sls_dist_chnl_type_cd {
    type: string
    description: "Code for the activating sales distribution channel type."
    sql: ${TABLE}.act_sls_dist_chnl_type_cd ;;
  }

  dimension: alloc_amt {
    type: number
    description: "Allocated amount."
    sql: ${TABLE}.alloc_amt ;;
  }

  dimension: alltel_ind {
    type: string
    description: "Indicator for whether the previous device was an Alltel handset."
    sql: ${TABLE}.alltel_ind ;;
  }

  dimension: alt_upgrade_reas_cd {
    type: string
    description: "This column represents the reason for upgrading the equipment."
    sql: ${TABLE}.alt_upgrade_reas_cd ;;
  }

  dimension: area_cd {
    type: string
    description: "Area code."
    sql: ${TABLE}.area_cd ;;
  }

  dimension: base_prc_type_cd {
    type: string
    description: "Base pricing type code."
    sql: ${TABLE}.base_prc_type_cd ;;
  }

  dimension: byod_sim_act_ind {
    type: string
    sql: ${TABLE}.byod_sim_act_ind ;;
  }

  dimension: cal_managed_ind {
    type: string
    description: "Client Access License Managed Indicator"
    sql: ${TABLE}.cal_managed_ind ;;
  }

  dimension: cal_prepaid_ind {
    type: string
    sql: ${TABLE}.cal_prepaid_ind ;;
  }

  dimension: client_id {
    type: string
    description: "The unique identifier for the client."
    sql: ${TABLE}.client_id ;;
  }

  dimension: clnr_eligibility_ind {
    type: string
    description: "Indicator for Certified Like New Replacement eligibility for the equipment."
    sql: ${TABLE}.clnr_eligibility_ind ;;
  }

  dimension: cntrct_acct_num {
    type: string
    description: "contract account number"
    sql: ${TABLE}.cntrct_acct_num ;;
  }

  dimension: cntrct_cust_id {
    type: string
    description: "Customer ID associated with the contract for the row."
    sql: ${TABLE}.cntrct_cust_id ;;
  }

  dimension: cntrct_cust_line_seq_id {
    type: string
    description: "contract customer line sequence id"
    sql: ${TABLE}.cntrct_cust_line_seq_id ;;
  }

  dimension: cntrct_mtn {
    type: string
    description: "The Mobile Telephone Number of the client's contract."
    sql: ${TABLE}.cntrct_mtn ;;
  }

  dimension: cntrct_tenure_sum {
    type: string
    description: "The sum of the contract tenures associated with the equipment"
    sql: ${TABLE}.cntrct_tenure_sum ;;
  }

  dimension: cntrct_type {
    type: string
    description: "Type of contract associated with the equipment"
    sql: ${TABLE}.cntrct_type ;;
  }

  dimension: cold_stock_ind {
    type: string
    description: "Indicator for whether the equipment is in cold stock or not. Cold stock is inventory that is not currently available for sale."
    sql: ${TABLE}.cold_stock_ind ;;
  }

  dimension: conv_ind {
    type: string
    description: "This column indicates whether the equipment was converted from a different type or model."
    sql: ${TABLE}.conv_ind ;;
  }

  dimension: credit_app_num {
    type: string
    description: "This is the credit application number for the customer."
    sql: ${TABLE}.credit_app_num ;;
  }

  dimension: credit_limit_amt {
    type: number
    description: "Credit limit amount for the account."
    sql: ${TABLE}.credit_limit_amt ;;
  }

  dimension: curr_contract_term {
    type: string
    description: "Indicates the current contract term for the equipment."
    sql: ${TABLE}.curr_contract_term ;;
  }

  dimension: cust_device_src {
    type: string
    description: "The source of the customer's device for which a CLNR was given."
    sql: ${TABLE}.cust_device_src ;;
  }

  dimension: cust_id {
    type: string
    description: "Customer Identification."
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "Sequential identifier for each customer line."
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: cust_type_cd {
    type: string
    description: "Code indicating the customer type."
    sql: ${TABLE}.cust_type_cd ;;
  }

  dimension: dealloc_amt {
    type: number
    description: "Amount of the de-allocation associated with the row."
    sql: ${TABLE}.dealloc_amt ;;
  }

  dimension: depletion_store_num {
    type: string
    description: "Store number where the equipment was depleted."
    sql: ${TABLE}.depletion_store_num ;;
  }

  dimension: device_prod_nm {
    type: string
    description: "Name of the device product associated with the row."
    sql: ${TABLE}.device_prod_nm ;;
  }

  dimension: device_prod_nm_prev {
    type: string
    description: "Name of the device product as previously reported"
    sql: ${TABLE}.device_prod_nm_prev ;;
  }

  dimension: device_type_cd {
    type: string
    description: "The device type represents the type of device as shown in the ESN_NUM column. Values include, ODI - ODI Device, ATL - Alltel Device, VZW - Verizon Device, VRA - VoRA Device, 4GS - 4G SIM Card"
    sql: ${TABLE}.device_type_cd ;;
  }

  dimension: device_type_cd_prev {
    type: string
    description: "previous device type code"
    sql: ${TABLE}.device_type_cd_prev ;;
  }

  dimension: disc_reas_cd {
    type: string
    description: "Disconnect timeout treatment code. Codes are defined in the Digital Multiplex System (DMS) 250 Treatment Codes InfoManger OST."
    sql: ${TABLE}.disc_reas_cd ;;
  }

  dimension: discount_cd {
    type: string
    description: "This column represents the discount code associated with the equipment."
    sql: ${TABLE}.discount_cd ;;
  }

  dimension: discretion_reas_cd {
    type: string
    description: "Code indicating the reason for equipment discretion."
    sql: ${TABLE}.discretion_reas_cd ;;
  }

  dimension: discretion_reas_desc {
    type: string
    description: "Discreation Reason Description"
    sql: ${TABLE}.discretion_reas_desc ;;
  }

  dimension: down_pymnt_pct {
    type: number
    description: "Percentage of down payment made for the device associated with the row."
    sql: ${TABLE}.down_pymnt_pct ;;
  }

  dimension: duns_loc_num {
    type: string
    description: "The Duns location number associated with the equipment"
    sql: ${TABLE}.duns_loc_num ;;
  }

  dimension: duplicate_ind {
    type: string
    description: "Indicates whether the transaction is a duplicate."
    sql: ${TABLE}.duplicate_ind ;;
  }

  dimension: ecpd_profile_id {
    type: string
    description: "A central repository database for creating, maintaining, and viewing real time information regarding Corporate Liable and Employee Liable: Federal, Local and State Government Accounts, Small and Medium Business Accounts, National Accounts, Consolidated Major Accounts, and Major Accounts."
    sql: ${TABLE}.ecpd_profile_id ;;
  }

  dimension: edge_interested_ind {
    type: string
    description: "Edge interested indicator."
    sql: ${TABLE}.edge_interested_ind ;;
  }

  dimension: edge_qualified_ind {
    type: string
    description: "EDGE qualified indicator."
    sql: ${TABLE}.edge_qualified_ind ;;
  }

  dimension: edw_edge_qualified_ind {
    type: string
    description: "An indicator specifying whether the equipment is qualified for the Enhanced Data for Global Evolution program."
    sql: ${TABLE}.edw_edge_qualified_ind ;;
  }

  dimension: emp_id {
    type: string
    description: "Employee ID associated with the equipment transaction."
    sql: ${TABLE}.emp_id ;;
  }

  dimension: eom_cust_id {
    type: string
    description: "End of Month Customer ID associated with equipment"
    sql: ${TABLE}.eom_cust_id ;;
  }

  dimension: eom_cust_line_seq_id {
    type: string
    description: "This is the unique identifier of the End of Month Customer Line Sequence."
    sql: ${TABLE}.eom_cust_line_seq_id ;;
  }

  dimension: eqp_class_desc {
    type: string
    description: "Description of the class of equipment"
    sql: ${TABLE}.eqp_class_desc ;;
  }

  dimension: eqp_ctgry_desc {
    type: string
    description: "Description of the equipment category."
    sql: ${TABLE}.eqp_ctgry_desc ;;
  }

  dimension: eqp_desc {
    type: string
    description: "Description of the equipment"
    sql: ${TABLE}.eqp_desc ;;
  }

  dimension: eqp_device_id {
    type: string
    description: "Unique identifier of the equipment device."
    sql: ${TABLE}.eqp_device_id ;;
  }

  dimension: eqp_device_id_prev {
    type: string
    description: "previous equipment device id"
    sql: ${TABLE}.eqp_device_id_prev ;;
  }

  dimension: eqp_grp_desc {
    type: string
    description: "Description of the equipment group."
    sql: ${TABLE}.eqp_grp_desc ;;
  }

  dimension: eqp_program_cd {
    type: string
    description: "equipment program code"
    sql: ${TABLE}.eqp_program_cd ;;
  }

  dimension: eqp_type_desc {
    type: string
    description: "Description of the equipment type."
    sql: ${TABLE}.eqp_type_desc ;;
  }

  dimension: esn_change_reas_cd {
    type: string
    description: "Captures the reason code for an ESN change."
    sql: ${TABLE}.esn_change_reas_cd ;;
  }

  dimension: esn_num {
    type: string
    description: "electronic serial number"
    sql: ${TABLE}.esn_num ;;
  }

  dimension: esn_num_prev {
    type: string
    description: "The previous electronic serial number associated with the equipment"
    sql: ${TABLE}.esn_num_prev ;;
  }

  dimension: essbase_cd {
    type: string
    description: "Essbase Global code."
    sql: ${TABLE}.essbase_cd ;;
  }

  dimension: ethnicity_segmt {
    type: string
    description: "The ethnicity of the client."
    sql: ${TABLE}.ethnicity_segmt ;;
  }

  dimension: f1k_ind {
    type: string
    description: "Indicates whether the customer is a high-value customer."
    sql: ${TABLE}.f1k_ind ;;
  }

  dimension: fin_tot_flag {
    type: string
    description: "Indicator for whether the transaction is a final total. Y indicates sale completed"
    sql: ${TABLE}.fin_tot_flag ;;
  }

  dimension: fin_upg_flag {
    type: string
    description: "Indicates whether the sale was part of an upgrade flow. Y indicates upgrade"
    sql: ${TABLE}.fin_upg_flag ;;
  }

  dimension: fulfillment_ind {
    type: string
    description: "Indicator for whether the item was fulfilled locally or directly."
    sql: ${TABLE}.fulfillment_ind ;;
  }

  dimension: full_price_after_disc_ind {
    type: string
    description: "Full price after discount indicator."
    sql: ${TABLE}.full_price_after_disc_ind ;;
  }

  dimension: full_price_b4_disc_ind {
    type: string
    description: "Indicates whether the full price before discount is included in the sales data."
    sql: ${TABLE}.full_price_b4_disc_ind ;;
  }

  dimension: gift_card_ind {
    type: string
    description: "Gift card indicator."
    sql: ${TABLE}.gift_card_ind ;;
  }

  dimension: gift_card_num {
    type: string
    description: "Gift card number used in the transaction."
    sql: ${TABLE}.gift_card_num ;;
  }

  dimension: gross_discount {
    type: number
    description: "The total discount applied to the transaction before taxes and fees."
    sql: ${TABLE}.gross_discount ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: hdp_insert_dt {
    type: time
    description: "Date and time when the data was inserted into the Hadoop platform."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.hdp_insert_dt_time ;;
  }

  dimension: hr_emp_id {
    type: string
    description: "The Employee ID identifies the Verizon Wireless employee who is responsible for the transaction."
    sql: ${TABLE}.hr_emp_id ;;
  }

  dimension: ia_item_category_cd {
    type: string
    description: "IA item category code."
    sql: ${TABLE}.ia_item_category_cd ;;
  }

  dimension: ia_item_class_cd {
    type: string
    description: "Ineffective Attempt Item Class Code"
    sql: ${TABLE}.ia_item_class_cd ;;
  }

  dimension: ia_item_group_cd {
    type: string
    description: "Code representing the ineffective attempt item group."
    sql: ${TABLE}.ia_item_group_cd ;;
  }

  dimension: ia_item_subcategory_cd {
    type: string
    description: "Code for the item subcategory."
    sql: ${TABLE}.ia_item_subcategory_cd ;;
  }

  dimension: ia_unbundle_multiplier {
    type: number
    description: "IA is a call statistic used to monitor ineffective attempts to initiate an analog or digital call on the Verizon Wireless cellular network. Customers experience this as an inability to access the Network."
    sql: ${TABLE}.ia_unbundle_multiplier ;;
  }

  dimension: indir_chnl_fin_ind {
    type: string
    description: "Indirect channel finance indicator."
    sql: ${TABLE}.indir_chnl_fin_ind ;;
  }

  dimension_group: insert_dt {
    type: time
    description: "This is the date when this row was inserted into the table."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.insert_dt ;;
  }

  dimension: instant_rebate_amt {
    type: number
    description: "amount of instant rebate"
    sql: ${TABLE}.instant_rebate_amt ;;
  }

  dimension_group: invc_dt {
    type: time
    description: "The date the invoice was created."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: date(${TABLE}.invc_dt) ;;
  }

  dimension: invc_line_num {
    type: string
    description: "Invoice line number."
    sql: ${TABLE}.invc_line_num ;;
  }

  dimension: invc_num {
    type: string
    description: "The invoice number associated with the equipment"
    sql: ${TABLE}.invc_num ;;
  }

  dimension: inventory_adj_ind {
    type: string
    description: "Inventory adjustment indicator."
    sql: ${TABLE}.inventory_adj_ind ;;
  }

  dimension: item_cd {
    type: string
    description: "The item code associated with the equipment"
    sql: ${TABLE}.item_cd ;;
  }

  dimension: item_cost_amt {
    type: number
    description: "This is the item cost amount for the equipment."
    sql: ${TABLE}.item_cost_amt ;;
  }

  dimension: item_disc_amt {
    type: number
    description: "Item Disconnect amount."
    sql: ${TABLE}.item_disc_amt ;;
  }

  dimension: item_price_amt {
    type: number
    description: "Item price amount."
    sql: ${TABLE}.item_price_amt ;;
  }

  dimension: item_type {
    type: string
    description: "Type of item associated with the equipment transaction."
    sql: ${TABLE}.item_type ;;
  }

  dimension: life_stage_segmt {
    type: string
    description: "Life stage segment for the customer associated with the transaction."
    sql: ${TABLE}.life_stage_segmt ;;
  }

  dimension: line_item_sls_prsn_id {
    type: string
    description: "The Sales Person Id identifies the Verizon Wireless employee who sold cellular service. VISION SPECIFIC INFO : E in first position = Direct sales representative sold the service, T in first position = Telemarketing rep sold the service."
    sql: ${TABLE}.line_item_sls_prsn_id ;;
  }

  dimension: line_type_cd {
    type: string
    description: "Code indicating the type of line associated with the row. Values are: W - VZW Wireless, H - VZ Hub, O - OnStar Referral plan, T - Telemetry plan, I - ODI device line.Telemetry filtered out of most consumer reporting ('H' , 'O', 'T' )"
    sql: ${TABLE}.line_type_cd ;;
  }

  dimension: loan_type_cd {
    type: string
    description: "Code indicating the type of loan associated with the row."
    sql: ${TABLE}.loan_type_cd ;;
  }

  dimension: mgd_segmt {
    type: string
    description: "managed segment"
    sql: ${TABLE}.mgd_segmt ;;
  }

  dimension: mgr_disc_amt {
    type: number
    description: "Discount amount provided by the manager."
    sql: ${TABLE}.mgr_disc_amt ;;
  }

  dimension: mkt_cd {
    type: string
    description: "Code used by Verizon Wireless to report on information by its lowest geographic structure."
    sql: ${TABLE}.mkt_cd ;;
  }

  dimension: mnc_ind {
    type: string
    description: "Indicates whether the customer is a multi-national company."
    sql: ${TABLE}.mnc_ind ;;
  }

  dimension: mtn {
    type: string
    description: "Mobile Telephone Number."
    sql: ${TABLE}.mtn ;;
  }

  dimension: net_sales {
    type: number
    description: "This is the net sales amount for the equipment."
    sql: ${TABLE}.net_sales ;;
  }

  dimension: netace_return_cd {
    type: string
    description: "Wireless point of sale system (includes one POS and cash management workbook) return cord."
    sql: ${TABLE}.netace_return_cd ;;
  }

  dimension: new_in_box_ind {
    type: string
    description: "Indicates whether the equipment is new in box."
    sql: ${TABLE}.new_in_box_ind ;;
  }

  dimension: nrp_prc_amt {
    type: number
    description: "National Retail Price of the equipment"
    sql: ${TABLE}.nrp_prc_amt ;;
  }

  dimension: offer_id {
    type: string
    description: "Unique identifier for an offer."
    sql: ${TABLE}.offer_id ;;
  }

  dimension: offer_nm {
    type: string
    description: "Offer name."
    sql: ${TABLE}.offer_nm ;;
  }

  dimension: order_type {
    type: string
    description: "The type of order placed by the client. PS - Purchase of equipment, IS -accessory sale and upgrade , RF -Refund order , OC - Order complete"
    sql: ${TABLE}.order_type ;;
  }

  dimension_group: orig_invc_dt {
    type: time
    description: "Original invoice date."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.orig_invc_dt ;;
  }

  dimension: orig_invc_num {
    type: string
    description: "Original invoice number associated with the equipment."
    sql: ${TABLE}.orig_invc_num ;;
  }

  dimension: orig_sls_outlet_id {
    type: string
    description: "Original sales outlet ID."
    sql: ${TABLE}.orig_sls_outlet_id ;;
  }

  dimension: orig_sor_id {
    type: string
    description: "Original source of record id for the equipment."
    sql: ${TABLE}.orig_sor_id ;;
  }

  dimension: orig_store_num {
    type: string
    description: "This column represents the number of the store where the equipment was originally purchased."
    sql: ${TABLE}.orig_store_num ;;
  }

  dimension: pos_ecpd_profile_id {
    type: string
    description: "This is the unique identifier of the Point of Sale Enterprise Customer Profile Database profile."
    sql: ${TABLE}.pos_ecpd_profile_id ;;
  }

  dimension: pos_managed_ind {
    type: string
    description: "Indicates whether the POS_TRANS market is a consolidated or unconsolidated market. Valid values are C (consolidated) or U (unconsolidated)."
    sql: ${TABLE}.pos_managed_ind ;;
  }

  dimension: pos_orig_sls_prsn_id {
    type: string
    description: "The Sales Person Id identifies the Verizon Wireless employee who sold cellular service."
    sql: ${TABLE}.pos_orig_sls_prsn_id ;;
  }

  dimension: pos_prepaid_ind {
    type: string
    description: "Indicator for prepaid point of sale."
    sql: ${TABLE}.pos_prepaid_ind ;;
  }

  dimension: pos_src_id {
    type: string
    description: "Point of sale source identifier."
    sql: ${TABLE}.pos_src_id ;;
  }

  dimension: pos_vsn_cust_type_cd {
    type: string
    description: "Point of Service Vision Customer Type Code."
    sql: ${TABLE}.pos_vsn_cust_type_cd ;;
  }

  dimension: pos_vz2_segmt_cd {
    type: string
    description: "Point of service (POS) Verizon Wireless segment cord."
    sql: ${TABLE}.pos_vz2_segmt_cd ;;
  }

  dimension: pplan_cd {
    type: string
    description: "The Price Plan Code identifies the price plans offered by Verizon Wireless wholesale and retail customers."
    sql: ${TABLE}.pplan_cd ;;
  }

  dimension: pplan_mkt_cd {
    type: string
    description: "Price plan market code identifies the wholesale or retail market of a price plan offered by Verizon Wireless."
    sql: ${TABLE}.pplan_mkt_cd ;;
  }

  dimension: prev_contract_term {
    type: string
    description: "Previous contract term associated with the equipment."
    sql: ${TABLE}.prev_contract_term ;;
  }

  dimension: primary_pos_return_cd {
    type: string
    description: "Indicates primary point of sale location of equipment return"
    sql: ${TABLE}.primary_pos_return_cd ;;
  }

  dimension: prod_nm {
    type: string
    description: "The name of the product associated with the equipment"
    sql: ${TABLE}.prod_nm ;;
  }

  dimension: prod_nm_prev {
    type: string
    description: "The Network Management system is a system that monitors and manages the Verizon Wireless cellular network."
    sql: ${TABLE}.prod_nm_prev ;;
  }

  dimension: ps_dept_num {
    type: string
    description: "The department number of the Purchase Service (PS) that processed the order."
    sql: ${TABLE}.ps_dept_num ;;
  }

  dimension: ps_mkt_cd {
    type: string
    description: "Purchase Market Code"
    sql: ${TABLE}.ps_mkt_cd ;;
  }

  dimension: ps_region_cd {
    type: string
    description: "Code representing the purchase service region."
    sql: ${TABLE}.ps_region_cd ;;
  }

  dimension_group: pymnt_dt {
    type: time
    description: "Date of the payment associated with the row."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pymnt_dt ;;
  }

  dimension: pymnt_tender_type_cd {
    type: string
    description: "Code to indicate type of payment method used for equipment purchase"
    sql: ${TABLE}.pymnt_tender_type_cd ;;
  }

  dimension: pymnt_tm {
    type: string
    description: "The payment time associated with the equipment"
    sql: ${TABLE}.pymnt_tm ;;
  }

  dimension: rebate_ind {
    type: string
    description: "Indicates whether the equipment is eligible for a rebate."
    sql: ${TABLE}.rebate_ind ;;
  }

  dimension: refund_applied_ind {
    type: string
    description: "This column indicates whether a refund was applied for the equipment."
    sql: ${TABLE}.refund_applied_ind ;;
  }

  dimension: region_cd {
    type: string
    description: "the region code of the district to which a store belongs"
    sql: ${TABLE}.region_cd ;;
  }

  dimension: rep_disc_amt {
    type: number
    description: "The discount amount given to the client by the sales representative."
    sql: ${TABLE}.rep_disc_amt ;;
  }

  dimension: return_exch_type {
    type: string
    description: "Type of return or exchange associated with the equipment."
    sql: ${TABLE}.return_exch_type ;;
  }

  dimension: return_invc_line_num {
    type: string
    description: "Line number of the return invoice associated with the row."
    sql: ${TABLE}.return_invc_line_num ;;
  }

  dimension: return_invc_num {
    type: string
    description: "Invoice number associated with the return of equipment."
    sql: ${TABLE}.return_invc_num ;;
  }

  dimension: return_qty {
    type: number
    description: "The quantity of items returned by the client."
    sql: ${TABLE}.return_qty ;;
  }

  dimension: rev_gen_ind {
    type: string
    description: "An indicator specifying whether the equipment is revenue-generating. Values Y, N"
    sql: ${TABLE}.rev_gen_ind ;;
  }

  dimension: risk_profile_cd {
    type: number
    description: "This is the risk profile code for the customer."
    sql: ${TABLE}.risk_profile_cd ;;
  }

  dimension: rltd_acct_id {
    type: string
    description: "Related account ID for the equipment"
    sql: ${TABLE}.rltd_acct_id ;;
  }

  dimension: rollup_cd {
    type: string
    description: "code for rollup"
    sql: ${TABLE}.rollup_cd ;;
  }

  dimension: row_type_id {
    type: string
    description: "Row type id - Possible values PR - Promotions, IUG - Indirect Upgrades, D - Direct Add,  IGA - Indirect Gross Adds"
    sql: ${TABLE}.row_type_id ;;
  }

  dimension_group: rpt_mth {
    type: time
    description: "Reporting month in the format YYYYMM."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rpt_mth ;;
  }

  dimension: rpt_pplan_cd {
    type: string
    description: "The price plan code associated with the equipment"
    sql: ${TABLE}.rpt_pplan_cd ;;
  }

  dimension: sales_qty {
    type: number
    description: "quantity of sales"
    sql: ${TABLE}.sales_qty ;;
  }

  dimension: sdr_elig {
    type: string
    description: "Flag to indicate whether equipment is eligible for Service Done Right program"
    sql: ${TABLE}.sdr_elig ;;
  }

  dimension: secondary_pos_return_cd {
    type: string
    description: "Code indicating whether the transaction is a secondary point of sale return."
    sql: ${TABLE}.secondary_pos_return_cd ;;
  }

  dimension: sim_ind {
    type: string
    description: "Indicator for SIM card presence."
    sql: ${TABLE}.sim_ind ;;
  }

  dimension: sls_dist_chnl_type_cd {
    type: string
    description: "Sales distribution channel type . These codes indicate the sales channel,A - Local retailer,D - Direct Sales,DD - Door to Door,I - Local Agent,IN - Indirect Internet,M - Communication Store inside Verizon,MM - Retail - Mid Major Agents,N – Internet,NC - Non Commissionable,R - National Retailer,RD - Direct National Retailer,T - Telemarketing Inbound V - VAD/OEM,W - Reseller"
    sql: ${TABLE}.sls_dist_chnl_type_cd ;;
  }

  dimension: sls_prsn_id {
    type: string
    description: "Identification of the sales person who sold the service."
    sql: ${TABLE}.sls_prsn_id ;;
  }

  dimension: sls_type {
    type: string
    description: "The type of the sale (purchase, Upgrade, Service) P- Purchase - for a new customer, who is going to purchase a phone ,U- Upgrade - for an existing customer, who is going to purchase a phone ,S- Service - for a new customer, who has his own phone, but is activating a new line of service with Verizon W- indicates it s a Warranty return, i.e. a FRU exchange."
    sql: ${TABLE}.sls_type ;;
  }

  dimension: sor_id {
    type: string
    description: "Identifier for the source system of record that is populating a Data Warehouse instance. Values - V, nulls"
    sql: ${TABLE}.sor_id ;;
  }

  dimension: sr_return_ind {
    type: string
    description: "Selective routing return indicator."
    sql: ${TABLE}.sr_return_ind ;;
  }

  dimension: store_num {
    type: string
    description: "The store number where the equipment is located."
    sql: ${TABLE}.store_num ;;
  }

  dimension: tradein_ind {
    type: string
    description: "Indicator specifying whether the equipment was traded in."
    sql: ${TABLE}.tradein_ind ;;
  }

  dimension: trans_sls_outlet_id {
    type: string
    description: "Transaction sales outlet id where the equipment was sold."
    sql: ${TABLE}.trans_sls_outlet_id ;;
  }

  dimension_group: trans_ts {
    type: time
    description: "The timestamp of the transaction associated with the equipment"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.trans_ts ;;
  }

  dimension: trans_type_desc {
    type: string
    description: "Description of the transaction type associated with the equipment."
    sql: ${TABLE}.trans_type_desc ;;
  }

  dimension: unbundle_multiplier {
    type: number
    description: "Multiplier used for calculating charges for unbundled items."
    sql: ${TABLE}.unbundle_multiplier ;;
  }

  dimension: unit_only_ind {
    type: string
    description: "Unit only indicator"
    sql: ${TABLE}.unit_only_ind ;;
  }

  dimension_group: update_dt {
    type: time
    description: "The date the record was last updated"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.update_dt ;;
  }

  dimension: user_id {
    type: string
    description: "Identification of the user who performed the action associated with the row."
    sql: ${TABLE}.user_id ;;
  }

  dimension: vertical {
    type: string
    description: "This is the vertical industry code for the customer."
    sql: ${TABLE}.vertical ;;
  }

  dimension: vsn_cust_type_cd {
    type: string
    description: "The type of customer, as defined by VSN. Consumer indicated by PE, ME. Business end user indicated by BE etc"
    sql: ${TABLE}.vsn_cust_type_cd ;;
  }

  dimension: vz2_segmt_cd {
    type: string
    description: "Code representing the Verizon 2 segment."
    sql: ${TABLE}.vz2_segmt_cd ;;
  }

  dimension: vzw_value {
    type: string
    description: "This is the Verizon Wireless value for the equipment."
    sql: ${TABLE}.vzw_value ;;
  }
  measure: count {
    type: count
  }
}
