-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Options RiskControl Sbe 1.7 Protocol
local omi_memx_options_riskcontrol_sbe_v1_7 = Proto("Memx.Options.RiskControl.Sbe.v1.7.Lua", "Memx Options RiskControl Sbe 1.7")

-- Protocol table
local memx_options_riskcontrol_sbe_v1_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Options RiskControl Sbe 1.7 Fields
omi_memx_options_riskcontrol_sbe_v1_7.fields.allow_iso_orders = ProtoField.new("Allow Iso Orders", "memx.options.riskcontrol.sbe.v1.7.allowisoorders", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.allow_market_orders = ProtoField.new("Allow Market Orders", "memx.options.riskcontrol.sbe.v1.7.allowmarketorders", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.allow_orders = ProtoField.new("Allow Orders", "memx.options.riskcontrol.sbe.v1.7.alloworders", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.block_length = ProtoField.new("Block Length", "memx.options.riskcontrol.sbe.v1.7.blocklength", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_id = ProtoField.new("Breach Id", "memx.options.riskcontrol.sbe.v1.7.breachid", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_id_optional = ProtoField.new("Breach Id Optional", "memx.options.riskcontrol.sbe.v1.7.breachidoptional", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id = ProtoField.new("Cl Ord I D Active Risk Acknowledge All Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidactiveriskacknowledgeallrequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id = ProtoField.new("Cl Ord I D Active Risk Acknowledge Rejected Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidactiveriskacknowledgerejectedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id = ProtoField.new("Cl Ord I D Active Risk Acknowledgement Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidactiveriskacknowledgementrequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id = ProtoField.new("Cl Ord I D Active Risk Threshold Change Rejected Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidactiveriskthresholdchangerejectedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Active Risk Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidactiveriskthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id = ProtoField.new("Cl Ord I D Breach Clear All Accepted Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidbreachclearallacceptedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id = ProtoField.new("Cl Ord I D Breach Clear All By Efid Or Underlier Accepted Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidbreachclearallbyefidorunderlieracceptedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id = ProtoField.new("Cl Ord I D Breach Clear All By Efid Or Underlier Rejected Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidbreachclearallbyefidorunderlierrejectedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id = ProtoField.new("Cl Ord I D Breach Clear All Rejected Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidbreachclearallrejectedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_rejected_cl_ord_id = ProtoField.new("Cl Ord I D Breach Clear Rejected Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidbreachclearrejectedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Breach Count Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpbreachcountthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Clear All Breaches By Efid Or Underlier Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpclearallbreachesbyefidorunderlierrequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Clear All Breaches Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpclearallbreachesrequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_clear_breach_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Clear Breach Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpclearbreachrequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Duplicate Order Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpduplicateorderthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Executed Notional Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpexecutednotionalthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Gross Notional Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpgrossnotionalthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Market Order Gross Notional Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpmarketordergrossnotionalthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Market Order Net Notional Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpmarketordernetnotionalthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Net Notional Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpnetnotionalthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Order Rate Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcporderratethresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Percent Outstanding Contracts Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcppercentoutstandingcontractsthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Total Executions Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcptotalexecutionsthresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Cp Volume Threshold Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidcpvolumethresholdchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id = ProtoField.new("Cl Ord I D Manual Cp Breach Trigger Rejected Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidmanualcpbreachtriggerrejectedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id = ProtoField.new("Cl Ord I D Manual Cp Breach Trigger Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidmanualcpbreachtriggerrequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id = ProtoField.new("Cl Ord I D Risk Settings Query Rejected Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidrisksettingsqueryrejectedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id = ProtoField.new("Cl Ord I D Risk Threshold Update Rejected Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidriskthresholdupdaterejectedclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Single Order Allow Iso Orders Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidsingleorderallowisoorderschangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Single Order Allow Market Orders Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidsingleorderallowmarketorderschangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional = ProtoField.new("Cl Ord I D Single Order Allow Market Orders State Cl Ord I D optional", "memx.options.riskcontrol.sbe.v1.7.clordidsingleorderallowmarketordersstateclordidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Single Order Allow Orders In Crossed Market Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidsingleorderallowordersincrossedmarketchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Single Order Max Contracts Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidsingleordermaxcontractschangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Single Order Max Notional Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidsingleordermaxnotionalchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id = ProtoField.new("Cl Ord I D Single Order Restricted Underlier Change Request Cl Ord Id", "memx.options.riskcontrol.sbe.v1.7.clordidsingleorderrestrictedunderlierchangerequestclordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional = ProtoField.new("Cl Ord I D Single Order Restricted Underlier State Cl Ord I D optional", "memx.options.riskcontrol.sbe.v1.7.clordidsingleorderrestrictedunderlierstateclordidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.clordid = ProtoField.new("ClOrdId", "memx.options.riskcontrol.sbe.v1.7.clordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.clordid_optional = ProtoField.new("ClOrdId Optional", "memx.options.riskcontrol.sbe.v1.7.clordidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.common_header = ProtoField.new("Common Header", "memx.options.riskcontrol.sbe.v1.7.commonheader", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.count = ProtoField.new("Count", "memx.options.riskcontrol.sbe.v1.7.count", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.data = ProtoField.new("Data", "memx.options.riskcontrol.sbe.v1.7.data", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_acknowledge_all_request_efid = ProtoField.new("Efi D Active Risk Acknowledge All Request Efid", "memx.options.riskcontrol.sbe.v1.7.efidactiveriskacknowledgeallrequestefid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_acknowledge_rejected_efid = ProtoField.new("Efi D Active Risk Acknowledge Rejected Efid", "memx.options.riskcontrol.sbe.v1.7.efidactiveriskacknowledgerejectedefid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_acknowledgement_request_efid = ProtoField.new("Efi D Active Risk Acknowledgement Request Efid", "memx.options.riskcontrol.sbe.v1.7.efidactiveriskacknowledgementrequestefid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_threshold_change_rejected_efi_d_optional = ProtoField.new("Efi D Active Risk Threshold Change Rejected Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidactiveriskthresholdchangerejectedefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Active Risk Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidactiveriskthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional = ProtoField.new("Efi D Breach Clear All By Efid Or Underlier Accepted Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidbreachclearallbyefidorunderlieracceptedefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional = ProtoField.new("Efi D Breach Clear All By Efid Or Underlier Rejected Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidbreachclearallbyefidorunderlierrejectedefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_breach_count_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Breach Count Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpbreachcountthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional = ProtoField.new("Efi D Cp Clear All Breaches By Efid Or Underlier Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpclearallbreachesbyefidorunderlierrequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Duplicate Order Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpduplicateorderthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Executed Notional Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpexecutednotionalthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Gross Notional Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpgrossnotionalthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Market Order Gross Notional Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpmarketordergrossnotionalthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Market Order Net Notional Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpmarketordernetnotionalthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_net_notional_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Net Notional Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpnetnotionalthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_order_rate_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Order Rate Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcporderratethresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Percent Outstanding Contracts Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcppercentoutstandingcontractsthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_total_executions_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Total Executions Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcptotalexecutionsthresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_volume_threshold_change_request_efi_d_optional = ProtoField.new("Efi D Cp Volume Threshold Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidcpvolumethresholdchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional = ProtoField.new("Efi D Manual Cp Breach Trigger Rejected Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidmanualcpbreachtriggerrejectedefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_manual_cp_breach_trigger_request_efi_d_optional = ProtoField.new("Efi D Manual Cp Breach Trigger Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidmanualcpbreachtriggerrequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional = ProtoField.new("Efi D Single Order Allow Iso Orders Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidsingleorderallowisoorderschangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_allow_market_orders_change_request_efi_d_optional = ProtoField.new("Efi D Single Order Allow Market Orders Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidsingleorderallowmarketorderschangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_allow_market_orders_state_efi_d_optional = ProtoField.new("Efi D Single Order Allow Market Orders State Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidsingleorderallowmarketordersstateefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional = ProtoField.new("Efi D Single Order Allow Orders In Crossed Market Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidsingleorderallowordersincrossedmarketchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_max_contracts_change_request_efi_d_optional = ProtoField.new("Efi D Single Order Max Contracts Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidsingleordermaxcontractschangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_max_notional_change_request_efi_d_optional = ProtoField.new("Efi D Single Order Max Notional Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidsingleordermaxnotionalchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_restricted_underlier_change_request_efi_d_optional = ProtoField.new("Efi D Single Order Restricted Underlier Change Request Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidsingleorderrestrictedunderlierchangerequestefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_restricted_underlier_state_efi_d_optional = ProtoField.new("Efi D Single Order Restricted Underlier State Efi D optional", "memx.options.riskcontrol.sbe.v1.7.efidsingleorderrestrictedunderlierstateefidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efid = ProtoField.new("Efid", "memx.options.riskcontrol.sbe.v1.7.efid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.efid_optional = ProtoField.new("Efid Optional", "memx.options.riskcontrol.sbe.v1.7.efidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.last_px = ProtoField.new("Last Px", "memx.options.riskcontrol.sbe.v1.7.lastpx", ftypes.DOUBLE)
omi_memx_options_riskcontrol_sbe_v1_7.fields.last_qty = ProtoField.new("Last Qty", "memx.options.riskcontrol.sbe.v1.7.lastqty", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.latest_percentage = ProtoField.new("Latest Percentage", "memx.options.riskcontrol.sbe.v1.7.latestpercentage", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.options.riskcontrol.sbe.v1.7.loginacceptedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.options.riskcontrol.sbe.v1.7.loginrejectcode", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.options.riskcontrol.sbe.v1.7.loginrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.login_request_message = ProtoField.new("Login Request Message", "memx.options.riskcontrol.sbe.v1.7.loginrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.market_orders = ProtoField.new("Market Orders", "memx.options.riskcontrol.sbe.v1.7.marketorders", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.max_contracts = ProtoField.new("Max Contracts", "memx.options.riskcontrol.sbe.v1.7.maxcontracts", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.max_dup_orders = ProtoField.new("Max Dup Orders", "memx.options.riskcontrol.sbe.v1.7.maxduporders", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.max_notional_in_dollars = ProtoField.new("Max Notional In Dollars", "memx.options.riskcontrol.sbe.v1.7.maxnotionalindollars", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.max_order_msgs = ProtoField.new("Max Order Msgs", "memx.options.riskcontrol.sbe.v1.7.maxordermsgs", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.max_sequence_number = ProtoField.new("Max Sequence Number", "memx.options.riskcontrol.sbe.v1.7.maxsequencenumber", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.message_count = ProtoField.new("Message Count", "memx.options.riskcontrol.sbe.v1.7.messagecount", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.message_length = ProtoField.new("Message Length", "memx.options.riskcontrol.sbe.v1.7.messagelength", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_7.fields.message_type = ProtoField.new("Message Type", "memx.options.riskcontrol.sbe.v1.7.messagetype", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.options.riskcontrol.sbe.v1.7.nextsequencenumber", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.number_msgs_sent = ProtoField.new("Number Msgs Sent", "memx.options.riskcontrol.sbe.v1.7.numbermsgssent", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.option_security_id = ProtoField.new("Option Security Id", "memx.options.riskcontrol.sbe.v1.7.optionsecurityid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.order_id = ProtoField.new("Order Id", "memx.options.riskcontrol.sbe.v1.7.orderid", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.packet = ProtoField.new("Packet", "memx.options.riskcontrol.sbe.v1.7.packet", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.payload = ProtoField.new("Payload", "memx.options.riskcontrol.sbe.v1.7.payload", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.options.riskcontrol.sbe.v1.7.pendingmessagecount", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.percent = ProtoField.new("Percent", "memx.options.riskcontrol.sbe.v1.7.percent", ftypes.INT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.period_in_milli_seconds = ProtoField.new("Period In Milli Seconds", "memx.options.riskcontrol.sbe.v1.7.periodinmilliseconds", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.price_in_dollars = ProtoField.new("Price In Dollars", "memx.options.riskcontrol.sbe.v1.7.priceindollars", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.quantity = ProtoField.new("Quantity", "memx.options.riskcontrol.sbe.v1.7.quantity", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.reject_reason = ProtoField.new("Reject Reason", "memx.options.riskcontrol.sbe.v1.7.rejectreason", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.options.riskcontrol.sbe.v1.7.replayallrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.options.riskcontrol.sbe.v1.7.replaybeginmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.options.riskcontrol.sbe.v1.7.replaycompletemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.options.riskcontrol.sbe.v1.7.replayrejectcode", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.options.riskcontrol.sbe.v1.7.replayrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.options.riskcontrol.sbe.v1.7.replayrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.restricted = ProtoField.new("Restricted", "memx.options.riskcontrol.sbe.v1.7.restricted", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_group_id = ProtoField.new("Risk Group Id", "memx.options.riskcontrol.sbe.v1.7.riskgroupid", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_type = ProtoField.new("Risk Type", "memx.options.riskcontrol.sbe.v1.7.risktype", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.rule_type = ProtoField.new("Rule Type", "memx.options.riskcontrol.sbe.v1.7.ruletype", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.sbe_header = ProtoField.new("Sbe Header", "memx.options.riskcontrol.sbe.v1.7.sbeheader", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.sbe_message = ProtoField.new("Sbe Message", "memx.options.riskcontrol.sbe.v1.7.sbemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.schema_id = ProtoField.new("Schema Id", "memx.options.riskcontrol.sbe.v1.7.schemaid", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.send_cancels = ProtoField.new("Send Cancels", "memx.options.riskcontrol.sbe.v1.7.sendcancels", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.sending_time = ProtoField.new("Sending Time", "memx.options.riskcontrol.sbe.v1.7.sendingtime", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.options.riskcontrol.sbe.v1.7.sequencedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.session_id = ProtoField.new("Session Id", "memx.options.riskcontrol.sbe.v1.7.sessionid", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.side = ProtoField.new("Side", "memx.options.riskcontrol.sbe.v1.7.side", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.options.riskcontrol.sbe.v1.7.startofsessionmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.options.riskcontrol.sbe.v1.7.streambeginmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.options.riskcontrol.sbe.v1.7.streamcompletemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.options.riskcontrol.sbe.v1.7.streamrejectcode", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.options.riskcontrol.sbe.v1.7.streamrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.options.riskcontrol.sbe.v1.7.streamrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.options.riskcontrol.sbe.v1.7.supportedrequestmode", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.template_id = ProtoField.new("Template Id", "memx.options.riskcontrol.sbe.v1.7.templateid", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.threshold_quantity = ProtoField.new("Threshold Quantity", "memx.options.riskcontrol.sbe.v1.7.thresholdquantity", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.token = ProtoField.new("Token", "memx.options.riskcontrol.sbe.v1.7.token", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.token_type = ProtoField.new("Token Type", "memx.options.riskcontrol.sbe.v1.7.tokentype", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "memx.options.riskcontrol.sbe.v1.7.totalaffectedorders", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.total_executions = ProtoField.new("Total Executions", "memx.options.riskcontrol.sbe.v1.7.totalexecutions", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.options.riskcontrol.sbe.v1.7.totalsequencecount", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.transact_time = ProtoField.new("Transact Time", "memx.options.riskcontrol.sbe.v1.7.transacttime", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.trd_match_id = ProtoField.new("Trd Match Id", "memx.options.riskcontrol.sbe.v1.7.trdmatchid", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_7.fields.unacked_quantity = ProtoField.new("Unacked Quantity", "memx.options.riskcontrol.sbe.v1.7.unackedquantity", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier = ProtoField.new("Underlier", "memx.options.riskcontrol.sbe.v1.7.underlier", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_acknowledge_all_request_underlier = ProtoField.new("Underlier Active Risk Acknowledge All Request Underlier", "memx.options.riskcontrol.sbe.v1.7.underlieractiveriskacknowledgeallrequestunderlier", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_acknowledge_rejected_underlier = ProtoField.new("Underlier Active Risk Acknowledge Rejected Underlier", "memx.options.riskcontrol.sbe.v1.7.underlieractiveriskacknowledgerejectedunderlier", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_acknowledgement_request_underlier = ProtoField.new("Underlier Active Risk Acknowledgement Request Underlier", "memx.options.riskcontrol.sbe.v1.7.underlieractiveriskacknowledgementrequestunderlier", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_threshold_change_rejected_underlier_optional = ProtoField.new("Underlier Active Risk Threshold Change Rejected Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underlieractiveriskthresholdchangerejectedunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_threshold_change_request_underlier_optional = ProtoField.new("Underlier Active Risk Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underlieractiveriskthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional = ProtoField.new("Underlier Breach Clear All By Efid Or Underlier Accepted Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underlierbreachclearallbyefidorunderlieracceptedunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional = ProtoField.new("Underlier Breach Clear All By Efid Or Underlier Rejected Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underlierbreachclearallbyefidorunderlierrejectedunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_breach_count_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Breach Count Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpbreachcountthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional = ProtoField.new("Underlier Cp Clear All Breaches By Efid Or Underlier Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpclearallbreachesbyefidorunderlierrequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_duplicate_order_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Duplicate Order Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpduplicateorderthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_executed_notional_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Executed Notional Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpexecutednotionalthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_gross_notional_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Gross Notional Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpgrossnotionalthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Market Order Gross Notional Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpmarketordergrossnotionalthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Market Order Net Notional Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpmarketordernetnotionalthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_net_notional_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Net Notional Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpnetnotionalthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_order_rate_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Order Rate Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercporderratethresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Percent Outstanding Contracts Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercppercentoutstandingcontractsthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_total_executions_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Total Executions Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercptotalexecutionsthresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_volume_threshold_change_request_underlier_optional = ProtoField.new("Underlier Cp Volume Threshold Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliercpvolumethresholdchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_manual_cp_breach_trigger_rejected_underlier_optional = ProtoField.new("Underlier Manual Cp Breach Trigger Rejected Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliermanualcpbreachtriggerrejectedunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_manual_cp_breach_trigger_request_underlier_optional = ProtoField.new("Underlier Manual Cp Breach Trigger Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliermanualcpbreachtriggerrequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_optional = ProtoField.new("Underlier Optional", "memx.options.riskcontrol.sbe.v1.7.underlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_allow_iso_orders_change_request_underlier_optional = ProtoField.new("Underlier Single Order Allow Iso Orders Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliersingleorderallowisoorderschangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_allow_market_orders_change_request_underlier_optional = ProtoField.new("Underlier Single Order Allow Market Orders Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliersingleorderallowmarketorderschangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_allow_market_orders_state_underlier_optional = ProtoField.new("Underlier Single Order Allow Market Orders State Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliersingleorderallowmarketordersstateunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional = ProtoField.new("Underlier Single Order Allow Orders In Crossed Market Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliersingleorderallowordersincrossedmarketchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_max_contracts_change_request_underlier_optional = ProtoField.new("Underlier Single Order Max Contracts Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliersingleordermaxcontractschangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_max_notional_change_request_underlier_optional = ProtoField.new("Underlier Single Order Max Notional Change Request Underlier optional", "memx.options.riskcontrol.sbe.v1.7.underliersingleordermaxnotionalchangerequestunderlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_restricted_underlier_change_request_underlier = ProtoField.new("Underlier Single Order Restricted Underlier Change Request Underlier", "memx.options.riskcontrol.sbe.v1.7.underliersingleorderrestrictedunderlierchangerequestunderlier", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_restricted_underlier_state_underlier = ProtoField.new("Underlier Single Order Restricted Underlier State Underlier", "memx.options.riskcontrol.sbe.v1.7.underliersingleorderrestrictedunderlierstateunderlier", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.options.riskcontrol.sbe.v1.7.unsequencedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.use_order_price_in_dup_check = ProtoField.new("Use Order Price In Dup Check", "memx.options.riskcontrol.sbe.v1.7.useorderpriceindupcheck", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.use_order_price_in_dup_check_optional = ProtoField.new("Use Order Price In Dup Check Optional", "memx.options.riskcontrol.sbe.v1.7.useorderpriceindupcheckoptional", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_7.fields.version = ProtoField.new("Version", "memx.options.riskcontrol.sbe.v1.7.version", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_7.fields.volume = ProtoField.new("Volume", "memx.options.riskcontrol.sbe.v1.7.volume", ftypes.UINT64)

-- Memx Options RiskControl Sbe 1.7 messages
omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_acknowledge_all_request_message = ProtoField.new("Active Risk Acknowledge All Request Message", "memx.options.riskcontrol.sbe.v1.7.activeriskacknowledgeallrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_acknowledge_rejected_message = ProtoField.new("Active Risk Acknowledge Rejected Message", "memx.options.riskcontrol.sbe.v1.7.activeriskacknowledgerejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_acknowledged_message = ProtoField.new("Active Risk Acknowledged Message", "memx.options.riskcontrol.sbe.v1.7.activeriskacknowledgedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_acknowledgement_request_message = ProtoField.new("Active Risk Acknowledgement Request Message", "memx.options.riskcontrol.sbe.v1.7.activeriskacknowledgementrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_quantity_update_notification_message = ProtoField.new("Active Risk Quantity Update Notification Message", "memx.options.riskcontrol.sbe.v1.7.activeriskquantityupdatenotificationmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_threshold_change_rejected_message = ProtoField.new("Active Risk Threshold Change Rejected Message", "memx.options.riskcontrol.sbe.v1.7.activeriskthresholdchangerejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_threshold_change_request_message = ProtoField.new("Active Risk Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.activeriskthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_threshold_state_message = ProtoField.new("Active Risk Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.activeriskthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_all_accepted_message = ProtoField.new("Breach Clear All Accepted Message", "memx.options.riskcontrol.sbe.v1.7.breachclearallacceptedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_all_by_efid_or_underlier_accepted_message = ProtoField.new("Breach Clear All By Efid Or Underlier Accepted Message", "memx.options.riskcontrol.sbe.v1.7.breachclearallbyefidorunderlieracceptedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_all_by_efid_or_underlier_rejected_message = ProtoField.new("Breach Clear All By Efid Or Underlier Rejected Message", "memx.options.riskcontrol.sbe.v1.7.breachclearallbyefidorunderlierrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_all_rejected_message = ProtoField.new("Breach Clear All Rejected Message", "memx.options.riskcontrol.sbe.v1.7.breachclearallrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_rejected_message = ProtoField.new("Breach Clear Rejected Message", "memx.options.riskcontrol.sbe.v1.7.breachclearrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_cleared_message = ProtoField.new("Breach Cleared Message", "memx.options.riskcontrol.sbe.v1.7.breachclearedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_breach_count_threshold_change_request_message = ProtoField.new("Cp Breach Count Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cpbreachcountthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_breach_count_threshold_state_message = ProtoField.new("Cp Breach Count Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cpbreachcountthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_clear_all_breaches_by_efid_or_underlier_request_message = ProtoField.new("Cp Clear All Breaches By Efid Or Underlier Request Message", "memx.options.riskcontrol.sbe.v1.7.cpclearallbreachesbyefidorunderlierrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_clear_all_breaches_request_message = ProtoField.new("Cp Clear All Breaches Request Message", "memx.options.riskcontrol.sbe.v1.7.cpclearallbreachesrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_clear_breach_request_message = ProtoField.new("Cp Clear Breach Request Message", "memx.options.riskcontrol.sbe.v1.7.cpclearbreachrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_duplicate_order_threshold_change_request_message = ProtoField.new("Cp Duplicate Order Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cpduplicateorderthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_duplicate_order_threshold_state_message = ProtoField.new("Cp Duplicate Order Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cpduplicateorderthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_executed_notional_threshold_change_request_message = ProtoField.new("Cp Executed Notional Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cpexecutednotionalthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_executed_notional_threshold_state_message = ProtoField.new("Cp Executed Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cpexecutednotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_gross_notional_threshold_change_request_message = ProtoField.new("Cp Gross Notional Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cpgrossnotionalthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_gross_notional_threshold_state_message = ProtoField.new("Cp Gross Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cpgrossnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_market_order_gross_notional_threshold_change_request_message = ProtoField.new("Cp Market Order Gross Notional Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cpmarketordergrossnotionalthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_market_order_gross_notional_threshold_state_message = ProtoField.new("Cp Market Order Gross Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cpmarketordergrossnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_market_order_net_notional_threshold_change_request_message = ProtoField.new("Cp Market Order Net Notional Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cpmarketordernetnotionalthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_market_order_net_notional_threshold_state_message = ProtoField.new("Cp Market Order Net Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cpmarketordernetnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_net_notional_threshold_change_request_message = ProtoField.new("Cp Net Notional Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cpnetnotionalthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_net_notional_threshold_state_message = ProtoField.new("Cp Net Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cpnetnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_order_rate_threshold_change_request_message = ProtoField.new("Cp Order Rate Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cporderratethresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_order_rate_threshold_state_message = ProtoField.new("Cp Order Rate Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cporderratethresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_percent_outstanding_contracts_threshold_change_request_message = ProtoField.new("Cp Percent Outstanding Contracts Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cppercentoutstandingcontractsthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_percent_outstanding_contracts_threshold_state_message = ProtoField.new("Cp Percent Outstanding Contracts Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cppercentoutstandingcontractsthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_total_executions_threshold_change_request_message = ProtoField.new("Cp Total Executions Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cptotalexecutionsthresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_total_executions_threshold_state_message = ProtoField.new("Cp Total Executions Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cptotalexecutionsthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_volume_threshold_change_request_message = ProtoField.new("Cp Volume Threshold Change Request Message", "memx.options.riskcontrol.sbe.v1.7.cpvolumethresholdchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_volume_threshold_state_message = ProtoField.new("Cp Volume Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.cpvolumethresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.manual_cp_breach_trigger_done_message = ProtoField.new("Manual Cp Breach Trigger Done Message", "memx.options.riskcontrol.sbe.v1.7.manualcpbreachtriggerdonemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.manual_cp_breach_trigger_pending_message = ProtoField.new("Manual Cp Breach Trigger Pending Message", "memx.options.riskcontrol.sbe.v1.7.manualcpbreachtriggerpendingmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.manual_cp_breach_trigger_rejected_message = ProtoField.new("Manual Cp Breach Trigger Rejected Message", "memx.options.riskcontrol.sbe.v1.7.manualcpbreachtriggerrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.manual_cp_breach_trigger_request_message = ProtoField.new("Manual Cp Breach Trigger Request Message", "memx.options.riskcontrol.sbe.v1.7.manualcpbreachtriggerrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.passive_risk_threshold_notification_message = ProtoField.new("Passive Risk Threshold Notification Message", "memx.options.riskcontrol.sbe.v1.7.passiveriskthresholdnotificationmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_settings_query_done_message = ProtoField.new("Risk Settings Query Done Message", "memx.options.riskcontrol.sbe.v1.7.risksettingsquerydonemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_settings_query_message = ProtoField.new("Risk Settings Query Message", "memx.options.riskcontrol.sbe.v1.7.risksettingsquerymessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_settings_query_rejected_message = ProtoField.new("Risk Settings Query Rejected Message", "memx.options.riskcontrol.sbe.v1.7.risksettingsqueryrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_threshold_update_rejected_message = ProtoField.new("Risk Threshold Update Rejected Message", "memx.options.riskcontrol.sbe.v1.7.riskthresholdupdaterejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_iso_orders_change_request_message = ProtoField.new("Single Order Allow Iso Orders Change Request Message", "memx.options.riskcontrol.sbe.v1.7.singleorderallowisoorderschangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_iso_orders_state_message = ProtoField.new("Single Order Allow Iso Orders State Message", "memx.options.riskcontrol.sbe.v1.7.singleorderallowisoordersstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_market_orders_change_request_message = ProtoField.new("Single Order Allow Market Orders Change Request Message", "memx.options.riskcontrol.sbe.v1.7.singleorderallowmarketorderschangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_market_orders_state_message = ProtoField.new("Single Order Allow Market Orders State Message", "memx.options.riskcontrol.sbe.v1.7.singleorderallowmarketordersstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_orders_in_crossed_market_change_request_message = ProtoField.new("Single Order Allow Orders In Crossed Market Change Request Message", "memx.options.riskcontrol.sbe.v1.7.singleorderallowordersincrossedmarketchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_orders_in_crossed_market_state_message = ProtoField.new("Single Order Allow Orders In Crossed Market State Message", "memx.options.riskcontrol.sbe.v1.7.singleorderallowordersincrossedmarketstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_max_contracts_change_request_message = ProtoField.new("Single Order Max Contracts Change Request Message", "memx.options.riskcontrol.sbe.v1.7.singleordermaxcontractschangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_max_contracts_threshold_state_message = ProtoField.new("Single Order Max Contracts Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.singleordermaxcontractsthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_max_notional_change_request_message = ProtoField.new("Single Order Max Notional Change Request Message", "memx.options.riskcontrol.sbe.v1.7.singleordermaxnotionalchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_max_notional_threshold_state_message = ProtoField.new("Single Order Max Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.7.singleordermaxnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_restricted_underlier_change_request_message = ProtoField.new("Single Order Restricted Underlier Change Request Message", "memx.options.riskcontrol.sbe.v1.7.singleorderrestrictedunderlierchangerequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_restricted_underlier_state_message = ProtoField.new("Single Order Restricted Underlier State Message", "memx.options.riskcontrol.sbe.v1.7.singleorderrestrictedunderlierstatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx Options RiskControl Sbe 1.7 Element Dissection Options
show.active_risk_acknowledge_all_request_message = true
show.active_risk_acknowledge_rejected_message = true
show.active_risk_acknowledged_message = true
show.active_risk_acknowledgement_request_message = true
show.active_risk_quantity_update_notification_message = true
show.active_risk_threshold_change_rejected_message = true
show.active_risk_threshold_change_request_message = true
show.active_risk_threshold_state_message = true
show.breach_clear_all_accepted_message = true
show.breach_clear_all_by_efid_or_underlier_accepted_message = true
show.breach_clear_all_by_efid_or_underlier_rejected_message = true
show.breach_clear_all_rejected_message = true
show.breach_clear_rejected_message = true
show.breach_cleared_message = true
show.common_header = true
show.cp_breach_count_threshold_change_request_message = true
show.cp_breach_count_threshold_state_message = true
show.cp_clear_all_breaches_by_efid_or_underlier_request_message = true
show.cp_clear_all_breaches_request_message = true
show.cp_clear_breach_request_message = true
show.cp_duplicate_order_threshold_change_request_message = true
show.cp_duplicate_order_threshold_state_message = true
show.cp_executed_notional_threshold_change_request_message = true
show.cp_executed_notional_threshold_state_message = true
show.cp_gross_notional_threshold_change_request_message = true
show.cp_gross_notional_threshold_state_message = true
show.cp_market_order_gross_notional_threshold_change_request_message = true
show.cp_market_order_gross_notional_threshold_state_message = true
show.cp_market_order_net_notional_threshold_change_request_message = true
show.cp_market_order_net_notional_threshold_state_message = true
show.cp_net_notional_threshold_change_request_message = true
show.cp_net_notional_threshold_state_message = true
show.cp_order_rate_threshold_change_request_message = true
show.cp_order_rate_threshold_state_message = true
show.cp_percent_outstanding_contracts_threshold_change_request_message = true
show.cp_percent_outstanding_contracts_threshold_state_message = true
show.cp_total_executions_threshold_change_request_message = true
show.cp_total_executions_threshold_state_message = true
show.cp_volume_threshold_change_request_message = true
show.cp_volume_threshold_state_message = true
show.login_accepted_message = true
show.login_rejected_message = true
show.login_request_message = true
show.manual_cp_breach_trigger_done_message = true
show.manual_cp_breach_trigger_pending_message = true
show.manual_cp_breach_trigger_rejected_message = true
show.manual_cp_breach_trigger_request_message = true
show.packet = true
show.passive_risk_threshold_notification_message = true
show.replay_all_request_message = true
show.replay_begin_message = true
show.replay_complete_message = true
show.replay_rejected_message = true
show.replay_request_message = true
show.risk_settings_query_done_message = true
show.risk_settings_query_message = true
show.risk_settings_query_rejected_message = true
show.risk_threshold_update_rejected_message = true
show.sbe_header = true
show.sbe_message = true
show.sequenced_message = true
show.single_order_allow_iso_orders_change_request_message = true
show.single_order_allow_iso_orders_state_message = true
show.single_order_allow_market_orders_change_request_message = true
show.single_order_allow_market_orders_state_message = true
show.single_order_allow_orders_in_crossed_market_change_request_message = true
show.single_order_allow_orders_in_crossed_market_state_message = true
show.single_order_max_contracts_change_request_message = true
show.single_order_max_contracts_threshold_state_message = true
show.single_order_max_notional_change_request_message = true
show.single_order_max_notional_threshold_state_message = true
show.single_order_restricted_underlier_change_request_message = true
show.single_order_restricted_underlier_state_message = true
show.start_of_session_message = true
show.stream_begin_message = true
show.stream_complete_message = true
show.stream_rejected_message = true
show.stream_request_message = true
show.unsequenced_message = true
show.data = false
show.payload = false

-- Register Memx Options RiskControl Sbe 1.7 Show Options
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledge_all_request_message = Pref.bool("Show Active Risk Acknowledge All Request Message", show.active_risk_acknowledge_all_request_message, "Parse and add Active Risk Acknowledge All Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledge_rejected_message = Pref.bool("Show Active Risk Acknowledge Rejected Message", show.active_risk_acknowledge_rejected_message, "Parse and add Active Risk Acknowledge Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledged_message = Pref.bool("Show Active Risk Acknowledged Message", show.active_risk_acknowledged_message, "Parse and add Active Risk Acknowledged Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledgement_request_message = Pref.bool("Show Active Risk Acknowledgement Request Message", show.active_risk_acknowledgement_request_message, "Parse and add Active Risk Acknowledgement Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_quantity_update_notification_message = Pref.bool("Show Active Risk Quantity Update Notification Message", show.active_risk_quantity_update_notification_message, "Parse and add Active Risk Quantity Update Notification Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_change_rejected_message = Pref.bool("Show Active Risk Threshold Change Rejected Message", show.active_risk_threshold_change_rejected_message, "Parse and add Active Risk Threshold Change Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_change_request_message = Pref.bool("Show Active Risk Threshold Change Request Message", show.active_risk_threshold_change_request_message, "Parse and add Active Risk Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_state_message = Pref.bool("Show Active Risk Threshold State Message", show.active_risk_threshold_state_message, "Parse and add Active Risk Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_accepted_message = Pref.bool("Show Breach Clear All Accepted Message", show.breach_clear_all_accepted_message, "Parse and add Breach Clear All Accepted Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_by_efid_or_underlier_accepted_message = Pref.bool("Show Breach Clear All By Efid Or Underlier Accepted Message", show.breach_clear_all_by_efid_or_underlier_accepted_message, "Parse and add Breach Clear All By Efid Or Underlier Accepted Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_by_efid_or_underlier_rejected_message = Pref.bool("Show Breach Clear All By Efid Or Underlier Rejected Message", show.breach_clear_all_by_efid_or_underlier_rejected_message, "Parse and add Breach Clear All By Efid Or Underlier Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_rejected_message = Pref.bool("Show Breach Clear All Rejected Message", show.breach_clear_all_rejected_message, "Parse and add Breach Clear All Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_rejected_message = Pref.bool("Show Breach Clear Rejected Message", show.breach_clear_rejected_message, "Parse and add Breach Clear Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_cleared_message = Pref.bool("Show Breach Cleared Message", show.breach_cleared_message, "Parse and add Breach Cleared Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_breach_count_threshold_change_request_message = Pref.bool("Show Cp Breach Count Threshold Change Request Message", show.cp_breach_count_threshold_change_request_message, "Parse and add Cp Breach Count Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_breach_count_threshold_state_message = Pref.bool("Show Cp Breach Count Threshold State Message", show.cp_breach_count_threshold_state_message, "Parse and add Cp Breach Count Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_all_breaches_by_efid_or_underlier_request_message = Pref.bool("Show Cp Clear All Breaches By Efid Or Underlier Request Message", show.cp_clear_all_breaches_by_efid_or_underlier_request_message, "Parse and add Cp Clear All Breaches By Efid Or Underlier Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_all_breaches_request_message = Pref.bool("Show Cp Clear All Breaches Request Message", show.cp_clear_all_breaches_request_message, "Parse and add Cp Clear All Breaches Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_breach_request_message = Pref.bool("Show Cp Clear Breach Request Message", show.cp_clear_breach_request_message, "Parse and add Cp Clear Breach Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_duplicate_order_threshold_change_request_message = Pref.bool("Show Cp Duplicate Order Threshold Change Request Message", show.cp_duplicate_order_threshold_change_request_message, "Parse and add Cp Duplicate Order Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_duplicate_order_threshold_state_message = Pref.bool("Show Cp Duplicate Order Threshold State Message", show.cp_duplicate_order_threshold_state_message, "Parse and add Cp Duplicate Order Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_executed_notional_threshold_change_request_message = Pref.bool("Show Cp Executed Notional Threshold Change Request Message", show.cp_executed_notional_threshold_change_request_message, "Parse and add Cp Executed Notional Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_executed_notional_threshold_state_message = Pref.bool("Show Cp Executed Notional Threshold State Message", show.cp_executed_notional_threshold_state_message, "Parse and add Cp Executed Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_gross_notional_threshold_change_request_message = Pref.bool("Show Cp Gross Notional Threshold Change Request Message", show.cp_gross_notional_threshold_change_request_message, "Parse and add Cp Gross Notional Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_gross_notional_threshold_state_message = Pref.bool("Show Cp Gross Notional Threshold State Message", show.cp_gross_notional_threshold_state_message, "Parse and add Cp Gross Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_gross_notional_threshold_change_request_message = Pref.bool("Show Cp Market Order Gross Notional Threshold Change Request Message", show.cp_market_order_gross_notional_threshold_change_request_message, "Parse and add Cp Market Order Gross Notional Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_gross_notional_threshold_state_message = Pref.bool("Show Cp Market Order Gross Notional Threshold State Message", show.cp_market_order_gross_notional_threshold_state_message, "Parse and add Cp Market Order Gross Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_net_notional_threshold_change_request_message = Pref.bool("Show Cp Market Order Net Notional Threshold Change Request Message", show.cp_market_order_net_notional_threshold_change_request_message, "Parse and add Cp Market Order Net Notional Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_net_notional_threshold_state_message = Pref.bool("Show Cp Market Order Net Notional Threshold State Message", show.cp_market_order_net_notional_threshold_state_message, "Parse and add Cp Market Order Net Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_net_notional_threshold_change_request_message = Pref.bool("Show Cp Net Notional Threshold Change Request Message", show.cp_net_notional_threshold_change_request_message, "Parse and add Cp Net Notional Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_net_notional_threshold_state_message = Pref.bool("Show Cp Net Notional Threshold State Message", show.cp_net_notional_threshold_state_message, "Parse and add Cp Net Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_order_rate_threshold_change_request_message = Pref.bool("Show Cp Order Rate Threshold Change Request Message", show.cp_order_rate_threshold_change_request_message, "Parse and add Cp Order Rate Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_order_rate_threshold_state_message = Pref.bool("Show Cp Order Rate Threshold State Message", show.cp_order_rate_threshold_state_message, "Parse and add Cp Order Rate Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_percent_outstanding_contracts_threshold_change_request_message = Pref.bool("Show Cp Percent Outstanding Contracts Threshold Change Request Message", show.cp_percent_outstanding_contracts_threshold_change_request_message, "Parse and add Cp Percent Outstanding Contracts Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_percent_outstanding_contracts_threshold_state_message = Pref.bool("Show Cp Percent Outstanding Contracts Threshold State Message", show.cp_percent_outstanding_contracts_threshold_state_message, "Parse and add Cp Percent Outstanding Contracts Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_total_executions_threshold_change_request_message = Pref.bool("Show Cp Total Executions Threshold Change Request Message", show.cp_total_executions_threshold_change_request_message, "Parse and add Cp Total Executions Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_total_executions_threshold_state_message = Pref.bool("Show Cp Total Executions Threshold State Message", show.cp_total_executions_threshold_state_message, "Parse and add Cp Total Executions Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_volume_threshold_change_request_message = Pref.bool("Show Cp Volume Threshold Change Request Message", show.cp_volume_threshold_change_request_message, "Parse and add Cp Volume Threshold Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_volume_threshold_state_message = Pref.bool("Show Cp Volume Threshold State Message", show.cp_volume_threshold_state_message, "Parse and add Cp Volume Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_done_message = Pref.bool("Show Manual Cp Breach Trigger Done Message", show.manual_cp_breach_trigger_done_message, "Parse and add Manual Cp Breach Trigger Done Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_pending_message = Pref.bool("Show Manual Cp Breach Trigger Pending Message", show.manual_cp_breach_trigger_pending_message, "Parse and add Manual Cp Breach Trigger Pending Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_rejected_message = Pref.bool("Show Manual Cp Breach Trigger Rejected Message", show.manual_cp_breach_trigger_rejected_message, "Parse and add Manual Cp Breach Trigger Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_request_message = Pref.bool("Show Manual Cp Breach Trigger Request Message", show.manual_cp_breach_trigger_request_message, "Parse and add Manual Cp Breach Trigger Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_passive_risk_threshold_notification_message = Pref.bool("Show Passive Risk Threshold Notification Message", show.passive_risk_threshold_notification_message, "Parse and add Passive Risk Threshold Notification Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_done_message = Pref.bool("Show Risk Settings Query Done Message", show.risk_settings_query_done_message, "Parse and add Risk Settings Query Done Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_message = Pref.bool("Show Risk Settings Query Message", show.risk_settings_query_message, "Parse and add Risk Settings Query Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_rejected_message = Pref.bool("Show Risk Settings Query Rejected Message", show.risk_settings_query_rejected_message, "Parse and add Risk Settings Query Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_threshold_update_rejected_message = Pref.bool("Show Risk Threshold Update Rejected Message", show.risk_threshold_update_rejected_message, "Parse and add Risk Threshold Update Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_iso_orders_change_request_message = Pref.bool("Show Single Order Allow Iso Orders Change Request Message", show.single_order_allow_iso_orders_change_request_message, "Parse and add Single Order Allow Iso Orders Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_iso_orders_state_message = Pref.bool("Show Single Order Allow Iso Orders State Message", show.single_order_allow_iso_orders_state_message, "Parse and add Single Order Allow Iso Orders State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_market_orders_change_request_message = Pref.bool("Show Single Order Allow Market Orders Change Request Message", show.single_order_allow_market_orders_change_request_message, "Parse and add Single Order Allow Market Orders Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_market_orders_state_message = Pref.bool("Show Single Order Allow Market Orders State Message", show.single_order_allow_market_orders_state_message, "Parse and add Single Order Allow Market Orders State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_orders_in_crossed_market_change_request_message = Pref.bool("Show Single Order Allow Orders In Crossed Market Change Request Message", show.single_order_allow_orders_in_crossed_market_change_request_message, "Parse and add Single Order Allow Orders In Crossed Market Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_orders_in_crossed_market_state_message = Pref.bool("Show Single Order Allow Orders In Crossed Market State Message", show.single_order_allow_orders_in_crossed_market_state_message, "Parse and add Single Order Allow Orders In Crossed Market State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_contracts_change_request_message = Pref.bool("Show Single Order Max Contracts Change Request Message", show.single_order_max_contracts_change_request_message, "Parse and add Single Order Max Contracts Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_contracts_threshold_state_message = Pref.bool("Show Single Order Max Contracts Threshold State Message", show.single_order_max_contracts_threshold_state_message, "Parse and add Single Order Max Contracts Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_notional_change_request_message = Pref.bool("Show Single Order Max Notional Change Request Message", show.single_order_max_notional_change_request_message, "Parse and add Single Order Max Notional Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_notional_threshold_state_message = Pref.bool("Show Single Order Max Notional Threshold State Message", show.single_order_max_notional_threshold_state_message, "Parse and add Single Order Max Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_restricted_underlier_change_request_message = Pref.bool("Show Single Order Restricted Underlier Change Request Message", show.single_order_restricted_underlier_change_request_message, "Parse and add Single Order Restricted Underlier Change Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_restricted_underlier_state_message = Pref.bool("Show Single Order Restricted Underlier State Message", show.single_order_restricted_underlier_state_message, "Parse and add Single Order Restricted Underlier State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_memx_options_riskcontrol_sbe_v1_7.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.active_risk_acknowledge_all_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledge_all_request_message then
    show.active_risk_acknowledge_all_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledge_all_request_message
    changed = true
  end
  if show.active_risk_acknowledge_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledge_rejected_message then
    show.active_risk_acknowledge_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledge_rejected_message
    changed = true
  end
  if show.active_risk_acknowledged_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledged_message then
    show.active_risk_acknowledged_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledged_message
    changed = true
  end
  if show.active_risk_acknowledgement_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledgement_request_message then
    show.active_risk_acknowledgement_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_acknowledgement_request_message
    changed = true
  end
  if show.active_risk_quantity_update_notification_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_quantity_update_notification_message then
    show.active_risk_quantity_update_notification_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_quantity_update_notification_message
    changed = true
  end
  if show.active_risk_threshold_change_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_change_rejected_message then
    show.active_risk_threshold_change_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_change_rejected_message
    changed = true
  end
  if show.active_risk_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_change_request_message then
    show.active_risk_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_change_request_message
    changed = true
  end
  if show.active_risk_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_state_message then
    show.active_risk_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_active_risk_threshold_state_message
    changed = true
  end
  if show.breach_clear_all_accepted_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_accepted_message then
    show.breach_clear_all_accepted_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_accepted_message
    changed = true
  end
  if show.breach_clear_all_by_efid_or_underlier_accepted_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_by_efid_or_underlier_accepted_message then
    show.breach_clear_all_by_efid_or_underlier_accepted_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_by_efid_or_underlier_accepted_message
    changed = true
  end
  if show.breach_clear_all_by_efid_or_underlier_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_by_efid_or_underlier_rejected_message then
    show.breach_clear_all_by_efid_or_underlier_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_by_efid_or_underlier_rejected_message
    changed = true
  end
  if show.breach_clear_all_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_rejected_message then
    show.breach_clear_all_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_all_rejected_message
    changed = true
  end
  if show.breach_clear_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_rejected_message then
    show.breach_clear_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_clear_rejected_message
    changed = true
  end
  if show.breach_cleared_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_cleared_message then
    show.breach_cleared_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_breach_cleared_message
    changed = true
  end
  if show.common_header ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_common_header then
    show.common_header = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_common_header
    changed = true
  end
  if show.cp_breach_count_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_breach_count_threshold_change_request_message then
    show.cp_breach_count_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_breach_count_threshold_change_request_message
    changed = true
  end
  if show.cp_breach_count_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_breach_count_threshold_state_message then
    show.cp_breach_count_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_breach_count_threshold_state_message
    changed = true
  end
  if show.cp_clear_all_breaches_by_efid_or_underlier_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_all_breaches_by_efid_or_underlier_request_message then
    show.cp_clear_all_breaches_by_efid_or_underlier_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_all_breaches_by_efid_or_underlier_request_message
    changed = true
  end
  if show.cp_clear_all_breaches_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_all_breaches_request_message then
    show.cp_clear_all_breaches_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_all_breaches_request_message
    changed = true
  end
  if show.cp_clear_breach_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_breach_request_message then
    show.cp_clear_breach_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_clear_breach_request_message
    changed = true
  end
  if show.cp_duplicate_order_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_duplicate_order_threshold_change_request_message then
    show.cp_duplicate_order_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_duplicate_order_threshold_change_request_message
    changed = true
  end
  if show.cp_duplicate_order_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_duplicate_order_threshold_state_message then
    show.cp_duplicate_order_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_duplicate_order_threshold_state_message
    changed = true
  end
  if show.cp_executed_notional_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_executed_notional_threshold_change_request_message then
    show.cp_executed_notional_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_executed_notional_threshold_change_request_message
    changed = true
  end
  if show.cp_executed_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_executed_notional_threshold_state_message then
    show.cp_executed_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_executed_notional_threshold_state_message
    changed = true
  end
  if show.cp_gross_notional_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_gross_notional_threshold_change_request_message then
    show.cp_gross_notional_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_gross_notional_threshold_change_request_message
    changed = true
  end
  if show.cp_gross_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_gross_notional_threshold_state_message then
    show.cp_gross_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_gross_notional_threshold_state_message
    changed = true
  end
  if show.cp_market_order_gross_notional_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_gross_notional_threshold_change_request_message then
    show.cp_market_order_gross_notional_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_gross_notional_threshold_change_request_message
    changed = true
  end
  if show.cp_market_order_gross_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_gross_notional_threshold_state_message then
    show.cp_market_order_gross_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_gross_notional_threshold_state_message
    changed = true
  end
  if show.cp_market_order_net_notional_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_net_notional_threshold_change_request_message then
    show.cp_market_order_net_notional_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_net_notional_threshold_change_request_message
    changed = true
  end
  if show.cp_market_order_net_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_net_notional_threshold_state_message then
    show.cp_market_order_net_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_market_order_net_notional_threshold_state_message
    changed = true
  end
  if show.cp_net_notional_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_net_notional_threshold_change_request_message then
    show.cp_net_notional_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_net_notional_threshold_change_request_message
    changed = true
  end
  if show.cp_net_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_net_notional_threshold_state_message then
    show.cp_net_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_net_notional_threshold_state_message
    changed = true
  end
  if show.cp_order_rate_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_order_rate_threshold_change_request_message then
    show.cp_order_rate_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_order_rate_threshold_change_request_message
    changed = true
  end
  if show.cp_order_rate_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_order_rate_threshold_state_message then
    show.cp_order_rate_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_order_rate_threshold_state_message
    changed = true
  end
  if show.cp_percent_outstanding_contracts_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_percent_outstanding_contracts_threshold_change_request_message then
    show.cp_percent_outstanding_contracts_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_percent_outstanding_contracts_threshold_change_request_message
    changed = true
  end
  if show.cp_percent_outstanding_contracts_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_percent_outstanding_contracts_threshold_state_message then
    show.cp_percent_outstanding_contracts_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_percent_outstanding_contracts_threshold_state_message
    changed = true
  end
  if show.cp_total_executions_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_total_executions_threshold_change_request_message then
    show.cp_total_executions_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_total_executions_threshold_change_request_message
    changed = true
  end
  if show.cp_total_executions_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_total_executions_threshold_state_message then
    show.cp_total_executions_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_total_executions_threshold_state_message
    changed = true
  end
  if show.cp_volume_threshold_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_volume_threshold_change_request_message then
    show.cp_volume_threshold_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_volume_threshold_change_request_message
    changed = true
  end
  if show.cp_volume_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_volume_threshold_state_message then
    show.cp_volume_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_cp_volume_threshold_state_message
    changed = true
  end
  if show.login_accepted_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_accepted_message then
    show.login_accepted_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_rejected_message then
    show.login_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_request_message then
    show.login_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_login_request_message
    changed = true
  end
  if show.manual_cp_breach_trigger_done_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_done_message then
    show.manual_cp_breach_trigger_done_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_done_message
    changed = true
  end
  if show.manual_cp_breach_trigger_pending_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_pending_message then
    show.manual_cp_breach_trigger_pending_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_pending_message
    changed = true
  end
  if show.manual_cp_breach_trigger_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_rejected_message then
    show.manual_cp_breach_trigger_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_rejected_message
    changed = true
  end
  if show.manual_cp_breach_trigger_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_request_message then
    show.manual_cp_breach_trigger_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_manual_cp_breach_trigger_request_message
    changed = true
  end
  if show.packet ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_packet then
    show.packet = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_packet
    changed = true
  end
  if show.passive_risk_threshold_notification_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_passive_risk_threshold_notification_message then
    show.passive_risk_threshold_notification_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_passive_risk_threshold_notification_message
    changed = true
  end
  if show.replay_all_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_all_request_message then
    show.replay_all_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_begin_message then
    show.replay_begin_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_complete_message then
    show.replay_complete_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_rejected_message then
    show.replay_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_request_message then
    show.replay_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_replay_request_message
    changed = true
  end
  if show.risk_settings_query_done_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_done_message then
    show.risk_settings_query_done_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_done_message
    changed = true
  end
  if show.risk_settings_query_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_message then
    show.risk_settings_query_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_message
    changed = true
  end
  if show.risk_settings_query_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_rejected_message then
    show.risk_settings_query_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_settings_query_rejected_message
    changed = true
  end
  if show.risk_threshold_update_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_threshold_update_rejected_message then
    show.risk_threshold_update_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_risk_threshold_update_rejected_message
    changed = true
  end
  if show.sbe_header ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sbe_header then
    show.sbe_header = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sbe_message then
    show.sbe_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_sequenced_message
    changed = true
  end
  if show.single_order_allow_iso_orders_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_iso_orders_change_request_message then
    show.single_order_allow_iso_orders_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_iso_orders_change_request_message
    changed = true
  end
  if show.single_order_allow_iso_orders_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_iso_orders_state_message then
    show.single_order_allow_iso_orders_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_iso_orders_state_message
    changed = true
  end
  if show.single_order_allow_market_orders_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_market_orders_change_request_message then
    show.single_order_allow_market_orders_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_market_orders_change_request_message
    changed = true
  end
  if show.single_order_allow_market_orders_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_market_orders_state_message then
    show.single_order_allow_market_orders_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_market_orders_state_message
    changed = true
  end
  if show.single_order_allow_orders_in_crossed_market_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_orders_in_crossed_market_change_request_message then
    show.single_order_allow_orders_in_crossed_market_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_orders_in_crossed_market_change_request_message
    changed = true
  end
  if show.single_order_allow_orders_in_crossed_market_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_orders_in_crossed_market_state_message then
    show.single_order_allow_orders_in_crossed_market_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_allow_orders_in_crossed_market_state_message
    changed = true
  end
  if show.single_order_max_contracts_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_contracts_change_request_message then
    show.single_order_max_contracts_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_contracts_change_request_message
    changed = true
  end
  if show.single_order_max_contracts_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_contracts_threshold_state_message then
    show.single_order_max_contracts_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_contracts_threshold_state_message
    changed = true
  end
  if show.single_order_max_notional_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_notional_change_request_message then
    show.single_order_max_notional_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_notional_change_request_message
    changed = true
  end
  if show.single_order_max_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_notional_threshold_state_message then
    show.single_order_max_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_max_notional_threshold_state_message
    changed = true
  end
  if show.single_order_restricted_underlier_change_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_restricted_underlier_change_request_message then
    show.single_order_restricted_underlier_change_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_restricted_underlier_change_request_message
    changed = true
  end
  if show.single_order_restricted_underlier_state_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_restricted_underlier_state_message then
    show.single_order_restricted_underlier_state_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_single_order_restricted_underlier_state_message
    changed = true
  end
  if show.start_of_session_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_start_of_session_message then
    show.start_of_session_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_begin_message then
    show.stream_begin_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_complete_message then
    show.stream_complete_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_rejected_message then
    show.stream_rejected_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_request_message then
    show.stream_request_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_unsequenced_message
    changed = true
  end
  if show.data ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_data then
    show.data = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_payload then
    show.payload = omi_memx_options_riskcontrol_sbe_v1_7.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Options RiskControl Sbe 1.7
-----------------------------------------------------------------------

-- Period In Milli Seconds
memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds = {}

-- Size: Period In Milli Seconds
memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size = 4

-- Display: Period In Milli Seconds
memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.display = function(value)
  return "Period In Milli Seconds: "..value
end

-- Dissect: Period In Milli Seconds
memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.period_in_milli_seconds, range, value, display)

  return offset + length, value
end

-- Max Order Msgs
memx_options_riskcontrol_sbe_v1_7.max_order_msgs = {}

-- Size: Max Order Msgs
memx_options_riskcontrol_sbe_v1_7.max_order_msgs.size = 4

-- Display: Max Order Msgs
memx_options_riskcontrol_sbe_v1_7.max_order_msgs.display = function(value)
  return "Max Order Msgs: "..value
end

-- Dissect: Max Order Msgs
memx_options_riskcontrol_sbe_v1_7.max_order_msgs.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.max_order_msgs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.max_order_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.max_order_msgs, range, value, display)

  return offset + length, value
end

-- Risk Group Id
memx_options_riskcontrol_sbe_v1_7.risk_group_id = {}

-- Size: Risk Group Id
memx_options_riskcontrol_sbe_v1_7.risk_group_id.size = 2

-- Display: Risk Group Id
memx_options_riskcontrol_sbe_v1_7.risk_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Efid Optional
memx_options_riskcontrol_sbe_v1_7.efid_optional = {}

-- Size: Efid Optional
memx_options_riskcontrol_sbe_v1_7.efid_optional.size = 4

-- Display: Efid Optional
memx_options_riskcontrol_sbe_v1_7.efid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efid Optional: No Value"
  end

  return "Efid Optional: "..value
end

-- Dissect: Efid Optional
memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efid_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efid_optional, range, value, display)

  return offset + length, value
end

-- Underlier Optional
memx_options_riskcontrol_sbe_v1_7.underlier_optional = {}

-- Size: Underlier Optional
memx_options_riskcontrol_sbe_v1_7.underlier_optional.size = 6

-- Display: Underlier Optional
memx_options_riskcontrol_sbe_v1_7.underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Optional: No Value"
  end

  return "Underlier Optional: "..value
end

-- Dissect: Underlier Optional
memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_optional, range, value, display)

  return offset + length, value
end

-- ClOrdId Optional
memx_options_riskcontrol_sbe_v1_7.clordid_optional = {}

-- Size: ClOrdId Optional
memx_options_riskcontrol_sbe_v1_7.clordid_optional.size = 20

-- Display: ClOrdId Optional
memx_options_riskcontrol_sbe_v1_7.clordid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId Optional: No Value"
  end

  return "ClOrdId Optional: "..value
end

-- Dissect: ClOrdId Optional
memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.clordid_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.clordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.clordid_optional, range, value, display)

  return offset + length, value
end

-- Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message = {}

-- Size: Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.max_order_msgs.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Order Msgs: 4 Byte Unsigned Fixed Width Integer
  index, max_order_msgs = memx_options_riskcontrol_sbe_v1_7.max_order_msgs.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_order_rate_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_order_rate_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Use Order Price In Dup Check
memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check = {}

-- Size: Use Order Price In Dup Check
memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check.size = 1

-- Display: Use Order Price In Dup Check
memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check.display = function(value)
  if value == 0 then
    return "Use Order Price In Dup Check: False (0)"
  end
  if value == 1 then
    return "Use Order Price In Dup Check: True (1)"
  end

  return "Use Order Price In Dup Check: Unknown("..value..")"
end

-- Dissect: Use Order Price In Dup Check
memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.use_order_price_in_dup_check, range, value, display)

  return offset + length, value
end

-- Max Dup Orders
memx_options_riskcontrol_sbe_v1_7.max_dup_orders = {}

-- Size: Max Dup Orders
memx_options_riskcontrol_sbe_v1_7.max_dup_orders.size = 4

-- Display: Max Dup Orders
memx_options_riskcontrol_sbe_v1_7.max_dup_orders.display = function(value)
  return "Max Dup Orders: "..value
end

-- Dissect: Max Dup Orders
memx_options_riskcontrol_sbe_v1_7.max_dup_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.max_dup_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.max_dup_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.max_dup_orders, range, value, display)

  return offset + length, value
end

-- Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message = {}

-- Size: Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.max_dup_orders.size + 
  memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Dup Orders: 4 Byte Unsigned Fixed Width Integer
  index, max_dup_orders = memx_options_riskcontrol_sbe_v1_7.max_dup_orders.dissect(buffer, index, packet, parent)

  -- Use Order Price In Dup Check: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, use_order_price_in_dup_check = memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_duplicate_order_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_duplicate_order_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Price In Dollars
memx_options_riskcontrol_sbe_v1_7.price_in_dollars = {}

-- Size: Price In Dollars
memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size = 8

-- Display: Price In Dollars
memx_options_riskcontrol_sbe_v1_7.price_in_dollars.display = function(value)
  return "Price In Dollars: "..value
end

-- Dissect: Price In Dollars
memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.price_in_dollars, range, value, display)

  return offset + length, value
end

-- Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message = {}

-- Size: Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size

-- Display: Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_market_order_net_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_market_order_net_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message = {}

-- Size: Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size

-- Display: Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_net_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_net_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message = {}

-- Size: Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size

-- Display: Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_market_order_gross_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_market_order_gross_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message = {}

-- Size: Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size

-- Display: Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_gross_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_gross_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Reason
memx_options_riskcontrol_sbe_v1_7.reject_reason = {}

-- Size: Reject Reason
memx_options_riskcontrol_sbe_v1_7.reject_reason.size = 2

-- Display: Reject Reason
memx_options_riskcontrol_sbe_v1_7.reject_reason.display = function(value)
  if value == 0 then
    return "Reject Reason: Other (0)"
  end
  if value == 1 then
    return "Reject Reason: Missing Cl Ord Id (1)"
  end
  if value == 2 then
    return "Reject Reason: Invalid Cl Ord Id (2)"
  end
  if value == 3 then
    return "Reject Reason: Duplicate Cl Ord Id (3)"
  end
  if value == 4 then
    return "Reject Reason: Missing Time Period (4)"
  end
  if value == 5 then
    return "Reject Reason: Invalid Time Period (5)"
  end
  if value == 6 then
    return "Reject Reason: Missing Risk Group Id (6)"
  end
  if value == 7 then
    return "Reject Reason: Invalid Risk Group Id (7)"
  end
  if value == 8 then
    return "Reject Reason: Missing Underlier (8)"
  end
  if value == 9 then
    return "Reject Reason: Invalid Underlier (9)"
  end
  if value == 10 then
    return "Reject Reason: Missing Efid (10)"
  end
  if value == 11 then
    return "Reject Reason: Invalid Efid (11)"
  end
  if value == 12 then
    return "Reject Reason: Missing Threshold (12)"
  end
  if value == 13 then
    return "Reject Reason: Invalid Threshold (13)"
  end
  if value == 14 then
    return "Reject Reason: Missing Quantity (14)"
  end
  if value == 15 then
    return "Reject Reason: Invalid Quantity (15)"
  end
  if value == 16 then
    return "Reject Reason: Missing Breach Id (16)"
  end
  if value == 17 then
    return "Reject Reason: Invalid Breach Id (17)"
  end
  if value == 18 then
    return "Reject Reason: Missing Volume (18)"
  end
  if value == 19 then
    return "Reject Reason: Invalid Volume (19)"
  end
  if value == 20 then
    return "Reject Reason: Missing Period In Milli Seconds (20)"
  end
  if value == 21 then
    return "Reject Reason: Invalid Period In Milli Seconds (21)"
  end
  if value == 22 then
    return "Reject Reason: Missing Price In Dollars (22)"
  end
  if value == 23 then
    return "Reject Reason: Invalid Price In Dollars (23)"
  end
  if value == 24 then
    return "Reject Reason: Missing Total Executions (24)"
  end
  if value == 25 then
    return "Reject Reason: Invalid Total Executions (25)"
  end
  if value == 26 then
    return "Reject Reason: Missing Percent (26)"
  end
  if value == 27 then
    return "Reject Reason: Invalid Percent (27)"
  end
  if value == 28 then
    return "Reject Reason: Missing Count (28)"
  end
  if value == 29 then
    return "Reject Reason: Invalid Count (29)"
  end
  if value == 30 then
    return "Reject Reason: Missing Allow Iso Orders (30)"
  end
  if value == 31 then
    return "Reject Reason: Invalid Allow Iso Orders (31)"
  end
  if value == 32 then
    return "Reject Reason: Missing Allow Orders (32)"
  end
  if value == 33 then
    return "Reject Reason: Invalid Allow Orders (33)"
  end
  if value == 34 then
    return "Reject Reason: Missing Max Notional In Dollars (34)"
  end
  if value == 35 then
    return "Reject Reason: Invalid Max Notional In Dollars (35)"
  end
  if value == 36 then
    return "Reject Reason: Missing Max Contracts (36)"
  end
  if value == 37 then
    return "Reject Reason: Invalid Max Contracts (37)"
  end
  if value == 38 then
    return "Reject Reason: Over Confirm (38)"
  end
  if value == 39 then
    return "Reject Reason: Invalid Risk Combination (39)"
  end
  if value == 40 then
    return "Reject Reason: Unknown Risk Rule (40)"
  end
  if value == 41 then
    return "Reject Reason: Missing Max Dup Orders (41)"
  end
  if value == 42 then
    return "Reject Reason: Invalid Max Dup Orders (42)"
  end
  if value == 43 then
    return "Reject Reason: Missing Max Order Msgs (43)"
  end
  if value == 44 then
    return "Reject Reason: Invalid Max Order Msgs (44)"
  end
  if value == 45 then
    return "Reject Reason: Breach In Progress (45)"
  end
  if value == 46 then
    return "Reject Reason: Number Of Breaches Forbid Clearing (46)"
  end
  if value == 47 then
    return "Reject Reason: No Active Breaches (47)"
  end
  if value == 48 then
    return "Reject Reason: Missing Allow Market Orders (48)"
  end
  if value == 49 then
    return "Reject Reason: Invalid Allow Market Orders (49)"
  end
  if value == 50 then
    return "Reject Reason: Missing Restricted (50)"
  end
  if value == 51 then
    return "Reject Reason: Invalid Restricted (51)"
  end
  if value == 52 then
    return "Reject Reason: Missing Efid Or Underlier (52)"
  end
  if value == 100 then
    return "Reject Reason: Exchange Closed (100)"
  end
  if value == 65535 then
    return "Reject Reason: Null Value (65535)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Efi D Breach Clear All By Efid Or Underlier Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional = {}

-- Size: Efi D Breach Clear All By Efid Or Underlier Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional.size = 4

-- Display: Efi D Breach Clear All By Efid Or Underlier Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Breach Clear All By Efid Or Underlier Rejected Efi D optional: No Value"
  end

  return "Efi D Breach Clear All By Efid Or Underlier Rejected Efi D optional: "..value
end

-- Dissect: Efi D Breach Clear All By Efid Or Underlier Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Breach Clear All By Efid Or Underlier Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional = {}

-- Size: Underlier Breach Clear All By Efid Or Underlier Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional.size = 6

-- Display: Underlier Breach Clear All By Efid Or Underlier Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Breach Clear All By Efid Or Underlier Rejected Underlier optional: No Value"
  end

  return "Underlier Breach Clear All By Efid Or Underlier Rejected Underlier optional: "..value
end

-- Dissect: Underlier Breach Clear All By Efid Or Underlier Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Breach Clear All By Efid Or Underlier Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id = {}

-- Size: Cl Ord I D Breach Clear All By Efid Or Underlier Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id.size = 20

-- Display: Cl Ord I D Breach Clear All By Efid Or Underlier Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Breach Clear All By Efid Or Underlier Rejected Cl Ord Id: No Value"
  end

  return "Cl Ord I D Breach Clear All By Efid Or Underlier Rejected Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Breach Clear All By Efid Or Underlier Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Breach Clear All By Efid Or Underlier Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message = {}

-- Size: Breach Clear All By Efid Or Underlier Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.reject_reason.size

-- Display: Breach Clear All By Efid Or Underlier Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Breach Clear All By Efid Or Underlier Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Breach Clear All By Efid Or Underlier Rejected Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_rejected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Breach Clear All By Efid Or Underlier Rejected Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_rejected_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Breach Clear All By Efid Or Underlier Rejected Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_rejected_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 55 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Breach Clear All By Efid Or Underlier Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.breach_clear_all_by_efid_or_underlier_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_all_by_efid_or_underlier_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Breach Clear All By Efid Or Underlier Accepted Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional = {}

-- Size: Efi D Breach Clear All By Efid Or Underlier Accepted Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional.size = 4

-- Display: Efi D Breach Clear All By Efid Or Underlier Accepted Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Breach Clear All By Efid Or Underlier Accepted Efi D optional: No Value"
  end

  return "Efi D Breach Clear All By Efid Or Underlier Accepted Efi D optional: "..value
end

-- Dissect: Efi D Breach Clear All By Efid Or Underlier Accepted Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Breach Clear All By Efid Or Underlier Accepted Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional = {}

-- Size: Underlier Breach Clear All By Efid Or Underlier Accepted Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional.size = 6

-- Display: Underlier Breach Clear All By Efid Or Underlier Accepted Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Breach Clear All By Efid Or Underlier Accepted Underlier optional: No Value"
  end

  return "Underlier Breach Clear All By Efid Or Underlier Accepted Underlier optional: "..value
end

-- Dissect: Underlier Breach Clear All By Efid Or Underlier Accepted Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Breach Clear All By Efid Or Underlier Accepted Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id = {}

-- Size: Cl Ord I D Breach Clear All By Efid Or Underlier Accepted Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id.size = 20

-- Display: Cl Ord I D Breach Clear All By Efid Or Underlier Accepted Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Breach Clear All By Efid Or Underlier Accepted Cl Ord Id: No Value"
  end

  return "Cl Ord I D Breach Clear All By Efid Or Underlier Accepted Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Breach Clear All By Efid Or Underlier Accepted Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Breach Clear All By Efid Or Underlier Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message = {}

-- Size: Breach Clear All By Efid Or Underlier Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional.size

-- Display: Breach Clear All By Efid Or Underlier Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Breach Clear All By Efid Or Underlier Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Breach Clear All By Efid Or Underlier Accepted Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_by_efid_or_underlier_accepted_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Breach Clear All By Efid Or Underlier Accepted Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_breach_clear_all_by_efid_or_underlier_accepted_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Breach Clear All By Efid Or Underlier Accepted Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_breach_clear_all_by_efid_or_underlier_accepted_efi_d_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Breach Clear All By Efid Or Underlier Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.breach_clear_all_by_efid_or_underlier_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_all_by_efid_or_underlier_accepted_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Cl Ord I D Breach Clear All Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id = {}

-- Size: Cl Ord I D Breach Clear All Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id.size = 20

-- Display: Cl Ord I D Breach Clear All Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Breach Clear All Rejected Cl Ord Id: No Value"
  end

  return "Cl Ord I D Breach Clear All Rejected Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Breach Clear All Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Breach Clear All Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message = {}

-- Size: Breach Clear All Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.reject_reason.size

-- Display: Breach Clear All Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Breach Clear All Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Breach Clear All Rejected Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_breach_clear_all_rejected_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_rejected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 55 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Breach Clear All Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.breach_clear_all_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_all_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Cl Ord I D Breach Clear All Accepted Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id = {}

-- Size: Cl Ord I D Breach Clear All Accepted Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id.size = 20

-- Display: Cl Ord I D Breach Clear All Accepted Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Breach Clear All Accepted Cl Ord Id: No Value"
  end

  return "Cl Ord I D Breach Clear All Accepted Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Breach Clear All Accepted Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Breach Clear All Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message = {}

-- Size: Breach Clear All Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id.size

-- Display: Breach Clear All Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Breach Clear All Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Breach Clear All Accepted Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_breach_clear_all_accepted_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_all_accepted_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Breach Clear All Accepted Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.breach_clear_all_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_all_accepted_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Breach Id Optional
memx_options_riskcontrol_sbe_v1_7.breach_id_optional = {}

-- Size: Breach Id Optional
memx_options_riskcontrol_sbe_v1_7.breach_id_optional.size = 8

-- Display: Breach Id Optional
memx_options_riskcontrol_sbe_v1_7.breach_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Breach Id Optional: No Value"
  end

  return "Breach Id Optional: "..value
end

-- Dissect: Breach Id Optional
memx_options_riskcontrol_sbe_v1_7.breach_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.breach_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.breach_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_id_optional, range, value, display)

  return offset + length, value
end

-- Breach Cleared Message
memx_options_riskcontrol_sbe_v1_7.breach_cleared_message = {}

-- Size: Breach Cleared Message
memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.breach_id_optional.size

-- Display: Breach Cleared Message
memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Breach Cleared Message
memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Breach Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, breach_id_optional = memx_options_riskcontrol_sbe_v1_7.breach_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Breach Cleared Message
memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.dissect = function(buffer, offset, packet, parent)
  if show.breach_cleared_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_cleared_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.fields(buffer, offset, packet, parent)
  end
end

-- Cl Ord I D Breach Clear Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_rejected_cl_ord_id = {}

-- Size: Cl Ord I D Breach Clear Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_rejected_cl_ord_id.size = 20

-- Display: Cl Ord I D Breach Clear Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_rejected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Breach Clear Rejected Cl Ord Id: No Value"
  end

  return "Cl Ord I D Breach Clear Rejected Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Breach Clear Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_rejected_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_breach_clear_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Breach Clear Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message = {}

-- Size: Breach Clear Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_rejected_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.breach_id_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.reject_reason.size

-- Display: Breach Clear Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Breach Clear Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Breach Clear Rejected Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_breach_clear_rejected_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_breach_clear_rejected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Breach Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, breach_id_optional = memx_options_riskcontrol_sbe_v1_7.breach_id_optional.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 55 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Breach Clear Rejected Message
memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.breach_clear_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_clear_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Manual Cp Breach Trigger Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional = {}

-- Size: Efi D Manual Cp Breach Trigger Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional.size = 4

-- Display: Efi D Manual Cp Breach Trigger Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Manual Cp Breach Trigger Rejected Efi D optional: No Value"
  end

  return "Efi D Manual Cp Breach Trigger Rejected Efi D optional: "..value
end

-- Dissect: Efi D Manual Cp Breach Trigger Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Manual Cp Breach Trigger Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_rejected_underlier_optional = {}

-- Size: Underlier Manual Cp Breach Trigger Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_rejected_underlier_optional.size = 6

-- Display: Underlier Manual Cp Breach Trigger Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_rejected_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Manual Cp Breach Trigger Rejected Underlier optional: No Value"
  end

  return "Underlier Manual Cp Breach Trigger Rejected Underlier optional: "..value
end

-- Dissect: Underlier Manual Cp Breach Trigger Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_rejected_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_rejected_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_rejected_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_manual_cp_breach_trigger_rejected_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Manual Cp Breach Trigger Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id = {}

-- Size: Cl Ord I D Manual Cp Breach Trigger Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id.size = 20

-- Display: Cl Ord I D Manual Cp Breach Trigger Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Manual Cp Breach Trigger Rejected Cl Ord Id: No Value"
  end

  return "Cl Ord I D Manual Cp Breach Trigger Rejected Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Manual Cp Breach Trigger Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Manual Cp Breach Trigger Rejected Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message = {}

-- Size: Manual Cp Breach Trigger Rejected Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_rejected_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.reject_reason.size

-- Display: Manual Cp Breach Trigger Rejected Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Cp Breach Trigger Rejected Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Manual Cp Breach Trigger Rejected Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_rejected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Manual Cp Breach Trigger Rejected Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_manual_cp_breach_trigger_rejected_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_rejected_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Manual Cp Breach Trigger Rejected Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_manual_cp_breach_trigger_rejected_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_rejected_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 55 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Cp Breach Trigger Rejected Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.manual_cp_breach_trigger_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.manual_cp_breach_trigger_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Cl Ord I D Risk Settings Query Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id = {}

-- Size: Cl Ord I D Risk Settings Query Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id.size = 20

-- Display: Cl Ord I D Risk Settings Query Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Risk Settings Query Rejected Cl Ord Id: No Value"
  end

  return "Cl Ord I D Risk Settings Query Rejected Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Risk Settings Query Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Risk Settings Query Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message = {}

-- Size: Risk Settings Query Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.reject_reason.size

-- Display: Risk Settings Query Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Settings Query Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Risk Settings Query Rejected Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_risk_settings_query_rejected_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_settings_query_rejected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 55 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Settings Query Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.risk_settings_query_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_settings_query_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Msgs Sent
memx_options_riskcontrol_sbe_v1_7.number_msgs_sent = {}

-- Size: Number Msgs Sent
memx_options_riskcontrol_sbe_v1_7.number_msgs_sent.size = 4

-- Display: Number Msgs Sent
memx_options_riskcontrol_sbe_v1_7.number_msgs_sent.display = function(value)
  return "Number Msgs Sent: "..value
end

-- Dissect: Number Msgs Sent
memx_options_riskcontrol_sbe_v1_7.number_msgs_sent.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.number_msgs_sent.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.number_msgs_sent.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.number_msgs_sent, range, value, display)

  return offset + length, value
end

-- ClOrdId
memx_options_riskcontrol_sbe_v1_7.clordid = {}

-- Size: ClOrdId
memx_options_riskcontrol_sbe_v1_7.clordid.size = 20

-- Display: ClOrdId
memx_options_riskcontrol_sbe_v1_7.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
memx_options_riskcontrol_sbe_v1_7.clordid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.clordid.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.clordid, range, value, display)

  return offset + length, value
end

-- Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message = {}

-- Size: Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid.size + 
  memx_options_riskcontrol_sbe_v1_7.number_msgs_sent.size

-- Display: Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Number Msgs Sent: 4 Byte Unsigned Fixed Width Integer
  index, number_msgs_sent = memx_options_riskcontrol_sbe_v1_7.number_msgs_sent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.dissect = function(buffer, offset, packet, parent)
  if show.risk_settings_query_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_settings_query_done_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Restricted
memx_options_riskcontrol_sbe_v1_7.restricted = {}

-- Size: Restricted
memx_options_riskcontrol_sbe_v1_7.restricted.size = 1

-- Display: Restricted
memx_options_riskcontrol_sbe_v1_7.restricted.display = function(value)
  if value == 0 then
    return "Restricted: False (0)"
  end
  if value == 1 then
    return "Restricted: True (1)"
  end

  return "Restricted: Unknown("..value..")"
end

-- Dissect: Restricted
memx_options_riskcontrol_sbe_v1_7.restricted.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.restricted.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.restricted.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.restricted, range, value, display)

  return offset + length, value
end

-- Efi D Single Order Restricted Underlier State Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_state_efi_d_optional = {}

-- Size: Efi D Single Order Restricted Underlier State Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_state_efi_d_optional.size = 4

-- Display: Efi D Single Order Restricted Underlier State Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_state_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Single Order Restricted Underlier State Efi D optional: No Value"
  end

  return "Efi D Single Order Restricted Underlier State Efi D optional: "..value
end

-- Dissect: Efi D Single Order Restricted Underlier State Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_state_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_state_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_state_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_restricted_underlier_state_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Single Order Restricted Underlier State Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_state_underlier = {}

-- Size: Underlier Single Order Restricted Underlier State Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_state_underlier.size = 6

-- Display: Underlier Single Order Restricted Underlier State Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_state_underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Single Order Restricted Underlier State Underlier: No Value"
  end

  return "Underlier Single Order Restricted Underlier State Underlier: "..value
end

-- Dissect: Underlier Single Order Restricted Underlier State Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_state_underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_state_underlier.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_state_underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_restricted_underlier_state_underlier, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Single Order Restricted Underlier State Cl Ord I D optional
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional = {}

-- Size: Cl Ord I D Single Order Restricted Underlier State Cl Ord I D optional
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional.size = 20

-- Display: Cl Ord I D Single Order Restricted Underlier State Cl Ord I D optional
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Single Order Restricted Underlier State Cl Ord I D optional: No Value"
  end

  return "Cl Ord I D Single Order Restricted Underlier State Cl Ord I D optional: "..value
end

-- Dissect: Cl Ord I D Single Order Restricted Underlier State Cl Ord I D optional
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional, range, value, display)

  return offset + length, value
end

-- Single Order Restricted Underlier State Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message = {}

-- Size: Single Order Restricted Underlier State Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_state_underlier.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_state_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.restricted.size

-- Display: Single Order Restricted Underlier State Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Restricted Underlier State Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Single Order Restricted Underlier State Cl Ord I D optional: 20 Byte Ascii String Nullable
  index, cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_state_cl_ord_i_d_optional.dissect(buffer, index, packet, parent)

  -- Underlier Single Order Restricted Underlier State Underlier: 6 Byte Ascii String
  index, underlier_single_order_restricted_underlier_state_underlier = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_state_underlier.dissect(buffer, index, packet, parent)

  -- Efi D Single Order Restricted Underlier State Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_single_order_restricted_underlier_state_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_state_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Restricted: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, restricted = memx_options_riskcontrol_sbe_v1_7.restricted.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Restricted Underlier State Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_restricted_underlier_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_restricted_underlier_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Orders
memx_options_riskcontrol_sbe_v1_7.market_orders = {}

-- Size: Market Orders
memx_options_riskcontrol_sbe_v1_7.market_orders.size = 1

-- Display: Market Orders
memx_options_riskcontrol_sbe_v1_7.market_orders.display = function(value)
  if value == 0 then
    return "Market Orders: False (0)"
  end
  if value == 1 then
    return "Market Orders: True (1)"
  end

  return "Market Orders: Unknown("..value..")"
end

-- Dissect: Market Orders
memx_options_riskcontrol_sbe_v1_7.market_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.market_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.market_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.market_orders, range, value, display)

  return offset + length, value
end

-- Efi D Single Order Allow Market Orders State Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_state_efi_d_optional = {}

-- Size: Efi D Single Order Allow Market Orders State Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_state_efi_d_optional.size = 4

-- Display: Efi D Single Order Allow Market Orders State Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_state_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Single Order Allow Market Orders State Efi D optional: No Value"
  end

  return "Efi D Single Order Allow Market Orders State Efi D optional: "..value
end

-- Dissect: Efi D Single Order Allow Market Orders State Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_state_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_state_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_state_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_allow_market_orders_state_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Single Order Allow Market Orders State Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_state_underlier_optional = {}

-- Size: Underlier Single Order Allow Market Orders State Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_state_underlier_optional.size = 6

-- Display: Underlier Single Order Allow Market Orders State Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_state_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Single Order Allow Market Orders State Underlier optional: No Value"
  end

  return "Underlier Single Order Allow Market Orders State Underlier optional: "..value
end

-- Dissect: Underlier Single Order Allow Market Orders State Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_state_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_state_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_state_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_allow_market_orders_state_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Single Order Allow Market Orders State Cl Ord I D optional
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional = {}

-- Size: Cl Ord I D Single Order Allow Market Orders State Cl Ord I D optional
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional.size = 20

-- Display: Cl Ord I D Single Order Allow Market Orders State Cl Ord I D optional
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Single Order Allow Market Orders State Cl Ord I D optional: No Value"
  end

  return "Cl Ord I D Single Order Allow Market Orders State Cl Ord I D optional: "..value
end

-- Dissect: Cl Ord I D Single Order Allow Market Orders State Cl Ord I D optional
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional, range, value, display)

  return offset + length, value
end

-- Single Order Allow Market Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message = {}

-- Size: Single Order Allow Market Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_state_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_state_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.market_orders.size

-- Display: Single Order Allow Market Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Market Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Single Order Allow Market Orders State Cl Ord I D optional: 20 Byte Ascii String Nullable
  index, cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_state_cl_ord_i_d_optional.dissect(buffer, index, packet, parent)

  -- Underlier Single Order Allow Market Orders State Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_single_order_allow_market_orders_state_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_state_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Single Order Allow Market Orders State Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_single_order_allow_market_orders_state_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_state_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Market Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, market_orders = memx_options_riskcontrol_sbe_v1_7.market_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Market Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_market_orders_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_market_orders_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Contracts
memx_options_riskcontrol_sbe_v1_7.max_contracts = {}

-- Size: Max Contracts
memx_options_riskcontrol_sbe_v1_7.max_contracts.size = 4

-- Display: Max Contracts
memx_options_riskcontrol_sbe_v1_7.max_contracts.display = function(value)
  return "Max Contracts: "..value
end

-- Dissect: Max Contracts
memx_options_riskcontrol_sbe_v1_7.max_contracts.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.max_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.max_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.max_contracts, range, value, display)

  return offset + length, value
end

-- Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message = {}

-- Size: Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.max_contracts.size

-- Display: Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Contracts: 4 Byte Unsigned Fixed Width Integer
  index, max_contracts = memx_options_riskcontrol_sbe_v1_7.max_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_max_contracts_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_max_contracts_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Notional In Dollars
memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars = {}

-- Size: Max Notional In Dollars
memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.size = 8

-- Display: Max Notional In Dollars
memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.display = function(value)
  return "Max Notional In Dollars: "..value
end

-- Dissect: Max Notional In Dollars
memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.max_notional_in_dollars, range, value, display)

  return offset + length, value
end

-- Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message = {}

-- Size: Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.size

-- Display: Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Notional In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, max_notional_in_dollars = memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_max_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_max_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Allow Orders
memx_options_riskcontrol_sbe_v1_7.allow_orders = {}

-- Size: Allow Orders
memx_options_riskcontrol_sbe_v1_7.allow_orders.size = 1

-- Display: Allow Orders
memx_options_riskcontrol_sbe_v1_7.allow_orders.display = function(value)
  if value == 0 then
    return "Allow Orders: False (0)"
  end
  if value == 1 then
    return "Allow Orders: True (1)"
  end

  return "Allow Orders: Unknown("..value..")"
end

-- Dissect: Allow Orders
memx_options_riskcontrol_sbe_v1_7.allow_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.allow_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.allow_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.allow_orders, range, value, display)

  return offset + length, value
end

-- Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message = {}

-- Size: Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.allow_orders.size

-- Display: Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_orders = memx_options_riskcontrol_sbe_v1_7.allow_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_orders_in_crossed_market_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_orders_in_crossed_market_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Allow Iso Orders
memx_options_riskcontrol_sbe_v1_7.allow_iso_orders = {}

-- Size: Allow Iso Orders
memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.size = 1

-- Display: Allow Iso Orders
memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.display = function(value)
  if value == 0 then
    return "Allow Iso Orders: False (0)"
  end
  if value == 1 then
    return "Allow Iso Orders: True (1)"
  end

  return "Allow Iso Orders: Unknown("..value..")"
end

-- Dissect: Allow Iso Orders
memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.allow_iso_orders, range, value, display)

  return offset + length, value
end

-- Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message = {}

-- Size: Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.size

-- Display: Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Iso Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_iso_orders = memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_iso_orders_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_iso_orders_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Transact Time
memx_options_riskcontrol_sbe_v1_7.transact_time = {}

-- Size: Transact Time
memx_options_riskcontrol_sbe_v1_7.transact_time.size = 8

-- Display: Transact Time
memx_options_riskcontrol_sbe_v1_7.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
memx_options_riskcontrol_sbe_v1_7.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Latest Percentage
memx_options_riskcontrol_sbe_v1_7.latest_percentage = {}

-- Size: Latest Percentage
memx_options_riskcontrol_sbe_v1_7.latest_percentage.size = 1

-- Display: Latest Percentage
memx_options_riskcontrol_sbe_v1_7.latest_percentage.display = function(value)
  return "Latest Percentage: "..value
end

-- Dissect: Latest Percentage
memx_options_riskcontrol_sbe_v1_7.latest_percentage.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.latest_percentage.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.latest_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.latest_percentage, range, value, display)

  return offset + length, value
end

-- Rule Type
memx_options_riskcontrol_sbe_v1_7.rule_type = {}

-- Size: Rule Type
memx_options_riskcontrol_sbe_v1_7.rule_type.size = 1

-- Display: Rule Type
memx_options_riskcontrol_sbe_v1_7.rule_type.display = function(value)
  if value == 1 then
    return "Rule Type: Contract Volume (1)"
  end
  if value == 2 then
    return "Rule Type: Notional Executed (2)"
  end
  if value == 3 then
    return "Rule Type: Total Trades Executed (3)"
  end
  if value == 4 then
    return "Rule Type: Percent Executed (4)"
  end
  if value == 5 then
    return "Rule Type: Number Of Breaches (5)"
  end
  if value == 6 then
    return "Rule Type: Allow Iso Orders (6)"
  end
  if value == 7 then
    return "Rule Type: Allow Orders In Crossed Market (7)"
  end
  if value == 8 then
    return "Rule Type: Max Notional (8)"
  end
  if value == 9 then
    return "Rule Type: Max Contracts (9)"
  end
  if value == 10 then
    return "Rule Type: Gross Notional (10)"
  end
  if value == 11 then
    return "Rule Type: Market Order Gross Notional (11)"
  end
  if value == 12 then
    return "Rule Type: Net Notional (12)"
  end
  if value == 13 then
    return "Rule Type: Market Order Net Notional (13)"
  end
  if value == 14 then
    return "Rule Type: Duplicate Order (14)"
  end
  if value == 15 then
    return "Rule Type: Order Rate (15)"
  end
  if value == 16 then
    return "Rule Type: Allow Market Orders (16)"
  end
  if value == 17 then
    return "Rule Type: Restricted Underlier (17)"
  end
  if value == 254 then
    return "Rule Type: Triggered Breach (254)"
  end

  return "Rule Type: Unknown("..value..")"
end

-- Dissect: Rule Type
memx_options_riskcontrol_sbe_v1_7.rule_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.rule_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.rule_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.rule_type, range, value, display)

  return offset + length, value
end

-- Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message = {}

-- Size: Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.size =
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.rule_type.size + 
  memx_options_riskcontrol_sbe_v1_7.latest_percentage.size + 
  memx_options_riskcontrol_sbe_v1_7.breach_id_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.transact_time.size

-- Display: Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Rule Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, rule_type = memx_options_riskcontrol_sbe_v1_7.rule_type.dissect(buffer, index, packet, parent)

  -- Latest Percentage: 1 Byte Unsigned Fixed Width Integer
  index, latest_percentage = memx_options_riskcontrol_sbe_v1_7.latest_percentage.dissect(buffer, index, packet, parent)

  -- Breach Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, breach_id_optional = memx_options_riskcontrol_sbe_v1_7.breach_id_optional.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_riskcontrol_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.passive_risk_threshold_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.passive_risk_threshold_notification_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Type
memx_options_riskcontrol_sbe_v1_7.risk_type = {}

-- Size: Risk Type
memx_options_riskcontrol_sbe_v1_7.risk_type.size = 1

-- Display: Risk Type
memx_options_riskcontrol_sbe_v1_7.risk_type.display = function(value)
  if value == 1 then
    return "Risk Type: Contract Volume (1)"
  end
  if value == 2 then
    return "Risk Type: Notional Executed (2)"
  end
  if value == 3 then
    return "Risk Type: Total Trades Executed (3)"
  end
  if value == 4 then
    return "Risk Type: Percent Executed (4)"
  end
  if value == 5 then
    return "Risk Type: Number Of Breaches (5)"
  end
  if value == 6 then
    return "Risk Type: Allow Iso Orders (6)"
  end
  if value == 7 then
    return "Risk Type: Allow Orders In Crossed Market (7)"
  end
  if value == 8 then
    return "Risk Type: Max Notional (8)"
  end
  if value == 9 then
    return "Risk Type: Max Contracts (9)"
  end
  if value == 10 then
    return "Risk Type: Gross Notional (10)"
  end
  if value == 11 then
    return "Risk Type: Market Order Gross Notional (11)"
  end
  if value == 12 then
    return "Risk Type: Net Notional (12)"
  end
  if value == 13 then
    return "Risk Type: Market Order Net Notional (13)"
  end
  if value == 14 then
    return "Risk Type: Duplicate Order (14)"
  end
  if value == 15 then
    return "Risk Type: Order Rate (15)"
  end
  if value == 16 then
    return "Risk Type: Allow Market Orders (16)"
  end
  if value == 17 then
    return "Risk Type: Restricted Underlier (17)"
  end
  if value == 254 then
    return "Risk Type: Triggered Breach (254)"
  end

  return "Risk Type: Unknown("..value..")"
end

-- Dissect: Risk Type
memx_options_riskcontrol_sbe_v1_7.risk_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.risk_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.risk_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_type, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Risk Threshold Update Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id = {}

-- Size: Cl Ord I D Risk Threshold Update Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id.size = 20

-- Display: Cl Ord I D Risk Threshold Update Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Risk Threshold Update Rejected Cl Ord Id: No Value"
  end

  return "Cl Ord I D Risk Threshold Update Rejected Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Risk Threshold Update Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Risk Threshold Update Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message = {}

-- Size: Risk Threshold Update Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_type.size + 
  memx_options_riskcontrol_sbe_v1_7.reject_reason.size

-- Display: Risk Threshold Update Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Threshold Update Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Risk Threshold Update Rejected Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_risk_threshold_update_rejected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, risk_type = memx_options_riskcontrol_sbe_v1_7.risk_type.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 55 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Threshold Update Rejected Message
memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.risk_threshold_update_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_threshold_update_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Affected Orders
memx_options_riskcontrol_sbe_v1_7.total_affected_orders = {}

-- Size: Total Affected Orders
memx_options_riskcontrol_sbe_v1_7.total_affected_orders.size = 4

-- Display: Total Affected Orders
memx_options_riskcontrol_sbe_v1_7.total_affected_orders.display = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
memx_options_riskcontrol_sbe_v1_7.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Breach Id
memx_options_riskcontrol_sbe_v1_7.breach_id = {}

-- Size: Breach Id
memx_options_riskcontrol_sbe_v1_7.breach_id.size = 8

-- Display: Breach Id
memx_options_riskcontrol_sbe_v1_7.breach_id.display = function(value)
  return "Breach Id: "..value
end

-- Dissect: Breach Id
memx_options_riskcontrol_sbe_v1_7.breach_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.breach_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.breach_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.breach_id, range, value, display)

  return offset + length, value
end

-- Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message = {}

-- Size: Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.breach_id.size + 
  memx_options_riskcontrol_sbe_v1_7.total_affected_orders.size

-- Display: Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Breach Id: 8 Byte Unsigned Fixed Width Integer
  index, breach_id = memx_options_riskcontrol_sbe_v1_7.breach_id.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Unsigned Fixed Width Integer
  index, total_affected_orders = memx_options_riskcontrol_sbe_v1_7.total_affected_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.dissect = function(buffer, offset, packet, parent)
  if show.manual_cp_breach_trigger_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.manual_cp_breach_trigger_done_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message = {}

-- Size: Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size

-- Display: Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.manual_cp_breach_trigger_pending_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.manual_cp_breach_trigger_pending_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Count
memx_options_riskcontrol_sbe_v1_7.count = {}

-- Size: Count
memx_options_riskcontrol_sbe_v1_7.count.size = 4

-- Display: Count
memx_options_riskcontrol_sbe_v1_7.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
memx_options_riskcontrol_sbe_v1_7.count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.count, range, value, display)

  return offset + length, value
end

-- Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message = {}

-- Size: Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.count.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_options_riskcontrol_sbe_v1_7.count.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_breach_count_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_breach_count_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Percent
memx_options_riskcontrol_sbe_v1_7.percent = {}

-- Size: Percent
memx_options_riskcontrol_sbe_v1_7.percent.size = 4

-- Display: Percent
memx_options_riskcontrol_sbe_v1_7.percent.display = function(value)
  return "Percent: "..value
end

-- Dissect: Percent
memx_options_riskcontrol_sbe_v1_7.percent.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = memx_options_riskcontrol_sbe_v1_7.percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.percent, range, value, display)

  return offset + length, value
end

-- Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message = {}

-- Size: Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.percent.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Percent: 4 Byte Signed Fixed Width Integer
  index, percent = memx_options_riskcontrol_sbe_v1_7.percent.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_percent_outstanding_contracts_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_percent_outstanding_contracts_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Executions
memx_options_riskcontrol_sbe_v1_7.total_executions = {}

-- Size: Total Executions
memx_options_riskcontrol_sbe_v1_7.total_executions.size = 4

-- Display: Total Executions
memx_options_riskcontrol_sbe_v1_7.total_executions.display = function(value)
  return "Total Executions: "..value
end

-- Dissect: Total Executions
memx_options_riskcontrol_sbe_v1_7.total_executions.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.total_executions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.total_executions.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.total_executions, range, value, display)

  return offset + length, value
end

-- Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message = {}

-- Size: Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.total_executions.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Total Executions: 4 Byte Unsigned Fixed Width Integer
  index, total_executions = memx_options_riskcontrol_sbe_v1_7.total_executions.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_total_executions_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_total_executions_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message = {}

-- Size: Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_executed_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_executed_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Volume
memx_options_riskcontrol_sbe_v1_7.volume = {}

-- Size: Volume
memx_options_riskcontrol_sbe_v1_7.volume.size = 8

-- Display: Volume
memx_options_riskcontrol_sbe_v1_7.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
memx_options_riskcontrol_sbe_v1_7.volume.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.volume, range, value, display)

  return offset + length, value
end

-- Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message = {}

-- Size: Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.volume.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Volume: 8 Byte Unsigned Fixed Width Integer
  index, volume = memx_options_riskcontrol_sbe_v1_7.volume.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_volume_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_volume_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Unacked Quantity
memx_options_riskcontrol_sbe_v1_7.unacked_quantity = {}

-- Size: Unacked Quantity
memx_options_riskcontrol_sbe_v1_7.unacked_quantity.size = 4

-- Display: Unacked Quantity
memx_options_riskcontrol_sbe_v1_7.unacked_quantity.display = function(value)
  return "Unacked Quantity: "..value
end

-- Dissect: Unacked Quantity
memx_options_riskcontrol_sbe_v1_7.unacked_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.unacked_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.unacked_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.unacked_quantity, range, value, display)

  return offset + length, value
end

-- Last Qty
memx_options_riskcontrol_sbe_v1_7.last_qty = {}

-- Size: Last Qty
memx_options_riskcontrol_sbe_v1_7.last_qty.size = 4

-- Display: Last Qty
memx_options_riskcontrol_sbe_v1_7.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
memx_options_riskcontrol_sbe_v1_7.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.last_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Px
memx_options_riskcontrol_sbe_v1_7.last_px = {}

-- Size: Last Px
memx_options_riskcontrol_sbe_v1_7.last_px.size = 8

-- Display: Last Px
memx_options_riskcontrol_sbe_v1_7.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
memx_options_riskcontrol_sbe_v1_7.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
memx_options_riskcontrol_sbe_v1_7.last_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.last_px.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_riskcontrol_sbe_v1_7.last_px.translate(raw)
  local display = memx_options_riskcontrol_sbe_v1_7.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.last_px, range, value, display)

  return offset + length, value
end

-- Side
memx_options_riskcontrol_sbe_v1_7.side = {}

-- Size: Side
memx_options_riskcontrol_sbe_v1_7.side.size = 1

-- Display: Side
memx_options_riskcontrol_sbe_v1_7.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
memx_options_riskcontrol_sbe_v1_7.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.side, range, value, display)

  return offset + length, value
end

-- Option Security Id
memx_options_riskcontrol_sbe_v1_7.option_security_id = {}

-- Size: Option Security Id
memx_options_riskcontrol_sbe_v1_7.option_security_id.size = 8

-- Display: Option Security Id
memx_options_riskcontrol_sbe_v1_7.option_security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Option Security Id: No Value"
  end

  return "Option Security Id: "..value
end

-- Dissect: Option Security Id
memx_options_riskcontrol_sbe_v1_7.option_security_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.option_security_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.option_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.option_security_id, range, value, display)

  return offset + length, value
end

-- Underlier
memx_options_riskcontrol_sbe_v1_7.underlier = {}

-- Size: Underlier
memx_options_riskcontrol_sbe_v1_7.underlier.size = 6

-- Display: Underlier
memx_options_riskcontrol_sbe_v1_7.underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier: No Value"
  end

  return "Underlier: "..value
end

-- Dissect: Underlier
memx_options_riskcontrol_sbe_v1_7.underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier, range, value, display)

  return offset + length, value
end

-- Efid
memx_options_riskcontrol_sbe_v1_7.efid = {}

-- Size: Efid
memx_options_riskcontrol_sbe_v1_7.efid.size = 4

-- Display: Efid
memx_options_riskcontrol_sbe_v1_7.efid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efid: No Value"
  end

  return "Efid: "..value
end

-- Dissect: Efid
memx_options_riskcontrol_sbe_v1_7.efid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efid.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efid, range, value, display)

  return offset + length, value
end

-- Trd Match Id
memx_options_riskcontrol_sbe_v1_7.trd_match_id = {}

-- Size: Trd Match Id
memx_options_riskcontrol_sbe_v1_7.trd_match_id.size = 8

-- Display: Trd Match Id
memx_options_riskcontrol_sbe_v1_7.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
memx_options_riskcontrol_sbe_v1_7.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Order Id
memx_options_riskcontrol_sbe_v1_7.order_id = {}

-- Size: Order Id
memx_options_riskcontrol_sbe_v1_7.order_id.size = 8

-- Display: Order Id
memx_options_riskcontrol_sbe_v1_7.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_options_riskcontrol_sbe_v1_7.order_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.order_id, range, value, display)

  return offset + length, value
end

-- Sending Time
memx_options_riskcontrol_sbe_v1_7.sending_time = {}

-- Size: Sending Time
memx_options_riskcontrol_sbe_v1_7.sending_time.size = 8

-- Display: Sending Time
memx_options_riskcontrol_sbe_v1_7.sending_time.display = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
memx_options_riskcontrol_sbe_v1_7.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message = {}

-- Size: Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.size =
  memx_options_riskcontrol_sbe_v1_7.sending_time.size + 
  memx_options_riskcontrol_sbe_v1_7.transact_time.size + 
  memx_options_riskcontrol_sbe_v1_7.order_id.size + 
  memx_options_riskcontrol_sbe_v1_7.trd_match_id.size + 
  memx_options_riskcontrol_sbe_v1_7.efid.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier.size + 
  memx_options_riskcontrol_sbe_v1_7.option_security_id.size + 
  memx_options_riskcontrol_sbe_v1_7.side.size + 
  memx_options_riskcontrol_sbe_v1_7.last_px.size + 
  memx_options_riskcontrol_sbe_v1_7.last_qty.size + 
  memx_options_riskcontrol_sbe_v1_7.unacked_quantity.size

-- Display: Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_riskcontrol_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_riskcontrol_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_riskcontrol_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_options_riskcontrol_sbe_v1_7.trd_match_id.dissect(buffer, index, packet, parent)

  -- Efid: 4 Byte Ascii String
  index, efid = memx_options_riskcontrol_sbe_v1_7.efid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_riskcontrol_sbe_v1_7.underlier.dissect(buffer, index, packet, parent)

  -- Option Security Id: 8 Byte Ascii String
  index, option_security_id = memx_options_riskcontrol_sbe_v1_7.option_security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = memx_options_riskcontrol_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_riskcontrol_sbe_v1_7.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_options_riskcontrol_sbe_v1_7.last_qty.dissect(buffer, index, packet, parent)

  -- Unacked Quantity: 4 Byte Unsigned Fixed Width Integer
  index, unacked_quantity = memx_options_riskcontrol_sbe_v1_7.unacked_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_quantity_update_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_quantity_update_notification_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Threshold Quantity
memx_options_riskcontrol_sbe_v1_7.threshold_quantity = {}

-- Size: Threshold Quantity
memx_options_riskcontrol_sbe_v1_7.threshold_quantity.size = 4

-- Display: Threshold Quantity
memx_options_riskcontrol_sbe_v1_7.threshold_quantity.display = function(value)
  return "Threshold Quantity: "..value
end

-- Dissect: Threshold Quantity
memx_options_riskcontrol_sbe_v1_7.threshold_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.threshold_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.threshold_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.threshold_quantity, range, value, display)

  return offset + length, value
end

-- Efi D Active Risk Acknowledge Rejected Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_rejected_efid = {}

-- Size: Efi D Active Risk Acknowledge Rejected Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_rejected_efid.size = 4

-- Display: Efi D Active Risk Acknowledge Rejected Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_rejected_efid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Active Risk Acknowledge Rejected Efid: No Value"
  end

  return "Efi D Active Risk Acknowledge Rejected Efid: "..value
end

-- Dissect: Efi D Active Risk Acknowledge Rejected Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_rejected_efid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_rejected_efid.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_rejected_efid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_acknowledge_rejected_efid, range, value, display)

  return offset + length, value
end

-- Underlier Active Risk Acknowledge Rejected Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_rejected_underlier = {}

-- Size: Underlier Active Risk Acknowledge Rejected Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_rejected_underlier.size = 6

-- Display: Underlier Active Risk Acknowledge Rejected Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_rejected_underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Active Risk Acknowledge Rejected Underlier: No Value"
  end

  return "Underlier Active Risk Acknowledge Rejected Underlier: "..value
end

-- Dissect: Underlier Active Risk Acknowledge Rejected Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_rejected_underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_rejected_underlier.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_rejected_underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_acknowledge_rejected_underlier, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Active Risk Acknowledge Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id = {}

-- Size: Cl Ord I D Active Risk Acknowledge Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id.size = 20

-- Display: Cl Ord I D Active Risk Acknowledge Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Active Risk Acknowledge Rejected Cl Ord Id: No Value"
  end

  return "Cl Ord I D Active Risk Acknowledge Rejected Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Active Risk Acknowledge Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Active Risk Acknowledge Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message = {}

-- Size: Active Risk Acknowledge Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_rejected_underlier.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_rejected_efid.size + 
  memx_options_riskcontrol_sbe_v1_7.threshold_quantity.size + 
  memx_options_riskcontrol_sbe_v1_7.reject_reason.size

-- Display: Active Risk Acknowledge Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Acknowledge Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Active Risk Acknowledge Rejected Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_rejected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Active Risk Acknowledge Rejected Underlier: 6 Byte Ascii String
  index, underlier_active_risk_acknowledge_rejected_underlier = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_rejected_underlier.dissect(buffer, index, packet, parent)

  -- Efi D Active Risk Acknowledge Rejected Efid: 4 Byte Ascii String
  index, efi_d_active_risk_acknowledge_rejected_efid = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_rejected_efid.dissect(buffer, index, packet, parent)

  -- Threshold Quantity: 4 Byte Unsigned Fixed Width Integer
  index, threshold_quantity = memx_options_riskcontrol_sbe_v1_7.threshold_quantity.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 55 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Acknowledge Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_acknowledge_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_acknowledge_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
memx_options_riskcontrol_sbe_v1_7.quantity = {}

-- Size: Quantity
memx_options_riskcontrol_sbe_v1_7.quantity.size = 4

-- Display: Quantity
memx_options_riskcontrol_sbe_v1_7.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
memx_options_riskcontrol_sbe_v1_7.quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.quantity, range, value, display)

  return offset + length, value
end

-- Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message = {}

-- Size: Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier.size + 
  memx_options_riskcontrol_sbe_v1_7.efid.size + 
  memx_options_riskcontrol_sbe_v1_7.quantity.size + 
  memx_options_riskcontrol_sbe_v1_7.unacked_quantity.size

-- Display: Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_riskcontrol_sbe_v1_7.underlier.dissect(buffer, index, packet, parent)

  -- Efid: 4 Byte Ascii String
  index, efid = memx_options_riskcontrol_sbe_v1_7.efid.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_riskcontrol_sbe_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Unacked Quantity: 4 Byte Unsigned Fixed Width Integer
  index, unacked_quantity = memx_options_riskcontrol_sbe_v1_7.unacked_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_acknowledged_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_acknowledged_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Active Risk Threshold Change Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_rejected_efi_d_optional = {}

-- Size: Efi D Active Risk Threshold Change Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_rejected_efi_d_optional.size = 4

-- Display: Efi D Active Risk Threshold Change Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_rejected_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Active Risk Threshold Change Rejected Efi D optional: No Value"
  end

  return "Efi D Active Risk Threshold Change Rejected Efi D optional: "..value
end

-- Dissect: Efi D Active Risk Threshold Change Rejected Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_rejected_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_rejected_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_rejected_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_threshold_change_rejected_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Active Risk Threshold Change Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_rejected_underlier_optional = {}

-- Size: Underlier Active Risk Threshold Change Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_rejected_underlier_optional.size = 6

-- Display: Underlier Active Risk Threshold Change Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_rejected_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Active Risk Threshold Change Rejected Underlier optional: No Value"
  end

  return "Underlier Active Risk Threshold Change Rejected Underlier optional: "..value
end

-- Dissect: Underlier Active Risk Threshold Change Rejected Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_rejected_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_rejected_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_rejected_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_threshold_change_rejected_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Active Risk Threshold Change Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id = {}

-- Size: Cl Ord I D Active Risk Threshold Change Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id.size = 20

-- Display: Cl Ord I D Active Risk Threshold Change Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Active Risk Threshold Change Rejected Cl Ord Id: No Value"
  end

  return "Cl Ord I D Active Risk Threshold Change Rejected Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Active Risk Threshold Change Rejected Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Active Risk Threshold Change Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message = {}

-- Size: Active Risk Threshold Change Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_rejected_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_rejected_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.threshold_quantity.size + 
  memx_options_riskcontrol_sbe_v1_7.reject_reason.size

-- Display: Active Risk Threshold Change Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Threshold Change Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Active Risk Threshold Change Rejected Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_rejected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Active Risk Threshold Change Rejected Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_active_risk_threshold_change_rejected_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_rejected_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Active Risk Threshold Change Rejected Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_active_risk_threshold_change_rejected_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_rejected_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Threshold Quantity: 4 Byte Unsigned Fixed Width Integer
  index, threshold_quantity = memx_options_riskcontrol_sbe_v1_7.threshold_quantity.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 55 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_7.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Threshold Change Rejected Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_threshold_change_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_threshold_change_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message = {}

-- Size: Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier.size + 
  memx_options_riskcontrol_sbe_v1_7.efid.size + 
  memx_options_riskcontrol_sbe_v1_7.threshold_quantity.size + 
  memx_options_riskcontrol_sbe_v1_7.unacked_quantity.size

-- Display: Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_7.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_riskcontrol_sbe_v1_7.underlier.dissect(buffer, index, packet, parent)

  -- Efid: 4 Byte Ascii String
  index, efid = memx_options_riskcontrol_sbe_v1_7.efid.dissect(buffer, index, packet, parent)

  -- Threshold Quantity: 4 Byte Unsigned Fixed Width Integer
  index, threshold_quantity = memx_options_riskcontrol_sbe_v1_7.threshold_quantity.dissect(buffer, index, packet, parent)

  -- Unacked Quantity: 4 Byte Unsigned Fixed Width Integer
  index, unacked_quantity = memx_options_riskcontrol_sbe_v1_7.unacked_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Active Risk Acknowledge All Request Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_all_request_efid = {}

-- Size: Efi D Active Risk Acknowledge All Request Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_all_request_efid.size = 4

-- Display: Efi D Active Risk Acknowledge All Request Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_all_request_efid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Active Risk Acknowledge All Request Efid: No Value"
  end

  return "Efi D Active Risk Acknowledge All Request Efid: "..value
end

-- Dissect: Efi D Active Risk Acknowledge All Request Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_all_request_efid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_all_request_efid.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_all_request_efid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_acknowledge_all_request_efid, range, value, display)

  return offset + length, value
end

-- Underlier Active Risk Acknowledge All Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_all_request_underlier = {}

-- Size: Underlier Active Risk Acknowledge All Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_all_request_underlier.size = 6

-- Display: Underlier Active Risk Acknowledge All Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_all_request_underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Active Risk Acknowledge All Request Underlier: No Value"
  end

  return "Underlier Active Risk Acknowledge All Request Underlier: "..value
end

-- Dissect: Underlier Active Risk Acknowledge All Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_all_request_underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_all_request_underlier.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_all_request_underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_acknowledge_all_request_underlier, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Active Risk Acknowledge All Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id = {}

-- Size: Cl Ord I D Active Risk Acknowledge All Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Active Risk Acknowledge All Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Active Risk Acknowledge All Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Active Risk Acknowledge All Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Active Risk Acknowledge All Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Active Risk Acknowledge All Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message = {}

-- Size: Active Risk Acknowledge All Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_all_request_underlier.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_all_request_efid.size

-- Display: Active Risk Acknowledge All Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Acknowledge All Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Active Risk Acknowledge All Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledge_all_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Active Risk Acknowledge All Request Underlier: 6 Byte Ascii String
  index, underlier_active_risk_acknowledge_all_request_underlier = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledge_all_request_underlier.dissect(buffer, index, packet, parent)

  -- Efi D Active Risk Acknowledge All Request Efid: 4 Byte Ascii String
  index, efi_d_active_risk_acknowledge_all_request_efid = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledge_all_request_efid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Acknowledge All Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_acknowledge_all_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_acknowledge_all_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Clear All Breaches By Efid Or Underlier Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional = {}

-- Size: Efi D Cp Clear All Breaches By Efid Or Underlier Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional.size = 4

-- Display: Efi D Cp Clear All Breaches By Efid Or Underlier Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Clear All Breaches By Efid Or Underlier Request Efi D optional: No Value"
  end

  return "Efi D Cp Clear All Breaches By Efid Or Underlier Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Clear All Breaches By Efid Or Underlier Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Clear All Breaches By Efid Or Underlier Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional = {}

-- Size: Underlier Cp Clear All Breaches By Efid Or Underlier Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional.size = 6

-- Display: Underlier Cp Clear All Breaches By Efid Or Underlier Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Clear All Breaches By Efid Or Underlier Request Underlier optional: No Value"
  end

  return "Underlier Cp Clear All Breaches By Efid Or Underlier Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Clear All Breaches By Efid Or Underlier Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Clear All Breaches By Efid Or Underlier Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Clear All Breaches By Efid Or Underlier Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Clear All Breaches By Efid Or Underlier Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Clear All Breaches By Efid Or Underlier Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Clear All Breaches By Efid Or Underlier Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Clear All Breaches By Efid Or Underlier Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Clear All Breaches By Efid Or Underlier Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message = {}

-- Size: Cp Clear All Breaches By Efid Or Underlier Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional.size

-- Display: Cp Clear All Breaches By Efid Or Underlier Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Clear All Breaches By Efid Or Underlier Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Clear All Breaches By Efid Or Underlier Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_by_efid_or_underlier_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Clear All Breaches By Efid Or Underlier Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_clear_all_breaches_by_efid_or_underlier_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Clear All Breaches By Efid Or Underlier Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_clear_all_breaches_by_efid_or_underlier_request_efi_d_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Clear All Breaches By Efid Or Underlier Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_clear_all_breaches_by_efid_or_underlier_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_clear_all_breaches_by_efid_or_underlier_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cl Ord I D Cp Clear All Breaches Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Clear All Breaches Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Clear All Breaches Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Clear All Breaches Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Clear All Breaches Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Clear All Breaches Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Clear All Breaches Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message = {}

-- Size: Cp Clear All Breaches Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id.size

-- Display: Cp Clear All Breaches Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Clear All Breaches Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Clear All Breaches Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_all_breaches_request_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Clear All Breaches Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_clear_all_breaches_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_clear_all_breaches_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Order Rate Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_order_rate_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Order Rate Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_order_rate_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Order Rate Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_order_rate_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Order Rate Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Order Rate Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Order Rate Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_order_rate_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_order_rate_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_order_rate_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_order_rate_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Order Rate Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_order_rate_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Order Rate Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_order_rate_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Order Rate Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_order_rate_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Order Rate Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Order Rate Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Order Rate Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_order_rate_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_order_rate_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_order_rate_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_order_rate_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Order Rate Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Order Rate Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Order Rate Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Order Rate Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Order Rate Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Order Rate Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Order Rate Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message = {}

-- Size: Cp Order Rate Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_order_rate_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_order_rate_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.max_order_msgs.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Order Rate Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Order Rate Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Order Rate Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_order_rate_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Order Rate Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_order_rate_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_order_rate_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Order Rate Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_order_rate_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_order_rate_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Order Msgs: 4 Byte Unsigned Fixed Width Integer
  index, max_order_msgs = memx_options_riskcontrol_sbe_v1_7.max_order_msgs.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Order Rate Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_order_rate_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_order_rate_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Use Order Price In Dup Check Optional
memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check_optional = {}

-- Size: Use Order Price In Dup Check Optional
memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check_optional.size = 1

-- Display: Use Order Price In Dup Check Optional
memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check_optional.display = function(value)
  if value == 0 then
    return "Use Order Price In Dup Check Optional: False (0)"
  end
  if value == 1 then
    return "Use Order Price In Dup Check Optional: True (1)"
  end
  if value == 255 then
    return "Use Order Price In Dup Check Optional: No Value"
  end

  return "Use Order Price In Dup Check Optional: Unknown("..value..")"
end

-- Dissect: Use Order Price In Dup Check Optional
memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.use_order_price_in_dup_check_optional, range, value, display)

  return offset + length, value
end

-- Efi D Cp Duplicate Order Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Duplicate Order Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Duplicate Order Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Duplicate Order Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Duplicate Order Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Duplicate Order Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Duplicate Order Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_duplicate_order_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Duplicate Order Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_duplicate_order_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Duplicate Order Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_duplicate_order_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Duplicate Order Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Duplicate Order Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Duplicate Order Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_duplicate_order_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_duplicate_order_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_duplicate_order_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_duplicate_order_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Duplicate Order Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Duplicate Order Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Duplicate Order Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Duplicate Order Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Duplicate Order Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Duplicate Order Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Duplicate Order Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message = {}

-- Size: Cp Duplicate Order Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_duplicate_order_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.max_dup_orders.size + 
  memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Duplicate Order Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Duplicate Order Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Duplicate Order Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_duplicate_order_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Duplicate Order Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_duplicate_order_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_duplicate_order_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Duplicate Order Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_duplicate_order_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Dup Orders: 4 Byte Unsigned Fixed Width Integer
  index, max_dup_orders = memx_options_riskcontrol_sbe_v1_7.max_dup_orders.dissect(buffer, index, packet, parent)

  -- Use Order Price In Dup Check Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, use_order_price_in_dup_check_optional = memx_options_riskcontrol_sbe_v1_7.use_order_price_in_dup_check_optional.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Duplicate Order Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_duplicate_order_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_duplicate_order_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Market Order Net Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Market Order Net Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Market Order Net Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Market Order Net Notional Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Market Order Net Notional Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Market Order Net Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Market Order Net Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Market Order Net Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Market Order Net Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Market Order Net Notional Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Market Order Net Notional Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Market Order Net Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Market Order Net Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Market Order Net Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Market Order Net Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Market Order Net Notional Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Market Order Net Notional Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Market Order Net Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Market Order Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message = {}

-- Size: Cp Market Order Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size

-- Display: Cp Market Order Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Market Order Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Market Order Net Notional Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_net_notional_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Market Order Net Notional Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_net_notional_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Market Order Net Notional Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_net_notional_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Market Order Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_market_order_net_notional_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_market_order_net_notional_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Net Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_net_notional_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Net Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_net_notional_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Net Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_net_notional_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Net Notional Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Net Notional Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Net Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_net_notional_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_net_notional_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_net_notional_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_net_notional_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Net Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_net_notional_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Net Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_net_notional_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Net Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_net_notional_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Net Notional Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Net Notional Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Net Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_net_notional_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_net_notional_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_net_notional_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_net_notional_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Net Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Net Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Net Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Net Notional Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Net Notional Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Net Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message = {}

-- Size: Cp Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_net_notional_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_net_notional_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size

-- Display: Cp Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Net Notional Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_net_notional_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Net Notional Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_net_notional_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_net_notional_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Net Notional Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_net_notional_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_net_notional_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Net Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_net_notional_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_net_notional_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Market Order Gross Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Market Order Gross Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Market Order Gross Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Market Order Gross Notional Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Market Order Gross Notional Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Market Order Gross Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Market Order Gross Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Market Order Gross Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Market Order Gross Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Market Order Gross Notional Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Market Order Gross Notional Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Market Order Gross Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Market Order Gross Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Market Order Gross Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Market Order Gross Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Market Order Gross Notional Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Market Order Gross Notional Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Market Order Gross Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Market Order Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message = {}

-- Size: Cp Market Order Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size

-- Display: Cp Market Order Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Market Order Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Market Order Gross Notional Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_market_order_gross_notional_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Market Order Gross Notional Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_market_order_gross_notional_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Market Order Gross Notional Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_market_order_gross_notional_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Market Order Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_market_order_gross_notional_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_market_order_gross_notional_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Gross Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Gross Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Gross Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Gross Notional Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Gross Notional Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Gross Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Gross Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_gross_notional_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Gross Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_gross_notional_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Gross Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_gross_notional_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Gross Notional Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Gross Notional Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Gross Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_gross_notional_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_gross_notional_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_gross_notional_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_gross_notional_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Gross Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Gross Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Gross Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Gross Notional Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Gross Notional Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Gross Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message = {}

-- Size: Cp Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_gross_notional_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size

-- Display: Cp Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Gross Notional Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_gross_notional_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Gross Notional Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_gross_notional_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_gross_notional_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Gross Notional Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_gross_notional_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_gross_notional_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Gross Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_gross_notional_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_gross_notional_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Single Order Restricted Underlier Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_change_request_efi_d_optional = {}

-- Size: Efi D Single Order Restricted Underlier Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_change_request_efi_d_optional.size = 4

-- Display: Efi D Single Order Restricted Underlier Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Single Order Restricted Underlier Change Request Efi D optional: No Value"
  end

  return "Efi D Single Order Restricted Underlier Change Request Efi D optional: "..value
end

-- Dissect: Efi D Single Order Restricted Underlier Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_restricted_underlier_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Single Order Restricted Underlier Change Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_change_request_underlier = {}

-- Size: Underlier Single Order Restricted Underlier Change Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_change_request_underlier.size = 6

-- Display: Underlier Single Order Restricted Underlier Change Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_change_request_underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Single Order Restricted Underlier Change Request Underlier: No Value"
  end

  return "Underlier Single Order Restricted Underlier Change Request Underlier: "..value
end

-- Dissect: Underlier Single Order Restricted Underlier Change Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_change_request_underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_change_request_underlier.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_change_request_underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_restricted_underlier_change_request_underlier, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Single Order Restricted Underlier Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Single Order Restricted Underlier Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Single Order Restricted Underlier Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Single Order Restricted Underlier Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Single Order Restricted Underlier Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Single Order Restricted Underlier Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Single Order Restricted Underlier Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message = {}

-- Size: Single Order Restricted Underlier Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_change_request_underlier.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.restricted.size

-- Display: Single Order Restricted Underlier Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Restricted Underlier Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Single Order Restricted Underlier Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_restricted_underlier_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Single Order Restricted Underlier Change Request Underlier: 6 Byte Ascii String
  index, underlier_single_order_restricted_underlier_change_request_underlier = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_restricted_underlier_change_request_underlier.dissect(buffer, index, packet, parent)

  -- Efi D Single Order Restricted Underlier Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_single_order_restricted_underlier_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_restricted_underlier_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Restricted: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, restricted = memx_options_riskcontrol_sbe_v1_7.restricted.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Restricted Underlier Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_restricted_underlier_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_restricted_underlier_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Allow Market Orders
memx_options_riskcontrol_sbe_v1_7.allow_market_orders = {}

-- Size: Allow Market Orders
memx_options_riskcontrol_sbe_v1_7.allow_market_orders.size = 1

-- Display: Allow Market Orders
memx_options_riskcontrol_sbe_v1_7.allow_market_orders.display = function(value)
  if value == 0 then
    return "Allow Market Orders: False (0)"
  end
  if value == 1 then
    return "Allow Market Orders: True (1)"
  end

  return "Allow Market Orders: Unknown("..value..")"
end

-- Dissect: Allow Market Orders
memx_options_riskcontrol_sbe_v1_7.allow_market_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.allow_market_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.allow_market_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.allow_market_orders, range, value, display)

  return offset + length, value
end

-- Efi D Single Order Allow Market Orders Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_change_request_efi_d_optional = {}

-- Size: Efi D Single Order Allow Market Orders Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_change_request_efi_d_optional.size = 4

-- Display: Efi D Single Order Allow Market Orders Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Single Order Allow Market Orders Change Request Efi D optional: No Value"
  end

  return "Efi D Single Order Allow Market Orders Change Request Efi D optional: "..value
end

-- Dissect: Efi D Single Order Allow Market Orders Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_allow_market_orders_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Single Order Allow Market Orders Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_change_request_underlier_optional = {}

-- Size: Underlier Single Order Allow Market Orders Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_change_request_underlier_optional.size = 6

-- Display: Underlier Single Order Allow Market Orders Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Single Order Allow Market Orders Change Request Underlier optional: No Value"
  end

  return "Underlier Single Order Allow Market Orders Change Request Underlier optional: "..value
end

-- Dissect: Underlier Single Order Allow Market Orders Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_allow_market_orders_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Single Order Allow Market Orders Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Single Order Allow Market Orders Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Single Order Allow Market Orders Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Single Order Allow Market Orders Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Single Order Allow Market Orders Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Single Order Allow Market Orders Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Single Order Allow Market Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message = {}

-- Size: Single Order Allow Market Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.allow_market_orders.size

-- Display: Single Order Allow Market Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Market Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Single Order Allow Market Orders Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_market_orders_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Single Order Allow Market Orders Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_single_order_allow_market_orders_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_market_orders_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Single Order Allow Market Orders Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_single_order_allow_market_orders_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_market_orders_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Market Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_market_orders = memx_options_riskcontrol_sbe_v1_7.allow_market_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Market Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_market_orders_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_market_orders_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Single Order Max Contracts Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_contracts_change_request_efi_d_optional = {}

-- Size: Efi D Single Order Max Contracts Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_contracts_change_request_efi_d_optional.size = 4

-- Display: Efi D Single Order Max Contracts Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_contracts_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Single Order Max Contracts Change Request Efi D optional: No Value"
  end

  return "Efi D Single Order Max Contracts Change Request Efi D optional: "..value
end

-- Dissect: Efi D Single Order Max Contracts Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_contracts_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_contracts_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_contracts_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_max_contracts_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Single Order Max Contracts Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_contracts_change_request_underlier_optional = {}

-- Size: Underlier Single Order Max Contracts Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_contracts_change_request_underlier_optional.size = 6

-- Display: Underlier Single Order Max Contracts Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_contracts_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Single Order Max Contracts Change Request Underlier optional: No Value"
  end

  return "Underlier Single Order Max Contracts Change Request Underlier optional: "..value
end

-- Dissect: Underlier Single Order Max Contracts Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_contracts_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_contracts_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_contracts_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_max_contracts_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Single Order Max Contracts Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Single Order Max Contracts Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Single Order Max Contracts Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Single Order Max Contracts Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Single Order Max Contracts Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Single Order Max Contracts Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Single Order Max Contracts Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message = {}

-- Size: Single Order Max Contracts Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_contracts_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_contracts_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.max_contracts.size

-- Display: Single Order Max Contracts Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Max Contracts Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Single Order Max Contracts Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_contracts_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Single Order Max Contracts Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_single_order_max_contracts_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_contracts_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Single Order Max Contracts Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_single_order_max_contracts_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_contracts_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Contracts: 4 Byte Unsigned Fixed Width Integer
  index, max_contracts = memx_options_riskcontrol_sbe_v1_7.max_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Max Contracts Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_max_contracts_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_max_contracts_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Single Order Max Notional Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_notional_change_request_efi_d_optional = {}

-- Size: Efi D Single Order Max Notional Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_notional_change_request_efi_d_optional.size = 4

-- Display: Efi D Single Order Max Notional Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_notional_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Single Order Max Notional Change Request Efi D optional: No Value"
  end

  return "Efi D Single Order Max Notional Change Request Efi D optional: "..value
end

-- Dissect: Efi D Single Order Max Notional Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_notional_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_notional_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_notional_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_max_notional_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Single Order Max Notional Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_notional_change_request_underlier_optional = {}

-- Size: Underlier Single Order Max Notional Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_notional_change_request_underlier_optional.size = 6

-- Display: Underlier Single Order Max Notional Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_notional_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Single Order Max Notional Change Request Underlier optional: No Value"
  end

  return "Underlier Single Order Max Notional Change Request Underlier optional: "..value
end

-- Dissect: Underlier Single Order Max Notional Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_notional_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_notional_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_notional_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_max_notional_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Single Order Max Notional Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Single Order Max Notional Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Single Order Max Notional Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Single Order Max Notional Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Single Order Max Notional Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Single Order Max Notional Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Single Order Max Notional Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message = {}

-- Size: Single Order Max Notional Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_notional_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_notional_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.size

-- Display: Single Order Max Notional Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Max Notional Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Single Order Max Notional Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_max_notional_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Single Order Max Notional Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_single_order_max_notional_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_max_notional_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Single Order Max Notional Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_single_order_max_notional_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_max_notional_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Notional In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, max_notional_in_dollars = memx_options_riskcontrol_sbe_v1_7.max_notional_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Max Notional Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_max_notional_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_max_notional_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Single Order Allow Orders In Crossed Market Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional = {}

-- Size: Efi D Single Order Allow Orders In Crossed Market Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional.size = 4

-- Display: Efi D Single Order Allow Orders In Crossed Market Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Single Order Allow Orders In Crossed Market Change Request Efi D optional: No Value"
  end

  return "Efi D Single Order Allow Orders In Crossed Market Change Request Efi D optional: "..value
end

-- Dissect: Efi D Single Order Allow Orders In Crossed Market Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Single Order Allow Orders In Crossed Market Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional = {}

-- Size: Underlier Single Order Allow Orders In Crossed Market Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional.size = 6

-- Display: Underlier Single Order Allow Orders In Crossed Market Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Single Order Allow Orders In Crossed Market Change Request Underlier optional: No Value"
  end

  return "Underlier Single Order Allow Orders In Crossed Market Change Request Underlier optional: "..value
end

-- Dissect: Underlier Single Order Allow Orders In Crossed Market Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Single Order Allow Orders In Crossed Market Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Single Order Allow Orders In Crossed Market Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Single Order Allow Orders In Crossed Market Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Single Order Allow Orders In Crossed Market Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Single Order Allow Orders In Crossed Market Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Single Order Allow Orders In Crossed Market Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Single Order Allow Orders In Crossed Market Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message = {}

-- Size: Single Order Allow Orders In Crossed Market Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.allow_orders.size

-- Display: Single Order Allow Orders In Crossed Market Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Orders In Crossed Market Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Single Order Allow Orders In Crossed Market Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_orders_in_crossed_market_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Single Order Allow Orders In Crossed Market Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_orders_in_crossed_market_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Single Order Allow Orders In Crossed Market Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_orders_in_crossed_market_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_orders = memx_options_riskcontrol_sbe_v1_7.allow_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Orders In Crossed Market Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_orders_in_crossed_market_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_orders_in_crossed_market_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Single Order Allow Iso Orders Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional = {}

-- Size: Efi D Single Order Allow Iso Orders Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional.size = 4

-- Display: Efi D Single Order Allow Iso Orders Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Single Order Allow Iso Orders Change Request Efi D optional: No Value"
  end

  return "Efi D Single Order Allow Iso Orders Change Request Efi D optional: "..value
end

-- Dissect: Efi D Single Order Allow Iso Orders Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Single Order Allow Iso Orders Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_iso_orders_change_request_underlier_optional = {}

-- Size: Underlier Single Order Allow Iso Orders Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_iso_orders_change_request_underlier_optional.size = 6

-- Display: Underlier Single Order Allow Iso Orders Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_iso_orders_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Single Order Allow Iso Orders Change Request Underlier optional: No Value"
  end

  return "Underlier Single Order Allow Iso Orders Change Request Underlier optional: "..value
end

-- Dissect: Underlier Single Order Allow Iso Orders Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_iso_orders_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_iso_orders_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_iso_orders_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_single_order_allow_iso_orders_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Single Order Allow Iso Orders Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Single Order Allow Iso Orders Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Single Order Allow Iso Orders Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Single Order Allow Iso Orders Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Single Order Allow Iso Orders Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Single Order Allow Iso Orders Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Single Order Allow Iso Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message = {}

-- Size: Single Order Allow Iso Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_iso_orders_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.size

-- Display: Single Order Allow Iso Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Iso Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Single Order Allow Iso Orders Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_single_order_allow_iso_orders_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Single Order Allow Iso Orders Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_single_order_allow_iso_orders_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_single_order_allow_iso_orders_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Single Order Allow Iso Orders Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_single_order_allow_iso_orders_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_single_order_allow_iso_orders_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Iso Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_iso_orders = memx_options_riskcontrol_sbe_v1_7.allow_iso_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Iso Orders Change Request Message
memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_iso_orders_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.single_order_allow_iso_orders_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cl Ord I D Cp Clear Breach Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_breach_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Clear Breach Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_breach_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Clear Breach Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_breach_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Clear Breach Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Clear Breach Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Clear Breach Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_breach_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_breach_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_breach_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_clear_breach_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Clear Breach Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message = {}

-- Size: Cp Clear Breach Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_breach_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.breach_id.size

-- Display: Cp Clear Breach Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Clear Breach Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Clear Breach Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_clear_breach_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_clear_breach_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Breach Id: 8 Byte Unsigned Fixed Width Integer
  index, breach_id = memx_options_riskcontrol_sbe_v1_7.breach_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Clear Breach Request Message
memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_clear_breach_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_clear_breach_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Send Cancels
memx_options_riskcontrol_sbe_v1_7.send_cancels = {}

-- Size: Send Cancels
memx_options_riskcontrol_sbe_v1_7.send_cancels.size = 1

-- Display: Send Cancels
memx_options_riskcontrol_sbe_v1_7.send_cancels.display = function(value)
  if value == 0 then
    return "Send Cancels: False (0)"
  end
  if value == 1 then
    return "Send Cancels: True (1)"
  end
  if value == 255 then
    return "Send Cancels: No Value"
  end

  return "Send Cancels: Unknown("..value..")"
end

-- Dissect: Send Cancels
memx_options_riskcontrol_sbe_v1_7.send_cancels.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.send_cancels.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.send_cancels.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.send_cancels, range, value, display)

  return offset + length, value
end

-- Efi D Manual Cp Breach Trigger Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_request_efi_d_optional = {}

-- Size: Efi D Manual Cp Breach Trigger Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_request_efi_d_optional.size = 4

-- Display: Efi D Manual Cp Breach Trigger Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Manual Cp Breach Trigger Request Efi D optional: No Value"
  end

  return "Efi D Manual Cp Breach Trigger Request Efi D optional: "..value
end

-- Dissect: Efi D Manual Cp Breach Trigger Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_manual_cp_breach_trigger_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Manual Cp Breach Trigger Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_request_underlier_optional = {}

-- Size: Underlier Manual Cp Breach Trigger Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_request_underlier_optional.size = 6

-- Display: Underlier Manual Cp Breach Trigger Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Manual Cp Breach Trigger Request Underlier optional: No Value"
  end

  return "Underlier Manual Cp Breach Trigger Request Underlier optional: "..value
end

-- Dissect: Underlier Manual Cp Breach Trigger Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_manual_cp_breach_trigger_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Manual Cp Breach Trigger Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id = {}

-- Size: Cl Ord I D Manual Cp Breach Trigger Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Manual Cp Breach Trigger Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Manual Cp Breach Trigger Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Manual Cp Breach Trigger Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Manual Cp Breach Trigger Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Manual Cp Breach Trigger Request Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message = {}

-- Size: Manual Cp Breach Trigger Request Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.send_cancels.size

-- Display: Manual Cp Breach Trigger Request Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Cp Breach Trigger Request Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Manual Cp Breach Trigger Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_manual_cp_breach_trigger_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Manual Cp Breach Trigger Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_manual_cp_breach_trigger_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_manual_cp_breach_trigger_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Manual Cp Breach Trigger Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_manual_cp_breach_trigger_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_manual_cp_breach_trigger_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Send Cancels: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, send_cancels = memx_options_riskcontrol_sbe_v1_7.send_cancels.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Cp Breach Trigger Request Message
memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.dissect = function(buffer, offset, packet, parent)
  if show.manual_cp_breach_trigger_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.manual_cp_breach_trigger_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Breach Count Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_breach_count_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Breach Count Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_breach_count_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Breach Count Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_breach_count_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Breach Count Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Breach Count Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Breach Count Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_breach_count_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_breach_count_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_breach_count_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_breach_count_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Breach Count Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_breach_count_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Breach Count Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_breach_count_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Breach Count Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_breach_count_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Breach Count Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Breach Count Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Breach Count Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_breach_count_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_breach_count_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_breach_count_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_breach_count_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Breach Count Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Breach Count Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Breach Count Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Breach Count Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Breach Count Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Breach Count Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Breach Count Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message = {}

-- Size: Cp Breach Count Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_breach_count_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_breach_count_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.count.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Breach Count Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Breach Count Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Breach Count Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_breach_count_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Breach Count Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_breach_count_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_breach_count_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Breach Count Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_breach_count_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_breach_count_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_options_riskcontrol_sbe_v1_7.count.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Breach Count Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_breach_count_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_breach_count_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Percent Outstanding Contracts Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Percent Outstanding Contracts Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Percent Outstanding Contracts Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Percent Outstanding Contracts Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Percent Outstanding Contracts Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Percent Outstanding Contracts Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Percent Outstanding Contracts Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Percent Outstanding Contracts Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Percent Outstanding Contracts Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Percent Outstanding Contracts Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Percent Outstanding Contracts Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Percent Outstanding Contracts Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Percent Outstanding Contracts Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Percent Outstanding Contracts Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Percent Outstanding Contracts Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Percent Outstanding Contracts Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Percent Outstanding Contracts Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Percent Outstanding Contracts Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Percent Outstanding Contracts Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message = {}

-- Size: Cp Percent Outstanding Contracts Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.percent.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Percent Outstanding Contracts Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Percent Outstanding Contracts Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Percent Outstanding Contracts Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_percent_outstanding_contracts_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Percent Outstanding Contracts Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_percent_outstanding_contracts_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Percent Outstanding Contracts Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_percent_outstanding_contracts_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Percent: 4 Byte Signed Fixed Width Integer
  index, percent = memx_options_riskcontrol_sbe_v1_7.percent.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Percent Outstanding Contracts Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_percent_outstanding_contracts_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_percent_outstanding_contracts_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Total Executions Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_total_executions_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Total Executions Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_total_executions_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Total Executions Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_total_executions_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Total Executions Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Total Executions Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Total Executions Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_total_executions_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_total_executions_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_total_executions_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_total_executions_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Total Executions Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_total_executions_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Total Executions Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_total_executions_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Total Executions Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_total_executions_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Total Executions Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Total Executions Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Total Executions Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_total_executions_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_total_executions_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_total_executions_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_total_executions_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Total Executions Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Total Executions Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Total Executions Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Total Executions Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Total Executions Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Total Executions Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Total Executions Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message = {}

-- Size: Cp Total Executions Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_total_executions_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_total_executions_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.total_executions.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Total Executions Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Total Executions Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Total Executions Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_total_executions_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Total Executions Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_total_executions_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_total_executions_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Total Executions Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_total_executions_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_total_executions_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Total Executions: 4 Byte Unsigned Fixed Width Integer
  index, total_executions = memx_options_riskcontrol_sbe_v1_7.total_executions.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Total Executions Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_total_executions_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_total_executions_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Executed Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Executed Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Executed Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Executed Notional Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Executed Notional Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Executed Notional Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Executed Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_executed_notional_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Executed Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_executed_notional_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Executed Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_executed_notional_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Executed Notional Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Executed Notional Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Executed Notional Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_executed_notional_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_executed_notional_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_executed_notional_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_executed_notional_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Executed Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Executed Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Executed Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Executed Notional Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Executed Notional Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Executed Notional Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Executed Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message = {}

-- Size: Cp Executed Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_executed_notional_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.price_in_dollars.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Executed Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Executed Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Executed Notional Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_executed_notional_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Executed Notional Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_executed_notional_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_executed_notional_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Executed Notional Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_executed_notional_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_executed_notional_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_7.price_in_dollars.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Executed Notional Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_executed_notional_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_executed_notional_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Cp Volume Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_volume_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Cp Volume Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_volume_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Cp Volume Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_volume_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Cp Volume Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Cp Volume Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Cp Volume Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_cp_volume_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_volume_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_volume_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_cp_volume_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Cp Volume Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_volume_threshold_change_request_underlier_optional = {}

-- Size: Underlier Cp Volume Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_volume_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Cp Volume Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_volume_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Cp Volume Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Cp Volume Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Cp Volume Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_cp_volume_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_cp_volume_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_cp_volume_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_cp_volume_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Cp Volume Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Cp Volume Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Cp Volume Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Cp Volume Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Cp Volume Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Cp Volume Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cp Volume Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message = {}

-- Size: Cp Volume Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_cp_volume_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_cp_volume_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_7.volume.size + 
  memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.size

-- Display: Cp Volume Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Volume Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Cp Volume Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_cp_volume_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Cp Volume Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_cp_volume_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_cp_volume_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Cp Volume Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_cp_volume_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_cp_volume_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Volume: 8 Byte Unsigned Fixed Width Integer
  index, volume = memx_options_riskcontrol_sbe_v1_7.volume.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_7.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Volume Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_volume_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cp_volume_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Active Risk Acknowledgement Request Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledgement_request_efid = {}

-- Size: Efi D Active Risk Acknowledgement Request Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledgement_request_efid.size = 4

-- Display: Efi D Active Risk Acknowledgement Request Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledgement_request_efid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Active Risk Acknowledgement Request Efid: No Value"
  end

  return "Efi D Active Risk Acknowledgement Request Efid: "..value
end

-- Dissect: Efi D Active Risk Acknowledgement Request Efid
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledgement_request_efid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledgement_request_efid.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledgement_request_efid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_acknowledgement_request_efid, range, value, display)

  return offset + length, value
end

-- Underlier Active Risk Acknowledgement Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledgement_request_underlier = {}

-- Size: Underlier Active Risk Acknowledgement Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledgement_request_underlier.size = 6

-- Display: Underlier Active Risk Acknowledgement Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledgement_request_underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Active Risk Acknowledgement Request Underlier: No Value"
  end

  return "Underlier Active Risk Acknowledgement Request Underlier: "..value
end

-- Dissect: Underlier Active Risk Acknowledgement Request Underlier
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledgement_request_underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledgement_request_underlier.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledgement_request_underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_acknowledgement_request_underlier, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Active Risk Acknowledgement Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id = {}

-- Size: Cl Ord I D Active Risk Acknowledgement Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Active Risk Acknowledgement Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Active Risk Acknowledgement Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Active Risk Acknowledgement Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Active Risk Acknowledgement Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Active Risk Acknowledgement Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message = {}

-- Size: Active Risk Acknowledgement Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledgement_request_underlier.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledgement_request_efid.size + 
  memx_options_riskcontrol_sbe_v1_7.quantity.size

-- Display: Active Risk Acknowledgement Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Acknowledgement Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Active Risk Acknowledgement Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_acknowledgement_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Active Risk Acknowledgement Request Underlier: 6 Byte Ascii String
  index, underlier_active_risk_acknowledgement_request_underlier = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_acknowledgement_request_underlier.dissect(buffer, index, packet, parent)

  -- Efi D Active Risk Acknowledgement Request Efid: 4 Byte Ascii String
  index, efi_d_active_risk_acknowledgement_request_efid = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_acknowledgement_request_efid.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_riskcontrol_sbe_v1_7.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Acknowledgement Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_acknowledgement_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_acknowledgement_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Efi D Active Risk Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_request_efi_d_optional = {}

-- Size: Efi D Active Risk Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_request_efi_d_optional.size = 4

-- Display: Efi D Active Risk Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Active Risk Threshold Change Request Efi D optional: No Value"
  end

  return "Efi D Active Risk Threshold Change Request Efi D optional: "..value
end

-- Dissect: Efi D Active Risk Threshold Change Request Efi D optional
memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_request_efi_d_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.efi_d_active_risk_threshold_change_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Underlier Active Risk Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_request_underlier_optional = {}

-- Size: Underlier Active Risk Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_request_underlier_optional.size = 6

-- Display: Underlier Active Risk Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Active Risk Threshold Change Request Underlier optional: No Value"
  end

  return "Underlier Active Risk Threshold Change Request Underlier optional: "..value
end

-- Dissect: Underlier Active Risk Threshold Change Request Underlier optional
memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_request_underlier_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.underlier_active_risk_threshold_change_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Active Risk Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id = {}

-- Size: Cl Ord I D Active Risk Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Active Risk Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Active Risk Threshold Change Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Active Risk Threshold Change Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Active Risk Threshold Change Request Cl Ord Id
memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Active Risk Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message = {}

-- Size: Active Risk Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id.size + 
  memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_request_underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_request_efi_d_optional.size + 
  memx_options_riskcontrol_sbe_v1_7.threshold_quantity.size

-- Display: Active Risk Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Active Risk Threshold Change Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id = memx_options_riskcontrol_sbe_v1_7.cl_ord_i_d_active_risk_threshold_change_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Underlier Active Risk Threshold Change Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_active_risk_threshold_change_request_underlier_optional = memx_options_riskcontrol_sbe_v1_7.underlier_active_risk_threshold_change_request_underlier_optional.dissect(buffer, index, packet, parent)

  -- Efi D Active Risk Threshold Change Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_active_risk_threshold_change_request_efi_d_optional = memx_options_riskcontrol_sbe_v1_7.efi_d_active_risk_threshold_change_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Threshold Quantity: 4 Byte Unsigned Fixed Width Integer
  index, threshold_quantity = memx_options_riskcontrol_sbe_v1_7.threshold_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Threshold Change Request Message
memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_threshold_change_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.active_risk_threshold_change_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message = {}

-- Size: Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.size =
  memx_options_riskcontrol_sbe_v1_7.clordid.size

-- Display: Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.dissect = function(buffer, offset, packet, parent)
  if show.risk_settings_query_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.risk_settings_query_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_options_riskcontrol_sbe_v1_7.payload = {}

-- Size: Payload
memx_options_riskcontrol_sbe_v1_7.payload.size = function(buffer, offset, template_id)
  -- Size of Risk Settings Query Message
  if template_id == 1 then
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.size
  end
  -- Size of Active Risk Threshold Change Request Message
  if template_id == 2 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.size
  end
  -- Size of Active Risk Acknowledgement Request Message
  if template_id == 3 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.size
  end
  -- Size of Cp Volume Threshold Change Request Message
  if template_id == 4 then
    return memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.size
  end
  -- Size of Cp Executed Notional Threshold Change Request Message
  if template_id == 5 then
    return memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.size
  end
  -- Size of Cp Total Executions Threshold Change Request Message
  if template_id == 6 then
    return memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.size
  end
  -- Size of Cp Percent Outstanding Contracts Threshold Change Request Message
  if template_id == 7 then
    return memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.size
  end
  -- Size of Cp Breach Count Threshold Change Request Message
  if template_id == 8 then
    return memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.size
  end
  -- Size of Manual Cp Breach Trigger Request Message
  if template_id == 9 then
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.size
  end
  -- Size of Cp Clear Breach Request Message
  if template_id == 10 then
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.size
  end
  -- Size of Single Order Allow Iso Orders Change Request Message
  if template_id == 11 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.size
  end
  -- Size of Single Order Allow Orders In Crossed Market Change Request Message
  if template_id == 12 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.size
  end
  -- Size of Single Order Max Notional Change Request Message
  if template_id == 13 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.size
  end
  -- Size of Single Order Max Contracts Change Request Message
  if template_id == 14 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.size
  end
  -- Size of Single Order Allow Market Orders Change Request Message
  if template_id == 15 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.size
  end
  -- Size of Single Order Restricted Underlier Change Request Message
  if template_id == 16 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.size
  end
  -- Size of Cp Gross Notional Threshold Change Request Message
  if template_id == 18 then
    return memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.size
  end
  -- Size of Cp Market Order Gross Notional Threshold Change Request Message
  if template_id == 19 then
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.size
  end
  -- Size of Cp Net Notional Threshold Change Request Message
  if template_id == 20 then
    return memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.size
  end
  -- Size of Cp Market Order Net Notional Threshold Change Request Message
  if template_id == 21 then
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.size
  end
  -- Size of Cp Duplicate Order Threshold Change Request Message
  if template_id == 22 then
    return memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.size
  end
  -- Size of Cp Order Rate Threshold Change Request Message
  if template_id == 23 then
    return memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.size
  end
  -- Size of Cp Clear All Breaches Request Message
  if template_id == 24 then
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.size
  end
  -- Size of Cp Clear All Breaches By Efid Or Underlier Request Message
  if template_id == 25 then
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.size
  end
  -- Size of Active Risk Acknowledge All Request Message
  if template_id == 26 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.size
  end
  -- Size of Active Risk Threshold State Message
  if template_id == 30 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.size
  end
  -- Size of Active Risk Threshold Change Rejected Message
  if template_id == 31 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.size
  end
  -- Size of Active Risk Acknowledged Message
  if template_id == 32 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.size
  end
  -- Size of Active Risk Acknowledge Rejected Message
  if template_id == 33 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.size
  end
  -- Size of Active Risk Quantity Update Notification Message
  if template_id == 34 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.size
  end
  -- Size of Cp Volume Threshold State Message
  if template_id == 35 then
    return memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.size
  end
  -- Size of Cp Executed Notional Threshold State Message
  if template_id == 36 then
    return memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.size
  end
  -- Size of Cp Total Executions Threshold State Message
  if template_id == 37 then
    return memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.size
  end
  -- Size of Cp Percent Outstanding Contracts Threshold State Message
  if template_id == 38 then
    return memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.size
  end
  -- Size of Cp Breach Count Threshold State Message
  if template_id == 39 then
    return memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.size
  end
  -- Size of Manual Cp Breach Trigger Pending Message
  if template_id == 40 then
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.size
  end
  -- Size of Manual Cp Breach Trigger Done Message
  if template_id == 41 then
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.size
  end
  -- Size of Risk Threshold Update Rejected Message
  if template_id == 42 then
    return memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.size
  end
  -- Size of Passive Risk Threshold Notification Message
  if template_id == 43 then
    return memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.size
  end
  -- Size of Single Order Allow Iso Orders State Message
  if template_id == 44 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.size
  end
  -- Size of Single Order Allow Orders In Crossed Market State Message
  if template_id == 45 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.size
  end
  -- Size of Single Order Max Notional Threshold State Message
  if template_id == 46 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.size
  end
  -- Size of Single Order Max Contracts Threshold State Message
  if template_id == 47 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.size
  end
  -- Size of Single Order Allow Market Orders State Message
  if template_id == 66 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.size
  end
  -- Size of Single Order Restricted Underlier State Message
  if template_id == 67 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.size
  end
  -- Size of Risk Settings Query Done Message
  if template_id == 48 then
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.size
  end
  -- Size of Risk Settings Query Rejected Message
  if template_id == 49 then
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.size
  end
  -- Size of Manual Cp Breach Trigger Rejected Message
  if template_id == 50 then
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.size
  end
  -- Size of Breach Clear Rejected Message
  if template_id == 51 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.size
  end
  -- Size of Breach Cleared Message
  if template_id == 52 then
    return memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.size
  end
  -- Size of Breach Clear All Accepted Message
  if template_id == 53 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.size
  end
  -- Size of Breach Clear All Rejected Message
  if template_id == 69 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.size
  end
  -- Size of Breach Clear All By Efid Or Underlier Accepted Message
  if template_id == 54 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.size
  end
  -- Size of Breach Clear All By Efid Or Underlier Rejected Message
  if template_id == 68 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.size
  end
  -- Size of Cp Gross Notional Threshold State Message
  if template_id == 60 then
    return memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.size
  end
  -- Size of Cp Market Order Gross Notional Threshold State Message
  if template_id == 61 then
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.size
  end
  -- Size of Cp Net Notional Threshold State Message
  if template_id == 62 then
    return memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.size
  end
  -- Size of Cp Market Order Net Notional Threshold State Message
  if template_id == 63 then
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.size
  end
  -- Size of Cp Duplicate Order Threshold State Message
  if template_id == 64 then
    return memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.size
  end
  -- Size of Cp Order Rate Threshold State Message
  if template_id == 65 then
    return memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.size
  end

  return 0
end

-- Display: Payload
memx_options_riskcontrol_sbe_v1_7.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_options_riskcontrol_sbe_v1_7.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Risk Settings Query Message
  if template_id == 1 then
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Threshold Change Request Message
  if template_id == 2 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Acknowledgement Request Message
  if template_id == 3 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledgement_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Volume Threshold Change Request Message
  if template_id == 4 then
    return memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Executed Notional Threshold Change Request Message
  if template_id == 5 then
    return memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Total Executions Threshold Change Request Message
  if template_id == 6 then
    return memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Percent Outstanding Contracts Threshold Change Request Message
  if template_id == 7 then
    return memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Breach Count Threshold Change Request Message
  if template_id == 8 then
    return memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Cp Breach Trigger Request Message
  if template_id == 9 then
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Clear Breach Request Message
  if template_id == 10 then
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_breach_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Iso Orders Change Request Message
  if template_id == 11 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Orders In Crossed Market Change Request Message
  if template_id == 12 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Max Notional Change Request Message
  if template_id == 13 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Max Contracts Change Request Message
  if template_id == 14 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Market Orders Change Request Message
  if template_id == 15 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Restricted Underlier Change Request Message
  if template_id == 16 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Gross Notional Threshold Change Request Message
  if template_id == 18 then
    return memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Market Order Gross Notional Threshold Change Request Message
  if template_id == 19 then
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Net Notional Threshold Change Request Message
  if template_id == 20 then
    return memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Market Order Net Notional Threshold Change Request Message
  if template_id == 21 then
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Duplicate Order Threshold Change Request Message
  if template_id == 22 then
    return memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Order Rate Threshold Change Request Message
  if template_id == 23 then
    return memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Clear All Breaches Request Message
  if template_id == 24 then
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Clear All Breaches By Efid Or Underlier Request Message
  if template_id == 25 then
    return memx_options_riskcontrol_sbe_v1_7.cp_clear_all_breaches_by_efid_or_underlier_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Acknowledge All Request Message
  if template_id == 26 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Threshold State Message
  if template_id == 30 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Threshold Change Rejected Message
  if template_id == 31 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_threshold_change_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Acknowledged Message
  if template_id == 32 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledged_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Acknowledge Rejected Message
  if template_id == 33 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_acknowledge_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Quantity Update Notification Message
  if template_id == 34 then
    return memx_options_riskcontrol_sbe_v1_7.active_risk_quantity_update_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Volume Threshold State Message
  if template_id == 35 then
    return memx_options_riskcontrol_sbe_v1_7.cp_volume_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Executed Notional Threshold State Message
  if template_id == 36 then
    return memx_options_riskcontrol_sbe_v1_7.cp_executed_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Total Executions Threshold State Message
  if template_id == 37 then
    return memx_options_riskcontrol_sbe_v1_7.cp_total_executions_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Percent Outstanding Contracts Threshold State Message
  if template_id == 38 then
    return memx_options_riskcontrol_sbe_v1_7.cp_percent_outstanding_contracts_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Breach Count Threshold State Message
  if template_id == 39 then
    return memx_options_riskcontrol_sbe_v1_7.cp_breach_count_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Cp Breach Trigger Pending Message
  if template_id == 40 then
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_pending_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Cp Breach Trigger Done Message
  if template_id == 41 then
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Threshold Update Rejected Message
  if template_id == 42 then
    return memx_options_riskcontrol_sbe_v1_7.risk_threshold_update_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Passive Risk Threshold Notification Message
  if template_id == 43 then
    return memx_options_riskcontrol_sbe_v1_7.passive_risk_threshold_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Iso Orders State Message
  if template_id == 44 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_iso_orders_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Orders In Crossed Market State Message
  if template_id == 45 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_orders_in_crossed_market_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Max Notional Threshold State Message
  if template_id == 46 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Max Contracts Threshold State Message
  if template_id == 47 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_max_contracts_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Market Orders State Message
  if template_id == 66 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_allow_market_orders_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Restricted Underlier State Message
  if template_id == 67 then
    return memx_options_riskcontrol_sbe_v1_7.single_order_restricted_underlier_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Settings Query Done Message
  if template_id == 48 then
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Settings Query Rejected Message
  if template_id == 49 then
    return memx_options_riskcontrol_sbe_v1_7.risk_settings_query_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Cp Breach Trigger Rejected Message
  if template_id == 50 then
    return memx_options_riskcontrol_sbe_v1_7.manual_cp_breach_trigger_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Breach Clear Rejected Message
  if template_id == 51 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Breach Cleared Message
  if template_id == 52 then
    return memx_options_riskcontrol_sbe_v1_7.breach_cleared_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Breach Clear All Accepted Message
  if template_id == 53 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Breach Clear All Rejected Message
  if template_id == 69 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Breach Clear All By Efid Or Underlier Accepted Message
  if template_id == 54 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Breach Clear All By Efid Or Underlier Rejected Message
  if template_id == 68 then
    return memx_options_riskcontrol_sbe_v1_7.breach_clear_all_by_efid_or_underlier_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Gross Notional Threshold State Message
  if template_id == 60 then
    return memx_options_riskcontrol_sbe_v1_7.cp_gross_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Market Order Gross Notional Threshold State Message
  if template_id == 61 then
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_gross_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Net Notional Threshold State Message
  if template_id == 62 then
    return memx_options_riskcontrol_sbe_v1_7.cp_net_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Market Order Net Notional Threshold State Message
  if template_id == 63 then
    return memx_options_riskcontrol_sbe_v1_7.cp_market_order_net_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Duplicate Order Threshold State Message
  if template_id == 64 then
    return memx_options_riskcontrol_sbe_v1_7.cp_duplicate_order_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Order Rate Threshold State Message
  if template_id == 65 then
    return memx_options_riskcontrol_sbe_v1_7.cp_order_rate_threshold_state_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_options_riskcontrol_sbe_v1_7.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_options_riskcontrol_sbe_v1_7.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_riskcontrol_sbe_v1_7.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_riskcontrol_sbe_v1_7.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.payload, range, display)

  return memx_options_riskcontrol_sbe_v1_7.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_options_riskcontrol_sbe_v1_7.version = {}

-- Size: Version
memx_options_riskcontrol_sbe_v1_7.version.size = 2

-- Display: Version
memx_options_riskcontrol_sbe_v1_7.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
memx_options_riskcontrol_sbe_v1_7.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_options_riskcontrol_sbe_v1_7.schema_id = {}

-- Size: Schema Id
memx_options_riskcontrol_sbe_v1_7.schema_id.size = 1

-- Display: Schema Id
memx_options_riskcontrol_sbe_v1_7.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
memx_options_riskcontrol_sbe_v1_7.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_options_riskcontrol_sbe_v1_7.template_id = {}

-- Size: Template Id
memx_options_riskcontrol_sbe_v1_7.template_id.size = 1

-- Display: Template Id
memx_options_riskcontrol_sbe_v1_7.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Risk Settings Query Message (1)"
  end
  if value == 2 then
    return "Template Id: Active Risk Threshold Change Request Message (2)"
  end
  if value == 3 then
    return "Template Id: Active Risk Acknowledgement Request Message (3)"
  end
  if value == 4 then
    return "Template Id: Cp Volume Threshold Change Request Message (4)"
  end
  if value == 5 then
    return "Template Id: Cp Executed Notional Threshold Change Request Message (5)"
  end
  if value == 6 then
    return "Template Id: Cp Total Executions Threshold Change Request Message (6)"
  end
  if value == 7 then
    return "Template Id: Cp Percent Outstanding Contracts Threshold Change Request Message (7)"
  end
  if value == 8 then
    return "Template Id: Cp Breach Count Threshold Change Request Message (8)"
  end
  if value == 9 then
    return "Template Id: Manual Cp Breach Trigger Request Message (9)"
  end
  if value == 10 then
    return "Template Id: Cp Clear Breach Request Message (10)"
  end
  if value == 11 then
    return "Template Id: Single Order Allow Iso Orders Change Request Message (11)"
  end
  if value == 12 then
    return "Template Id: Single Order Allow Orders In Crossed Market Change Request Message (12)"
  end
  if value == 13 then
    return "Template Id: Single Order Max Notional Change Request Message (13)"
  end
  if value == 14 then
    return "Template Id: Single Order Max Contracts Change Request Message (14)"
  end
  if value == 15 then
    return "Template Id: Single Order Allow Market Orders Change Request Message (15)"
  end
  if value == 16 then
    return "Template Id: Single Order Restricted Underlier Change Request Message (16)"
  end
  if value == 18 then
    return "Template Id: Cp Gross Notional Threshold Change Request Message (18)"
  end
  if value == 19 then
    return "Template Id: Cp Market Order Gross Notional Threshold Change Request Message (19)"
  end
  if value == 20 then
    return "Template Id: Cp Net Notional Threshold Change Request Message (20)"
  end
  if value == 21 then
    return "Template Id: Cp Market Order Net Notional Threshold Change Request Message (21)"
  end
  if value == 22 then
    return "Template Id: Cp Duplicate Order Threshold Change Request Message (22)"
  end
  if value == 23 then
    return "Template Id: Cp Order Rate Threshold Change Request Message (23)"
  end
  if value == 24 then
    return "Template Id: Cp Clear All Breaches Request Message (24)"
  end
  if value == 25 then
    return "Template Id: Cp Clear All Breaches By Efid Or Underlier Request Message (25)"
  end
  if value == 26 then
    return "Template Id: Active Risk Acknowledge All Request Message (26)"
  end
  if value == 30 then
    return "Template Id: Active Risk Threshold State Message (30)"
  end
  if value == 31 then
    return "Template Id: Active Risk Threshold Change Rejected Message (31)"
  end
  if value == 32 then
    return "Template Id: Active Risk Acknowledged Message (32)"
  end
  if value == 33 then
    return "Template Id: Active Risk Acknowledge Rejected Message (33)"
  end
  if value == 34 then
    return "Template Id: Active Risk Quantity Update Notification Message (34)"
  end
  if value == 35 then
    return "Template Id: Cp Volume Threshold State Message (35)"
  end
  if value == 36 then
    return "Template Id: Cp Executed Notional Threshold State Message (36)"
  end
  if value == 37 then
    return "Template Id: Cp Total Executions Threshold State Message (37)"
  end
  if value == 38 then
    return "Template Id: Cp Percent Outstanding Contracts Threshold State Message (38)"
  end
  if value == 39 then
    return "Template Id: Cp Breach Count Threshold State Message (39)"
  end
  if value == 40 then
    return "Template Id: Manual Cp Breach Trigger Pending Message (40)"
  end
  if value == 41 then
    return "Template Id: Manual Cp Breach Trigger Done Message (41)"
  end
  if value == 42 then
    return "Template Id: Risk Threshold Update Rejected Message (42)"
  end
  if value == 43 then
    return "Template Id: Passive Risk Threshold Notification Message (43)"
  end
  if value == 44 then
    return "Template Id: Single Order Allow Iso Orders State Message (44)"
  end
  if value == 45 then
    return "Template Id: Single Order Allow Orders In Crossed Market State Message (45)"
  end
  if value == 46 then
    return "Template Id: Single Order Max Notional Threshold State Message (46)"
  end
  if value == 47 then
    return "Template Id: Single Order Max Contracts Threshold State Message (47)"
  end
  if value == 66 then
    return "Template Id: Single Order Allow Market Orders State Message (66)"
  end
  if value == 67 then
    return "Template Id: Single Order Restricted Underlier State Message (67)"
  end
  if value == 48 then
    return "Template Id: Risk Settings Query Done Message (48)"
  end
  if value == 49 then
    return "Template Id: Risk Settings Query Rejected Message (49)"
  end
  if value == 50 then
    return "Template Id: Manual Cp Breach Trigger Rejected Message (50)"
  end
  if value == 51 then
    return "Template Id: Breach Clear Rejected Message (51)"
  end
  if value == 52 then
    return "Template Id: Breach Cleared Message (52)"
  end
  if value == 53 then
    return "Template Id: Breach Clear All Accepted Message (53)"
  end
  if value == 69 then
    return "Template Id: Breach Clear All Rejected Message (69)"
  end
  if value == 54 then
    return "Template Id: Breach Clear All By Efid Or Underlier Accepted Message (54)"
  end
  if value == 68 then
    return "Template Id: Breach Clear All By Efid Or Underlier Rejected Message (68)"
  end
  if value == 60 then
    return "Template Id: Cp Gross Notional Threshold State Message (60)"
  end
  if value == 61 then
    return "Template Id: Cp Market Order Gross Notional Threshold State Message (61)"
  end
  if value == 62 then
    return "Template Id: Cp Net Notional Threshold State Message (62)"
  end
  if value == 63 then
    return "Template Id: Cp Market Order Net Notional Threshold State Message (63)"
  end
  if value == 64 then
    return "Template Id: Cp Duplicate Order Threshold State Message (64)"
  end
  if value == 65 then
    return "Template Id: Cp Order Rate Threshold State Message (65)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
memx_options_riskcontrol_sbe_v1_7.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_options_riskcontrol_sbe_v1_7.block_length = {}

-- Size: Block Length
memx_options_riskcontrol_sbe_v1_7.block_length.size = 2

-- Display: Block Length
memx_options_riskcontrol_sbe_v1_7.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_options_riskcontrol_sbe_v1_7.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_options_riskcontrol_sbe_v1_7.sbe_header = {}

-- Size: Sbe Header
memx_options_riskcontrol_sbe_v1_7.sbe_header.size =
  memx_options_riskcontrol_sbe_v1_7.block_length.size + 
  memx_options_riskcontrol_sbe_v1_7.template_id.size + 
  memx_options_riskcontrol_sbe_v1_7.schema_id.size + 
  memx_options_riskcontrol_sbe_v1_7.version.size

-- Display: Sbe Header
memx_options_riskcontrol_sbe_v1_7.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_options_riskcontrol_sbe_v1_7.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_options_riskcontrol_sbe_v1_7.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 60 values
  index, template_id = memx_options_riskcontrol_sbe_v1_7.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_options_riskcontrol_sbe_v1_7.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_options_riskcontrol_sbe_v1_7.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_options_riskcontrol_sbe_v1_7.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.sbe_header, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_options_riskcontrol_sbe_v1_7.sbe_message = {}

-- Calculate size of: Sbe Message
memx_options_riskcontrol_sbe_v1_7.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_riskcontrol_sbe_v1_7.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_options_riskcontrol_sbe_v1_7.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_options_riskcontrol_sbe_v1_7.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_options_riskcontrol_sbe_v1_7.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_options_riskcontrol_sbe_v1_7.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 60 branches
  index = memx_options_riskcontrol_sbe_v1_7.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_options_riskcontrol_sbe_v1_7.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_options_riskcontrol_sbe_v1_7.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_riskcontrol_sbe_v1_7.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.sbe_message, range, display)
  end

  return memx_options_riskcontrol_sbe_v1_7.sbe_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Message
memx_options_riskcontrol_sbe_v1_7.sequenced_message = {}

-- Calculate size of: Sequenced Message
memx_options_riskcontrol_sbe_v1_7.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_riskcontrol_sbe_v1_7.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Sequenced Message
memx_options_riskcontrol_sbe_v1_7.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_options_riskcontrol_sbe_v1_7.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_riskcontrol_sbe_v1_7.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message
memx_options_riskcontrol_sbe_v1_7.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_options_riskcontrol_sbe_v1_7.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_riskcontrol_sbe_v1_7.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.sequenced_message, range, display)
  end

  return memx_options_riskcontrol_sbe_v1_7.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Total Sequence Count
memx_options_riskcontrol_sbe_v1_7.total_sequence_count = {}

-- Size: Total Sequence Count
memx_options_riskcontrol_sbe_v1_7.total_sequence_count.size = 8

-- Display: Total Sequence Count
memx_options_riskcontrol_sbe_v1_7.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
memx_options_riskcontrol_sbe_v1_7.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Stream Complete Message
memx_options_riskcontrol_sbe_v1_7.stream_complete_message = {}

-- Size: Stream Complete Message
memx_options_riskcontrol_sbe_v1_7.stream_complete_message.size =
  memx_options_riskcontrol_sbe_v1_7.total_sequence_count.size

-- Display: Stream Complete Message
memx_options_riskcontrol_sbe_v1_7.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
memx_options_riskcontrol_sbe_v1_7.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = memx_options_riskcontrol_sbe_v1_7.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
memx_options_riskcontrol_sbe_v1_7.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_complete_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Reject Code
memx_options_riskcontrol_sbe_v1_7.stream_reject_code = {}

-- Size: Stream Reject Code
memx_options_riskcontrol_sbe_v1_7.stream_reject_code.size = 1

-- Display: Stream Reject Code
memx_options_riskcontrol_sbe_v1_7.stream_reject_code.display = function(value)
  if value == "R" then
    return "Stream Reject Code: Stream Requests Are Not Allowed (R)"
  end
  if value == "P" then
    return "Stream Reject Code: Not The Active Session (P)"
  end
  if value == "S" then
    return "Stream Reject Code: Sequence Number Out Of Range (S)"
  end

  return "Stream Reject Code: Unknown("..value..")"
end

-- Dissect: Stream Reject Code
memx_options_riskcontrol_sbe_v1_7.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_7.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Stream Rejected Message
memx_options_riskcontrol_sbe_v1_7.stream_rejected_message = {}

-- Size: Stream Rejected Message
memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.stream_reject_code.size

-- Display: Stream Rejected Message
memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = memx_options_riskcontrol_sbe_v1_7.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Sequence Number
memx_options_riskcontrol_sbe_v1_7.max_sequence_number = {}

-- Size: Max Sequence Number
memx_options_riskcontrol_sbe_v1_7.max_sequence_number.size = 8

-- Display: Max Sequence Number
memx_options_riskcontrol_sbe_v1_7.max_sequence_number.display = function(value)
  return "Max Sequence Number: "..value
end

-- Dissect: Max Sequence Number
memx_options_riskcontrol_sbe_v1_7.max_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.max_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.max_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.max_sequence_number, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
memx_options_riskcontrol_sbe_v1_7.next_sequence_number = {}

-- Size: Next Sequence Number
memx_options_riskcontrol_sbe_v1_7.next_sequence_number.size = 8

-- Display: Next Sequence Number
memx_options_riskcontrol_sbe_v1_7.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
memx_options_riskcontrol_sbe_v1_7.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Begin Message
memx_options_riskcontrol_sbe_v1_7.stream_begin_message = {}

-- Size: Stream Begin Message
memx_options_riskcontrol_sbe_v1_7.stream_begin_message.size =
  memx_options_riskcontrol_sbe_v1_7.next_sequence_number.size + 
  memx_options_riskcontrol_sbe_v1_7.max_sequence_number.size

-- Display: Stream Begin Message
memx_options_riskcontrol_sbe_v1_7.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
memx_options_riskcontrol_sbe_v1_7.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_riskcontrol_sbe_v1_7.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, max_sequence_number = memx_options_riskcontrol_sbe_v1_7.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
memx_options_riskcontrol_sbe_v1_7.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_begin_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Count
memx_options_riskcontrol_sbe_v1_7.message_count = {}

-- Size: Message Count
memx_options_riskcontrol_sbe_v1_7.message_count.size = 8

-- Display: Message Count
memx_options_riskcontrol_sbe_v1_7.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_options_riskcontrol_sbe_v1_7.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.message_count, range, value, display)

  return offset + length, value
end

-- Replay Complete Message
memx_options_riskcontrol_sbe_v1_7.replay_complete_message = {}

-- Size: Replay Complete Message
memx_options_riskcontrol_sbe_v1_7.replay_complete_message.size =
  memx_options_riskcontrol_sbe_v1_7.message_count.size

-- Display: Replay Complete Message
memx_options_riskcontrol_sbe_v1_7.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
memx_options_riskcontrol_sbe_v1_7.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = memx_options_riskcontrol_sbe_v1_7.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
memx_options_riskcontrol_sbe_v1_7.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_complete_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Reject Code
memx_options_riskcontrol_sbe_v1_7.replay_reject_code = {}

-- Size: Replay Reject Code
memx_options_riskcontrol_sbe_v1_7.replay_reject_code.size = 1

-- Display: Replay Reject Code
memx_options_riskcontrol_sbe_v1_7.replay_reject_code.display = function(value)
  if value == "R" then
    return "Replay Reject Code: Replay Requests Are Not Allowed (R)"
  end
  if value == "A" then
    return "Replay Reject Code: Replay All Requests Are Not Allowed (A)"
  end
  if value == "P" then
    return "Replay Reject Code: Not The Active Session (P)"
  end
  if value == "S" then
    return "Replay Reject Code: Sequence Number Out Of Range (S)"
  end

  return "Replay Reject Code: Unknown("..value..")"
end

-- Dissect: Replay Reject Code
memx_options_riskcontrol_sbe_v1_7.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_7.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Replay Rejected Message
memx_options_riskcontrol_sbe_v1_7.replay_rejected_message = {}

-- Size: Replay Rejected Message
memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.replay_reject_code.size

-- Display: Replay Rejected Message
memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = memx_options_riskcontrol_sbe_v1_7.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Message Count
memx_options_riskcontrol_sbe_v1_7.pending_message_count = {}

-- Size: Pending Message Count
memx_options_riskcontrol_sbe_v1_7.pending_message_count.size = 4

-- Display: Pending Message Count
memx_options_riskcontrol_sbe_v1_7.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
memx_options_riskcontrol_sbe_v1_7.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Replay Begin Message
memx_options_riskcontrol_sbe_v1_7.replay_begin_message = {}

-- Size: Replay Begin Message
memx_options_riskcontrol_sbe_v1_7.replay_begin_message.size =
  memx_options_riskcontrol_sbe_v1_7.next_sequence_number.size + 
  memx_options_riskcontrol_sbe_v1_7.pending_message_count.size

-- Display: Replay Begin Message
memx_options_riskcontrol_sbe_v1_7.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
memx_options_riskcontrol_sbe_v1_7.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_riskcontrol_sbe_v1_7.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = memx_options_riskcontrol_sbe_v1_7.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
memx_options_riskcontrol_sbe_v1_7.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_begin_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Id
memx_options_riskcontrol_sbe_v1_7.session_id = {}

-- Size: Session Id
memx_options_riskcontrol_sbe_v1_7.session_id.size = 8

-- Display: Session Id
memx_options_riskcontrol_sbe_v1_7.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_options_riskcontrol_sbe_v1_7.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_7.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.session_id, range, value, display)

  return offset + length, value
end

-- Start Of Session Message
memx_options_riskcontrol_sbe_v1_7.start_of_session_message = {}

-- Size: Start Of Session Message
memx_options_riskcontrol_sbe_v1_7.start_of_session_message.size =
  memx_options_riskcontrol_sbe_v1_7.session_id.size

-- Display: Start Of Session Message
memx_options_riskcontrol_sbe_v1_7.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
memx_options_riskcontrol_sbe_v1_7.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_riskcontrol_sbe_v1_7.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
memx_options_riskcontrol_sbe_v1_7.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.start_of_session_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Reject Code
memx_options_riskcontrol_sbe_v1_7.login_reject_code = {}

-- Size: Login Reject Code
memx_options_riskcontrol_sbe_v1_7.login_reject_code.size = 1

-- Display: Login Reject Code
memx_options_riskcontrol_sbe_v1_7.login_reject_code.display = function(value)
  if value == "T" then
    return "Login Reject Code: Malformed Token (T)"
  end
  if value == "U" then
    return "Login Reject Code: Token Type Unsupported (U)"
  end
  if value == "V" then
    return "Login Reject Code: Token Type Invalid (V)"
  end
  if value == "A" then
    return "Login Reject Code: Authorization Failed (A)"
  end

  return "Login Reject Code: Unknown("..value..")"
end

-- Dissect: Login Reject Code
memx_options_riskcontrol_sbe_v1_7.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_7.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Message
memx_options_riskcontrol_sbe_v1_7.login_rejected_message = {}

-- Size: Login Rejected Message
memx_options_riskcontrol_sbe_v1_7.login_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_7.login_reject_code.size

-- Display: Login Rejected Message
memx_options_riskcontrol_sbe_v1_7.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
memx_options_riskcontrol_sbe_v1_7.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = memx_options_riskcontrol_sbe_v1_7.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
memx_options_riskcontrol_sbe_v1_7.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.login_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Supported Request Mode
memx_options_riskcontrol_sbe_v1_7.supported_request_mode = {}

-- Size: Supported Request Mode
memx_options_riskcontrol_sbe_v1_7.supported_request_mode.size = 1

-- Display: Supported Request Mode
memx_options_riskcontrol_sbe_v1_7.supported_request_mode.display = function(value)
  if value == "S" then
    return "Supported Request Mode: Stream (S)"
  end
  if value == "R" then
    return "Supported Request Mode: Replay (R)"
  end
  if value == "T" then
    return "Supported Request Mode: Snapshot Mode (T)"
  end

  return "Supported Request Mode: Unknown("..value..")"
end

-- Dissect: Supported Request Mode
memx_options_riskcontrol_sbe_v1_7.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_7.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Login Accepted Message
memx_options_riskcontrol_sbe_v1_7.login_accepted_message = {}

-- Size: Login Accepted Message
memx_options_riskcontrol_sbe_v1_7.login_accepted_message.size =
  memx_options_riskcontrol_sbe_v1_7.supported_request_mode.size

-- Display: Login Accepted Message
memx_options_riskcontrol_sbe_v1_7.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
memx_options_riskcontrol_sbe_v1_7.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = memx_options_riskcontrol_sbe_v1_7.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
memx_options_riskcontrol_sbe_v1_7.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.login_accepted_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
memx_options_riskcontrol_sbe_v1_7.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
memx_options_riskcontrol_sbe_v1_7.unsequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_riskcontrol_sbe_v1_7.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Unsequenced Message
memx_options_riskcontrol_sbe_v1_7.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
memx_options_riskcontrol_sbe_v1_7.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_riskcontrol_sbe_v1_7.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Message
memx_options_riskcontrol_sbe_v1_7.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = memx_options_riskcontrol_sbe_v1_7.unsequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_riskcontrol_sbe_v1_7.unsequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.unsequenced_message, range, display)
  end

  return memx_options_riskcontrol_sbe_v1_7.unsequenced_message.fields(buffer, offset, packet, parent)
end

-- Stream Request Message
memx_options_riskcontrol_sbe_v1_7.stream_request_message = {}

-- Size: Stream Request Message
memx_options_riskcontrol_sbe_v1_7.stream_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.session_id.size + 
  memx_options_riskcontrol_sbe_v1_7.next_sequence_number.size

-- Display: Stream Request Message
memx_options_riskcontrol_sbe_v1_7.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
memx_options_riskcontrol_sbe_v1_7.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_riskcontrol_sbe_v1_7.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_riskcontrol_sbe_v1_7.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
memx_options_riskcontrol_sbe_v1_7.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.stream_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
memx_options_riskcontrol_sbe_v1_7.replay_all_request_message = {}

-- Size: Replay All Request Message
memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.session_id.size

-- Display: Replay All Request Message
memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_riskcontrol_sbe_v1_7.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_all_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_all_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
memx_options_riskcontrol_sbe_v1_7.replay_request_message = {}

-- Size: Replay Request Message
memx_options_riskcontrol_sbe_v1_7.replay_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.session_id.size + 
  memx_options_riskcontrol_sbe_v1_7.next_sequence_number.size + 
  memx_options_riskcontrol_sbe_v1_7.count.size

-- Display: Replay Request Message
memx_options_riskcontrol_sbe_v1_7.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
memx_options_riskcontrol_sbe_v1_7.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_riskcontrol_sbe_v1_7.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_riskcontrol_sbe_v1_7.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_options_riskcontrol_sbe_v1_7.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
memx_options_riskcontrol_sbe_v1_7.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.replay_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Token
memx_options_riskcontrol_sbe_v1_7.token = {}

-- Size: Token
memx_options_riskcontrol_sbe_v1_7.token.size = 1

-- Display: Token
memx_options_riskcontrol_sbe_v1_7.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
memx_options_riskcontrol_sbe_v1_7.token.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_7.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
memx_options_riskcontrol_sbe_v1_7.token_type = {}

-- Size: Token Type
memx_options_riskcontrol_sbe_v1_7.token_type.size = 1

-- Display: Token Type
memx_options_riskcontrol_sbe_v1_7.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
memx_options_riskcontrol_sbe_v1_7.token_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_7.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.token_type, range, value, display)

  return offset + length, value
end

-- Login Request Message
memx_options_riskcontrol_sbe_v1_7.login_request_message = {}

-- Size: Login Request Message
memx_options_riskcontrol_sbe_v1_7.login_request_message.size =
  memx_options_riskcontrol_sbe_v1_7.token_type.size + 
  memx_options_riskcontrol_sbe_v1_7.token.size

-- Display: Login Request Message
memx_options_riskcontrol_sbe_v1_7.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
memx_options_riskcontrol_sbe_v1_7.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = memx_options_riskcontrol_sbe_v1_7.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = memx_options_riskcontrol_sbe_v1_7.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
memx_options_riskcontrol_sbe_v1_7.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.login_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.login_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
memx_options_riskcontrol_sbe_v1_7.data = {}

-- Size: Data
memx_options_riskcontrol_sbe_v1_7.data.size = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return memx_options_riskcontrol_sbe_v1_7.login_request_message.size
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return memx_options_riskcontrol_sbe_v1_7.replay_request_message.size
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.size
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return memx_options_riskcontrol_sbe_v1_7.stream_request_message.size
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return memx_options_riskcontrol_sbe_v1_7.unsequenced_message.size(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return memx_options_riskcontrol_sbe_v1_7.login_accepted_message.size
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return memx_options_riskcontrol_sbe_v1_7.login_rejected_message.size
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return memx_options_riskcontrol_sbe_v1_7.start_of_session_message.size
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return memx_options_riskcontrol_sbe_v1_7.replay_begin_message.size
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.size
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return memx_options_riskcontrol_sbe_v1_7.replay_complete_message.size
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return memx_options_riskcontrol_sbe_v1_7.stream_begin_message.size
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.size
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return memx_options_riskcontrol_sbe_v1_7.stream_complete_message.size
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return memx_options_riskcontrol_sbe_v1_7.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
memx_options_riskcontrol_sbe_v1_7.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
memx_options_riskcontrol_sbe_v1_7.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return memx_options_riskcontrol_sbe_v1_7.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return memx_options_riskcontrol_sbe_v1_7.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return memx_options_riskcontrol_sbe_v1_7.replay_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return memx_options_riskcontrol_sbe_v1_7.stream_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return memx_options_riskcontrol_sbe_v1_7.unsequenced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return memx_options_riskcontrol_sbe_v1_7.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return memx_options_riskcontrol_sbe_v1_7.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return memx_options_riskcontrol_sbe_v1_7.start_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return memx_options_riskcontrol_sbe_v1_7.replay_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return memx_options_riskcontrol_sbe_v1_7.replay_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return memx_options_riskcontrol_sbe_v1_7.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return memx_options_riskcontrol_sbe_v1_7.stream_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return memx_options_riskcontrol_sbe_v1_7.stream_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return memx_options_riskcontrol_sbe_v1_7.stream_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return memx_options_riskcontrol_sbe_v1_7.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
memx_options_riskcontrol_sbe_v1_7.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return memx_options_riskcontrol_sbe_v1_7.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_riskcontrol_sbe_v1_7.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_riskcontrol_sbe_v1_7.data.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.data, range, display)

  return memx_options_riskcontrol_sbe_v1_7.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Length
memx_options_riskcontrol_sbe_v1_7.message_length = {}

-- Size: Message Length
memx_options_riskcontrol_sbe_v1_7.message_length.size = 2

-- Display: Message Length
memx_options_riskcontrol_sbe_v1_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_options_riskcontrol_sbe_v1_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_options_riskcontrol_sbe_v1_7.message_type = {}

-- Size: Message Type
memx_options_riskcontrol_sbe_v1_7.message_type.size = 1

-- Display: Message Type
memx_options_riskcontrol_sbe_v1_7.message_type.display = function(value)
  if value == 100 then
    return "Message Type: Login Request (100)"
  end
  if value == 101 then
    return "Message Type: Replay Request (101)"
  end
  if value == 102 then
    return "Message Type: Replay All Request (102)"
  end
  if value == 103 then
    return "Message Type: Stream Request (103)"
  end
  if value == 104 then
    return "Message Type: Unsequenced Message (104)"
  end
  if value == 1 then
    return "Message Type: Login Accepted (1)"
  end
  if value == 2 then
    return "Message Type: Login Rejected (2)"
  end
  if value == 3 then
    return "Message Type: Start Of Session (3)"
  end
  if value == 3 then
    return "Message Type: End Of Session (3)"
  end
  if value == 5 then
    return "Message Type: Replay Begin (5)"
  end
  if value == 6 then
    return "Message Type: Replay Rejected (6)"
  end
  if value == 7 then
    return "Message Type: Replay Complete (7)"
  end
  if value == 8 then
    return "Message Type: Stream Begin (8)"
  end
  if value == 9 then
    return "Message Type: Stream Rejected (9)"
  end
  if value == 10 then
    return "Message Type: Stream Complete (10)"
  end
  if value == 11 then
    return "Message Type: Sequenced Message (11)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
memx_options_riskcontrol_sbe_v1_7.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_7.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_7.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_options_riskcontrol_sbe_v1_7.common_header = {}

-- Size: Common Header
memx_options_riskcontrol_sbe_v1_7.common_header.size =
  memx_options_riskcontrol_sbe_v1_7.message_type.size + 
  memx_options_riskcontrol_sbe_v1_7.message_length.size

-- Display: Common Header
memx_options_riskcontrol_sbe_v1_7.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_options_riskcontrol_sbe_v1_7.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = memx_options_riskcontrol_sbe_v1_7.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_options_riskcontrol_sbe_v1_7.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_options_riskcontrol_sbe_v1_7.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_7.fields.common_header, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_7.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_7.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_7.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_options_riskcontrol_sbe_v1_7.packet = {}

-- Dissect Packet
memx_options_riskcontrol_sbe_v1_7.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = memx_options_riskcontrol_sbe_v1_7.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = memx_options_riskcontrol_sbe_v1_7.data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_options_riskcontrol_sbe_v1_7.init()
end

-- Dissector for Memx Options RiskControl Sbe 1.7
function omi_memx_options_riskcontrol_sbe_v1_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_options_riskcontrol_sbe_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_options_riskcontrol_sbe_v1_7, buffer(), omi_memx_options_riskcontrol_sbe_v1_7.description, "("..buffer:len().." Bytes)")
  return memx_options_riskcontrol_sbe_v1_7.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_memx_options_riskcontrol_sbe_v1_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_options_riskcontrol_sbe_v1_7.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
memx_options_riskcontrol_sbe_v1_7.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(52, 1):uint()

  if value == 12 then
    return true
  end

  return false
end

-- Verify Version Field
memx_options_riskcontrol_sbe_v1_7.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(53, 2):uint()

  if value == 263 then
    return true
  end

  return false
end

-- Verify Schema Id Field
memx_options_riskcontrol_sbe_v1_7.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2239, 1):uint()

  if value == 12 then
    return true
  end

  return false
end

-- Verify Version Field
memx_options_riskcontrol_sbe_v1_7.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2240, 2):uint()

  if value == 263 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Options RiskControl Sbe 1.7
local function omi_memx_options_riskcontrol_sbe_v1_7_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_options_riskcontrol_sbe_v1_7.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not memx_options_riskcontrol_sbe_v1_7.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_options_riskcontrol_sbe_v1_7.version.verify(buffer) then return false end

  -- Verify Schema Id
  if not memx_options_riskcontrol_sbe_v1_7.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_options_riskcontrol_sbe_v1_7.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_options_riskcontrol_sbe_v1_7
  omi_memx_options_riskcontrol_sbe_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Options RiskControl Sbe 1.7
omi_memx_options_riskcontrol_sbe_v1_7:register_heuristic("tcp", omi_memx_options_riskcontrol_sbe_v1_7_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.7
--   Date: Wednesday, April 17, 2024
--   Specification: Risk Control for US Options SBE-v1_7a.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
