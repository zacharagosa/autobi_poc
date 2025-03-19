# The name of this view in Looker is "Fixed 5g Summary Fact Exp"
view: fixed_5g_summary_fact_exp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.fixed_5g_summary_fact_exp` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acct Num" in Explore.

  dimension: acct_num {
    type: string
    description: "The account number associated with the installation."
    sql: ${TABLE}.acct_num ;;
  }

  dimension: acct_num_new {
    type: string
    sql: ${TABLE}.acct_num_new ;;
  }

  dimension: area_cd {
    type: string
    description: "Code representing the geographical area where the fixed 5G service is located."
    sql: ${TABLE}.area_cd ;;
  }

  dimension: arris_router {
    type: string
    description: "A flag indicating whether the customer is using an arris router."
    sql: ${TABLE}.arris_router ;;
  }

  dimension: asurion_id {
    type: string
    description: "An identifier for the customer's Asurion protection plan, if applicable."
    sql: ${TABLE}.asurion_id ;;
  }

  dimension: auto_cancel_ind {
    type: string
    description: "Indicator specifying whether the 5G fixed service order was automatically canceled."
    sql: ${TABLE}.auto_cancel_ind ;;
  }

  dimension: auto_cancel_reas_desc {
    type: string
    description: "Reason for automatic cancellation, if any."
    sql: ${TABLE}.auto_cancel_reas_desc ;;
  }

  dimension: bb_self_setup_start_ts {
    type: string
    description: "Timestamp indicating the start of the broadband self-setup process. This usually involves the customer connecting the receiver and configuring their internet settings."
    sql: ${TABLE}.bb_self_setup_start_ts ;;
  }

  dimension: bgid {
    type: string
    description: "Unique identifier for the billing group associated with the customer's account."
    sql: ${TABLE}.bgid ;;
  }

  dimension: bill_1_addr {
    type: string
    description: "Primary billing address associated with the fixed 5G service."
    sql: ${TABLE}.bill_1_addr ;;
  }

  dimension: bill_2_addr {
    type: string
    description: "Secondary billing address associated with the fixed 5G service."
    sql: ${TABLE}.bill_2_addr ;;
  }

  dimension: bill_city_nm {
    type: string
    description: "Name of the city associated with the billing address for the fixed 5G service."
    sql: ${TABLE}.bill_city_nm ;;
  }

  dimension: bill_state_cd {
    type: string
    description: "A code representing the state where the bill for the fixed 5G service is sent, which may differ from the service location state."
    sql: ${TABLE}.bill_state_cd ;;
  }

  dimension: bill_zip_cd {
    type: string
    description: "The zip code associated with the billing address for the fixed 5G service."
    sql: ${TABLE}.bill_zip_cd ;;
  }

  dimension: billing_enablement_err_msg {
    type: string
    sql: ${TABLE}.billing_enablement_err_msg ;;
  }

  dimension: billing_enablement_status {
    type: string
    description: "Indicates the current status of billing enablement for the customer's 5G service. Possible values include 'Enabled', 'Pending', 'Disabled', and 'Error', representing different stages of the billing process."
    sql: ${TABLE}.billing_enablement_status ;;
  }

  dimension: bus_nm {
    type: string
    description: "The name of the business associated with the fixed 5G service, if applicable. This is relevant for business customers."
    sql: ${TABLE}.bus_nm ;;
  }

  dimension: bus_type_desc {
    type: string
    description: "Description of the type of business associated with the customer."
    sql: ${TABLE}.bus_type_desc ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: cancel_dt {
    type: time
    description: "Date when the service is cancelled"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cancel_dt ;;
  }

  dimension: cancel_level_1_desc {
    type: string
    description: "Description of the cancellation reason at level 1 of the cancellation hierarchy."
    sql: ${TABLE}.cancel_level_1_desc ;;
  }

  dimension: cancel_level_2_desc {
    type: string
    description: "Description of the cancellation reason at level 2 of the cancellation hierarchy."
    sql: ${TABLE}.cancel_level_2_desc ;;
  }

  dimension: cancel_level_3_desc {
    type: string
    description: "Description of the cancellation reason at level 3 of the cancellation hierarchy."
    sql: ${TABLE}.cancel_level_3_desc ;;
  }

  dimension: cancel_level_4_desc {
    type: string
    description: "Description of the cancellation reason at level 4 of the cancellation hierarchy."
    sql: ${TABLE}.cancel_level_4_desc ;;
  }

  dimension: cancel_level_5_desc {
    type: string
    description: "Description of the cancellation reason at level 5 of the cancellation hierarchy."
    sql: ${TABLE}.cancel_level_5_desc ;;
  }

  dimension: cancel_qty {
    type: number
    description: "Cancel quantity"
    sql: ${TABLE}.cancel_qty ;;
  }

  dimension: cancel_reas_cd {
    type: string
    description: "Code representing the reason for cancellation of the fixed 5G service."
    sql: ${TABLE}.cancel_reas_cd ;;
  }

  dimension: cancel_reas_desc {
    type: string
    description: "Detailed description of the reason for cancellation of the fixed 5G service."
    sql: ${TABLE}.cancel_reas_desc ;;
  }

  dimension: cband_activation_status_desc {
    type: string
    description: "Description of the activation status of the C-band component of the fixed 5G service."
    sql: ${TABLE}.cband_activation_status_desc ;;
  }

  dimension: cband_arfcn {
    type: string
    description: "Absolute Radio Frequency Channel Number associated with the C-band spectrum used in the 5G installation or repair."
    sql: ${TABLE}.cband_arfcn ;;
  }

  dimension: cband_cancel_level_1_desc {
    type: string
    description: "Description of the cancellation reason at level 1 of the cancellation hierarchy specifically related to the C-band related service."
    sql: ${TABLE}.cband_cancel_level_1_desc ;;
  }

  dimension: cband_cancel_level_2_desc {
    type: string
    description: "Description of the cancellation reason at level 2 of the cancellation hierarchy specifically related to the C-band related service."
    sql: ${TABLE}.cband_cancel_level_2_desc ;;
  }

  dimension: cband_cancel_level_3_desc {
    type: string
    description: "Description of the cancellation reason at level 3 of the cancellation hierarchy specifically related to the C-band related service."
    sql: ${TABLE}.cband_cancel_level_3_desc ;;
  }

  dimension: cband_cancel_level_4_desc {
    type: string
    description: "Description of the cancellation reason at level 4 of the cancellation hierarchy specifically related to the C-band related service."
    sql: ${TABLE}.cband_cancel_level_4_desc ;;
  }

  dimension: cband_cancel_level_5_desc {
    type: string
    description: "Description of the cancellation reason at level 5 of the cancellation hierarchy specifically related to the C-band related service."
    sql: ${TABLE}.cband_cancel_level_5_desc ;;
  }

  dimension: cband_fail_cd_desc {
    type: string
    description: "C-band failure code description"
    sql: ${TABLE}.cband_fail_cd_desc ;;
  }

  dimension: cband_fail_sub_cd_desc {
    type: string
    description: "Description of the subcode associated with a failed C-band installation or repair attempt."
    sql: ${TABLE}.cband_fail_sub_cd_desc ;;
  }

  dimension: cband_pre_arfcn {
    type: string
    description: "The frequency assigned to the customer's C-band service before any changes were made. This information helps track network configurations and potential changes."
    sql: ${TABLE}.cband_pre_arfcn ;;
  }

  dimension: cband_pre_rsrp {
    type: string
    description: "Received signal strength (RSRP) value measured on the C-band before activation, providing information about network conditions."
    sql: ${TABLE}.cband_pre_rsrp ;;
  }

  dimension: cband_pre_sinr {
    type: string
    description: "Signal-to-noise-and-interference ratio (SINR) measured before activation of the C-band for the Fixed 5G service, providing pre-activation performance data."
    sql: ${TABLE}.cband_pre_sinr ;;
  }

  dimension: cband_rsrp {
    type: string
    description: "The received signal strength of the C-band signal."
    sql: ${TABLE}.cband_rsrp ;;
  }

  dimension: cband_snr {
    type: string
    description: "Signal to Noise Ratio for C-band (5G band n77)."
    sql: ${TABLE}.cband_snr ;;
  }

  dimension: chnl_id {
    type: string
    description: "Identifier of the sales channel through which the fixed 5G service was sold."
    sql: ${TABLE}.chnl_id ;;
  }

  dimension: chnl_nm {
    type: string
    description: "Name of the sales channel through which the fixed 5G service was sold."
    sql: ${TABLE}.chnl_nm ;;
  }

  dimension: chr_router {
    type: string
    description: "A flag indicating whether the customer is using a chr router."
    sql: ${TABLE}.chr_router ;;
  }

  dimension: circuit_id {
    type: string
    description: "tanglewood orders (unique ID on Fios side)"
    sql: ${TABLE}.circuit_id ;;
  }

  dimension: cma_cd {
    type: string
    description: "Code representing the specific Customer Management Area (CMA) responsible for managing the Fixed 5G service in this region."
    sql: ${TABLE}.cma_cd ;;
  }

  dimension: cma_nm {
    type: string
    description: "The name of the Call Management Agent (CMA) responsible for the fixed 5G service. This details the specific entity handling customer interactions and support."
    sql: ${TABLE}.cma_nm ;;
  }

  dimension: combo_order_ind {
    type: string
    description: "Indicates whether the Fixed 5G service is part of a bundled package with other services."
    sql: ${TABLE}.combo_order_ind ;;
  }

  dimension: complete_status_desc {
    type: string
    description: "Description of the status indicating whether the fixed 5G service installation is complete."
    sql: ${TABLE}.complete_status_desc ;;
  }

  dimension: credit_app_num {
    type: string
    description: "Credit application number."
    sql: ${TABLE}.credit_app_num ;;
  }

  dimension: curr_pplan_cd {
    type: string
    description: "Code identifying the current price plan associated with the fixed 5G service, reflecting the customer's billing plan."
    sql: ${TABLE}.curr_pplan_cd ;;
  }

  dimension: curr_pplan_desc {
    type: string
    description: "Description of the current price plan associated with the 5G service."
    sql: ${TABLE}.curr_pplan_desc ;;
  }

  dimension_group: curr_pplan_eff_dt {
    type: time
    description: "Effective date when the current price plan for the fixed 5G service became active, reflecting the start of the billing cycle."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.curr_pplan_eff_dt ;;
  }

  dimension: cust_cntct_nm {
    type: string
    description: "Name of the customer contact associated with the fixed 5G service."
    sql: ${TABLE}.cust_cntct_nm ;;
  }

  dimension: cust_email_addr {
    type: string
    description: "Email address of the customer associated with the 5G service installation or repair."
    sql: ${TABLE}.cust_email_addr ;;
  }

  dimension: cust_first_nm {
    type: string
    description: "First name of the customer associated with the service."
    sql: ${TABLE}.cust_first_nm ;;
  }

  dimension: cust_id {
    type: string
    description: "A unique identifier for the customer."
    sql: ${TABLE}.cust_id ;;
  }

  dimension: cust_id_new {
    type: string
    sql: ${TABLE}.cust_id_new ;;
  }

  dimension: cust_last_nm {
    type: string
    description: "The customer's last name."
    sql: ${TABLE}.cust_last_nm ;;
  }

  dimension: cust_line_seq_id {
    type: string
    description: "Customer line sequence ID. This is the unique identifier for the customer line."
    sql: ${TABLE}.cust_line_seq_id ;;
  }

  dimension: cust_line_seq_id_new {
    type: string
    sql: ${TABLE}.cust_line_seq_id_new ;;
  }

  dimension: cust_type_cd {
    type: string
    description: "Code indicating the type of customer."
    sql: ${TABLE}.cust_type_cd ;;
  }

  dimension: cust_type_desc {
    type: string
    description: "A description of the customer type associated with the fixed 5G service. This could include categories such as residential, business, or government."
    sql: ${TABLE}.cust_type_desc ;;
  }

  dimension: data_rate_grp_cd {
    type: string
    description: "Code representing the data rate plan associated with the service."
    sql: ${TABLE}.data_rate_grp_cd ;;
  }

  dimension: deact_reas_cd {
    type: string
    description: "A code representing the reason for deactivation of the fixed 5G service. This could include reasons such as customer churn, service termination, or equipment failure."
    sql: ${TABLE}.deact_reas_cd ;;
  }

  dimension_group: delivered_dt {
    type: time
    description: "Date when the Fixed 5G equipment was delivered to the customer."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.delivered_dt ;;
  }

  dimension: device_id_type_cd {
    type: string
    description: "Device identifier type code."
    sql: ${TABLE}.device_id_type_cd ;;
  }

  dimension: device_type_cd {
    type: string
    description: "The type of device used by the customer to access the 5G fixed broadband service."
    sql: ${TABLE}.device_type_cd ;;
  }

  dimension: device_type_desc {
    type: string
    description: "A description of the type of device installed."
    sql: ${TABLE}.device_type_desc ;;
  }

  dimension: disconnect_client_id {
    type: string
    description: "To identify on which channel the order is getting disconnected."
    sql: ${TABLE}.disconnect_client_id ;;
  }

  dimension_group: disconnect_dt {
    type: time
    description: "Date and time when the customer's service was disconnected."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.disconnect_dt ;;
  }

  dimension: disconnect_reason {
    type: string
    description: "Disconnect reason. This is the reason for disconnecting the service."
    sql: ${TABLE}.disconnect_reason ;;
  }

  dimension: discount_svc_prod_desc {
    type: string
    description: "Description of any discounted service or product associated with the customer's 5G service. This may include promotions, bundled packages, or special offers."
    sql: ${TABLE}.discount_svc_prod_desc ;;
  }

  dimension: discount_svc_prod_id {
    type: string
    description: "Identifier of the discount service product associated with the Fixed 5G service."
    sql: ${TABLE}.discount_svc_prod_id ;;
  }

  dimension: dly_heartbeat_ind {
    type: string
    description: "Flag indicating if there were delays in the heartbeat signal during the installation process. Heartbeat signals are used for communication between the receiver and network."
    sql: ${TABLE}.dly_heartbeat_ind ;;
  }

  dimension: dma_nm {
    type: string
    description: "Name of the Designated Market Area (DMA) where the fixed 5G service is located."
    sql: ${TABLE}.dma_nm ;;
  }

  dimension: download_speed_test {
    type: string
    description: "Download speed test."
    sql: ${TABLE}.download_speed_test ;;
  }

  dimension: duns_ultimate_nm {
    type: string
    description: "Dun \u0026 Bradstreet (D\u0026B) name representing the ultimate parent company of the customer."
    sql: ${TABLE}.duns_ultimate_nm ;;
  }

  dimension: duns_ultimate_num {
    type: string
    description: "Dun \u0026 Bradstreet (D\u0026B) number representing the ultimate parent company of the customer."
    sql: ${TABLE}.duns_ultimate_num ;;
  }

  dimension: duplicate_ind {
    type: string
    description: "Indicator flag to identify if the sales record represents a duplicate entry."
    sql: ${TABLE}.duplicate_ind ;;
  }

  dimension: dvc_reachable {
    type: string
    description: "Indicates whether the customer's Fixed 5G device is reachable and connected to the network, reflecting service availability."
    sql: ${TABLE}.dvc_reachable ;;
  }

  dimension: dwelling_type {
    type: string
    description: "The type of dwelling where the service is being used, such as a house, apartment, or mobile home."
    sql: ${TABLE}.dwelling_type ;;
  }

  dimension: ecpd_profile_id {
    type: string
    description: "Unique identifier of Enterprise Customer Profile Database."
    sql: ${TABLE}.ecpd_profile_id ;;
  }

  dimension: ecpd_profile_nm {
    type: string
    description: "Enterprise Customer Profile Database profile name. This is the name of the customer profile in the Enterprise Customer Profile Database."
    sql: ${TABLE}.ecpd_profile_nm ;;
  }

  dimension: emp_id {
    type: string
    description: "The employee ID of the technician who performed the installation."
    sql: ${TABLE}.emp_id ;;
  }

  dimension: equipment_return_cd {
    type: string
    description: "Code indicating the reason for equipment return by the customer, if applicable. Possible values could include 'Defective', 'Upgrade', 'Move', or 'Other'."
    sql: ${TABLE}.equipment_return_cd ;;
  }

  dimension: equipment_return_desc {
    type: string
    description: "Description of the status of equipment return upon service cancellation, such as 'Returned', 'Lost', or 'Damaged', indicating customer compliance."
    sql: ${TABLE}.equipment_return_desc ;;
  }

  dimension: equipment_return_ts {
    type: string
    description: "Timestamp indicating when the equipment was returned, applicable for installations where the customer received equipment for self-installation."
    sql: ${TABLE}.equipment_return_ts ;;
  }

  dimension: esn_num {
    type: string
    description: "The serial number of the device used to connect to the 5G network."
    sql: ${TABLE}.esn_num ;;
  }

  dimension: event_correlation_id {
    type: string
    description: "A unique identifier for each event that occurs during the customer's use of the 5G fixed broadband service."
    sql: ${TABLE}.event_correlation_id ;;
  }

  dimension: extender_5g {
    type: string
    description: "5G extender used, if any."
    sql: ${TABLE}.extender_5g ;;
  }

  dimension_group: first_available_appt {
    type: time
    description: "Date and time of the first available appointment for a 5G service installation or repair."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_available_appt ;;
  }

  dimension_group: first_usage_dt {
    type: time
    description: "First usage date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_usage_dt ;;
  }

  dimension: fraud_verification_status {
    type: string
    description: "The status of fraud verification for the customer's 5G fixed wireless service. This indicates whether any fraudulent activity was detected and the status of the verification process."
    sql: ${TABLE}.fraud_verification_status ;;
  }

  dimension: fwa_ord_type_desc {
    type: string
    description: "Description of the order type for the Fixed Wireless Access (FWA) component of the fixed 5G service."
    sql: ${TABLE}.fwa_ord_type_desc ;;
  }

  dimension: imei {
    type: string
    description: "The International Mobile Equipment Identity (IMEI) of the device used to connect to the 5G network."
    sql: ${TABLE}.imei ;;
  }

  dimension_group: insert_ts {
    type: time
    description: "Timestamp of record insertion."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.insert_ts ;;
  }

  dimension_group: install_complete_dt {
    type: time
    description: "The date and time when the installation was completed."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.install_complete_dt ;;
  }

  dimension_group: install_dt {
    type: time
    description: "Date when the service is installed"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.install_dt ;;
  }

  dimension: install_type {
    type: string
    description: "Type of installation performed for the fixed 5G service (e.g., self install, pro install, self to pro etc)"
    sql: ${TABLE}.install_type ;;
  }

  dimension: int_enbl_client_id {
    type: string
    description: "channel name which has triggered and enabled the Internet"
    sql: ${TABLE}.int_enbl_client_id ;;
  }

  dimension: internet_enablement_err_msg {
    type: string
    sql: ${TABLE}.internet_enablement_err_msg ;;
  }

  dimension: internet_enablement_status {
    type: string
    description: "Indicates whether the customer's internet service has been activated and is currently functioning. This can be either 'Enabled' or 'Disabled'."
    sql: ${TABLE}.internet_enablement_status ;;
  }

  dimension: internet_status_reas_cd {
    type: string
    description: "Code indicating the reason for the current status of the internet connection. This could include reasons like active, suspended, cancelled, or maintenance."
    sql: ${TABLE}.internet_status_reas_cd ;;
  }

  dimension: internet_status_reas_desc {
    type: string
    description: "Free-text description explaining the reason for the current internet status of the Fixed 5G service, providing insights into network connectivity issues."
    sql: ${TABLE}.internet_status_reas_desc ;;
  }

  dimension: internet_status_ts {
    type: string
    description: "The timestamp when the customer's internet service was last updated. This provides information about the status and timing of recent changes to the internet connection."
    sql: ${TABLE}.internet_status_ts ;;
  }

  dimension: ispu_ind {
    type: string
    description: "Indicator for in-store pick up (ISPU)."
    sql: ${TABLE}.ispu_ind ;;
  }

  dimension_group: ispu_pickup_dt {
    type: time
    description: "In-store Pickup Date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ispu_pickup_dt ;;
  }

  dimension: ispu_status {
    type: string
    description: "In-store pickup Status. Indicates if customer has In store pick up for the order"
    sql: ${TABLE}.ispu_status ;;
  }

  dimension: item_desc {
    type: string
    description: "Description of the item related to the 5G fixed service order."
    sql: ${TABLE}.item_desc ;;
  }

  dimension_group: jep_dt {
    type: time
    description: "Jeopardy date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.jep_dt ;;
  }

  dimension: jep_qty {
    type: number
    description: "Jeopardy quantity"
    sql: ${TABLE}.jep_qty ;;
  }

  dimension: job_fail_reas_cd {
    type: string
    description: "Code indicating the reason for a failed 5G service installation or repair attempt."
    sql: ${TABLE}.job_fail_reas_cd ;;
  }

  dimension: job_fail_reas_sub_cd {
    type: string
    description: "Job failure reason subsequent code. This is the code for the reason why the job failed."
    sql: ${TABLE}.job_fail_reas_sub_cd ;;
  }

  dimension_group: last_usage_dt {
    type: time
    description: "The date and time when the customer last used their 5G fixed wireless service. This information helps track customer usage patterns and identify potential service issues."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_usage_dt ;;
  }

  dimension: latency {
    type: string
    description: "The time delay experienced by the customer when starting and delivering streams."
    sql: ${TABLE}.latency ;;
  }

  dimension: launch_type_cd {
    type: string
    description: "Code representing the type of launch associated with the fixed 5G service."
    sql: ${TABLE}.launch_type_cd ;;
  }

  dimension: live_to_internet_hrs {
    type: string
    description: "Total number of hours the customer was live to the internet."
    sql: ${TABLE}.live_to_internet_hrs ;;
  }

  dimension: live_to_internet_min {
    type: number
    description: "Total minutes of live 5G service to internet"
    sql: ${TABLE}.live_to_internet_min ;;
  }

  dimension: location_code {
    type: string
    description: "Location code."
    sql: ${TABLE}.location_code ;;
  }

  dimension: locus_id {
    type: string
    description: "The unique identifier of the local circuit estimate (GTEDS)."
    sql: ${TABLE}.locus_id ;;
  }

  dimension: m_and_h {
    type: string
    description: "Indicates whether the customer's 5G fixed wireless service is associated with Mediacom and HughesNet, two other service providers. This information helps identify potential service overlaps and customer migration patterns."
    sql: ${TABLE}.m_and_h ;;
  }

  dimension: market_type {
    type: string
    description: "Type of market where the Fixed 5G service is located (e.g., urban, suburban, rural)."
    sql: ${TABLE}.market_type ;;
  }

  dimension: master_agent_desc {
    type: string
    description: "Description of the master agent involved in selling the Fixed 5G service."
    sql: ${TABLE}.master_agent_desc ;;
  }

  dimension: mini_wifi_extender {
    type: number
    description: "Indicates whether a mini Wi-Fi extender was used."
    sql: ${TABLE}.mini_wifi_extender ;;
  }

  dimension: mmwave_cband_chag_reas_desc {
    type: string
    description: "A detailed description of the reason for any changes made to the customer's mmWave or C-band frequency assignments. This helps track changes in network configurations and understand their reasoning."
    sql: ${TABLE}.mmwave_cband_chag_reas_desc ;;
  }

  dimension: mmwave_cband_chg_reas_cd {
    type: string
    description: "Code indicating the reason for the change in the mmWave or C-band frequency band during the installation process."
    sql: ${TABLE}.mmwave_cband_chg_reas_cd ;;
  }

  dimension: mmwave_cband_flag {
    type: string
    description: "Flag indicating whether the installation uses mmWave or C-band for 5G. If both are used, this might indicate a combination of technologies."
    sql: ${TABLE}.mmwave_cband_flag ;;
  }

  dimension: mmwave_cband_loc_cd {
    type: string
    description: "A code indicating whether the fixed 5G service is utilizing mmWave or C-band technology, signifying the type of radio frequency spectrum used for the connection."
    sql: ${TABLE}.mmwave_cband_loc_cd ;;
  }

  dimension: mmwave_cband_mdn {
    type: string
    description: "Unique 10 digit number to identify mobile phone customer"
    sql: ${TABLE}.mmwave_cband_mdn ;;
  }

  dimension: mmwave_cband_order_num {
    type: string
    description: "Order number associated with the mmWave and C-band components of the fixed 5G service."
    sql: ${TABLE}.mmwave_cband_order_num ;;
  }

  dimension: mmwave_cband_rep_id {
    type: string
    description: "Identification of the representative who reported on the device's mmWave and C-band capabilities"
    sql: ${TABLE}.mmwave_cband_rep_id ;;
  }

  dimension: mmwave_post_arfcn {
    type: string
    description: "The frequency assigned to the customer's mmWave service after any changes were made. This information helps track network configurations and potential changes."
    sql: ${TABLE}.mmwave_post_arfcn ;;
  }

  dimension: mmwave_pre_arfcn {
    type: string
    description: "The frequency assigned to the customer's mmWave (millimeter wave) service before any changes were made. This information helps track network configurations and potential changes."
    sql: ${TABLE}.mmwave_pre_arfcn ;;
  }

  dimension: mmwave_pre_rsrp {
    type: string
    description: "The pre-installation Received Signal Strength Indicator (RSSI) measurement for the mmWave frequency band, indicating the strength of the signal at the customer's location."
    sql: ${TABLE}.mmwave_pre_rsrp ;;
  }

  dimension: mmwave_pre_sinr {
    type: string
    description: "Signal-to-interference-and-noise ratio (SINR) value measured on the mmWave band before activation, providing information about network conditions."
    sql: ${TABLE}.mmwave_pre_sinr ;;
  }

  dimension: mount_type_desc {
    type: string
    description: "Description of the mount type used for the 5G fixed service installation."
    sql: ${TABLE}.mount_type_desc ;;
  }

  dimension: mtn {
    type: string
    description: "Mobile Telephone Number (MIN) is a 10-digit number that identifies the existing service provider an individual utilizes, not the individual customer. The MIN is not dialable and is not known by customers. The MIN is for internal use only. The MIN is used in programming the phone."
    sql: ${TABLE}.mtn ;;
  }

  dimension: mtn_activation_msg {
    type: string
    description: "Message generated by the MTN (Mobile Telecommunications Network) system during activation, providing information about the outcome of the activation process."
    sql: ${TABLE}.mtn_activation_msg ;;
  }

  dimension: mtn_activation_status {
    type: string
    description: "The activation status of the Mobile Termination Number (MTN) associated with the customer's 5G fixed wireless service. This indicates whether the MTN is active and ready for use."
    sql: ${TABLE}.mtn_activation_status ;;
  }

  dimension: mtn_new {
    type: string
    sql: ${TABLE}.mtn_new ;;
  }

  dimension: multi_sku_ind {
    type: string
    description: "Indicator flag indicating whether multiple Stock Keeping Units (SKUs) are associated with the fixed 5G service, highlighting the complexity of the service."
    sql: ${TABLE}.multi_sku_ind ;;
  }

  dimension: nasp_id {
    type: string
    description: "Unique identifier assigned to a customer by their National Account Sales Person (NASP)."
    sql: ${TABLE}.nasp_id ;;
  }

  dimension: nasp_nm {
    type: string
    description: "Name of the Network Access Service Provider (NASP) serving the fixed 5G service."
    sql: ${TABLE}.nasp_nm ;;
  }

  dimension: network_service {
    type: string
    description: "Specific network service provided to the customer."
    sql: ${TABLE}.network_service ;;
  }

  dimension: nsa_flag {
    type: string
    description: "Indicates whether the installation is using Non-Standalone (NSA) or Standalone (SA) 5G technology. NSA uses existing 4G infrastructure, while SA is a dedicated 5G network."
    sql: ${TABLE}.nsa_flag ;;
  }

  dimension: ntls_order_status_desc {
    type: string
    description: "Description of the order status within the Network Transport Layer Services (NTLS) system, providing information about the order processing."
    sql: ${TABLE}.ntls_order_status_desc ;;
  }

  dimension: ntwk_type {
    type: string
    description: "Type of network technology used for the 5G service (e.g., 5G NR, LTE)."
    sql: ${TABLE}.ntwk_type ;;
  }

  dimension_group: order_create_dt {
    type: time
    description: "Date when Order initiated"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_create_dt ;;
  }

  dimension: order_fulfilment {
    type: string
    description: "Describes if the order has been fulfilled or not."
    sql: ${TABLE}.order_fulfilment ;;
  }

  dimension: order_id {
    type: string
    description: "Unique identifier for the customer order."
    sql: ${TABLE}.order_id ;;
  }

  dimension: ordernumber {
    type: string
    description: "Order number. This is the unique identifier for the order."
    sql: ${TABLE}.ordernumber ;;
  }

  dimension: orig_fwa_ord_type {
    type: string
    description: "Original type of the fixed wireless access (FWA) order, indicating the initial order category before potential changes."
    sql: ${TABLE}.orig_fwa_ord_type ;;
  }

  dimension: orig_invc_num {
    type: string
    description: "The original invoice number associated with the installation."
    sql: ${TABLE}.orig_invc_num ;;
  }

  dimension: orig_sls_id {
    type: string
    description: "Identifier of the original sales representative who sold the fixed 5G service."
    sql: ${TABLE}.orig_sls_id ;;
  }

  dimension: orig_store_num {
    type: string
    description: "Original store number."
    sql: ${TABLE}.orig_store_num ;;
  }

  dimension: payment_status {
    type: string
    description: "The current status of the customer's payment for the Fixed 5G service, such as 'Paid', 'Overdue', or 'Pending'."
    sql: ${TABLE}.payment_status ;;
  }

  dimension: pending_sales_qty {
    type: number
    description: "Pending sales quantity"
    sql: ${TABLE}.pending_sales_qty ;;
  }

  dimension: pending_setup_qty {
    type: number
    description: "Pending quantity"
    sql: ${TABLE}.pending_setup_qty ;;
  }

  dimension: plan_change_ind {
    type: string
    description: "Indicator, typically a 'Y' or 'N', denoting whether the customer has changed their Fixed 5G service plan since account activation."
    sql: ${TABLE}.plan_change_ind ;;
  }

  dimension: pocapproval {
    type: string
    description: "Indicates whether the Proof of Concept (PoC) was approved."
    sql: ${TABLE}.pocapproval ;;
  }

  dimension_group: pocapproval_dt {
    type: time
    description: "PO approval date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.pocapproval_dt ;;
  }

  dimension: pos_rmk {
    type: string
    description: "Remark message if the customer exceeds qualification limit check on address for FWA. This is from POS remarks during the customer loop qualification action."
    sql: ${TABLE}.pos_rmk ;;
  }

  dimension: pplan_cd {
    type: string
    description: "Code representing the pricing plan associated with the fixed 5G service."
    sql: ${TABLE}.pplan_cd ;;
  }

  dimension: pplan_class_desc {
    type: string
    description: "A description of the customer's price plan, including the price, free minute allowances, data allowances, and any applicable service feature options (SFOs)."
    sql: ${TABLE}.pplan_class_desc ;;
  }

  dimension: pplan_ctgry_desc {
    type: string
    description: "Description of the customer's price plan category."
    sql: ${TABLE}.pplan_ctgry_desc ;;
  }

  dimension: pplan_desc {
    type: string
    description: "Description of the pricing plan associated with the fixed 5G service."
    sql: ${TABLE}.pplan_desc ;;
  }

  dimension: pplan_sub_type_desc {
    type: string
    description: "Description of the subtype of the customer's price plan"
    sql: ${TABLE}.pplan_sub_type_desc ;;
  }

  dimension: pplan_type_desc {
    type: string
    description: "Description of the customer's price plan type."
    sql: ${TABLE}.pplan_type_desc ;;
  }

  dimension: pre_check_status {
    type: string
    description: "The status of the pre-installation check. This involves evaluating the customer's location and equipment to ensure compatibility with 5G service."
    sql: ${TABLE}.pre_check_status ;;
  }

  dimension: pro_price_plan_change_fail {
    type: string
    description: "Indicates whether an attempted change in the pricing plan for the Fixed 5G service was unsuccessful, reflecting potential issues or errors."
    sql: ${TABLE}.pro_price_plan_change_fail ;;
  }

  dimension: pro_price_plan_change_start {
    type: string
    description: "Date indicating the starting point of a change in the pricing plan for the Fixed 5G service, reflective of adjustments in monthly fees."
    sql: ${TABLE}.pro_price_plan_change_start ;;
  }

  dimension: pro_price_plan_change_success {
    type: string
    description: "Flag indicating whether the change to the pricing plan for professional installations was successful. This might be relevant for customers who opted for a different plan during the setup process."
    sql: ${TABLE}.pro_price_plan_change_success ;;
  }

  dimension: recvr_latency {
    type: string
    description: "Latency experienced by the customer's receiver device, indicating the delay between data request and response from the network."
    sql: ${TABLE}.recvr_latency ;;
  }

  dimension: recvr_speed_text_ind {
    type: string
    description: "Flag indicating whether the receiver speed was tested and confirmed using a text message based method."
    sql: ${TABLE}.recvr_speed_text_ind ;;
  }

  dimension: rep_name {
    type: string
    description: "Name of the sales representative who sold the Fixed 5G service."
    sql: ${TABLE}.rep_name ;;
  }

  dimension: report_status {
    type: string
    description: "Order was successfully installed or cancelled"
    sql: ${TABLE}.report_status ;;
  }

  dimension: reposition_attempt {
    type: string
    description: "Number of attempts made to reposition the 5G equipment for improved signal strength."
    sql: ${TABLE}.reposition_attempt ;;
  }

  dimension: reposition_status {
    type: string
    description: "Status of the router repositioning process for the customer's 5G service. Possible values include 'Pending', 'Completed', 'Failed', and 'Not Applicable', indicating various stages of the repositioning process."
    sql: ${TABLE}.reposition_status ;;
  }

  dimension: router_latency_ms {
    type: string
    description: "Latency measurements in milliseconds associated with the 5G router."
    sql: ${TABLE}.router_latency_ms ;;
  }

  dimension_group: sales_dt {
    type: time
    description: "Date when the sale of the fixed 5G service occurred."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sales_dt ;;
  }

  dimension: sales_month {
    type: number
    description: "Month when sale is happen"
    sql: ${TABLE}.sales_month ;;
  }

  dimension: sales_qty {
    type: number
    description: "Sales quantity"
    sql: ${TABLE}.sales_qty ;;
  }

  dimension_group: sales_ts {
    type: time
    description: "Timestamp indicating when the sale of the fixed 5G service occurred."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.sales_ts ;;
  }

  dimension: sales_year {
    type: number
    description: "Year when sale is happen"
    sql: ${TABLE}.sales_year ;;
  }

  dimension_group: schedule_appt_dt {
    type: time
    description: "Schedule appointment date. This is the date when the appointment is scheduled."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.schedule_appt_dt ;;
  }

  dimension: schedule_appt_time {
    type: string
    description: "The time at which the appointment was scheduled."
    sql: ${TABLE}.schedule_appt_time ;;
  }

  dimension: segment {
    type: string
    description: "Customer segment - Consumer, Corporate, Business"
    sql: ${TABLE}.segment ;;
  }

  dimension_group: self_install_dt {
    type: time
    description: "Duration of time taken for self-installation."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.self_install_dt ;;
  }

  dimension: self_no_of_days {
    type: number
    description: "Number of days the service is self marked"
    sql: ${TABLE}.self_no_of_days ;;
  }

  dimension_group: self_pair_receiver_complete_ts {
    type: time
    description: "Timestamp when self pair receiver is completed"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.self_pair_receiver_complete_ts ;;
  }

  dimension_group: self_pair_receiver_start_ts {
    type: time
    description: "Timestamp indicating when the self-pairing receiver started"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.self_pair_receiver_start_ts ;;
  }

  dimension: serial_number {
    type: string
    description: "The unique serial number of the device."
    sql: ${TABLE}.serial_number ;;
  }

  dimension: setup_comp_client {
    type: string
    description: "Indicates whether the customer successfully completed the setup process for the Fixed 5G service, reflecting customer self-sufficiency."
    sql: ${TABLE}.setup_comp_client ;;
  }

  dimension: setup_reas_desc {
    type: string
    description: "Description of the reason for the specific setup configuration of the fixed 5G service."
    sql: ${TABLE}.setup_reas_desc ;;
  }

  dimension_group: ship_dt {
    type: time
    description: "Date when the device was shipped"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ship_dt ;;
  }

  dimension: shipment_status {
    type: string
    description: "Status of the shipment for the customer's fixed 5G equipment, providing information about the delivery process."
    sql: ${TABLE}.shipment_status ;;
  }

  dimension: signal_strength {
    type: string
    description: "Strength of the signal being received by the device"
    sql: ${TABLE}.signal_strength ;;
  }

  dimension: sim_act_status_ind {
    type: string
    description: "Indicator flag indicating the activation status of the SIM card associated with the fixed 5G service, highlighting the SIM card's readiness for service."
    sql: ${TABLE}.sim_act_status_ind ;;
  }

  dimension: sim_activated_ind {
    type: string
    description: "Indicates whether the SIM card is activated."
    sql: ${TABLE}.sim_activated_ind ;;
  }

  dimension_group: sim_activated_ts {
    type: time
    description: "Timestamp when SIM Subscriber Identity Module got activated."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.sim_activated_ts ;;
  }

  dimension: simota_comp {
    type: string
    description: "Indicates whether the customer's SIM card was successfully provisioned for use with the 5G fixed wireless service. This is a critical step in service activation."
    sql: ${TABLE}.simota_comp ;;
  }

  dimension: site_mkt_nm {
    type: string
    description: "Marketing name for the site associated with the fixed 5G service, providing information about the service location."
    sql: ${TABLE}.site_mkt_nm ;;
  }

  dimension: sku_id {
    type: string
    description: "Unique identifier for the 5G device or equipment used in the installation or repair."
    sql: ${TABLE}.sku_id ;;
  }

  dimension: sls_id {
    type: string
    description: "The Sales Identifier (SLS) associated with the fixed 5G service, reflecting the sales channel or agent responsible for the initial service activation."
    sql: ${TABLE}.sls_id ;;
  }

  dimension: sls_outlet_id {
    type: string
    description: "Unique identifier for the sales outlet where the service was purchased."
    sql: ${TABLE}.sls_outlet_id ;;
  }

  dimension: sls_outlet_nm {
    type: string
    description: "Name of the sync loss seconds outlet."
    sql: ${TABLE}.sls_outlet_nm ;;
  }

  dimension: sp_acct_nm {
    type: string
    description: "Systems \u0026 Programming account name."
    sql: ${TABLE}.sp_acct_nm ;;
  }

  dimension: sso_id {
    type: string
    description: "The Single Sign-On (SSO) identifier for the fixed 5G service, providing a unique and secure way to access and authenticate user accounts."
    sql: ${TABLE}.sso_id ;;
  }

  dimension: status {
    type: string
    description: "Status of the installation - close, pending sale etc"
    sql: ${TABLE}.status ;;
  }

  dimension: store_addr_line1 {
    type: string
    description: "The first line of the store address."
    sql: ${TABLE}.store_addr_line1 ;;
  }

  dimension: store_addr_line2 {
    type: string
    description: "The second line of the store address."
    sql: ${TABLE}.store_addr_line2 ;;
  }

  dimension: store_city {
    type: string
    description: "The city in which the store is located."
    sql: ${TABLE}.store_city ;;
  }

  dimension: store_state {
    type: string
    description: "Store state code."
    sql: ${TABLE}.store_state ;;
  }

  dimension: store_zipcode {
    type: string
    description: "Zip code of the retail store where the 5G device or equipment was purchased or serviced."
    sql: ${TABLE}.store_zipcode ;;
  }

  dimension: stp_chnl_id {
    type: string
    description: "A unique identifier for the specific sales channel through which the customer purchased their 5G fixed wireless service. This information helps track customer acquisition channels and marketing campaign effectiveness."
    sql: ${TABLE}.stp_chnl_id ;;
  }

  dimension_group: stp_dt {
    type: time
    description: "Duration Time in the format of date time when Self install To Professional install took place."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.stp_dt ;;
  }

  dimension: stp_reas_desc {
    type: string
    description: "Description of the reason for stopping the fixed 5G service installation."
    sql: ${TABLE}.stp_reas_desc ;;
  }

  dimension: stp_resolution_cd {
    type: string
    description: "Code indicating the resolution of Self install To Professional install."
    sql: ${TABLE}.stp_resolution_cd ;;
  }

  dimension: stp_resolution_desc {
    type: string
    description: "A description of the self-install to professional install status of the customer's order."
    sql: ${TABLE}.stp_resolution_desc ;;
  }

  dimension: sub_chnl_nm {
    type: string
    description: "Name of the sub-channel through which the fixed 5G service was sold."
    sql: ${TABLE}.sub_chnl_nm ;;
  }

  dimension: successful_install_qty {
    type: number
    description: "Successful install quantity"
    sql: ${TABLE}.successful_install_qty ;;
  }

  dimension: suspend_ind {
    type: string
    description: "Flag indicating whether the 5G service is currently suspended. Reasons for suspension could include non-payment or technical issues."
    sql: ${TABLE}.suspend_ind ;;
  }

  dimension: svc_addr {
    type: string
    description: "Address where the fixed 5G service is provided."
    sql: ${TABLE}.svc_addr ;;
  }

  dimension: svc_city_nm {
    type: string
    description: "The name of the city where the fixed 5G service is located, based on the customer s service address."
    sql: ${TABLE}.svc_city_nm ;;
  }

  dimension: svc_desc {
    type: string
    description: "A brief description of the specific 5G fixed wireless service plan or package purchased by the customer, including details like data limits, speeds, and features."
    sql: ${TABLE}.svc_desc ;;
  }

  dimension: svc_id {
    type: string
    description: "Service ID associated with the device"
    sql: ${TABLE}.svc_id ;;
  }

  dimension: svc_state_cd {
    type: string
    description: "A code representing the state where the fixed 5G service is located, based on the customer s service address."
    sql: ${TABLE}.svc_state_cd ;;
  }

  dimension: svc_zip_cd {
    type: string
    description: "The zip code associated with the service address for the fixed 5G service."
    sql: ${TABLE}.svc_zip_cd ;;
  }

  dimension: tandc_accpted_status {
    type: string
    description: "Indicates whether the customer has accepted the terms and conditions of the service agreement."
    sql: ${TABLE}.tandc_accpted_status ;;
  }

  dimension_group: tech_arrival_ts {
    type: time
    description: "Timestamp of the technician's arrival."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.tech_arrival_ts ;;
  }

  dimension: tech_comment_desc {
    type: string
    description: "Technical comment description"
    sql: ${TABLE}.tech_comment_desc ;;
  }

  dimension_group: tech_job_compeletion_ts {
    type: time
    description: "The timestamp of the job completion."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.tech_job_compeletion_ts ;;
  }

  dimension_group: tech_job_fail_ts {
    type: time
    description: "Timestamp indicating when a technical job related to a device failure occurred"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.tech_job_fail_ts ;;
  }

  dimension: tech_job_status_cd {
    type: string
    description: "Code representing the status of the technical job associated with the service installation."
    sql: ${TABLE}.tech_job_status_cd ;;
  }

  dimension_group: tech_speed_test_ts {
    type: time
    description: "Timestamp of the technical speed test."
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.tech_speed_test_ts ;;
  }

  dimension: tf_nr_upgrade {
    type: string
    description: "Indication of whether a TF NR upgrade was performed."
    sql: ${TABLE}.tf_nr_upgrade ;;
  }

  dimension: tot_extender {
    type: number
    description: "Total number of extenders used in the fixed 5G service installation."
    sql: ${TABLE}.tot_extender ;;
  }

  dimension: tot_self_pair_receiver_ts_hrs {
    type: string
    description: "The total self pair receiver temporarily suspended hours."
    sql: ${TABLE}.tot_self_pair_receiver_ts_hrs ;;
  }

  dimension: tot_self_pair_receiver_ts_min {
    type: string
    description: "Total time spent on self-pair receiver in minutes."
    sql: ${TABLE}.tot_self_pair_receiver_ts_min ;;
  }

  dimension: tot_setup_tm_hrs {
    type: string
    description: "Total time spent in hours for the setup of the fixed 5G service."
    sql: ${TABLE}.tot_setup_tm_hrs ;;
  }

  dimension: tot_setup_tm_min {
    type: number
    description: "Total time spent in minutes for the setup of the fixed 5G service."
    sql: ${TABLE}.tot_setup_tm_min ;;
  }

  dimension: tracking_num {
    type: string
    description: "Tracking number associated with the customer's order."
    sql: ${TABLE}.tracking_num ;;
  }

  dimension: upload_speed_test {
    type: string
    description: "Result of the upload speed test."
    sql: ${TABLE}.upload_speed_test ;;
  }

  dimension: usage_flag {
    type: string
    description: "Flag indicating whether the fixed 5G service is currently in use, providing insights into customer activity and utilization."
    sql: ${TABLE}.usage_flag ;;
  }

  dimension: vertical {
    type: string
    description: "Vertical market segment."
    sql: ${TABLE}.vertical ;;
  }

  dimension: vpm_home_tel_num {
    type: string
    description: "The customer's home telephone number, as recorded in the Verizon Partner Management (VPM) system. This information helps contact the customer for service updates or troubleshooting."
    sql: ${TABLE}.vpm_home_tel_num ;;
  }

  dimension: vpm_id {
    type: string
    description: "Unique identifier of Vendor Portable Mobile."
    sql: ${TABLE}.vpm_id ;;
  }

  dimension: vz2_segmt_cd {
    type: string
    description: "Verizon segmentation code used to categorize the 5G fixed service customer."
    sql: ${TABLE}.vz2_segmt_cd ;;
  }

  dimension: vz2_segmt_ctgry_desc {
    type: string
    description: "Category of the customer (CONSUMER or BUSINESS or CORPORATE)"
    sql: ${TABLE}.vz2_segmt_ctgry_desc ;;
  }

  dimension: vz2_segmt_desc {
    type: string
    description: "Description of the customer segment in the Verizon 2.0 segmentation framework."
    sql: ${TABLE}.vz2_segmt_desc ;;
  }

  dimension: vzw_imsi {
    type: string
    description: "The Verizon Wireless Integrated Mobile Subscriber Identity (IMSI) of the device used to connect to the 5G network."
    sql: ${TABLE}.vzw_imsi ;;
  }

  dimension: wifi_extender {
    type: number
    description: "A flag indicating whether the customer is using a wifi extender."
    sql: ${TABLE}.wifi_extender ;;
  }

  dimension: willow_pro_ind {
    type: string
    description: "Indicates if the Fixed 5G service is associated with a Willow Pro account."
    sql: ${TABLE}.willow_pro_ind ;;
  }

  dimension: willow_pro_refund_ind {
    type: string
    description: "Refund indicator for willow"
    sql: ${TABLE}.willow_pro_refund_ind ;;
  }

  dimension: willow_pro_svc_id {
    type: string
    description: "Unique identifier for the Willow Pro service associated with the Fixed 5G service."
    sql: ${TABLE}.willow_pro_svc_id ;;
  }
  measure: count {
    type: count
    drill_fields: [rep_name]
  }
}
