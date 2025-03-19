# The name of this view in Looker is "Device Dp Map"
view: device_dp_map {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `verizon_autobi.device_dp_map` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Band 1" in Explore.

  dimension: band_1 {
    type: string
    description: "Indicates whether the device supports the specified cellular band frequency."
    sql: ${TABLE}.band_1 ;;
  }

  dimension: band_13 {
    type: string
    description: "Indicates whether the device supports Band 13."
    sql: ${TABLE}.band_13 ;;
  }

  dimension: band_2 {
    type: string
    description: "Indicates whether device supports Band 2."
    sql: ${TABLE}.band_2 ;;
  }

  dimension: band_3 {
    type: string
    description: "Indicates whether the device supports the specified cellular band frequency."
    sql: ${TABLE}.band_3 ;;
  }

  dimension: band_4 {
    type: string
    description: "Indicates whether device supports Band 4."
    sql: ${TABLE}.band_4 ;;
  }

  dimension: band_40 {
    type: string
    description: "This column indicates whether the device supports Band 40, which is a specific LTE frequency band used for improved coverage and capacity."
    sql: ${TABLE}.band_40 ;;
  }

  dimension: band_5 {
    type: string
    description: "Indicates whether device supports Band 5."
    sql: ${TABLE}.band_5 ;;
  }

  dimension: band_66 {
    type: string
    description: "This column specifies the support for Band 66 on the device."
    sql: ${TABLE}.band_66 ;;
  }

  dimension: band_7 {
    type: string
    description: "Indicates whether the device supports the specified cellular band frequency."
    sql: ${TABLE}.band_7 ;;
  }

  dimension: bba {
    type: string
    description: "Indicates whether the device supports Broadband access."
    sql: ${TABLE}.bba ;;
  }

  dimension: bba_connect {
    type: string
    description: "Indicates whether the device supports Broadband access."
    sql: ${TABLE}.bba_connect ;;
  }

  dimension: bi_back_camera_ind {
    type: string
    sql: ${TABLE}.BI_BACK_CAMERA_IND ;;
  }

  dimension: bi_back_camera_res_desc {
    type: string
    sql: ${TABLE}.BI_BACK_CAMERA_RES_DESC ;;
  }

  dimension: bi_brand_desc {
    type: string
    sql: ${TABLE}.BI_BRAND_DESC ;;
  }

  dimension: bi_bua_ind {
    type: string
    sql: ${TABLE}.BI_BUA_IND ;;
  }

  dimension: bi_eqp_cd {
    type: string
    sql: ${TABLE}.BI_EQP_CD ;;
  }

  dimension: bi_eqp_class_cd {
    type: string
    sql: ${TABLE}.BI_EQP_CLASS_CD ;;
  }

  dimension: bi_eqp_class_desc {
    type: string
    sql: ${TABLE}.BI_EQP_CLASS_DESC ;;
  }

  dimension: bi_eqp_class_desc_abbrv {
    type: string
    sql: ${TABLE}.BI_EQP_CLASS_DESC_ABBRV ;;
  }

  dimension: bi_eqp_color {
    type: string
    sql: ${TABLE}.BI_EQP_COLOR ;;
  }

  dimension: bi_eqp_ctgry_cd {
    type: string
    sql: ${TABLE}.BI_EQP_CTGRY_CD ;;
  }

  dimension: bi_eqp_ctgry_desc {
    type: string
    sql: ${TABLE}.BI_EQP_CTGRY_DESC ;;
  }

  dimension: bi_eqp_ctgry_desc_abbrv {
    type: string
    sql: ${TABLE}.BI_EQP_CTGRY_DESC_ABBRV ;;
  }

  dimension: bi_eqp_desc {
    type: string
    sql: ${TABLE}.BI_EQP_DESC ;;
  }

  dimension: bi_eqp_desc_abbrv {
    type: string
    sql: ${TABLE}.BI_EQP_DESC_ABBRV ;;
  }

  dimension: bi_eqp_grp_cd {
    type: string
    sql: ${TABLE}.BI_EQP_GRP_CD ;;
  }

  dimension: bi_eqp_grp_desc {
    type: string
    sql: ${TABLE}.BI_EQP_GRP_DESC ;;
  }

  dimension: bi_eqp_grp_desc_abbrv {
    type: string
    sql: ${TABLE}.BI_EQP_GRP_DESC_ABBRV ;;
  }

  dimension: bi_eqp_model_cd {
    type: string
    sql: ${TABLE}.BI_EQP_MODEL_CD ;;
  }

  dimension: bi_eqp_prod_nm_abbrv {
    type: string
    sql: ${TABLE}.BI_EQP_PROD_NM_ABBRV ;;
  }

  dimension: bi_eqp_screen_size {
    type: string
    sql: ${TABLE}.BI_EQP_SCREEN_SIZE ;;
  }

  dimension: bi_eqp_search_eng {
    type: string
    sql: ${TABLE}.BI_EQP_SEARCH_ENG ;;
  }

  dimension: bi_eqp_type_cd {
    type: string
    sql: ${TABLE}.BI_EQP_TYPE_CD ;;
  }

  dimension: bi_eqp_type_desc {
    type: string
    sql: ${TABLE}.BI_EQP_TYPE_DESC ;;
  }

  dimension: bi_eqp_type_desc_abbrv {
    type: string
    sql: ${TABLE}.BI_EQP_TYPE_DESC_ABBRV ;;
  }

  dimension: bi_front_camera_ind {
    type: string
    sql: ${TABLE}.BI_FRONT_CAMERA_IND ;;
  }

  dimension: bi_front_camera_res_desc {
    type: string
    sql: ${TABLE}.BI_FRONT_CAMERA_RES_DESC ;;
  }

  dimension: bi_global_ind {
    type: string
    sql: ${TABLE}.BI_GLOBAL_IND ;;
  }

  dimension: bi_hd_voice_ind {
    type: string
    sql: ${TABLE}.BI_HD_VOICE_IND ;;
  }

  dimension: bi_hotspot_ind {
    type: string
    sql: ${TABLE}.BI_HOTSPOT_IND ;;
  }

  dimension: bi_internal_memory {
    type: string
    sql: ${TABLE}.BI_INTERNAL_MEMORY ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: bi_launch_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BI_LAUNCH_DT ;;
  }

  dimension: bi_mfg_nm {
    type: string
    sql: ${TABLE}.BI_MFG_NM ;;
  }

  dimension: bi_model_nm {
    type: string
    sql: ${TABLE}.BI_MODEL_NM ;;
  }

  dimension: bi_model_nm_abbrv {
    type: string
    sql: ${TABLE}.BI_MODEL_NM_ABBRV ;;
  }

  dimension: bi_nfc_capable_ind {
    type: string
    sql: ${TABLE}.BI_NFC_CAPABLE_IND ;;
  }

  dimension: bi_nfc_comp_ind {
    type: string
    sql: ${TABLE}.BI_NFC_COMP_IND ;;
  }

  dimension: bi_nfc_wallet_ind {
    type: string
    sql: ${TABLE}.BI_NFC_WALLET_IND ;;
  }

  dimension: bi_odi_ind {
    type: string
    sql: ${TABLE}.BI_ODI_IND ;;
  }

  dimension: bi_os_type_desc {
    type: string
    sql: ${TABLE}.BI_OS_TYPE_DESC ;;
  }

  dimension: bi_ota_ind {
    type: string
    sql: ${TABLE}.BI_OTA_IND ;;
  }

  dimension: bi_processor_type_desc {
    type: string
    sql: ${TABLE}.BI_PROCESSOR_TYPE_DESC ;;
  }

  dimension: bi_processor_variant_desc {
    type: string
    sql: ${TABLE}.BI_PROCESSOR_VARIANT_DESC ;;
  }

  dimension: bi_prod_nm_rpt_key {
    type: string
    sql: ${TABLE}.BI_PROD_NM_RPT_KEY ;;
  }

  dimension: bi_ptt_ind {
    type: string
    sql: ${TABLE}.BI_PTT_IND ;;
  }

  dimension: bi_qwerty_ind {
    type: string
    sql: ${TABLE}.BI_QWERTY_IND ;;
  }

  dimension: bi_reva_ind {
    type: string
    sql: ${TABLE}.BI_REVA_IND ;;
  }

  dimension: bi_su_enabled_ind {
    type: string
    sql: ${TABLE}.BI_SU_ENABLED_IND ;;
  }

  dimension: bi_tec_ind {
    type: string
    sql: ${TABLE}.BI_TEC_IND ;;
  }

  dimension: bi_tech_type_desc {
    type: string
    sql: ${TABLE}.BI_TECH_TYPE_DESC ;;
  }

  dimension: bi_tier_desc {
    type: string
    sql: ${TABLE}.BI_TIER_DESC ;;
  }

  dimension: bi_vmail_ind {
    type: string
    sql: ${TABLE}.BI_VMAIL_IND ;;
  }

  dimension: bi_wifi_ind {
    type: string
    sql: ${TABLE}.BI_WIFI_IND ;;
  }

  dimension: brew {
    type: string
    description: "This column indicates whether the device supports the Binary Runtime Environment for Wireless (BREW), which is a platform for developing and delivering mobile applications."
    sql: ${TABLE}.brew ;;
  }

  dimension: bua {
    type: string
    description: "Indicate if Bluetooth USB Adapter is present."
    sql: ${TABLE}.bua ;;
  }

  dimension: car_agg_bands_13_2 {
    type: string
    description: "Indicates if the device supports carrier aggregation for bands 13 and 2."
    sql: ${TABLE}.car_agg_bands_13_2 ;;
  }

  dimension: car_agg_bands_13_2_2 {
    type: string
    description: "Specifies the carrier aggregation bands used by the device for LTE connectivity, including bands 13, 2, and 2."
    sql: ${TABLE}.car_agg_bands_13_2_2 ;;
  }

  dimension: car_agg_bands_13_4 {
    type: string
    description: "Indicates if the device supports carrier aggregation for bands 13 and 4."
    sql: ${TABLE}.car_agg_bands_13_4 ;;
  }

  dimension: car_agg_bands_13_4_2 {
    type: string
    description: "This column contains information about the device's capability to aggregate cellular bands 13, 4, and 2."
    sql: ${TABLE}.car_agg_bands_13_4_2 ;;
  }

  dimension: car_agg_bands_13_4_4 {
    type: string
    description: "This column contains information about the device's capability to aggregate cellular bands 13, 4, and 4."
    sql: ${TABLE}.car_agg_bands_13_4_4 ;;
  }

  dimension: car_agg_bands_2_2 {
    type: string
    description: "Indicates if the device supports carrier aggregation for bands 2 and 2."
    sql: ${TABLE}.car_agg_bands_2_2 ;;
  }

  dimension: car_agg_bands_2_5 {
    type: string
    description: "Indicates if the device supports carrier aggregation for bands 2 and 5."
    sql: ${TABLE}.car_agg_bands_2_5 ;;
  }

  dimension: car_agg_bands_4_2 {
    type: string
    description: "This column contains information about the device's capability to aggregate cellular bands 4 and 2."
    sql: ${TABLE}.car_agg_bands_4_2 ;;
  }

  dimension: car_agg_bands_4_4 {
    type: string
    description: "This column contains information about the device's capability to aggregate cellular bands 4 and 4."
    sql: ${TABLE}.car_agg_bands_4_4 ;;
  }

  dimension: car_agg_bands_4_5 {
    type: string
    description: "This column contains information about the device's capability to aggregate cellular bands 4 and 5."
    sql: ${TABLE}.car_agg_bands_4_5 ;;
  }

  dimension: car_agg_bands_5_2_2 {
    type: string
    description: "Indicates if the device supports carrier aggregation for bands 5, 2, and 2."
    sql: ${TABLE}.car_agg_bands_5_2_2 ;;
  }

  dimension: car_agg_bands_5_4_2 {
    type: string
    description: "This column contains information about the device's capability to aggregate cellular bands 5, 4, and 2."
    sql: ${TABLE}.car_agg_bands_5_4_2 ;;
  }

  dimension: car_agg_bands_5_4_4 {
    type: string
    description: "This column contains information about the device's capability to aggregate cellular bands 5, 4, and 4."
    sql: ${TABLE}.car_agg_bands_5_4_4 ;;
  }

  dimension: car_agg_bandwidth {
    type: number
    description: "The maximum bandwidth that the device can achieve using carrier aggregation."
    sql: ${TABLE}.car_agg_bandwidth ;;
  }

  dimension: category {
    type: string
    description: "This column specifies the category of the device, such as smartphone, tablet, or feature phone."
    sql: ${TABLE}.category ;;
  }

  dimension: cdma_less {
    type: string
    description: "Indicates whether the device is a CDMA-less device, meaning it does not support CDMA technology."
    sql: ${TABLE}.cdma_less ;;
  }

  dimension: cemail {
    type: string
    description: "Indicates if the device supports corporate email functionality."
    sql: ${TABLE}.cemail ;;
  }

  dimension: cevdo {
    type: string
    description: "Indicates if device supports Continuous Evolution - Data Only (CEVD-DO)."
    sql: ${TABLE}.cevdo ;;
  }

  dimension: chap_c {
    type: string
    description: "This column specifies the Challenge Handshake Authentication Protocol CHAP challenge for the device."
    sql: ${TABLE}.chap_c ;;
  }

  dimension: chap_p {
    type: string
    description: "Indicates whether the device supports Challenge Handshake Authentication Protocol (CHAP) for Provider (router)."
    sql: ${TABLE}.chap_p ;;
  }

  dimension: chap_pc {
    type: string
    description: "Indicates whether the device supports Challenge Handshake Authentication Protocol (CHAP) for Personalization and Customization Agent (PC)."
    sql: ${TABLE}.chap_pc ;;
  }

  dimension: corp_prod_grp {
    type: string
    description: "Corporate product group responsible for the device."
    sql: ${TABLE}.corp_prod_grp ;;
  }

  dimension: dacc_device_ctgry {
    type: string
    description: "Device Attribute Composite Code (DACC) is a code that describes the device's features and capabilities."
    sql: ${TABLE}.dacc_device_ctgry ;;
  }

  dimension: dashboard {
    type: string
    description: "Indicates whether the device supports the Dashboard application."
    sql: ${TABLE}.dashboard ;;
  }

  dimension: data_tier {
    type: string
    description: "Represents the tier level of data services available on a particular device."
    sql: ${TABLE}.data_tier ;;
  }

  dimension: data_tier_fin {
    type: string
    description: "The tier assigned to the customer's device. Values include Basic, Smartphone, Internet, Other Services, Connected Devices and Unknown"
    sql: ${TABLE}.data_tier_fin ;;
  }

  dimension: device_brand_nm {
    type: string
    description: "The name of the device brand."
    sql: ${TABLE}.device_brand_nm ;;
  }

  dimension: device_generation {
    type: string
    description: "Generation of the device."
    sql: ${TABLE}.device_generation ;;
  }

  dimension: device_grouping {
    type: string
    description: "Device type or category, such as smartphone, tablet, or other."
    sql: ${TABLE}.device_grouping ;;
  }

  dimension: device_tier {
    type: string
    description: "This column represents the device tier, which can be used to categorize devices based on their performance and features."
    sql: ${TABLE}.device_tier ;;
  }

  dimension: device_tier_rollup {
    type: string
    description: "Rollup of device tier."
    sql: ${TABLE}.device_tier_rollup ;;
  }

  dimension: dl_comp {
    type: string
    description: "Indicates the device's capability to handle data compression, which can optimize data usage."
    sql: ${TABLE}.dl_comp ;;
  }

  dimension: dss_5_g_ind {
    type: string
    sql: ${TABLE}.DSS_5G_IND ;;
  }

  dimension: dual_connectivity {
    type: string
    description: "Indicates whether the device supports dual connectivity, allowing for simultaneous connections to multiple cellular networks."
    sql: ${TABLE}.dual_connectivity ;;
  }

  dimension: embms {
    type: string
    description: "Indicates whether the device supports Enhanced Multimedia Broadcast Service (eMBMS)."
    sql: ${TABLE}.embms ;;
  }

  dimension: enhanced_tti_b {
    type: string
    description: "Indicates if the device supports Enhanced Transmission Time Interval (eTTI), a feature that improves data transmission efficiency by optimizing time intervals between data packets."
    sql: ${TABLE}.enhanced_tti_b ;;
  }

  dimension: epdcch {
    type: string
    description: "Represents the device's support for E-PDCCH (Enhanced Physical Downlink Control Channel), a feature that improves downlink data transmission efficiency."
    sql: ${TABLE}.epdcch ;;
  }

  dimension: esim_only_ind {
    type: string
    sql: ${TABLE}.ESIM_ONLY_IND ;;
  }

  dimension: euicc_cpb_ind {
    type: string
    sql: ${TABLE}.EUICC_CPB_IND ;;
  }

  dimension: evdo {
    type: string
    description: "Boolean flag indicating whether the device supports Evolution Data Optimized (EVDO) technology."
    sql: ${TABLE}.evdo ;;
  }

  dimension: feicic {
    type: string
    description: "Unique identifier for the device, typically assigned by the manufacturer or carrier. This code might be used for internal tracking or external device identification."
    sql: ${TABLE}.feicic ;;
  }

  dimension: ffm {
    type: string
    description: "Indicates whether the device is managed by Field Force Manager (FFM)."
    sql: ${TABLE}.ffm ;;
  }

  dimension: fin_prod_grp {
    type: string
    description: "Indicates the device's Field Inspection Notice (FIN) product group."
    sql: ${TABLE}.fin_prod_grp ;;
  }

  dimension: fin_prod_rollup {
    type: string
    description: "Rollup of the Field Inspection Notice (FIN) product status."
    sql: ${TABLE}.fin_prod_rollup ;;
  }

  dimension: global {
    type: string
    description: "Indicates whether the device supports global roaming capabilities."
    sql: ${TABLE}.global ;;
  }

  dimension: hd_voice {
    type: string
    description: "Indicates whether the device supports High Definition (HD) voice."
    sql: ${TABLE}.hd_voice ;;
  }

  dimension: hotspot {
    type: string
    description: "Indicates whether the device supports hotspot functionality."
    sql: ${TABLE}.hotspot ;;
  }

  dimension: htmlbrow {
    type: string
    description: "Indicates whether the device supports HTML browsing."
    sql: ${TABLE}.htmlbrow ;;
  }

  dimension_group: insert_dt {
    type: time
    description: "Date and time when the record was inserted into the table."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.insert_dt ;;
  }

  dimension: iot_device_type_ind {
    type: string
    sql: ${TABLE}.IOT_DEVICE_TYPE_IND ;;
  }

  dimension_group: last_upd_dt {
    type: time
    description: "The date and time when the device information was last updated."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upd_dt ;;
  }

  dimension: lte_u {
    type: string
    description: "Indicates whether the device supports LTE technology, used for high-speed data connectivity."
    sql: ${TABLE}.lte_u ;;
  }

  dimension: mdnless_device_ind {
    type: string
    sql: ${TABLE}.MDNLESS_DEVICE_IND ;;
  }

  dimension: mdnless_sim_ind {
    type: string
    sql: ${TABLE}.MDNLESS_SIM_IND ;;
  }

  dimension: mediacenter {
    type: string
    description: "Indicates whether the device has Media Center capabilities."
    sql: ${TABLE}.mediacenter ;;
  }

  dimension: mfg_nm {
    type: string
    description: "Name of the device manufacturer."
    sql: ${TABLE}.mfg_nm ;;
  }

  dimension: mms {
    type: string
    description: "Boolean flag indicating whether the device supports Multimedia Messaging Service (MMS)."
    sql: ${TABLE}.mms ;;
  }

  dimension: mobtv {
    type: string
    description: "Indicates whether the device supports mobile TV."
    sql: ${TABLE}.mobtv ;;
  }

  dimension: model_alias {
    type: string
    description: "This column provides an alternative or alias name for the device model."
    sql: ${TABLE}.model_alias ;;
  }

  dimension: music {
    type: string
    description: "Indicates whether the device supports music streaming."
    sql: ${TABLE}.music ;;
  }

  dimension: mweb {
    type: string
    description: "Represents the device's capability to access and use mobile web services, including web browsing, online applications, and mobile content access."
    sql: ${TABLE}.mweb ;;
  }

  dimension: naics {
    type: string
    description: "The North American Industry Classification System (NAICS) code associated with the device, identifying the industry or sector where the device is typically used."
    sql: ${TABLE}.naics ;;
  }

  dimension: network_lock_support {
    type: string
    sql: ${TABLE}.NETWORK_LOCK_SUPPORT ;;
  }

  dimension: nr_5_g_ind {
    type: string
    sql: ${TABLE}.NR_5G_IND ;;
  }

  dimension: ntlacc {
    type: string
    description: "Indicates whether the device supports New England Telephone and Telegraph Co. (NET) access."
    sql: ${TABLE}.ntlacc ;;
  }

  dimension: od_prd_type_desc {
    type: string
    sql: ${TABLE}.OD_PRD_TYPE_DESC ;;
  }

  dimension: odi_ind {
    type: string
    description: "This column indicates whether the device is part of the Open Development Initiative (ODI) program."
    sql: ${TABLE}.odi_ind ;;
  }

  dimension: odi_tier {
    type: string
    description: "This column indicates the Open Development Initiative (ODI) tier of the device, which determines the level of support and integration with Verizon's network."
    sql: ${TABLE}.odi_tier ;;
  }

  dimension: os {
    type: string
    description: "Operating system of the device, such as Android, iOS, or Windows."
    sql: ${TABLE}.os ;;
  }

  dimension: os_type_fin {
    type: string
    description: "Operating system type of the device, with detailed specification."
    sql: ${TABLE}.os_type_fin ;;
  }

  dimension: ota {
    type: string
    description: "Indicates if the device supports over-the-air (OTA) updates for software and firmware."
    sql: ${TABLE}.ota ;;
  }

  dimension: prefd_sim {
    type: string
    sql: ${TABLE}.PREFD_SIM ;;
  }

  dimension: prefd_sof_sim {
    type: string
    sql: ${TABLE}.PREFD_SOF_SIM ;;
  }

  dimension: prod_nm {
    type: string
    description: "This column contains the product name or model number of the device."
    sql: ${TABLE}.prod_nm ;;
  }

  dimension: ptt {
    type: string
    description: "This column specifies the Push to Talk PTT capability of the device."
    sql: ${TABLE}.ptt ;;
  }

  dimension: ptt_a {
    type: string
    description: "Boolean flag indicating whether the device supports Push to Talk (PTT) functionality."
    sql: ${TABLE}.ptt_a ;;
  }

  dimension: querty {
    type: string
    description: "Indicates whether the device has a querty keyboard."
    sql: ${TABLE}.querty ;;
  }

  dimension: rcs_device_conf {
    type: string
    description: "Configuration details related to Rich Communication Services (RCS) on the device, such as enabled features and settings."
    sql: ${TABLE}.rcs_device_conf ;;
  }

  dimension: rcs_enriched_calling {
    type: string
    description: "Indicates whether the device supports RCS enriched calling features. This value is typically a boolean (true/false) or an enumerated type representing different levels of RCS support."
    sql: ${TABLE}.rcs_enriched_calling ;;
  }

  dimension: rcs_file_transfer {
    type: string
    description: "Indicates if the device supports RCS (Rich Communication Services) file transfer, allowing for the sending and receiving of larger files through text messages."
    sql: ${TABLE}.rcs_file_transfer ;;
  }

  dimension: rcs_msg {
    type: string
    description: "Data related to Rich Communication Services (RCS) messages sent or received on the device."
    sql: ${TABLE}.rcs_msg ;;
  }

  dimension: rcs_msg_hist {
    type: string
    description: "Historical data related to Rich Communication Services (RCS) message interactions on the device."
    sql: ${TABLE}.rcs_msg_hist ;;
  }

  dimension: rcs_ott_multi_device {
    type: string
    description: "Indicates if the device supports Rich Communication Services (RCS) over-the-top (OTT) multi-device functionality."
    sql: ${TABLE}.rcs_ott_multi_device ;;
  }

  dimension: reva {
    type: string
    description: "Description not available"
    sql: ${TABLE}.reva ;;
  }

  dimension: rim {
    type: string
    description: "Indicates whether the device is a Research In Motion (RIM) device (e.g., BlackBerry)."
    sql: ${TABLE}.rim ;;
  }

  dimension: search_engine {
    type: string
    description: "The default search engine used by the device's web browser, indicating the primary search service for accessing online information."
    sql: ${TABLE}.search_engine ;;
  }

  dimension: segments {
    type: string
    description: "The market segment(s) that the device is targeted for."
    sql: ${TABLE}.segments ;;
  }

  dimension: skype_mobile {
    type: string
    description: "Indicates if the device supports the Skype mobile application."
    sql: ${TABLE}.skype_mobile ;;
  }

  dimension: sms {
    type: string
    description: "Indicates whether the device supports Short Messaging Service (SMS) capabilities."
    sql: ${TABLE}.sms ;;
  }

  dimension: social_net {
    type: string
    description: "Indicates whether the device supports social networking applications."
    sql: ${TABLE}.social_net ;;
  }

  dimension: sor_product_family {
    type: string
    description: "The product family to which the device belongs, e.g., smartphone, tablet, etc."
    sql: ${TABLE}.sor_product_family ;;
  }

  dimension: sub_tier {
    type: string
    description: "A sub-tier or sub-category within the device's tier, providing a more granular categorization based on specific device features and capabilities."
    sql: ${TABLE}.sub_tier ;;
  }

  dimension: sync {
    type: string
    description: "Indicates whether the device supports Synchronous Communications."
    sql: ${TABLE}.sync ;;
  }

  dimension: tec_ind {
    type: string
    description: "Indicates if this device is managed by Transmission Engineering Center (TEC)."
    sql: ${TABLE}.tec_ind ;;
  }

  dimension: tech_tier {
    type: string
    description: "This column specifies the technology tier of the device, such as 3G, 4G, or 5G."
    sql: ${TABLE}.tech_tier ;;
  }

  dimension: tier {
    type: string
    description: "Tier or level of the device, based on its specifications or capabilities."
    sql: ${TABLE}.tier ;;
  }

  dimension: touch {
    type: string
    description: "Indicates whether the device has a touch screen."
    sql: ${TABLE}.touch ;;
  }

  dimension: unbundle_multiplier {
    type: number
    description: "This column specifies the unbundle multiplier for the device."
    sql: ${TABLE}.unbundle_multiplier ;;
  }

  dimension: vcast {
    type: string
    description: "Represents the device's support for Verizon's V CAST service, which allows users to access streaming media content, including movies, videos, and music."
    sql: ${TABLE}.vcast ;;
  }

  dimension: vo_wifi {
    type: string
    description: "This column indicates whether the device supports Voice over Wi-Fi (VoWiFi) calling."
    sql: ${TABLE}.vo_wifi ;;
  }

  dimension: vvmail {
    type: string
    description: "Indicates if Visual Voicemail feature is present."
    sql: ${TABLE}.vvmail ;;
  }

  dimension: vznav {
    type: string
    description: "Indicates whether the device has Verizon navigation capabilities."
    sql: ${TABLE}.vznav ;;
  }

  dimension: wifi {
    type: string
    description: "This column indicates the Wi-Fi capabilities of the device, such as the supported Wi-Fi standards and frequencies."
    sql: ${TABLE}.wifi ;;
  }
  measure: count {
    type: count
  }
}
