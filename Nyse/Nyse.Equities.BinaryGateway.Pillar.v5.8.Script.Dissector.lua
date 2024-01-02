-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities BinaryGateway Pillar 5.8 Protocol
local nyse_equities_binarygateway_pillar_v5_8 = Proto("Nyse.Equities.BinaryGateway.Pillar.v5.8.Lua", "Nyse Equities BinaryGateway Pillar 5.8")

-- Component Tables
local show = {}
local format = {}
local nyse_equities_binarygateway_pillar_v5_8_display = {}
local nyse_equities_binarygateway_pillar_v5_8_dissect = {}
local nyse_equities_binarygateway_pillar_v5_8_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities BinaryGateway Pillar 5.8 Fields
nyse_equities_binarygateway_pillar_v5_8.fields.access = ProtoField.new("Access", "nyse.equities.binarygateway.pillar.v5.8.access", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.ack_status = ProtoField.new("Ack Status", "nyse.equities.binarygateway.pillar.v5.8.ackstatus", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.ack_type = ProtoField.new("Ack Type", "nyse.equities.binarygateway.pillar.v5.8.acktype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.adv_risk_range_id = ProtoField.new("Adv Risk Range Id", "nyse.equities.binarygateway.pillar.v5.8.advriskrangeid", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.application_layer_reject = ProtoField.new("Application Layer Reject", "nyse.equities.binarygateway.pillar.v5.8.applicationlayerreject", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.auction_price_data = ProtoField.new("Auction Price Data", "nyse.equities.binarygateway.pillar.v5.8.auctionpricedata", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.auction_request = ProtoField.new("Auction Request", "nyse.equities.binarygateway.pillar.v5.8.auctionrequest", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.auction_type = ProtoField.new("Auction Type", "nyse.equities.binarygateway.pillar.v5.8.auctiontype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.bitfield_flow_indicator = ProtoField.new("Bitfield Flow Indicator", "nyse.equities.binarygateway.pillar.v5.8.bitfieldflowindicator", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.bitfield_order_instructions = ProtoField.new("Bitfield Order Instructions", "nyse.equities.binarygateway.pillar.v5.8.bitfieldorderinstructions", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.blocked_by_breach_indicator = ProtoField.new("Blocked By Breach Indicator", "nyse.equities.binarygateway.pillar.v5.8.blockedbybreachindicator", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.blocked_by_kill_switch_indicator = ProtoField.new("Blocked By Kill Switch Indicator", "nyse.equities.binarygateway.pillar.v5.8.blockedbykillswitchindicator", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.bold_designation = ProtoField.new("Bold Designation", "nyse.equities.binarygateway.pillar.v5.8.bolddesignation", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.book = ProtoField.new("Book", "nyse.equities.binarygateway.pillar.v5.8.book", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.breach_action_request = ProtoField.new("Breach Action Request", "nyse.equities.binarygateway.pillar.v5.8.breachactionrequest", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.breach_action_response = ProtoField.new("Breach Action Response", "nyse.equities.binarygateway.pillar.v5.8.breachactionresponse", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.bulk_cancel_request_message = ProtoField.new("Bulk Cancel Request Message", "nyse.equities.binarygateway.pillar.v5.8.bulkcancelrequestmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.bulk_cancel_type = ProtoField.new("Bulk Cancel Type", "nyse.equities.binarygateway.pillar.v5.8.bulkcanceltype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.buy_dmm_available_qty = ProtoField.new("Buy Dmm Available Qty", "nyse.equities.binarygateway.pillar.v5.8.buydmmavailableqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.cancel_on_disconnect = ProtoField.new("Cancel On Disconnect", "nyse.equities.binarygateway.pillar.v5.8.cancelondisconnect", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "nyse.equities.binarygateway.pillar.v5.8.clordid", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.clearing_account = ProtoField.new("Clearing Account", "nyse.equities.binarygateway.pillar.v5.8.clearingaccount", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.clearing_firm = ProtoField.new("Clearing Firm", "nyse.equities.binarygateway.pillar.v5.8.clearingfirm", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.clearing_number = ProtoField.new("Clearing Number", "nyse.equities.binarygateway.pillar.v5.8.clearingnumber", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.close = ProtoField.new("Close", "nyse.equities.binarygateway.pillar.v5.8.close", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.close_on_trade_max_qty = ProtoField.new("Close On Trade Max Qty", "nyse.equities.binarygateway.pillar.v5.8.closeontrademaxqty", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.close_response = ProtoField.new("Close Response", "nyse.equities.binarygateway.pillar.v5.8.closeresponse", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.count_calculation = ProtoField.new("Count Calculation", "nyse.equities.binarygateway.pillar.v5.8.countcalculation", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.count_limit = ProtoField.new("Count Limit", "nyse.equities.binarygateway.pillar.v5.8.countlimit", ftypes.INT32)
nyse_equities_binarygateway_pillar_v5_8.fields.cum_qty = ProtoField.new("Cum Qty", "nyse.equities.binarygateway.pillar.v5.8.cumqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.deal_id = ProtoField.new("Deal Id", "nyse.equities.binarygateway.pillar.v5.8.dealid", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.deliver_to_comp_id = ProtoField.new("Deliver To Comp Id", "nyse.equities.binarygateway.pillar.v5.8.delivertocompid", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.displayed_liquidity_indicator = ProtoField.new("Displayed Liquidity Indicator", "nyse.equities.binarygateway.pillar.v5.8.displayedliquidityindicator", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.dmm_allocated_qty = ProtoField.new("Dmm Allocated Qty", "nyse.equities.binarygateway.pillar.v5.8.dmmallocatedqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.dmm_available_qty = ProtoField.new("Dmm Available Qty", "nyse.equities.binarygateway.pillar.v5.8.dmmavailableqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.dmm_reject_reason = ProtoField.new("Dmm Reject Reason", "nyse.equities.binarygateway.pillar.v5.8.dmmrejectreason", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.dmm_requested_qty = ProtoField.new("Dmm Requested Qty", "nyse.equities.binarygateway.pillar.v5.8.dmmrequestedqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.dmm_symbol_reference_data_message = ProtoField.new("Dmm Symbol Reference Data Message", "nyse.equities.binarygateway.pillar.v5.8.dmmsymbolreferencedatamessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.dmm_unit_num = ProtoField.new("Dmm Unit Num", "nyse.equities.binarygateway.pillar.v5.8.dmmunitnum", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.end_seq = ProtoField.new("End Seq", "nyse.equities.binarygateway.pillar.v5.8.endseq", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.equities_symbol_reference_data_message = ProtoField.new("Equities Symbol Reference Data Message", "nyse.equities.binarygateway.pillar.v5.8.equitiessymbolreferencedatamessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.execution_report = ProtoField.new("Execution Report", "nyse.equities.binarygateway.pillar.v5.8.executionreport", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.gt_begin = ProtoField.new("Gt Begin", "nyse.equities.binarygateway.pillar.v5.8.gtbegin", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.gt_end = ProtoField.new("Gt End", "nyse.equities.binarygateway.pillar.v5.8.gtend", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.equities.binarygateway.pillar.v5.8.heartbeat", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.equities.binarygateway.pillar.v5.8.imbalanceside", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nyse.equities.binarygateway.pillar.v5.8.imbalancevolume", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.intraday_sell_short_qty = ProtoField.new("Intraday Sell Short Qty", "nyse.equities.binarygateway.pillar.v5.8.intradaysellshortqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.introducing_badge_id = ProtoField.new("Introducing Badge Id", "nyse.equities.binarygateway.pillar.v5.8.introducingbadgeid", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.ioc_attribution = ProtoField.new("Ioc Attribution", "nyse.equities.binarygateway.pillar.v5.8.iocattribution", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.last_px = ProtoField.new("Last Px", "nyse.equities.binarygateway.pillar.v5.8.lastpx", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.last_qty = ProtoField.new("Last Qty", "nyse.equities.binarygateway.pillar.v5.8.lastqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.leaves_qty = ProtoField.new("Leaves Qty", "nyse.equities.binarygateway.pillar.v5.8.leavesqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "nyse.equities.binarygateway.pillar.v5.8.liquidityindicator", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.listed_mic = ProtoField.new("Listed Mic", "nyse.equities.binarygateway.pillar.v5.8.listedmic", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.lmocp = ProtoField.new("Lmocp", "nyse.equities.binarygateway.pillar.v5.8.lmocp", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.locate_reqd = ProtoField.new("Locate Reqd", "nyse.equities.binarygateway.pillar.v5.8.locatereqd", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.login_message = ProtoField.new("Login Message", "nyse.equities.binarygateway.pillar.v5.8.loginmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.login_response = ProtoField.new("Login Response", "nyse.equities.binarygateway.pillar.v5.8.loginresponse", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.luldmpv = ProtoField.new("Luldmpv", "nyse.equities.binarygateway.pillar.v5.8.luldmpv", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.manual_action_id = ProtoField.new("Manual Action Id", "nyse.equities.binarygateway.pillar.v5.8.manualactionid", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.manual_action_request = ProtoField.new("Manual Action Request", "nyse.equities.binarygateway.pillar.v5.8.manualactionrequest", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.manual_action_response_message = ProtoField.new("Manual Action Response Message", "nyse.equities.binarygateway.pillar.v5.8.manualactionresponsemessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.manual_action_type = ProtoField.new("Manual Action Type", "nyse.equities.binarygateway.pillar.v5.8.manualactiontype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.manual_override = ProtoField.new("Manual Override", "nyse.equities.binarygateway.pillar.v5.8.manualoverride", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.manual_override_reason = ProtoField.new("Manual Override Reason", "nyse.equities.binarygateway.pillar.v5.8.manualoverridereason", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.manual_response_type = ProtoField.new("Manual Response Type", "nyse.equities.binarygateway.pillar.v5.8.manualresponsetype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.market_maker = ProtoField.new("Market Maker", "nyse.equities.binarygateway.pillar.v5.8.marketmaker", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.max_floor = ProtoField.new("Max Floor", "nyse.equities.binarygateway.pillar.v5.8.maxfloor", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.max_order_quantity = ProtoField.new("Max Order Quantity", "nyse.equities.binarygateway.pillar.v5.8.maxorderquantity", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.median_volume = ProtoField.new("Median Volume", "nyse.equities.binarygateway.pillar.v5.8.medianvolume", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.mic = ProtoField.new("Mic", "nyse.equities.binarygateway.pillar.v5.8.mic", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.min_qty = ProtoField.new("Min Qty", "nyse.equities.binarygateway.pillar.v5.8.minqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.minimum_price_variant_class_reference_data_message = ProtoField.new("Minimum Price Variant Class Reference Data Message", "nyse.equities.binarygateway.pillar.v5.8.minimumpricevariantclassreferencedatamessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.minimum_price_variant_level_reference_data_message = ProtoField.new("Minimum Price Variant Level Reference Data Message", "nyse.equities.binarygateway.pillar.v5.8.minimumpricevariantlevelreferencedatamessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.mmid = ProtoField.new("Mmid", "nyse.equities.binarygateway.pillar.v5.8.mmid", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.mmid_configuration_message = ProtoField.new("Mmid Configuration Message", "nyse.equities.binarygateway.pillar.v5.8.mmidconfigurationmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.mode = ProtoField.new("Mode", "nyse.equities.binarygateway.pillar.v5.8.mode", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.mp_sub_id = ProtoField.new("Mp Sub Id", "nyse.equities.binarygateway.pillar.v5.8.mpsubid", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.mpid = ProtoField.new("Mpid", "nyse.equities.binarygateway.pillar.v5.8.mpid", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.mpid_configuration_message = ProtoField.new("Mpid Configuration Message", "nyse.equities.binarygateway.pillar.v5.8.mpidconfigurationmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.mpid_status = ProtoField.new("Mpid Status", "nyse.equities.binarygateway.pillar.v5.8.mpidstatus", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.mpv_class_id = ProtoField.new("Mpv Class Id", "nyse.equities.binarygateway.pillar.v5.8.mpvclassid", ftypes.UINT16)
nyse_equities_binarygateway_pillar_v5_8.fields.mpv_class_name = ProtoField.new("Mpv Class Name", "nyse.equities.binarygateway.pillar.v5.8.mpvclassname", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.mpv_level_definition = ProtoField.new("Mpv Level Definition", "nyse.equities.binarygateway.pillar.v5.8.mpvleveldefinition", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.mpv_level_name = ProtoField.new("Mpv Level Name", "nyse.equities.binarygateway.pillar.v5.8.mpvlevelname", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.msg_header = ProtoField.new("Msg Header", "nyse.equities.binarygateway.pillar.v5.8.msgheader", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.msg_length = ProtoField.new("Msg Length", "nyse.equities.binarygateway.pillar.v5.8.msglength", ftypes.UINT16)
nyse_equities_binarygateway_pillar_v5_8.fields.msg_type = ProtoField.new("Msg Type", "nyse.equities.binarygateway.pillar.v5.8.msgtype", ftypes.UINT16)
nyse_equities_binarygateway_pillar_v5_8.fields.new_order_single_and_cancel_replace_request_message = ProtoField.new("New Order Single And Cancel Replace Request Message", "nyse.equities.binarygateway.pillar.v5.8.newordersingleandcancelreplacerequestmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.next_seq = ProtoField.new("Next Seq", "nyse.equities.binarygateway.pillar.v5.8.nextseq", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.nyse_symbol = ProtoField.new("Nyse Symbol", "nyse.equities.binarygateway.pillar.v5.8.nysesymbol", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.open = ProtoField.new("Open", "nyse.equities.binarygateway.pillar.v5.8.open", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.open_on_trade_max_qty = ProtoField.new("Open On Trade Max Qty", "nyse.equities.binarygateway.pillar.v5.8.openontrademaxqty", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.open_response = ProtoField.new("Open Response", "nyse.equities.binarygateway.pillar.v5.8.openresponse", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.optional_data = ProtoField.new("Optional Data", "nyse.equities.binarygateway.pillar.v5.8.optionaldata", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.optional_order_add_on = ProtoField.new("Optional Order Add On", "nyse.equities.binarygateway.pillar.v5.8.optionalorderaddon", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.optional_settlement_type_add_on = ProtoField.new("Optional Settlement Type Add On", "nyse.equities.binarygateway.pillar.v5.8.optionalsettlementtypeaddon", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.order_and_cancel_replace_acknowledgement_message = ProtoField.new("Order And Cancel Replace Acknowledgement Message", "nyse.equities.binarygateway.pillar.v5.8.orderandcancelreplaceacknowledgementmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "nyse.equities.binarygateway.pillar.v5.8.ordercancelrequestmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.order_id = ProtoField.new("Order Id", "nyse.equities.binarygateway.pillar.v5.8.orderid", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.order_modify_cancel_request_acknowledgment_and_urout = ProtoField.new("Order Modify Cancel Request Acknowledgment And Urout", "nyse.equities.binarygateway.pillar.v5.8.ordermodifycancelrequestacknowledgmentandurout", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.order_modify_request_message = ProtoField.new("Order Modify Request Message", "nyse.equities.binarygateway.pillar.v5.8.ordermodifyrequestmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.order_priority_update_ack_subscription = ProtoField.new("Order Priority Update Ack Subscription", "nyse.equities.binarygateway.pillar.v5.8.orderpriorityupdateacksubscription", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.order_priority_update_acknowledgment = ProtoField.new("Order Priority Update Acknowledgment", "nyse.equities.binarygateway.pillar.v5.8.orderpriorityupdateacknowledgment", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.order_qty = ProtoField.new("Order Qty", "nyse.equities.binarygateway.pillar.v5.8.orderqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "nyse.equities.binarygateway.pillar.v5.8.origclordid", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.equities.binarygateway.pillar.v5.8.pairedqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.participant_type = ProtoField.new("Participant Type", "nyse.equities.binarygateway.pillar.v5.8.participanttype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.password = ProtoField.new("Password", "nyse.equities.binarygateway.pillar.v5.8.password", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.percentage_limit = ProtoField.new("Percentage Limit", "nyse.equities.binarygateway.pillar.v5.8.percentagelimit", ftypes.INT32)
nyse_equities_binarygateway_pillar_v5_8.fields.pillarstreammessage = ProtoField.new("pillarstreammessage", "nyse.equities.binarygateway.pillar.v5.8.pillarstreammessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.post = ProtoField.new("Post", "nyse.equities.binarygateway.pillar.v5.8.post", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.ppp_1 = ProtoField.new("Ppp 1", "nyse.equities.binarygateway.pillar.v5.8.ppp1", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.ppp_2 = ProtoField.new("Ppp 2", "nyse.equities.binarygateway.pillar.v5.8.ppp2", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.ppp_3 = ProtoField.new("Ppp 3", "nyse.equities.binarygateway.pillar.v5.8.ppp3", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.pre_liquidity_indicator = ProtoField.new("Pre Liquidity Indicator", "nyse.equities.binarygateway.pillar.v5.8.preliquidityindicator", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.price = ProtoField.new("Price", "nyse.equities.binarygateway.pillar.v5.8.price", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.price_scale = ProtoField.new("Price Scale", "nyse.equities.binarygateway.pillar.v5.8.pricescale", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.quoting_mpv = ProtoField.new("Quoting Mpv", "nyse.equities.binarygateway.pillar.v5.8.quotingmpv", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.rd_seq = ProtoField.new("Rd Seq", "nyse.equities.binarygateway.pillar.v5.8.rdseq", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.reason_code = ProtoField.new("Reason Code", "nyse.equities.binarygateway.pillar.v5.8.reasoncode", ftypes.UINT16)
nyse_equities_binarygateway_pillar_v5_8.fields.ref_cl_ord_id = ProtoField.new("Ref Cl Ord Id", "nyse.equities.binarygateway.pillar.v5.8.refclordid", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.ref_seq_msg_id = ProtoField.new("Ref Seq Msg Id", "nyse.equities.binarygateway.pillar.v5.8.refseqmsgid", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.reinstatement_requiredby_other = ProtoField.new("Reinstatement Requiredby Other", "nyse.equities.binarygateway.pillar.v5.8.reinstatementrequiredbyother", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.reinstatement_requiredby_self = ProtoField.new("Reinstatement Requiredby Self", "nyse.equities.binarygateway.pillar.v5.8.reinstatementrequiredbyself", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.reject_type = ProtoField.new("Reject Type", "nyse.equities.binarygateway.pillar.v5.8.rejecttype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.reserved_100 = ProtoField.new("Reserved 100", "nyse.equities.binarygateway.pillar.v5.8.reserved100", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.reserved_190 = ProtoField.new("Reserved 190", "nyse.equities.binarygateway.pillar.v5.8.reserved190", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.reserved_199 = ProtoField.new("Reserved 199", "nyse.equities.binarygateway.pillar.v5.8.reserved199", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.reserved_200 = ProtoField.new("Reserved 200", "nyse.equities.binarygateway.pillar.v5.8.reserved200", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.binarygateway.pillar.v5.8.reserved4", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.reserved_49 = ProtoField.new("Reserved 49", "nyse.equities.binarygateway.pillar.v5.8.reserved49", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.reserved_50 = ProtoField.new("Reserved 50", "nyse.equities.binarygateway.pillar.v5.8.reserved50", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.reserved_7 = ProtoField.new("Reserved 7", "nyse.equities.binarygateway.pillar.v5.8.reserved7", ftypes.BYTES)
nyse_equities_binarygateway_pillar_v5_8.fields.ridge = ProtoField.new("Ridge", "nyse.equities.binarygateway.pillar.v5.8.ridge", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_ack_type = ProtoField.new("Risk Ack Type", "nyse.equities.binarygateway.pillar.v5.8.riskacktype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_action_request_message = ProtoField.new("Risk Action Request Message", "nyse.equities.binarygateway.pillar.v5.8.riskactionrequestmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_action_type = ProtoField.new("Risk Action Type", "nyse.equities.binarygateway.pillar.v5.8.riskactiontype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_control_acknowledgement = ProtoField.new("Risk Control Acknowledgement", "nyse.equities.binarygateway.pillar.v5.8.riskcontrolacknowledgement", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_control_activation = ProtoField.new("Risk Control Activation", "nyse.equities.binarygateway.pillar.v5.8.riskcontrolactivation", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_control_alert = ProtoField.new("Risk Control Alert", "nyse.equities.binarygateway.pillar.v5.8.riskcontrolalert", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_control_type = ProtoField.new("Risk Control Type", "nyse.equities.binarygateway.pillar.v5.8.riskcontroltype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_limit_update_request_message = ProtoField.new("Risk Limit Update Request Message", "nyse.equities.binarygateway.pillar.v5.8.risklimitupdaterequestmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_minimum_value = ProtoField.new("Risk Minimum Value", "nyse.equities.binarygateway.pillar.v5.8.riskminimumvalue", ftypes.INT64)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_range_id = ProtoField.new("Risk Range Id", "nyse.equities.binarygateway.pillar.v5.8.riskrangeid", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_user_crd = ProtoField.new("Risk User Crd", "nyse.equities.binarygateway.pillar.v5.8.riskusercrd", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.risk_user_type = ProtoField.new("Risk User Type", "nyse.equities.binarygateway.pillar.v5.8.riskusertype", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.round_lot_size = ProtoField.new("Round Lot Size", "nyse.equities.binarygateway.pillar.v5.8.roundlotsize", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.rpimpv = ProtoField.new("Rpimpv", "nyse.equities.binarygateway.pillar.v5.8.rpimpv", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "nyse.equities.binarygateway.pillar.v5.8.selftradeprevention", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.self_trade_type = ProtoField.new("Self Trade Type", "nyse.equities.binarygateway.pillar.v5.8.selftradetype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.sell_dmm_available_qty = ProtoField.new("Sell Dmm Available Qty", "nyse.equities.binarygateway.pillar.v5.8.selldmmavailableqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.sell_indicator = ProtoField.new("Sell Indicator", "nyse.equities.binarygateway.pillar.v5.8.sellindicator", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.seq = ProtoField.new("Seq", "nyse.equities.binarygateway.pillar.v5.8.seq", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.seq_msg = ProtoField.new("Seq Msg", "nyse.equities.binarygateway.pillar.v5.8.seqmsg", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.seq_msg_header = ProtoField.new("Seq Msg Header", "nyse.equities.binarygateway.pillar.v5.8.seqmsgheader", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.seq_msg_length = ProtoField.new("Seq Msg Length", "nyse.equities.binarygateway.pillar.v5.8.seqmsglength", ftypes.UINT16)
nyse_equities_binarygateway_pillar_v5_8.fields.seq_msg_type = ProtoField.new("Seq Msg Type", "nyse.equities.binarygateway.pillar.v5.8.seqmsgtype", ftypes.UINT16)
nyse_equities_binarygateway_pillar_v5_8.fields.seqmsgid = ProtoField.new("Seqmsgid", "nyse.equities.binarygateway.pillar.v5.8.seqmsgid", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.sequenced_filler_message = ProtoField.new("Sequenced Filler Message", "nyse.equities.binarygateway.pillar.v5.8.sequencedfillermessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.sequenced_message = ProtoField.new("Sequenced Message", "nyse.equities.binarygateway.pillar.v5.8.sequencedmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.sess = ProtoField.new("Sess", "nyse.equities.binarygateway.pillar.v5.8.sess", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.session_configuration_acknowledgement_message = ProtoField.new("Session Configuration Acknowledgement Message", "nyse.equities.binarygateway.pillar.v5.8.sessionconfigurationacknowledgementmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.session_configuration_request_message = ProtoField.new("Session Configuration Request Message", "nyse.equities.binarygateway.pillar.v5.8.sessionconfigurationrequestmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.settlement_type = ProtoField.new("Settlement Type", "nyse.equities.binarygateway.pillar.v5.8.settlementtype", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.side = ProtoField.new("Side", "nyse.equities.binarygateway.pillar.v5.8.side", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.side_of_unpaired_qty = ProtoField.new("Side Of Unpaired Qty", "nyse.equities.binarygateway.pillar.v5.8.sideofunpairedqty", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.equities.binarygateway.pillar.v5.8.ssrfilingprice", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.start_seq = ProtoField.new("Start Seq", "nyse.equities.binarygateway.pillar.v5.8.startseq", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.status = ProtoField.new("Status", "nyse.equities.binarygateway.pillar.v5.8.status", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.stop_px = ProtoField.new("Stop Px", "nyse.equities.binarygateway.pillar.v5.8.stoppx", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.stream_avail = ProtoField.new("Stream Avail", "nyse.equities.binarygateway.pillar.v5.8.streamavail", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.stream_id = ProtoField.new("Stream Id", "nyse.equities.binarygateway.pillar.v5.8.streamid", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.sub_msg_header = ProtoField.new("Sub Msg Header", "nyse.equities.binarygateway.pillar.v5.8.submsgheader", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.subscription_status = ProtoField.new("Subscription Status", "nyse.equities.binarygateway.pillar.v5.8.subscriptionstatus", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.symbol_eligibility = ProtoField.new("Symbol Eligibility", "nyse.equities.binarygateway.pillar.v5.8.symboleligibility", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.symbol_id = ProtoField.new("Symbol Id", "nyse.equities.binarygateway.pillar.v5.8.symbolid", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.symbol_subscription_acknowledgement = ProtoField.new("Symbol Subscription Acknowledgement", "nyse.equities.binarygateway.pillar.v5.8.symbolsubscriptionacknowledgement", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.symbol_subscription_request_message = ProtoField.new("Symbol Subscription Request Message", "nyse.equities.binarygateway.pillar.v5.8.symbolsubscriptionrequestmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.test_symbol_indicator = ProtoField.new("Test Symbol Indicator", "nyse.equities.binarygateway.pillar.v5.8.testsymbolindicator", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.tg_begin_message = ProtoField.new("Tg Begin Message", "nyse.equities.binarygateway.pillar.v5.8.tgbeginmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.tg_end_message = ProtoField.new("Tg End Message", "nyse.equities.binarygateway.pillar.v5.8.tgendmessage", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.threshold_breach_level = ProtoField.new("Threshold Breach Level", "nyse.equities.binarygateway.pillar.v5.8.thresholdbreachlevel", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.throttle_preference = ProtoField.new("Throttle Preference", "nyse.equities.binarygateway.pillar.v5.8.throttlepreference", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.throttle_threshold = ProtoField.new("Throttle Threshold", "nyse.equities.binarygateway.pillar.v5.8.throttlethreshold", ftypes.UINT16)
nyse_equities_binarygateway_pillar_v5_8.fields.throttle_window = ProtoField.new("Throttle Window", "nyse.equities.binarygateway.pillar.v5.8.throttlewindow", ftypes.UINT16)
nyse_equities_binarygateway_pillar_v5_8.fields.throttled = ProtoField.new("Throttled", "nyse.equities.binarygateway.pillar.v5.8.throttled", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, "0x8000000000000000")
nyse_equities_binarygateway_pillar_v5_8.fields.time_limit = ProtoField.new("Time Limit", "nyse.equities.binarygateway.pillar.v5.8.timelimit", ftypes.INT32)
nyse_equities_binarygateway_pillar_v5_8.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.binarygateway.pillar.v5.8.timestamp", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.trade_bust_correct = ProtoField.new("Trade Bust Correct", "nyse.equities.binarygateway.pillar.v5.8.tradebustcorrect", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.trading_mpv = ProtoField.new("Trading Mpv", "nyse.equities.binarygateway.pillar.v5.8.tradingmpv", ftypes.DOUBLE)
nyse_equities_binarygateway_pillar_v5_8.fields.transact_time = ProtoField.new("Transact Time", "nyse.equities.binarygateway.pillar.v5.8.transacttime", ftypes.UINT64)
nyse_equities_binarygateway_pillar_v5_8.fields.unpaired_qty = ProtoField.new("Unpaired Qty", "nyse.equities.binarygateway.pillar.v5.8.unpairedqty", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.usd_calculation_1 = ProtoField.new("Usd Calculation 1", "nyse.equities.binarygateway.pillar.v5.8.usdcalculation1", ftypes.INT64)
nyse_equities_binarygateway_pillar_v5_8.fields.usd_calculation_2 = ProtoField.new("Usd Calculation 2", "nyse.equities.binarygateway.pillar.v5.8.usdcalculation2", ftypes.INT64)
nyse_equities_binarygateway_pillar_v5_8.fields.usd_calculation_3 = ProtoField.new("Usd Calculation 3", "nyse.equities.binarygateway.pillar.v5.8.usdcalculation3", ftypes.INT64)
nyse_equities_binarygateway_pillar_v5_8.fields.usd_calculation_4 = ProtoField.new("Usd Calculation 4", "nyse.equities.binarygateway.pillar.v5.8.usdcalculation4", ftypes.INT64)
nyse_equities_binarygateway_pillar_v5_8.fields.usd_limit = ProtoField.new("Usd Limit", "nyse.equities.binarygateway.pillar.v5.8.usdlimit", ftypes.INT64)
nyse_equities_binarygateway_pillar_v5_8.fields.user = ProtoField.new("User", "nyse.equities.binarygateway.pillar.v5.8.user", ftypes.UINT32)
nyse_equities_binarygateway_pillar_v5_8.fields.user_data = ProtoField.new("User Data", "nyse.equities.binarygateway.pillar.v5.8.userdata", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.user_session_status = ProtoField.new("User Session Status", "nyse.equities.binarygateway.pillar.v5.8.usersessionstatus", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.user_session_type = ProtoField.new("User Session Type", "nyse.equities.binarygateway.pillar.v5.8.usersessiontype", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.username = ProtoField.new("Username", "nyse.equities.binarygateway.pillar.v5.8.username", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.version = ProtoField.new("Version", "nyse.equities.binarygateway.pillar.v5.8.version", ftypes.STRING)
nyse_equities_binarygateway_pillar_v5_8.fields.working_away_from_display = ProtoField.new("Working Away From Display", "nyse.equities.binarygateway.pillar.v5.8.workingawayfromdisplay", ftypes.UINT8)
nyse_equities_binarygateway_pillar_v5_8.fields.working_price = ProtoField.new("Working Price", "nyse.equities.binarygateway.pillar.v5.8.workingprice", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Equities BinaryGateway Pillar 5.8 Element Dissection Options
show.application_layer_reject = true
show.auction_price_data = true
show.auction_request = true
show.bitfield_flow_indicator = true
show.bulk_cancel_request_message = true
show.close = true
show.close_response = true
show.dmm_symbol_reference_data_message = true
show.equities_symbol_reference_data_message = true
show.execution_report = true
show.gt_begin = true
show.gt_end = true
show.heartbeat = true
show.login_message = true
show.login_response = true
show.manual_action_id = true
show.manual_action_request = true
show.manual_action_response_message = true
show.minimum_price_variant_class_reference_data_message = true
show.minimum_price_variant_level_reference_data_message = true
show.mmid_configuration_message = true
show.mpid_configuration_message = true
show.mpv_level_definition = true
show.msg_header = true
show.new_order_single_and_cancel_replace_request_message = true
show.open = true
show.open_response = true
show.optional_order_add_on = true
show.optional_settlement_type_add_on = true
show.order_and_cancel_replace_acknowledgement_message = true
show.order_cancel_request_message = true
show.order_modify_cancel_request_acknowledgment_and_urout = true
show.order_modify_request_message = true
show.order_priority_update_acknowledgment = true
show.ref_seq_msg_id = true
show.risk_action_request_message = true
show.risk_control_acknowledgement = true
show.risk_control_alert = true
show.risk_limit_update_request_message = true
show.seq_msg = true
show.seq_msg_header = true
show.seqmsgid = true
show.sequenced_filler_message = true
show.session_configuration_acknowledgement_message = true
show.session_configuration_request_message = true
show.stream_avail = true
show.stream_id = true
show.sub_msg_header = true
show.symbol_subscription_acknowledgement = true
show.symbol_subscription_request_message = true
show.tg_begin_message = true
show.tg_end_message = true
show.trade_bust_correct = true
show.pillarstreammessage = false
show.sequenced_message = false

-- Register Nyse Equities BinaryGateway Pillar 5.8 Show Options
nyse_equities_binarygateway_pillar_v5_8.prefs.show_application_layer_reject = Pref.bool("Show Application Layer Reject", show.application_layer_reject, "Parse and add Application Layer Reject to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_auction_price_data = Pref.bool("Show Auction Price Data", show.auction_price_data, "Parse and add Auction Price Data to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_auction_request = Pref.bool("Show Auction Request", show.auction_request, "Parse and add Auction Request to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_bitfield_flow_indicator = Pref.bool("Show Bitfield Flow Indicator", show.bitfield_flow_indicator, "Parse and add Bitfield Flow Indicator to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_bulk_cancel_request_message = Pref.bool("Show Bulk Cancel Request Message", show.bulk_cancel_request_message, "Parse and add Bulk Cancel Request Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_close = Pref.bool("Show Close", show.close, "Parse and add Close to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_close_response = Pref.bool("Show Close Response", show.close_response, "Parse and add Close Response to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_dmm_symbol_reference_data_message = Pref.bool("Show Dmm Symbol Reference Data Message", show.dmm_symbol_reference_data_message, "Parse and add Dmm Symbol Reference Data Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_equities_symbol_reference_data_message = Pref.bool("Show Equities Symbol Reference Data Message", show.equities_symbol_reference_data_message, "Parse and add Equities Symbol Reference Data Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_execution_report = Pref.bool("Show Execution Report", show.execution_report, "Parse and add Execution Report to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_gt_begin = Pref.bool("Show Gt Begin", show.gt_begin, "Parse and add Gt Begin to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_gt_end = Pref.bool("Show Gt End", show.gt_end, "Parse and add Gt End to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_login_message = Pref.bool("Show Login Message", show.login_message, "Parse and add Login Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_id = Pref.bool("Show Manual Action Id", show.manual_action_id, "Parse and add Manual Action Id to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_request = Pref.bool("Show Manual Action Request", show.manual_action_request, "Parse and add Manual Action Request to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_response_message = Pref.bool("Show Manual Action Response Message", show.manual_action_response_message, "Parse and add Manual Action Response Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_minimum_price_variant_class_reference_data_message = Pref.bool("Show Minimum Price Variant Class Reference Data Message", show.minimum_price_variant_class_reference_data_message, "Parse and add Minimum Price Variant Class Reference Data Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_minimum_price_variant_level_reference_data_message = Pref.bool("Show Minimum Price Variant Level Reference Data Message", show.minimum_price_variant_level_reference_data_message, "Parse and add Minimum Price Variant Level Reference Data Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_mmid_configuration_message = Pref.bool("Show Mmid Configuration Message", show.mmid_configuration_message, "Parse and add Mmid Configuration Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_mpid_configuration_message = Pref.bool("Show Mpid Configuration Message", show.mpid_configuration_message, "Parse and add Mpid Configuration Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_mpv_level_definition = Pref.bool("Show Mpv Level Definition", show.mpv_level_definition, "Parse and add Mpv Level Definition to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_new_order_single_and_cancel_replace_request_message = Pref.bool("Show New Order Single And Cancel Replace Request Message", show.new_order_single_and_cancel_replace_request_message, "Parse and add New Order Single And Cancel Replace Request Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_open = Pref.bool("Show Open", show.open, "Parse and add Open to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_open_response = Pref.bool("Show Open Response", show.open_response, "Parse and add Open Response to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_optional_order_add_on = Pref.bool("Show Optional Order Add On", show.optional_order_add_on, "Parse and add Optional Order Add On to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_optional_settlement_type_add_on = Pref.bool("Show Optional Settlement Type Add On", show.optional_settlement_type_add_on, "Parse and add Optional Settlement Type Add On to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_and_cancel_replace_acknowledgement_message = Pref.bool("Show Order And Cancel Replace Acknowledgement Message", show.order_and_cancel_replace_acknowledgement_message, "Parse and add Order And Cancel Replace Acknowledgement Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_modify_cancel_request_acknowledgment_and_urout = Pref.bool("Show Order Modify Cancel Request Acknowledgment And Urout", show.order_modify_cancel_request_acknowledgment_and_urout, "Parse and add Order Modify Cancel Request Acknowledgment And Urout to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_modify_request_message = Pref.bool("Show Order Modify Request Message", show.order_modify_request_message, "Parse and add Order Modify Request Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_priority_update_acknowledgment = Pref.bool("Show Order Priority Update Acknowledgment", show.order_priority_update_acknowledgment, "Parse and add Order Priority Update Acknowledgment to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_ref_seq_msg_id = Pref.bool("Show Ref Seq Msg Id", show.ref_seq_msg_id, "Parse and add Ref Seq Msg Id to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_action_request_message = Pref.bool("Show Risk Action Request Message", show.risk_action_request_message, "Parse and add Risk Action Request Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_control_acknowledgement = Pref.bool("Show Risk Control Acknowledgement", show.risk_control_acknowledgement, "Parse and add Risk Control Acknowledgement to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_control_alert = Pref.bool("Show Risk Control Alert", show.risk_control_alert, "Parse and add Risk Control Alert to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_limit_update_request_message = Pref.bool("Show Risk Limit Update Request Message", show.risk_limit_update_request_message, "Parse and add Risk Limit Update Request Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_seq_msg = Pref.bool("Show Seq Msg", show.seq_msg, "Parse and add Seq Msg to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_seq_msg_header = Pref.bool("Show Seq Msg Header", show.seq_msg_header, "Parse and add Seq Msg Header to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_seqmsgid = Pref.bool("Show Seqmsgid", show.seqmsgid, "Parse and add Seqmsgid to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_sequenced_filler_message = Pref.bool("Show Sequenced Filler Message", show.sequenced_filler_message, "Parse and add Sequenced Filler Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_session_configuration_acknowledgement_message = Pref.bool("Show Session Configuration Acknowledgement Message", show.session_configuration_acknowledgement_message, "Parse and add Session Configuration Acknowledgement Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_session_configuration_request_message = Pref.bool("Show Session Configuration Request Message", show.session_configuration_request_message, "Parse and add Session Configuration Request Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_stream_avail = Pref.bool("Show Stream Avail", show.stream_avail, "Parse and add Stream Avail to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_stream_id = Pref.bool("Show Stream Id", show.stream_id, "Parse and add Stream Id to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_sub_msg_header = Pref.bool("Show Sub Msg Header", show.sub_msg_header, "Parse and add Sub Msg Header to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_symbol_subscription_acknowledgement = Pref.bool("Show Symbol Subscription Acknowledgement", show.symbol_subscription_acknowledgement, "Parse and add Symbol Subscription Acknowledgement to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_symbol_subscription_request_message = Pref.bool("Show Symbol Subscription Request Message", show.symbol_subscription_request_message, "Parse and add Symbol Subscription Request Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_tg_begin_message = Pref.bool("Show Tg Begin Message", show.tg_begin_message, "Parse and add Tg Begin Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_tg_end_message = Pref.bool("Show Tg End Message", show.tg_end_message, "Parse and add Tg End Message to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_trade_bust_correct = Pref.bool("Show Trade Bust Correct", show.trade_bust_correct, "Parse and add Trade Bust Correct to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_pillarstreammessage = Pref.bool("Show pillarstreammessage", show.pillarstreammessage, "Parse and add pillarstreammessage to protocol tree")
nyse_equities_binarygateway_pillar_v5_8.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")

-- Handle changed preferences
function nyse_equities_binarygateway_pillar_v5_8.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_layer_reject ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_application_layer_reject then
    show.application_layer_reject = nyse_equities_binarygateway_pillar_v5_8.prefs.show_application_layer_reject
    changed = true
  end
  if show.auction_price_data ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_auction_price_data then
    show.auction_price_data = nyse_equities_binarygateway_pillar_v5_8.prefs.show_auction_price_data
    changed = true
  end
  if show.auction_request ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_auction_request then
    show.auction_request = nyse_equities_binarygateway_pillar_v5_8.prefs.show_auction_request
    changed = true
  end
  if show.bitfield_flow_indicator ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_bitfield_flow_indicator then
    show.bitfield_flow_indicator = nyse_equities_binarygateway_pillar_v5_8.prefs.show_bitfield_flow_indicator
    changed = true
  end
  if show.bulk_cancel_request_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_bulk_cancel_request_message then
    show.bulk_cancel_request_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_bulk_cancel_request_message
    changed = true
  end
  if show.close ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_close then
    show.close = nyse_equities_binarygateway_pillar_v5_8.prefs.show_close
    changed = true
  end
  if show.close_response ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_close_response then
    show.close_response = nyse_equities_binarygateway_pillar_v5_8.prefs.show_close_response
    changed = true
  end
  if show.dmm_symbol_reference_data_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_dmm_symbol_reference_data_message then
    show.dmm_symbol_reference_data_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_dmm_symbol_reference_data_message
    changed = true
  end
  if show.equities_symbol_reference_data_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_equities_symbol_reference_data_message then
    show.equities_symbol_reference_data_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_equities_symbol_reference_data_message
    changed = true
  end
  if show.execution_report ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_execution_report then
    show.execution_report = nyse_equities_binarygateway_pillar_v5_8.prefs.show_execution_report
    changed = true
  end
  if show.gt_begin ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_gt_begin then
    show.gt_begin = nyse_equities_binarygateway_pillar_v5_8.prefs.show_gt_begin
    changed = true
  end
  if show.gt_end ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_gt_end then
    show.gt_end = nyse_equities_binarygateway_pillar_v5_8.prefs.show_gt_end
    changed = true
  end
  if show.heartbeat ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_heartbeat then
    show.heartbeat = nyse_equities_binarygateway_pillar_v5_8.prefs.show_heartbeat
    changed = true
  end
  if show.login_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_login_message then
    show.login_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_login_message
    changed = true
  end
  if show.login_response ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_login_response then
    show.login_response = nyse_equities_binarygateway_pillar_v5_8.prefs.show_login_response
    changed = true
  end
  if show.manual_action_id ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_id then
    show.manual_action_id = nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_id
    changed = true
  end
  if show.manual_action_request ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_request then
    show.manual_action_request = nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_request
    changed = true
  end
  if show.manual_action_response_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_response_message then
    show.manual_action_response_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_manual_action_response_message
    changed = true
  end
  if show.minimum_price_variant_class_reference_data_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_minimum_price_variant_class_reference_data_message then
    show.minimum_price_variant_class_reference_data_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_minimum_price_variant_class_reference_data_message
    changed = true
  end
  if show.minimum_price_variant_level_reference_data_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_minimum_price_variant_level_reference_data_message then
    show.minimum_price_variant_level_reference_data_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_minimum_price_variant_level_reference_data_message
    changed = true
  end
  if show.mmid_configuration_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_mmid_configuration_message then
    show.mmid_configuration_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_mmid_configuration_message
    changed = true
  end
  if show.mpid_configuration_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_mpid_configuration_message then
    show.mpid_configuration_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_mpid_configuration_message
    changed = true
  end
  if show.mpv_level_definition ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_mpv_level_definition then
    show.mpv_level_definition = nyse_equities_binarygateway_pillar_v5_8.prefs.show_mpv_level_definition
    changed = true
  end
  if show.msg_header ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_msg_header then
    show.msg_header = nyse_equities_binarygateway_pillar_v5_8.prefs.show_msg_header
    changed = true
  end
  if show.new_order_single_and_cancel_replace_request_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_new_order_single_and_cancel_replace_request_message then
    show.new_order_single_and_cancel_replace_request_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_new_order_single_and_cancel_replace_request_message
    changed = true
  end
  if show.open ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_open then
    show.open = nyse_equities_binarygateway_pillar_v5_8.prefs.show_open
    changed = true
  end
  if show.open_response ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_open_response then
    show.open_response = nyse_equities_binarygateway_pillar_v5_8.prefs.show_open_response
    changed = true
  end
  if show.optional_order_add_on ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_optional_order_add_on then
    show.optional_order_add_on = nyse_equities_binarygateway_pillar_v5_8.prefs.show_optional_order_add_on
    changed = true
  end
  if show.optional_settlement_type_add_on ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_optional_settlement_type_add_on then
    show.optional_settlement_type_add_on = nyse_equities_binarygateway_pillar_v5_8.prefs.show_optional_settlement_type_add_on
    changed = true
  end
  if show.order_and_cancel_replace_acknowledgement_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_and_cancel_replace_acknowledgement_message then
    show.order_and_cancel_replace_acknowledgement_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_and_cancel_replace_acknowledgement_message
    changed = true
  end
  if show.order_cancel_request_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.order_modify_cancel_request_acknowledgment_and_urout ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_modify_cancel_request_acknowledgment_and_urout then
    show.order_modify_cancel_request_acknowledgment_and_urout = nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_modify_cancel_request_acknowledgment_and_urout
    changed = true
  end
  if show.order_modify_request_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_modify_request_message then
    show.order_modify_request_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_modify_request_message
    changed = true
  end
  if show.order_priority_update_acknowledgment ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_priority_update_acknowledgment then
    show.order_priority_update_acknowledgment = nyse_equities_binarygateway_pillar_v5_8.prefs.show_order_priority_update_acknowledgment
    changed = true
  end
  if show.ref_seq_msg_id ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_ref_seq_msg_id then
    show.ref_seq_msg_id = nyse_equities_binarygateway_pillar_v5_8.prefs.show_ref_seq_msg_id
    changed = true
  end
  if show.risk_action_request_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_action_request_message then
    show.risk_action_request_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_action_request_message
    changed = true
  end
  if show.risk_control_acknowledgement ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_control_acknowledgement then
    show.risk_control_acknowledgement = nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_control_acknowledgement
    changed = true
  end
  if show.risk_control_alert ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_control_alert then
    show.risk_control_alert = nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_control_alert
    changed = true
  end
  if show.risk_limit_update_request_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_limit_update_request_message then
    show.risk_limit_update_request_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_risk_limit_update_request_message
    changed = true
  end
  if show.seq_msg ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_seq_msg then
    show.seq_msg = nyse_equities_binarygateway_pillar_v5_8.prefs.show_seq_msg
    changed = true
  end
  if show.seq_msg_header ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_seq_msg_header then
    show.seq_msg_header = nyse_equities_binarygateway_pillar_v5_8.prefs.show_seq_msg_header
    changed = true
  end
  if show.seqmsgid ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_seqmsgid then
    show.seqmsgid = nyse_equities_binarygateway_pillar_v5_8.prefs.show_seqmsgid
    changed = true
  end
  if show.sequenced_filler_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_sequenced_filler_message then
    show.sequenced_filler_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_sequenced_filler_message
    changed = true
  end
  if show.session_configuration_acknowledgement_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_session_configuration_acknowledgement_message then
    show.session_configuration_acknowledgement_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_session_configuration_acknowledgement_message
    changed = true
  end
  if show.session_configuration_request_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_session_configuration_request_message then
    show.session_configuration_request_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_session_configuration_request_message
    changed = true
  end
  if show.stream_avail ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_stream_avail then
    show.stream_avail = nyse_equities_binarygateway_pillar_v5_8.prefs.show_stream_avail
    changed = true
  end
  if show.stream_id ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_stream_id then
    show.stream_id = nyse_equities_binarygateway_pillar_v5_8.prefs.show_stream_id
    changed = true
  end
  if show.sub_msg_header ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_sub_msg_header then
    show.sub_msg_header = nyse_equities_binarygateway_pillar_v5_8.prefs.show_sub_msg_header
    changed = true
  end
  if show.symbol_subscription_acknowledgement ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_symbol_subscription_acknowledgement then
    show.symbol_subscription_acknowledgement = nyse_equities_binarygateway_pillar_v5_8.prefs.show_symbol_subscription_acknowledgement
    changed = true
  end
  if show.symbol_subscription_request_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_symbol_subscription_request_message then
    show.symbol_subscription_request_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_symbol_subscription_request_message
    changed = true
  end
  if show.tg_begin_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_tg_begin_message then
    show.tg_begin_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_tg_begin_message
    changed = true
  end
  if show.tg_end_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_tg_end_message then
    show.tg_end_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_tg_end_message
    changed = true
  end
  if show.trade_bust_correct ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_trade_bust_correct then
    show.trade_bust_correct = nyse_equities_binarygateway_pillar_v5_8.prefs.show_trade_bust_correct
    changed = true
  end
  if show.pillarstreammessage ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_pillarstreammessage then
    show.pillarstreammessage = nyse_equities_binarygateway_pillar_v5_8.prefs.show_pillarstreammessage
    changed = true
  end
  if show.sequenced_message ~= nyse_equities_binarygateway_pillar_v5_8.prefs.show_sequenced_message then
    show.sequenced_message = nyse_equities_binarygateway_pillar_v5_8.prefs.show_sequenced_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Dissect Nyse Equities BinaryGateway Pillar 5.8
-----------------------------------------------------------------------

-- Size: Reserved 200
nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_200 = 200

-- Display: Reserved 200
nyse_equities_binarygateway_pillar_v5_8_display.reserved_200 = function(value)
  return "Reserved 200: "..value
end

-- Dissect: Reserved 200
nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_200 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_200
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reserved_200(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_200, range, value, display)

  return offset + length, value
end

-- Size: Reinstatement Requiredby Other
nyse_equities_binarygateway_pillar_v5_8_size_of.reinstatement_requiredby_other = 1

-- Display: Reinstatement Requiredby Other
nyse_equities_binarygateway_pillar_v5_8_display.reinstatement_requiredby_other = function(value)
  if value == 0 then
    return "Reinstatement Requiredby Other: Not Required (0)"
  end
  if value == 1 then
    return "Reinstatement Requiredby Other: Required (1)"
  end

  return "Reinstatement Requiredby Other: Unknown("..value..")"
end

-- Dissect: Reinstatement Requiredby Other
nyse_equities_binarygateway_pillar_v5_8_dissect.reinstatement_requiredby_other = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reinstatement_requiredby_other
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reinstatement_requiredby_other(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reinstatement_requiredby_other, range, value, display)

  return offset + length, value
end

-- Size: Reinstatement Requiredby Self
nyse_equities_binarygateway_pillar_v5_8_size_of.reinstatement_requiredby_self = 1

-- Display: Reinstatement Requiredby Self
nyse_equities_binarygateway_pillar_v5_8_display.reinstatement_requiredby_self = function(value)
  if value == 0 then
    return "Reinstatement Requiredby Self: Not Required (0)"
  end
  if value == 1 then
    return "Reinstatement Requiredby Self: Required (1)"
  end

  return "Reinstatement Requiredby Self: Unknown("..value..")"
end

-- Dissect: Reinstatement Requiredby Self
nyse_equities_binarygateway_pillar_v5_8_dissect.reinstatement_requiredby_self = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reinstatement_requiredby_self
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reinstatement_requiredby_self(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reinstatement_requiredby_self, range, value, display)

  return offset + length, value
end

-- Size: Blocked By Kill Switch Indicator
nyse_equities_binarygateway_pillar_v5_8_size_of.blocked_by_kill_switch_indicator = 1

-- Display: Blocked By Kill Switch Indicator
nyse_equities_binarygateway_pillar_v5_8_display.blocked_by_kill_switch_indicator = function(value)
  if value == 0 then
    return "Blocked By Kill Switch Indicator: Not Blocked By Kill Switch (0)"
  end
  if value == 1 then
    return "Blocked By Kill Switch Indicator: Blocked By Kill Switch (1)"
  end

  return "Blocked By Kill Switch Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Kill Switch Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.blocked_by_kill_switch_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.blocked_by_kill_switch_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.blocked_by_kill_switch_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.blocked_by_kill_switch_indicator, range, value, display)

  return offset + length, value
end

-- Size: Blocked By Breach Indicator
nyse_equities_binarygateway_pillar_v5_8_size_of.blocked_by_breach_indicator = 1

-- Display: Blocked By Breach Indicator
nyse_equities_binarygateway_pillar_v5_8_display.blocked_by_breach_indicator = function(value)
  if value == 0 then
    return "Blocked By Breach Indicator: Not Blocked By Breach (0)"
  end
  if value == 1 then
    return "Blocked By Breach Indicator: Blocked By Breach (1)"
  end

  return "Blocked By Breach Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Breach Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.blocked_by_breach_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.blocked_by_breach_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.blocked_by_breach_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.blocked_by_breach_indicator, range, value, display)

  return offset + length, value
end

-- Size: Threshold Breach Level
nyse_equities_binarygateway_pillar_v5_8_size_of.threshold_breach_level = 1

-- Display: Threshold Breach Level
nyse_equities_binarygateway_pillar_v5_8_display.threshold_breach_level = function(value)
  return "Threshold Breach Level: "..value
end

-- Dissect: Threshold Breach Level
nyse_equities_binarygateway_pillar_v5_8_dissect.threshold_breach_level = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.threshold_breach_level
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.threshold_breach_level(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.threshold_breach_level, range, value, display)

  return offset + length, value
end

-- Size: Risk Action Type
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_action_type = 1

-- Display: Risk Action Type
nyse_equities_binarygateway_pillar_v5_8_display.risk_action_type = function(value)
  if value == 1 then
    return "Risk Action Type: Query Risk Entity For Current Risk Control Configscalculationsstatus (1)"
  end
  if value == 2 then
    return "Risk Action Type: Kill Switch Block (2)"
  end
  if value == 3 then
    return "Risk Action Type: Kill Switch Un Block (3)"
  end
  if value == 4 then
    return "Risk Action Type: Kill Switch Cancel Auction Orders (4)"
  end
  if value == 5 then
    return "Risk Action Type: Kill Switch Cancel Non Auction Orders (5)"
  end
  if value == 7 then
    return "Risk Action Type: Approve Reinstatement (7)"
  end
  if value == 9 then
    return "Risk Action Type: Add Symbol Level Risk Entity (9)"
  end
  if value == 10 then
    return "Risk Action Type: Remove Symbol Level Risk Entity (10)"
  end
  if value == 0 then
    return "Risk Action Type: No Value"
  end

  return "Risk Action Type: Unknown("..value..")"
end

-- Dissect: Risk Action Type
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_action_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_action_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_action_type, range, value, display)

  return offset + length, value
end

-- Size: Count Calculation
nyse_equities_binarygateway_pillar_v5_8_size_of.count_calculation = 4

-- Display: Count Calculation
nyse_equities_binarygateway_pillar_v5_8_display.count_calculation = function(value)
  return "Count Calculation: "..value
end

-- Dissect: Count Calculation
nyse_equities_binarygateway_pillar_v5_8_dissect.count_calculation = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.count_calculation
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.count_calculation(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.count_calculation, range, value, display)

  return offset + length, value
end

-- Size: Usd Calculation 4
nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_4 = 8

-- Display: Usd Calculation 4
nyse_equities_binarygateway_pillar_v5_8_display.usd_calculation_4 = function(value)
  return "Usd Calculation 4: "..value
end

-- Dissect: Usd Calculation 4
nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_4 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_4
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.usd_calculation_4(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.usd_calculation_4, range, value, display)

  return offset + length, value
end

-- Size: Usd Calculation 3
nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_3 = 8

-- Display: Usd Calculation 3
nyse_equities_binarygateway_pillar_v5_8_display.usd_calculation_3 = function(value)
  return "Usd Calculation 3: "..value
end

-- Dissect: Usd Calculation 3
nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_3 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_3
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.usd_calculation_3(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.usd_calculation_3, range, value, display)

  return offset + length, value
end

-- Size: Usd Calculation 2
nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_2 = 8

-- Display: Usd Calculation 2
nyse_equities_binarygateway_pillar_v5_8_display.usd_calculation_2 = function(value)
  return "Usd Calculation 2: "..value
end

-- Dissect: Usd Calculation 2
nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_2
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.usd_calculation_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.usd_calculation_2, range, value, display)

  return offset + length, value
end

-- Size: Usd Calculation 1
nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_1 = 8

-- Display: Usd Calculation 1
nyse_equities_binarygateway_pillar_v5_8_display.usd_calculation_1 = function(value)
  return "Usd Calculation 1: "..value
end

-- Dissect: Usd Calculation 1
nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_1
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.usd_calculation_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.usd_calculation_1, range, value, display)

  return offset + length, value
end

-- Size: Ioc Attribution
nyse_equities_binarygateway_pillar_v5_8_size_of.ioc_attribution = 1

-- Display: Ioc Attribution
nyse_equities_binarygateway_pillar_v5_8_display.ioc_attribution = function(value)
  -- Check if field has value
  if value == 0 then
    return "Ioc Attribution: No Value"
  end

  return "Ioc Attribution: "..value
end

-- Dissect: Ioc Attribution
nyse_equities_binarygateway_pillar_v5_8_dissect.ioc_attribution = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ioc_attribution
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ioc_attribution(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ioc_attribution, range, value, display)

  return offset + length, value
end

-- Size: Breach Action Response
nyse_equities_binarygateway_pillar_v5_8_size_of.breach_action_response = 1

-- Display: Breach Action Response
nyse_equities_binarygateway_pillar_v5_8_display.breach_action_response = function(value)
  if value == 1 then
    return "Breach Action Response: Notification (1)"
  end
  if value == 2 then
    return "Breach Action Response: Cancel Non Auction Orders (2)"
  end
  if value == 3 then
    return "Breach Action Response: Block (3)"
  end
  if value == 0 then
    return "Breach Action Response: No Value"
  end

  return "Breach Action Response: Unknown("..value..")"
end

-- Dissect: Breach Action Response
nyse_equities_binarygateway_pillar_v5_8_dissect.breach_action_response = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.breach_action_response
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.breach_action_response(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.breach_action_response, range, value, display)

  return offset + length, value
end

-- Size: Count Limit
nyse_equities_binarygateway_pillar_v5_8_size_of.count_limit = 4

-- Display: Count Limit
nyse_equities_binarygateway_pillar_v5_8_display.count_limit = function(value)
  return "Count Limit: "..value
end

-- Dissect: Count Limit
nyse_equities_binarygateway_pillar_v5_8_dissect.count_limit = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.count_limit
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.count_limit(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.count_limit, range, value, display)

  return offset + length, value
end

-- Size: Percentage Limit
nyse_equities_binarygateway_pillar_v5_8_size_of.percentage_limit = 4

-- Display: Percentage Limit
nyse_equities_binarygateway_pillar_v5_8_display.percentage_limit = function(value)
  return "Percentage Limit: "..value
end

-- Dissect: Percentage Limit
nyse_equities_binarygateway_pillar_v5_8_dissect.percentage_limit = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.percentage_limit
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.percentage_limit(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.percentage_limit, range, value, display)

  return offset + length, value
end

-- Size: Time Limit
nyse_equities_binarygateway_pillar_v5_8_size_of.time_limit = 4

-- Display: Time Limit
nyse_equities_binarygateway_pillar_v5_8_display.time_limit = function(value)
  return "Time Limit: "..value
end

-- Dissect: Time Limit
nyse_equities_binarygateway_pillar_v5_8_dissect.time_limit = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.time_limit
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.time_limit(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.time_limit, range, value, display)

  return offset + length, value
end

-- Size: Usd Limit
nyse_equities_binarygateway_pillar_v5_8_size_of.usd_limit = 8

-- Display: Usd Limit
nyse_equities_binarygateway_pillar_v5_8_display.usd_limit = function(value)
  return "Usd Limit: "..value
end

-- Dissect: Usd Limit
nyse_equities_binarygateway_pillar_v5_8_dissect.usd_limit = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.usd_limit
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.usd_limit(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.usd_limit, range, value, display)

  return offset + length, value
end

-- Size: Risk Control Type
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_type = 1

-- Display: Risk Control Type
nyse_equities_binarygateway_pillar_v5_8_display.risk_control_type = function(value)
  if value == 1 then
    return "Risk Control Type: Single Order Max Qty (1)"
  end
  if value == 2 then
    return "Risk Control Type: Single Order Max Notional Value (2)"
  end
  if value == 5 then
    return "Risk Control Type: Gross Credit Open Executed (5)"
  end
  if value == 6 then
    return "Risk Control Type: Maximum Duplicative Orders (6)"
  end
  if value == 12 then
    return "Risk Control Type: Reject Iso (12)"
  end
  if value == 13 then
    return "Risk Control Type: Reject Market Orders Except Moo And Moc (13)"
  end
  if value == 14 then
    return "Risk Control Type: Reject Moo And Moc (14)"
  end
  if value == 17 then
    return "Risk Control Type: Reject Early Trading Session Designation (17)"
  end
  if value == 18 then
    return "Risk Control Type: Reject Late Trading Session Designation (18)"
  end
  if value == 19 then
    return "Risk Control Type: Reject Restricted Symbol (19)"
  end
  if value == 20 then
    return "Risk Control Type: Reject Sell Short For Symbol (20)"
  end
  if value == 21 then
    return "Risk Control Type: Reject Sell Short Exempt For Symbol (21)"
  end
  if value == 22 then
    return "Risk Control Type: Single Order Maximum Quantity As Percentage Of Symbol Adv (22)"
  end
  if value == 23 then
    return "Risk Control Type: Limit Order Price Protection Equities Custom Limits (23)"
  end
  if value == 24 then
    return "Risk Control Type: Limit Order Price Protection Equities Early Late Trading Multiplier (24)"
  end
  if value == 25 then
    return "Risk Control Type: Limit Order Price Protection Equities Closing Only Multiplier (25)"
  end
  if value == 28 then
    return "Risk Control Type: Require Locate Broker On Sell Short And Sell Short Exempt Orders (28)"
  end
  if value == 0 then
    return "Risk Control Type: No Value"
  end

  return "Risk Control Type: Unknown("..value..")"
end

-- Dissect: Risk Control Type
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_control_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_control_type, range, value, display)

  return offset + length, value
end

-- Size: Risk User Type
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_type = 1

-- Display: Risk User Type
nyse_equities_binarygateway_pillar_v5_8_display.risk_user_type = function(value)
  if value == "E" then
    return "Risk User Type: Entering Firm (E)"
  end
  if value == "C" then
    return "Risk User Type: Clearing Firm (C)"
  end

  return "Risk User Type: Unknown("..value..")"
end

-- Dissect: Risk User Type
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_user_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_user_type, range, value, display)

  return offset + length, value
end

-- Size: Risk User Crd
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_crd = 4

-- Display: Risk User Crd
nyse_equities_binarygateway_pillar_v5_8_display.risk_user_crd = function(value)
  return "Risk User Crd: "..value
end

-- Dissect: Risk User Crd
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_crd = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_crd
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_user_crd(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_user_crd, range, value, display)

  return offset + length, value
end

-- Size: Clearing Number
nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_number = 5

-- Display: Clearing Number
nyse_equities_binarygateway_pillar_v5_8_display.clearing_number = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Number: No Value"
  end

  return "Clearing Number: "..value
end

-- Dissect: Clearing Number
nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_number = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_number
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.clearing_number(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.clearing_number, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_4 = 4

-- Display: Reserved 4
nyse_equities_binarygateway_pillar_v5_8_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Mp Sub Id
nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id = 1

-- Display: Mp Sub Id
nyse_equities_binarygateway_pillar_v5_8_display.mp_sub_id = function(value)
  return "Mp Sub Id: "..value
end

-- Dissect: Mp Sub Id
nyse_equities_binarygateway_pillar_v5_8_dissect.mp_sub_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.mp_sub_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mp_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Market Maker
nyse_equities_binarygateway_pillar_v5_8_size_of.market_maker = 10

-- Display: Market Maker
nyse_equities_binarygateway_pillar_v5_8_display.market_maker = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Maker: No Value"
  end

  return "Market Maker: "..value
end

-- Dissect: Market Maker
nyse_equities_binarygateway_pillar_v5_8_dissect.market_maker = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.market_maker
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.market_maker(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.market_maker, range, value, display)

  return offset + length, value
end

-- Size: Mpid
nyse_equities_binarygateway_pillar_v5_8_size_of.mpid = 4

-- Display: Mpid
nyse_equities_binarygateway_pillar_v5_8_display.mpid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid: No Value"
  end

  return "Mpid: "..value
end

-- Dissect: Mpid
nyse_equities_binarygateway_pillar_v5_8_dissect.mpid = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mpid
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.mpid(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mpid, range, value, display)

  return offset + length, value
end

-- Size: Symbol Id
nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id = 4

-- Display: Symbol Id
nyse_equities_binarygateway_pillar_v5_8_display.symbol_id = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.symbol_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Size: Seq Msg Length
nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_length = 2

-- Display: Seq Msg Length
nyse_equities_binarygateway_pillar_v5_8_display.seq_msg_length = function(value)
  return "Seq Msg Length: "..value
end

-- Dissect: Seq Msg Length
nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_length = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.seq_msg_length(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.seq_msg_length, range, value, display)

  return offset + length, value
end

-- Size: Seq Msg Type
nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_type = 2

-- Display: Seq Msg Type
nyse_equities_binarygateway_pillar_v5_8_display.seq_msg_type = function(value)
  if value == 0x0220 then
    return "Seq Msg Type: Session Configuration Request Message (0x0220)"
  end
  if value == 0x0282 then
    return "Seq Msg Type: Sequenced Filler Message (0x0282)"
  end
  if value == 0x0240 then
    return "Seq Msg Type: New Order Single And Cancel Replace Request Message (0x0240)"
  end
  if value == 0x0280 then
    return "Seq Msg Type: Order Cancel Request Message (0x0280)"
  end
  if value == 0x0270 then
    return "Seq Msg Type: Order Modify Request Message (0x0270)"
  end
  if value == 0x0281 then
    return "Seq Msg Type: Bulk Cancel Request Message (0x0281)"
  end
  if value == 0x0346 then
    return "Seq Msg Type: Symbol Subscription Request Message (0x0346)"
  end
  if value == 0x0343 then
    return "Seq Msg Type: Tg Begin Message (0x0343)"
  end
  if value == 0x0344 then
    return "Seq Msg Type: Tg End Message (0x0344)"
  end
  if value == 0x0354 then
    return "Seq Msg Type: Manual Action Response Message (0x0354)"
  end
  if value == 0x0330 then
    return "Seq Msg Type: Risk Limit Update Request Message (0x0330)"
  end
  if value == 0x0331 then
    return "Seq Msg Type: Risk Action Request Message (0x0331)"
  end
  if value == 0x0232 then
    return "Seq Msg Type: Equities Symbol Reference Data Message (0x0232)"
  end
  if value == 0x0832 then
    return "Seq Msg Type: Dmm Symbol Reference Data Message (0x0832)"
  end
  if value == 0x0230 then
    return "Seq Msg Type: Minimum Price Variant Class Reference Data Message (0x0230)"
  end
  if value == 0x0231 then
    return "Seq Msg Type: Minimum Price Variant Level Reference Data Message (0x0231)"
  end
  if value == 0x0272 then
    return "Seq Msg Type: Mpid Configuration Message (0x0272)"
  end
  if value == 0x0273 then
    return "Seq Msg Type: Mmid Configuration Message (0x0273)"
  end
  if value == 0x0221 then
    return "Seq Msg Type: Session Configuration Acknowledgement Message (0x0221)"
  end
  if value == 0x0260 then
    return "Seq Msg Type: Order And Cancel Replace Acknowledgement Message (0x0260)"
  end
  if value == 0x0271 then
    return "Seq Msg Type: Order Modify Cancel Request Acknowledgment And Urout (0x0271)"
  end
  if value == 0x0262 then
    return "Seq Msg Type: Order Priority Update Acknowledgment (0x0262)"
  end
  if value == 0x0290 then
    return "Seq Msg Type: Execution Report (0x0290)"
  end
  if value == 0x0292 then
    return "Seq Msg Type: Trade Bust Correct (0x0292)"
  end
  if value == 0x0263 then
    return "Seq Msg Type: Application Layer Reject (0x0263)"
  end
  if value == 0x0347 then
    return "Seq Msg Type: Symbol Subscription Acknowledgement (0x0347)"
  end
  if value == 0x0349 then
    return "Seq Msg Type: Gt Begin (0x0349)"
  end
  if value == 0x0350 then
    return "Seq Msg Type: Gt End (0x0350)"
  end
  if value == 0x0352 then
    return "Seq Msg Type: Auction Price Data (0x0352)"
  end
  if value == 0x0348 then
    return "Seq Msg Type: Auction Request (0x0348)"
  end
  if value == 0x0353 then
    return "Seq Msg Type: Manual Action Request (0x0353)"
  end
  if value == 0x0332 then
    return "Seq Msg Type: Risk Control Acknowledgement (0x0332)"
  end
  if value == 0x0333 then
    return "Seq Msg Type: Risk Control Alert (0x0333)"
  end

  return "Seq Msg Type: Unknown("..value..")"
end

-- Dissect: Seq Msg Type
nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.seq_msg_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.seq_msg_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Seq Msg Header
nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_length

  return index
end

-- Display: Seq Msg Header
nyse_equities_binarygateway_pillar_v5_8_display.seq_msg_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Seq Msg Header
nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 33 values
  index, seq_msg_type = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_type(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Header
nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.seq_msg_header then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.seq_msg_header(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.seq_msg_header, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Risk Control Alert
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_alert = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.market_maker

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_4

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_number

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_crd

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.time_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.percentage_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.count_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.breach_action_response

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ioc_attribution

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_1

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_2

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_3

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_4

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.count_calculation

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_action_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.threshold_breach_level

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.blocked_by_breach_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.blocked_by_kill_switch_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reinstatement_requiredby_self

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reinstatement_requiredby_other

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_200

  return index
end

-- Display: Risk Control Alert
nyse_equities_binarygateway_pillar_v5_8_display.risk_control_alert = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Risk Control Alert
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_alert_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_equities_binarygateway_pillar_v5_8_dissect.market_maker(buffer, index, packet, parent)

  -- Mp Sub Id: 1 Byte Ascii String
  index, mp_sub_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mp_sub_id(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_4(buffer, index, packet, parent)

  -- Clearing Number: 5 Byte Ascii String
  index, clearing_number = nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_number(buffer, index, packet, parent)

  -- Risk User Crd: 4 Byte Unsigned Fixed Width Integer
  index, risk_user_crd = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_crd(buffer, index, packet, parent)

  -- Risk User Type: 1 Byte Ascii String Enum with 2 values
  index, risk_user_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_type(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_type(buffer, index, packet, parent)

  -- Usd Limit: 8 Byte Signed Fixed Width Integer
  index, usd_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_limit(buffer, index, packet, parent)

  -- Time Limit: 4 Byte Signed Fixed Width Integer
  index, time_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.time_limit(buffer, index, packet, parent)

  -- Percentage Limit: 4 Byte Signed Fixed Width Integer
  index, percentage_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.percentage_limit(buffer, index, packet, parent)

  -- Count Limit: 4 Byte Signed Fixed Width Integer
  index, count_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.count_limit(buffer, index, packet, parent)

  -- Breach Action Response: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, breach_action_response = nyse_equities_binarygateway_pillar_v5_8_dissect.breach_action_response(buffer, index, packet, parent)

  -- Ioc Attribution: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ioc_attribution = nyse_equities_binarygateway_pillar_v5_8_dissect.ioc_attribution(buffer, index, packet, parent)

  -- Usd Calculation 1: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_1 = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_1(buffer, index, packet, parent)

  -- Usd Calculation 2: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_2 = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_2(buffer, index, packet, parent)

  -- Usd Calculation 3: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_3 = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_3(buffer, index, packet, parent)

  -- Usd Calculation 4: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_4 = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_4(buffer, index, packet, parent)

  -- Count Calculation: 4 Byte Unsigned Fixed Width Integer
  index, count_calculation = nyse_equities_binarygateway_pillar_v5_8_dissect.count_calculation(buffer, index, packet, parent)

  -- Risk Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, risk_action_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_action_type(buffer, index, packet, parent)

  -- Threshold Breach Level: 1 Byte Unsigned Fixed Width Integer
  index, threshold_breach_level = nyse_equities_binarygateway_pillar_v5_8_dissect.threshold_breach_level(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, blocked_by_breach_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.blocked_by_breach_indicator(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, blocked_by_kill_switch_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.blocked_by_kill_switch_indicator(buffer, index, packet, parent)

  -- Reinstatement Requiredby Self: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, reinstatement_requiredby_self = nyse_equities_binarygateway_pillar_v5_8_dissect.reinstatement_requiredby_self(buffer, index, packet, parent)

  -- Reinstatement Requiredby Other: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, reinstatement_requiredby_other = nyse_equities_binarygateway_pillar_v5_8_dissect.reinstatement_requiredby_other(buffer, index, packet, parent)

  -- Reserved 200: 200 Byte
  index, reserved_200 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_200(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Alert
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_alert = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.risk_control_alert then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_alert(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_control_alert(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_control_alert, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_alert_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 190
nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_190 = 190

-- Display: Reserved 190
nyse_equities_binarygateway_pillar_v5_8_display.reserved_190 = function(value)
  return "Reserved 190: "..value
end

-- Dissect: Reserved 190
nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_190 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_190
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reserved_190(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_190, range, value, display)

  return offset + length, value
end

-- Size: Price Scale
nyse_equities_binarygateway_pillar_v5_8_size_of.price_scale = 1

-- Display: Price Scale
nyse_equities_binarygateway_pillar_v5_8_display.price_scale = function(value)
  if value == 0 then
    return "Price Scale: No Decimals Field Will Be Interpreted As An Integer (0)"
  end
  if value == 2 then
    return "Price Scale: Two Decimals Field Will Be Interpreted As Having Two Decimals (2)"
  end

  return "Price Scale: Unknown("..value..")"
end

-- Dissect: Price Scale
nyse_equities_binarygateway_pillar_v5_8_dissect.price_scale = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.price_scale
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.price_scale(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.price_scale, range, value, display)

  return offset + length, value
end

-- Size: Risk Minimum Value
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_minimum_value = 8

-- Display: Risk Minimum Value
nyse_equities_binarygateway_pillar_v5_8_display.risk_minimum_value = function(value)
  return "Risk Minimum Value: "..value
end

-- Dissect: Risk Minimum Value
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_minimum_value = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_minimum_value
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_minimum_value(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_minimum_value, range, value, display)

  return offset + length, value
end

-- Size: Risk Range Id
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_range_id = 1

-- Display: Risk Range Id
nyse_equities_binarygateway_pillar_v5_8_display.risk_range_id = function(value)
  if value == 0 then
    return "Risk Range Id: Optional Used To Specify Minimum Adv To Apply Check (0)"
  end
  if value == 1 then
    return "Risk Range Id: Below Or Equal To 10000 Shares (1)"
  end
  if value == 2 then
    return "Risk Range Id: Above 10000 Shares And Below Or Equal To 100000 Shares (2)"
  end
  if value == 3 then
    return "Risk Range Id: Above 100000 Shares And Below Or Equal To 1000000 Shares (3)"
  end
  if value == 4 then
    return "Risk Range Id: Above 1000000 Shares (4)"
  end

  return "Risk Range Id: Unknown("..value..")"
end

-- Dissect: Risk Range Id
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_range_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_range_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_range_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_range_id, range, value, display)

  return offset + length, value
end

-- Size: Risk Control Activation
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_activation = 1

-- Display: Risk Control Activation
nyse_equities_binarygateway_pillar_v5_8_display.risk_control_activation = function(value)
  if value == 0 then
    return "Risk Control Activation: Risk Control Turned Off (0)"
  end
  if value == 1 then
    return "Risk Control Activation: Risk Control Turned On (1)"
  end

  return "Risk Control Activation: Unknown("..value..")"
end

-- Dissect: Risk Control Activation
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_activation = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_activation
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_control_activation(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_control_activation, range, value, display)

  return offset + length, value
end

-- Size: Risk Ack Type
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_ack_type = 1

-- Display: Risk Ack Type
nyse_equities_binarygateway_pillar_v5_8_display.risk_ack_type = function(value)
  if value == 0 then
    return "Risk Ack Type: Solicited Ack (0)"
  end
  if value == 1 then
    return "Risk Ack Type: Unsolicited Ack (1)"
  end

  return "Risk Ack Type: Unknown("..value..")"
end

-- Dissect: Risk Ack Type
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_ack_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_ack_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_ack_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_ack_type, range, value, display)

  return offset + length, value
end

-- Size: Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id = 8

-- Display: Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Risk Control Acknowledgement
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_acknowledgement = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.market_maker

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_4

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_number

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_ack_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_crd

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_activation

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_action_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.time_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.percentage_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.count_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.breach_action_response

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ioc_attribution

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_1

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_2

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_3

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_calculation_4

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.count_calculation

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.blocked_by_breach_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.blocked_by_kill_switch_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reinstatement_requiredby_self

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reinstatement_requiredby_other

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_range_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_minimum_value

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.price_scale

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_190

  return index
end

-- Display: Risk Control Acknowledgement
nyse_equities_binarygateway_pillar_v5_8_display.risk_control_acknowledgement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Risk Control Acknowledgement
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_acknowledgement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_equities_binarygateway_pillar_v5_8_dissect.market_maker(buffer, index, packet, parent)

  -- Mp Sub Id: 1 Byte Ascii String
  index, mp_sub_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mp_sub_id(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_4(buffer, index, packet, parent)

  -- Clearing Number: 5 Byte Ascii String
  index, clearing_number = nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_number(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Risk Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, risk_ack_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_ack_type(buffer, index, packet, parent)

  -- Risk User Crd: 4 Byte Unsigned Fixed Width Integer
  index, risk_user_crd = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_crd(buffer, index, packet, parent)

  -- Risk User Type: 1 Byte Ascii String Enum with 2 values
  index, risk_user_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_type(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_type(buffer, index, packet, parent)

  -- Risk Control Activation: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, risk_control_activation = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_activation(buffer, index, packet, parent)

  -- Risk Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, risk_action_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_action_type(buffer, index, packet, parent)

  -- Usd Limit: 8 Byte Signed Fixed Width Integer
  index, usd_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_limit(buffer, index, packet, parent)

  -- Time Limit: 4 Byte Signed Fixed Width Integer
  index, time_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.time_limit(buffer, index, packet, parent)

  -- Percentage Limit: 4 Byte Signed Fixed Width Integer
  index, percentage_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.percentage_limit(buffer, index, packet, parent)

  -- Count Limit: 4 Byte Signed Fixed Width Integer
  index, count_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.count_limit(buffer, index, packet, parent)

  -- Breach Action Response: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, breach_action_response = nyse_equities_binarygateway_pillar_v5_8_dissect.breach_action_response(buffer, index, packet, parent)

  -- Ioc Attribution: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ioc_attribution = nyse_equities_binarygateway_pillar_v5_8_dissect.ioc_attribution(buffer, index, packet, parent)

  -- Usd Calculation 1: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_1 = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_1(buffer, index, packet, parent)

  -- Usd Calculation 2: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_2 = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_2(buffer, index, packet, parent)

  -- Usd Calculation 3: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_3 = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_3(buffer, index, packet, parent)

  -- Usd Calculation 4: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_4 = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_calculation_4(buffer, index, packet, parent)

  -- Count Calculation: 4 Byte Unsigned Fixed Width Integer
  index, count_calculation = nyse_equities_binarygateway_pillar_v5_8_dissect.count_calculation(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, blocked_by_breach_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.blocked_by_breach_indicator(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, blocked_by_kill_switch_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.blocked_by_kill_switch_indicator(buffer, index, packet, parent)

  -- Reinstatement Requiredby Self: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, reinstatement_requiredby_self = nyse_equities_binarygateway_pillar_v5_8_dissect.reinstatement_requiredby_self(buffer, index, packet, parent)

  -- Reinstatement Requiredby Other: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, reinstatement_requiredby_other = nyse_equities_binarygateway_pillar_v5_8_dissect.reinstatement_requiredby_other(buffer, index, packet, parent)

  -- Risk Range Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, risk_range_id = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_range_id(buffer, index, packet, parent)

  -- Risk Minimum Value: 8 Byte Signed Fixed Width Integer
  index, risk_minimum_value = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_minimum_value(buffer, index, packet, parent)

  -- Price Scale: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_scale = nyse_equities_binarygateway_pillar_v5_8_dissect.price_scale(buffer, index, packet, parent)

  -- Reserved 190: 190 Byte
  index, reserved_190 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_190(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Acknowledgement
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_acknowledgement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.risk_control_acknowledgement then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_acknowledgement(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_control_acknowledgement(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_control_acknowledgement, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_acknowledgement_fields(buffer, offset, packet, parent)
end

-- Size: Manual Action Type
nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_type = 1

-- Display: Manual Action Type
nyse_equities_binarygateway_pillar_v5_8_display.manual_action_type = function(value)
  if value == 1 then
    return "Manual Action Type: New Manual Dmm Order (1)"
  end
  if value == 2 then
    return "Manual Action Type: Aggregate Reduction In Manual Dmm Orders Quantity (2)"
  end
  if value == 3 then
    return "Manual Action Type: Opening Auction (3)"
  end
  if value == 4 then
    return "Manual Action Type: Reopening Auction (4)"
  end
  if value == 5 then
    return "Manual Action Type: Closing Auction (5)"
  end
  if value == 6 then
    return "Manual Action Type: Manual Cross Dmm Against Nyse Floor Broker (6)"
  end
  if value == 7 then
    return "Manual Action Type: Cancel All Manual Dmm Orders Per Side (7)"
  end

  return "Manual Action Type: Unknown("..value..")"
end

-- Dissect: Manual Action Type
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.manual_action_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.manual_action_type, range, value, display)

  return offset + length, value
end

-- Size: Manual Override Reason
nyse_equities_binarygateway_pillar_v5_8_size_of.manual_override_reason = 20

-- Display: Manual Override Reason
nyse_equities_binarygateway_pillar_v5_8_display.manual_override_reason = function(value)
  return "Manual Override Reason: "..value
end

-- Dissect: Manual Override Reason
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_override_reason = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.manual_override_reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.manual_override_reason(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.manual_override_reason, range, value, display)

  return offset + length, value
end

-- Size: Manual Override
nyse_equities_binarygateway_pillar_v5_8_size_of.manual_override = 1

-- Display: Manual Override
nyse_equities_binarygateway_pillar_v5_8_display.manual_override = function(value)
  if value == 0 then
    return "Manual Override: Not Applicable (0)"
  end
  if value == 1 then
    return "Manual Override: Alert For Dbk Gui Manual Override (1)"
  end

  return "Manual Override: Unknown("..value..")"
end

-- Dissect: Manual Override
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_override = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.manual_override
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.manual_override(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.manual_override, range, value, display)

  return offset + length, value
end

-- Size: Ssr Filing Price
nyse_equities_binarygateway_pillar_v5_8_size_of.ssr_filing_price = 8

-- Display: Ssr Filing Price
nyse_equities_binarygateway_pillar_v5_8_display.ssr_filing_price = function(value)
  return "Ssr Filing Price: "..value
end

-- Translate: Ssr Filing Price
translate.ssr_filing_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ssr Filing Price
nyse_equities_binarygateway_pillar_v5_8_dissect.ssr_filing_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ssr_filing_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.ssr_filing_price(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ssr_filing_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Size: Dmm Allocated Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_allocated_qty = 4

-- Display: Dmm Allocated Qty
nyse_equities_binarygateway_pillar_v5_8_display.dmm_allocated_qty = function(value)
  return "Dmm Allocated Qty: "..value
end

-- Dissect: Dmm Allocated Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_allocated_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_allocated_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.dmm_allocated_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.dmm_allocated_qty, range, value, display)

  return offset + length, value
end

-- Size: Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_available_qty = 4

-- Display: Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_display.dmm_available_qty = function(value)
  return "Dmm Available Qty: "..value
end

-- Dissect: Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_available_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_available_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.dmm_available_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.dmm_available_qty, range, value, display)

  return offset + length, value
end

-- Size: Dmm Requested Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_requested_qty = 4

-- Display: Dmm Requested Qty
nyse_equities_binarygateway_pillar_v5_8_display.dmm_requested_qty = function(value)
  return "Dmm Requested Qty: "..value
end

-- Dissect: Dmm Requested Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_requested_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_requested_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.dmm_requested_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.dmm_requested_qty, range, value, display)

  return offset + length, value
end

-- Size: Price
nyse_equities_binarygateway_pillar_v5_8_size_of.price = 8

-- Display: Price
nyse_equities_binarygateway_pillar_v5_8_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
nyse_equities_binarygateway_pillar_v5_8_dissect.price = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Side
nyse_equities_binarygateway_pillar_v5_8_size_of.side = 1

-- Display: Side
nyse_equities_binarygateway_pillar_v5_8_display.side = function(value)
  if value == 0 then
    return "Side: No Change In Side (0)"
  end
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 3 then
    return "Side: Sell Short (3)"
  end
  if value == 4 then
    return "Side: Sell Short Exempt (4)"
  end
  if value == 5 then
    return "Side: Cross (5)"
  end
  if value == 6 then
    return "Side: Cross Short (6)"
  end
  if value == 7 then
    return "Side: Cross Short Exempt (7)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_equities_binarygateway_pillar_v5_8_dissect.side = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Seq
nyse_equities_binarygateway_pillar_v5_8_size_of.seq = 8

-- Display: Seq
nyse_equities_binarygateway_pillar_v5_8_display.seq = function(value)
  return "Seq: "..value
end

-- Dissect: Seq
nyse_equities_binarygateway_pillar_v5_8_dissect.seq = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.seq(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.seq, range, value, display)

  return offset + length, value
end

-- Size: User
nyse_equities_binarygateway_pillar_v5_8_size_of.user = 4

-- Display: User
nyse_equities_binarygateway_pillar_v5_8_display.user = function(value)
  return "User: "..value
end

-- Dissect: User
nyse_equities_binarygateway_pillar_v5_8_dissect.user = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.user
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.user(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.user, range, value, display)

  return offset + length, value
end

-- Size: Sess
nyse_equities_binarygateway_pillar_v5_8_size_of.sess = 4

-- Display: Sess
nyse_equities_binarygateway_pillar_v5_8_display.sess = function(value)
  return "Sess: "..value
end

-- Dissect: Sess
nyse_equities_binarygateway_pillar_v5_8_dissect.sess = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.sess
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.sess(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.sess, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Id
nyse_equities_binarygateway_pillar_v5_8_size_of.stream_id = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.sess

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user

  return index
end

-- Display: Stream Id
nyse_equities_binarygateway_pillar_v5_8_display.stream_id = function(buffer, offset, value, packet, parent)
  return "Stream Id: "..value
end

-- Dissect Fields: Stream Id
nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sess: 4 Byte Unsigned Fixed Width Integer
  index, sess = nyse_equities_binarygateway_pillar_v5_8_dissect.sess(buffer, index, packet, parent)

  -- User: 4 Byte Unsigned Fixed Width Integer
  index, user = nyse_equities_binarygateway_pillar_v5_8_dissect.user(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id
nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_id then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.stream_id(buffer, offset)
    local range = buffer(offset, length)
    local value = range:le_uint64()
    local display = nyse_equities_binarygateway_pillar_v5_8_display.stream_id(buffer, offset, value, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.stream_id, range, value, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Manual Action Id
nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_id = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.stream_id(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq

  return index
end

-- Display: Manual Action Id
nyse_equities_binarygateway_pillar_v5_8_display.manual_action_id = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Manual Action Id
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_equities_binarygateway_pillar_v5_8_dissect.seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Action Id
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_id = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.manual_action_id then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_id(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.manual_action_id(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.manual_action_id, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_id_fields(buffer, offset, packet, parent)
end

-- Size: Mmid
nyse_equities_binarygateway_pillar_v5_8_size_of.mmid = 4

-- Display: Mmid
nyse_equities_binarygateway_pillar_v5_8_display.mmid = function(value)
  return "Mmid: "..value
end

-- Dissect: Mmid
nyse_equities_binarygateway_pillar_v5_8_dissect.mmid = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mmid
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.mmid(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mmid, range, value, display)

  return offset + length, value
end

-- Size: Introducing Badge Id
nyse_equities_binarygateway_pillar_v5_8_size_of.introducing_badge_id = 4

-- Display: Introducing Badge Id
nyse_equities_binarygateway_pillar_v5_8_display.introducing_badge_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Introducing Badge Id: No Value"
  end

  return "Introducing Badge Id: "..value
end

-- Dissect: Introducing Badge Id
nyse_equities_binarygateway_pillar_v5_8_dissect.introducing_badge_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.introducing_badge_id
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.introducing_badge_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.introducing_badge_id, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time = 8

-- Display: Transact Time
nyse_equities_binarygateway_pillar_v5_8_display.transact_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Manual Action Request
nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_request = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.introducing_badge_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mmid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_id(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.side

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_requested_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_available_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_allocated_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ssr_filing_price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.manual_override

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.manual_override_reason

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_type

  return index
end

-- Display: Manual Action Request
nyse_equities_binarygateway_pillar_v5_8_display.manual_action_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Manual Action Request
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Introducing Badge Id: 4 Byte Ascii String
  index, introducing_badge_id = nyse_equities_binarygateway_pillar_v5_8_dissect.introducing_badge_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Mmid: 4 Byte Unsigned Fixed Width Integer
  index, mmid = nyse_equities_binarygateway_pillar_v5_8_dissect.mmid(buffer, index, packet, parent)

  -- Manual Action Id: Struct of 2 fields
  index, manual_action_id = nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, side = nyse_equities_binarygateway_pillar_v5_8_dissect.side(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nyse_equities_binarygateway_pillar_v5_8_dissect.price(buffer, index, packet, parent)

  -- Dmm Requested Qty: 4 Byte Unsigned Fixed Width Integer
  index, dmm_requested_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_requested_qty(buffer, index, packet, parent)

  -- Dmm Available Qty: 4 Byte Unsigned Fixed Width Integer
  index, dmm_available_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_available_qty(buffer, index, packet, parent)

  -- Dmm Allocated Qty: 4 Byte Unsigned Fixed Width Integer
  index, dmm_allocated_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_allocated_qty(buffer, index, packet, parent)

  -- Ssr Filing Price: 8 Byte Signed Fixed Width Integer
  index, ssr_filing_price = nyse_equities_binarygateway_pillar_v5_8_dissect.ssr_filing_price(buffer, index, packet, parent)

  -- Manual Override: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_override = nyse_equities_binarygateway_pillar_v5_8_dissect.manual_override(buffer, index, packet, parent)

  -- Manual Override Reason: 20 Byte Ascii String
  index, manual_override_reason = nyse_equities_binarygateway_pillar_v5_8_dissect.manual_override_reason(buffer, index, packet, parent)

  -- Manual Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, manual_action_type = nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Action Request
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.manual_action_request then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_request(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.manual_action_request(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.manual_action_request, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_request_fields(buffer, offset, packet, parent)
end

-- Size: Auction Type
nyse_equities_binarygateway_pillar_v5_8_size_of.auction_type = 1

-- Display: Auction Type
nyse_equities_binarygateway_pillar_v5_8_display.auction_type = function(value)
  if value == 0 then
    return "Auction Type: Opening Auction (0)"
  end
  if value == 1 then
    return "Auction Type: Reopening Auction (1)"
  end
  if value == 2 then
    return "Auction Type: Closing Auction (2)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_equities_binarygateway_pillar_v5_8_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Request
nyse_equities_binarygateway_pillar_v5_8_size_of.auction_request = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.auction_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ssr_filing_price

  return index
end

-- Display: Auction Request
nyse_equities_binarygateway_pillar_v5_8_display.auction_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Request
nyse_equities_binarygateway_pillar_v5_8_dissect.auction_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, auction_type = nyse_equities_binarygateway_pillar_v5_8_dissect.auction_type(buffer, index, packet, parent)

  -- Ssr Filing Price: 8 Byte Signed Fixed Width Integer
  index, ssr_filing_price = nyse_equities_binarygateway_pillar_v5_8_dissect.ssr_filing_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Request
nyse_equities_binarygateway_pillar_v5_8_dissect.auction_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_request then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.auction_request(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.auction_request(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.auction_request, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.auction_request_fields(buffer, offset, packet, parent)
end

-- Size: Sell Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.sell_dmm_available_qty = 4

-- Display: Sell Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_display.sell_dmm_available_qty = function(value)
  return "Sell Dmm Available Qty: "..value
end

-- Dissect: Sell Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.sell_dmm_available_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.sell_dmm_available_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.sell_dmm_available_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.sell_dmm_available_qty, range, value, display)

  return offset + length, value
end

-- Size: Buy Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.buy_dmm_available_qty = 4

-- Display: Buy Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_display.buy_dmm_available_qty = function(value)
  return "Buy Dmm Available Qty: "..value
end

-- Dissect: Buy Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.buy_dmm_available_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.buy_dmm_available_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.buy_dmm_available_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.buy_dmm_available_qty, range, value, display)

  return offset + length, value
end

-- Size: Unpaired Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.unpaired_qty = 4

-- Display: Unpaired Qty
nyse_equities_binarygateway_pillar_v5_8_display.unpaired_qty = function(value)
  return "Unpaired Qty: "..value
end

-- Dissect: Unpaired Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.unpaired_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.unpaired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.unpaired_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.unpaired_qty, range, value, display)

  return offset + length, value
end

-- Size: Paired Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.paired_qty = 4

-- Display: Paired Qty
nyse_equities_binarygateway_pillar_v5_8_display.paired_qty = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.paired_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.paired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.paired_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Volume
nyse_equities_binarygateway_pillar_v5_8_size_of.imbalance_volume = 4

-- Display: Imbalance Volume
nyse_equities_binarygateway_pillar_v5_8_display.imbalance_volume = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nyse_equities_binarygateway_pillar_v5_8_dissect.imbalance_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.imbalance_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Size: Side Of Unpaired Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.side_of_unpaired_qty = 1

-- Display: Side Of Unpaired Qty
nyse_equities_binarygateway_pillar_v5_8_display.side_of_unpaired_qty = function(value)
  if value == 0 then
    return "Side Of Unpaired Qty: Paired (0)"
  end
  if value == 1 then
    return "Side Of Unpaired Qty: Buy Side Not Paired (1)"
  end
  if value == 2 then
    return "Side Of Unpaired Qty: Sell Side Not Paired (2)"
  end

  return "Side Of Unpaired Qty: Unknown("..value..")"
end

-- Dissect: Side Of Unpaired Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.side_of_unpaired_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.side_of_unpaired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.side_of_unpaired_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.side_of_unpaired_qty, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Side
nyse_equities_binarygateway_pillar_v5_8_size_of.imbalance_side = 1

-- Display: Imbalance Side
nyse_equities_binarygateway_pillar_v5_8_display.imbalance_side = function(value)
  if value == 0 then
    return "Imbalance Side: No Imbalance (0)"
  end
  if value == 1 then
    return "Imbalance Side: Buy Imbalance (1)"
  end
  if value == 2 then
    return "Imbalance Side: Sell Imbalance (2)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_equities_binarygateway_pillar_v5_8_dissect.imbalance_side = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.imbalance_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Price Data
nyse_equities_binarygateway_pillar_v5_8_size_of.auction_price_data = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.imbalance_side

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.side_of_unpaired_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.imbalance_volume

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.paired_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.unpaired_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.buy_dmm_available_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.sell_dmm_available_qty

  return index
end

-- Display: Auction Price Data
nyse_equities_binarygateway_pillar_v5_8_display.auction_price_data = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Price Data
nyse_equities_binarygateway_pillar_v5_8_dissect.auction_price_data_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, imbalance_side = nyse_equities_binarygateway_pillar_v5_8_dissect.imbalance_side(buffer, index, packet, parent)

  -- Side Of Unpaired Qty: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_of_unpaired_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.side_of_unpaired_qty(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = nyse_equities_binarygateway_pillar_v5_8_dissect.imbalance_volume(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nyse_equities_binarygateway_pillar_v5_8_dissect.price(buffer, index, packet, parent)

  -- Paired Qty: 4 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.paired_qty(buffer, index, packet, parent)

  -- Unpaired Qty: 4 Byte Unsigned Fixed Width Integer
  index, unpaired_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.unpaired_qty(buffer, index, packet, parent)

  -- Buy Dmm Available Qty: 4 Byte Unsigned Fixed Width Integer
  index, buy_dmm_available_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.buy_dmm_available_qty(buffer, index, packet, parent)

  -- Sell Dmm Available Qty: 4 Byte Unsigned Fixed Width Integer
  index, sell_dmm_available_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.sell_dmm_available_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Price Data
nyse_equities_binarygateway_pillar_v5_8_dissect.auction_price_data = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_price_data then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.auction_price_data(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.auction_price_data(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.auction_price_data, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.auction_price_data_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Gt End
nyse_equities_binarygateway_pillar_v5_8_size_of.gt_end = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  return index
end

-- Display: Gt End
nyse_equities_binarygateway_pillar_v5_8_display.gt_end = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gt End
nyse_equities_binarygateway_pillar_v5_8_dissect.gt_end_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Gt End
nyse_equities_binarygateway_pillar_v5_8_dissect.gt_end = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.gt_end then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.gt_end(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.gt_end(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.gt_end, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.gt_end_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Gt Begin
nyse_equities_binarygateway_pillar_v5_8_size_of.gt_begin = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  return index
end

-- Display: Gt Begin
nyse_equities_binarygateway_pillar_v5_8_display.gt_begin = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gt Begin
nyse_equities_binarygateway_pillar_v5_8_dissect.gt_begin_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Gt Begin
nyse_equities_binarygateway_pillar_v5_8_dissect.gt_begin = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.gt_begin then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.gt_begin(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.gt_begin(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.gt_begin, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.gt_begin_fields(buffer, offset, packet, parent)
end

-- Size: Subscription Status
nyse_equities_binarygateway_pillar_v5_8_size_of.subscription_status = 1

-- Display: Subscription Status
nyse_equities_binarygateway_pillar_v5_8_display.subscription_status = function(value)
  if value == 1 then
    return "Subscription Status: Subscribed (1)"
  end
  if value == 2 then
    return "Subscription Status: Not Subscribed (2)"
  end

  return "Subscription Status: Unknown("..value..")"
end

-- Dissect: Subscription Status
nyse_equities_binarygateway_pillar_v5_8_dissect.subscription_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.subscription_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.subscription_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.subscription_status, range, value, display)

  return offset + length, value
end

-- Size: Username
nyse_equities_binarygateway_pillar_v5_8_size_of.username = 16

-- Display: Username
nyse_equities_binarygateway_pillar_v5_8_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
nyse_equities_binarygateway_pillar_v5_8_dissect.username = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.username
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.username(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Subscription Acknowledgement
nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_subscription_acknowledgement = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.username

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.subscription_status

  return index
end

-- Display: Symbol Subscription Acknowledgement
nyse_equities_binarygateway_pillar_v5_8_display.symbol_subscription_acknowledgement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Subscription Acknowledgement
nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_subscription_acknowledgement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_equities_binarygateway_pillar_v5_8_dissect.username(buffer, index, packet, parent)

  -- Subscription Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, subscription_status = nyse_equities_binarygateway_pillar_v5_8_dissect.subscription_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Subscription Acknowledgement
nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_subscription_acknowledgement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_subscription_acknowledgement then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_subscription_acknowledgement(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.symbol_subscription_acknowledgement(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.symbol_subscription_acknowledgement, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_subscription_acknowledgement_fields(buffer, offset, packet, parent)
end

-- Size: User Data
nyse_equities_binarygateway_pillar_v5_8_size_of.user_data = 8

-- Display: User Data
nyse_equities_binarygateway_pillar_v5_8_display.user_data = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Data: No Value"
  end

  return "User Data: "..value
end

-- Dissect: User Data
nyse_equities_binarygateway_pillar_v5_8_dissect.user_data = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.user_data
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.user_data(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.user_data, range, value, display)

  return offset + length, value
end

-- Size: Reject Type
nyse_equities_binarygateway_pillar_v5_8_size_of.reject_type = 1

-- Display: Reject Type
nyse_equities_binarygateway_pillar_v5_8_display.reject_type = function(value)
  if value == 1 then
    return "Reject Type: Order Cancel Replace Reject (1)"
  end
  if value == 2 then
    return "Reject Type: Modify Request Reject (2)"
  end
  if value == 3 then
    return "Reject Type: Cancel Request Reject (3)"
  end
  if value == 4 then
    return "Reject Type: Bulk Cancel Request Reject (4)"
  end
  if value == 6 then
    return "Reject Type: Manual Action Response Reject (6)"
  end
  if value == 7 then
    return "Reject Type: Risk Limit Update Request Reject (7)"
  end
  if value == 11 then
    return "Reject Type: Risk Action Request Reject (11)"
  end

  return "Reject Type: Unknown("..value..")"
end

-- Dissect: Reject Type
nyse_equities_binarygateway_pillar_v5_8_dissect.reject_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reject_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reject_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reject_type, range, value, display)

  return offset + length, value
end

-- Size: Reason Code
nyse_equities_binarygateway_pillar_v5_8_size_of.reason_code = 2

-- Display: Reason Code
nyse_equities_binarygateway_pillar_v5_8_display.reason_code = function(value)
  if value == 0 then
    return "Reason Code: Ok (0)"
  end
  if value == 27 then
    return "Reason Code: Invalid Stop Px (27)"
  end
  if value == 1 then
    return "Reason Code: Invalid Sender Comp Id (1)"
  end
  if value == 28 then
    return "Reason Code: Invalid Client Id (28)"
  end
  if value == 2 then
    return "Reason Code: Invalid Sender Sub Id (2)"
  end
  if value == 29 then
    return "Reason Code: Invalid Min Qty (29)"
  end
  if value == 3 then
    return "Reason Code: Invalid Sending Time (3)"
  end
  if value == 30 then
    return "Reason Code: Invalid Max Floor (30)"
  end
  if value == 4 then
    return "Reason Code: Invalid Target Comp Id (4)"
  end
  if value == 31 then
    return "Reason Code: Invalid Locate Reqd (31)"
  end
  if value == 5 then
    return "Reason Code: Invalid Target Sub Id (5)"
  end
  if value == 32 then
    return "Reason Code: Invalid Expire Time (32)"
  end
  if value == 6 then
    return "Reason Code: Invalid On Behalf Of Comp Id (6)"
  end
  if value == 33 then
    return "Reason Code: Invalid Security Type (33)"
  end
  if value == 7 then
    return "Reason Code: Invalid On Behalf Of Sub Id (7)"
  end
  if value == 34 then
    return "Reason Code: Invalid Maturity Month Year (34)"
  end
  if value == 8 then
    return "Reason Code: Invalid Deliver To Comp Id (8)"
  end
  if value == 35 then
    return "Reason Code: Invalid Put Or Call (35)"
  end
  if value == 9 then
    return "Reason Code: Invalid Deliver To Sub Id (9)"
  end
  if value == 36 then
    return "Reason Code: Invalid Strike Price (36)"
  end
  if value == 10 then
    return "Reason Code: Invalid Account (10)"
  end
  if value == 37 then
    return "Reason Code: Invalid Covered Or Uncovered (37)"
  end
  if value == 11 then
    return "Reason Code: Invalid Cl Ord Id (11)"
  end
  if value == 38 then
    return "Reason Code: Invalid Customer Or Firm (38)"
  end
  if value == 12 then
    return "Reason Code: Invalid Exec Inst (12)"
  end
  if value == 39 then
    return "Reason Code: Invalid Maturity Day (39)"
  end
  if value == 13 then
    return "Reason Code: Invalid Id Source (13)"
  end
  if value == 40 then
    return "Reason Code: Invalid Peg Difference (40)"
  end
  if value == 14 then
    return "Reason Code: Invalid Order Qty (14)"
  end
  if value == 41 then
    return "Reason Code: Invalid Sellers Days (41)"
  end
  if value == 15 then
    return "Reason Code: Invalid Ord Type (15)"
  end
  if value == 42 then
    return "Reason Code: Invalid Trading Session Id (42)"
  end
  if value == 16 then
    return "Reason Code: Invalid Price (16)"
  end
  if value == 43 then
    return "Reason Code: Invalid No Trading Sessions (43)"
  end
  if value == 17 then
    return "Reason Code: Invalid Order Capacity (17)"
  end
  if value == 44 then
    return "Reason Code: Invalid Discretion Inst (44)"
  end
  if value == 18 then
    return "Reason Code: Invalid Security Id (18)"
  end
  if value == 45 then
    return "Reason Code: Invalid Discretion Offset (45)"
  end
  if value == 19 then
    return "Reason Code: Invalid Side (19)"
  end
  if value == 46 then
    return "Reason Code: Invalid Price Type (46)"
  end
  if value == 20 then
    return "Reason Code: Invalid Symbol Series (20)"
  end
  if value == 47 then
    return "Reason Code: Invalid Clearing Firm (47)"
  end
  if value == 21 then
    return "Reason Code: Invalid Text (21)"
  end
  if value == 48 then
    return "Reason Code: Invalid Clearing Account (48)"
  end
  if value == 22 then
    return "Reason Code: Invalid Time In Force (22)"
  end
  if value == 49 then
    return "Reason Code: Invalid Party Id (49)"
  end
  if value == 23 then
    return "Reason Code: Invalid Settlement Type (23)"
  end
  if value == 50 then
    return "Reason Code: Invalid Optional Data (50)"
  end
  if value == 24 then
    return "Reason Code: Invalid Fut Sett Date (24)"
  end
  if value == 51 then
    return "Reason Code: Invalid Cross Id (51)"
  end
  if value == 25 then
    return "Reason Code: Invalid Symbol Sfx (25)"
  end
  if value == 52 then
    return "Reason Code: Invalid Strategy Indicator (52)"
  end
  if value == 26 then
    return "Reason Code: Invalid Open Close (26)"
  end
  if value == 53 then
    return "Reason Code: Invalid Trade Id (53)"
  end
  if value == 54 then
    return "Reason Code: Invalid No Self Trade (54)"
  end
  if value == 87 then
    return "Reason Code: Invalid Stock Leg Give Up (87)"
  end
  if value == 55 then
    return "Reason Code: Invalid Cap Strategy (55)"
  end
  if value == 88 then
    return "Reason Code: Invalid No Legs (88)"
  end
  if value == 56 then
    return "Reason Code: Invalid Special Ord Type (56)"
  end
  if value == 89 then
    return "Reason Code: Invalid Leg Position Effect (89)"
  end
  if value == 57 then
    return "Reason Code: Invalid Routing Inst (57)"
  end
  if value == 90 then
    return "Reason Code: Invalid Leg Symbol (90)"
  end
  if value == 58 then
    return "Reason Code: Invalid Offset Price (58)"
  end
  if value == 91 then
    return "Reason Code: Invalid Leg Cfi Code (91)"
  end
  if value == 59 then
    return "Reason Code: Invalid Extended Exec Inst (59)"
  end
  if value == 92 then
    return "Reason Code: Invalid Leg Maturity Date (92)"
  end
  if value == 60 then
    return "Reason Code: Invalid Introducing Badge Id (60)"
  end
  if value == 93 then
    return "Reason Code: Invalid Leg Strike Price (93)"
  end
  if value == 61 then
    return "Reason Code: Invalid Bill To (61)"
  end
  if value == 94 then
    return "Reason Code: Invalid Leg Contract Multiplier (94)"
  end
  if value == 62 then
    return "Reason Code: Invalid Parent Firm Cl Ord Id (62)"
  end
  if value == 95 then
    return "Reason Code: Invalid Leg Ratio Qty (95)"
  end
  if value == 63 then
    return "Reason Code: Invalid Parent Firm Exchange Ord Id (63)"
  end
  if value == 96 then
    return "Reason Code: Invalid Leg Side (96)"
  end
  if value == 64 then
    return "Reason Code: Invalid Parent Firm (64)"
  end
  if value == 97 then
    return "Reason Code: Invalid Leg Ref Id (97)"
  end
  if value == 65 then
    return "Reason Code: Invalid Interest Type (65)"
  end
  if value == 98 then
    return "Reason Code: Unsupported Order Type (98)"
  end
  if value == 66 then
    return "Reason Code: Invalid Display Ind (66)"
  end
  if value == 99 then
    return "Reason Code: Urout (99)"
  end
  if value == 67 then
    return "Reason Code: Invalid Peg Ind (67)"
  end
  if value == 100 then
    return "Reason Code: Primary Market Not Available (100)"
  end
  if value == 68 then
    return "Reason Code: Invalid Ceiling Floor Price (68)"
  end
  if value == 101 then
    return "Reason Code: No Nbbopbbo For Peg (101)"
  end
  if value == 69 then
    return "Reason Code: Invalid Min Peg Qty (69)"
  end
  if value == 102 then
    return "Reason Code: No Market For Market Order (102)"
  end
  if value == 70 then
    return "Reason Code: Invalid D Order Auction Price (70)"
  end
  if value == 103 then
    return "Reason Code: Marketable Price (103)"
  end
  if value == 71 then
    return "Reason Code: Invalid Disc Max Vol (71)"
  end
  if value == 104 then
    return "Reason Code: Done For Day (104)"
  end
  if value == 72 then
    return "Reason Code: Invalid Dics Route Ind (72)"
  end
  if value == 105 then
    return "Reason Code: Credit Limit Violation (105)"
  end
  if value == 73 then
    return "Reason Code: Invalid Minimum Trigger Vol Mtv (73)"
  end
  if value == 106 then
    return "Reason Code: Cancel Remaining Ioc (106)"
  end
  if value == 74 then
    return "Reason Code: Invalid Attributed Quote (74)"
  end
  if value == 107 then
    return "Reason Code: Too Late To Cancel (107)"
  end
  if value == 75 then
    return "Reason Code: Invalid Proactive If Locked (75)"
  end
  if value == 108 then
    return "Reason Code: Invalid Poss Resend (108)"
  end
  if value == 76 then
    return "Reason Code: System Not Available (76)"
  end
  if value == 109 then
    return "Reason Code: Cancel Pending (109)"
  end
  if value == 77 then
    return "Reason Code: System Full Mengrateexceeded (77)"
  end
  if value == 110 then
    return "Reason Code: Symbol Series Already Opened (110)"
  end
  if value == 78 then
    return "Reason Code: Throttle Reject (78)"
  end
  if value == 111 then
    return "Reason Code: Firm Bulk Cancel (111)"
  end
  if value == 79 then
    return "Reason Code: Symbol Series Halted (79)"
  end
  if value == 112 then
    return "Reason Code: On Behalf Of Comp Id Blocked (112)"
  end
  if value == 80 then
    return "Reason Code: No Symbolseries Permission (80)"
  end
  if value == 113 then
    return "Reason Code: Clearing Firm Blocked (113)"
  end
  if value == 81 then
    return "Reason Code: Price Too Far Outside (81)"
  end
  if value == 114 then
    return "Reason Code: Cancel Replace Pending (114)"
  end
  if value == 82 then
    return "Reason Code: Mwcb Halt (82)"
  end
  if value == 115 then
    return "Reason Code: Modify Pending (115)"
  end
  if value == 83 then
    return "Reason Code: Market Closed (83)"
  end
  if value == 116 then
    return "Reason Code: Cannot Flip Imbalance (116)"
  end
  if value == 84 then
    return "Reason Code: Symbol Series Closed (84)"
  end
  if value == 117 then
    return "Reason Code: Cannot Increase Imbalance (117)"
  end
  if value == 85 then
    return "Reason Code: Luld Cancel Instruction (85)"
  end
  if value == 118 then
    return "Reason Code: Pending Cancel Imbalance Freeze (118)"
  end
  if value == 86 then
    return "Reason Code: No Price Slide Inst During Ssr (86)"
  end
  if value == 119 then
    return "Reason Code: Pending Replace Imbalance Freeze (119)"
  end
  if value == 120 then
    return "Reason Code: Pending Modify Imbalance Freeze (120)"
  end
  if value == 152 then
    return "Reason Code: Ssh Price Below Nbb On Iso (152)"
  end
  if value == 121 then
    return "Reason Code: Pending Cancel Routed Interest (121)"
  end
  if value == 153 then
    return "Reason Code: Ioc Received While Auction Running (153)"
  end
  if value == 122 then
    return "Reason Code: Pending Replace Routed Interest (122)"
  end
  if value == 154 then
    return "Reason Code: Pending Session Transition (154)"
  end
  if value == 123 then
    return "Reason Code: Pending Modify Routed Interest (123)"
  end
  if value == 155 then
    return "Reason Code: Pend Cancel Session Transition (155)"
  end
  if value == 124 then
    return "Reason Code: Pending Auction Running (124)"
  end
  if value == 156 then
    return "Reason Code: Pend Modify Session Transition (156)"
  end
  if value == 125 then
    return "Reason Code: Duplicative Order Check (125)"
  end
  if value == 157 then
    return "Reason Code: Pend Replace Session Transition (157)"
  end
  if value == 126 then
    return "Reason Code: Cancelled By Exchange (126)"
  end
  if value == 158 then
    return "Reason Code: Invalid For Tick Pilot (158)"
  end
  if value == 127 then
    return "Reason Code: New Order (127)"
  end
  if value == 159 then
    return "Reason Code: Invalid Mmid (159)"
  end
  if value == 128 then
    return "Reason Code: Fill (128)"
  end
  if value == 160 then
    return "Reason Code: Invalid Mpid (160)"
  end
  if value == 129 then
    return "Reason Code: Partial Fill (129)"
  end
  if value == 161 then
    return "Reason Code: Invalid Cancel Instead Of Reprice (161)"
  end
  if value == 130 then
    return "Reason Code: Reduced (130)"
  end
  if value == 162 then
    return "Reason Code: Invalid Retail Indicator (162)"
  end
  if value == 131 then
    return "Reason Code: Replaced (131)"
  end
  if value == 163 then
    return "Reason Code: Sender Comp Id Not Active (163)"
  end
  if value == 132 then
    return "Reason Code: No Market For Cross (132)"
  end
  if value == 164 then
    return "Reason Code: Mpid Blocked (164)"
  end
  if value == 133 then
    return "Reason Code: Stp Cancel (133)"
  end
  if value == 165 then
    return "Reason Code: Invalid Timestamp (165)"
  end
  if value == 134 then
    return "Reason Code: Invalid Poss Dupe (134)"
  end
  if value == 166 then
    return "Reason Code: Invalid Permission For Sender Comp Id (166)"
  end
  if value == 135 then
    return "Reason Code: Tpid Blocked (135)"
  end
  if value == 167 then
    return "Reason Code: Invalid User Data (167)"
  end
  if value == 136 then
    return "Reason Code: Invalid Bulk Cancel (136)"
  end
  if value == 168 then
    return "Reason Code: Pillar Risk Mitigation (168)"
  end
  if value == 137 then
    return "Reason Code: Pending Bulk Cancel (137)"
  end
  if value == 169 then
    return "Reason Code: No Last Sale For Peg (169)"
  end
  if value == 138 then
    return "Reason Code: Symbol Series Not Open (138)"
  end
  if value == 170 then
    return "Reason Code: Symbol Pending Closing Auction (170)"
  end
  if value == 139 then
    return "Reason Code: Symbol Series Suspended (139)"
  end
  if value == 171 then
    return "Reason Code: Extreme Closing Order Imbalance (171)"
  end
  if value == 140 then
    return "Reason Code: Symbol Ipo Halt (140)"
  end
  if value == 172 then
    return "Reason Code: Invalid Multi Message (172)"
  end
  if value == 141 then
    return "Reason Code: Invld Inst During Imbalance Freeze (141)"
  end
  if value == 173 then
    return "Reason Code: Invalid Request Targeting Manual Sender Comp Id (173)"
  end
  if value == 142 then
    return "Reason Code: Invld Inst After Cutoff Time (142)"
  end
  if value == 174 then
    return "Reason Code: Invalid Dmm Reject Reason (174)"
  end
  if value == 143 then
    return "Reason Code: Cancelled By Primary Market (143)"
  end
  if value == 175 then
    return "Reason Code: Pending Pending Auction State (175)"
  end
  if value == 144 then
    return "Reason Code: Pending Imbalance Freeze (144)"
  end
  if value == 176 then
    return "Reason Code: Pending Cancel Pending Auction State (176)"
  end
  if value == 145 then
    return "Reason Code: No Rlp Permission (145)"
  end
  if value == 177 then
    return "Reason Code: Pending Modify Pending Auction State (177)"
  end
  if value == 146 then
    return "Reason Code: Invalid Instruction For Io Cs (146)"
  end
  if value == 178 then
    return "Reason Code: Pending Replace Pending Auction State (178)"
  end
  if value == 147 then
    return "Reason Code: System Full Cgrateexceeded (147)"
  end
  if value == 179 then
    return "Reason Code: Cancelled Dmm Manual Order Reprice (179)"
  end
  if value == 148 then
    return "Reason Code: Pending Cancel Auction Running (148)"
  end
  if value == 180 then
    return "Reason Code: Too Early To Open (180)"
  end
  if value == 149 then
    return "Reason Code: Pending Modify Auction Running (149)"
  end
  if value == 181 then
    return "Reason Code: Too Early To Close (181)"
  end
  if value == 150 then
    return "Reason Code: Pending Replace Auction Running (150)"
  end
  if value == 182 then
    return "Reason Code: Symbol Not Frozen By Auction Request (182)"
  end
  if value == 151 then
    return "Reason Code: Invld Inst For Pending Order (151)"
  end
  if value == 183 then
    return "Reason Code: Symbol Is Frozen By Dbk Gui (183)"
  end
  if value == 184 then
    return "Reason Code: Too Late Auction Running (184)"
  end
  if value == 218 then
    return "Reason Code: Dmm Gui Reduction In Manual Order Qty (218)"
  end
  if value == 185 then
    return "Reason Code: Too Late Symbol Transition (185)"
  end
  if value == 219 then
    return "Reason Code: Cross Eligible (219)"
  end
  if value == 186 then
    return "Reason Code: No Eligible Crossing Interest (186)"
  end
  if value == 220 then
    return "Reason Code: Dry Run (220)"
  end
  if value == 187 then
    return "Reason Code: Book Is Lockedcrossed (187)"
  end
  if value == 221 then
    return "Reason Code: Unsupported By Broker Plex (221)"
  end
  if value == 188 then
    return "Reason Code: No Interest Exists (188)"
  end
  if value == 222 then
    return "Reason Code: Cross Blocked By Bbopbbo (222)"
  end
  if value == 189 then
    return "Reason Code: Imbalance Too Large (189)"
  end
  if value == 223 then
    return "Reason Code: Risk Single Ord Max Qty (223)"
  end
  if value == 190 then
    return "Reason Code: Ssh Price Below Ssr Filing Price (190)"
  end
  if value == 224 then
    return "Reason Code: Risk Single Ord Max Notional (224)"
  end
  if value == 191 then
    return "Reason Code: Symbol Already Closed (191)"
  end
  if value == 225 then
    return "Reason Code: Risk Gross Credit Breach (225)"
  end
  if value == 192 then
    return "Reason Code: Opening Template Opened (192)"
  end
  if value == 226 then
    return "Reason Code: Risk Kill Switch (226)"
  end
  if value == 193 then
    return "Reason Code: Closing Template Opened (193)"
  end
  if value == 227 then
    return "Reason Code: Invalid Route To Broker (227)"
  end
  if value == 194 then
    return "Reason Code: Prin Entered On Auction Template (194)"
  end
  if value == 228 then
    return "Reason Code: Spread Too Wide (228)"
  end
  if value == 195 then
    return "Reason Code: Mandatory Indication Submitted (195)"
  end
  if value == 229 then
    return "Reason Code: Expire Fok (229)"
  end
  if value == 196 then
    return "Reason Code: Pending Crowd Exists (196)"
  end
  if value == 230 then
    return "Reason Code: Locks Displayed Interest (230)"
  end
  if value == 197 then
    return "Reason Code: No Consolidated Last Sale (197)"
  end
  if value == 231 then
    return "Reason Code: Mm Quote Price Lockcross Contra Side Nbbo (231)"
  end
  if value == 198 then
    return "Reason Code: Paired Qty Exceeds Max Trade Parameter (198)"
  end
  if value == 232 then
    return "Reason Code: Invalid Leg Symbol (232)"
  end
  if value == 199 then
    return "Reason Code: Luld Or Mwcb Timer Running (199)"
  end
  if value == 233 then
    return "Reason Code: Duplicate Leg Symbol (233)"
  end
  if value == 200 then
    return "Reason Code: Locking Crossing Away Quote (200)"
  end
  if value == 234 then
    return "Reason Code: Symbol Not In Underlying (234)"
  end
  if value == 201 then
    return "Reason Code: Cross Not Eligible (201)"
  end
  if value == 235 then
    return "Reason Code: Leg Ratios Not In The Most Reduced Form (235)"
  end
  if value == 202 then
    return "Reason Code: Reserved For Future Use (202)"
  end
  if value == 236 then
    return "Reason Code: Option Leg Ratio Too High (236)"
  end
  if value == 203 then
    return "Reason Code: Pending Acceptance For Ack On Order Arrival (203)"
  end
  if value == 237 then
    return "Reason Code: Stock Leg Ratio Too Low (237)"
  end
  if value == 204 then
    return "Reason Code: Rejected Cancel By Dmm (204)"
  end
  if value == 238 then
    return "Reason Code: Complex Series Already Exists (238)"
  end
  if value == 205 then
    return "Reason Code: Cancelled By Dmm (205)"
  end
  if value == 239 then
    return "Reason Code: Number Of Legs Incorrect (239)"
  end
  if value == 206 then
    return "Reason Code: Price Is Outside Allowable Range (206)"
  end
  if value == 240 then
    return "Reason Code: Cancel Does Not Set Nbbo Inst (240)"
  end
  if value == 207 then
    return "Reason Code: Auction Validation In Progress (207)"
  end
  if value == 241 then
    return "Reason Code: Cancel Avoid Reprice Inst (241)"
  end
  if value == 208 then
    return "Reason Code: Invalid Manual Action Id (208)"
  end
  if value == 242 then
    return "Reason Code: Allow Reprice Once Then Cancel Inst (242)"
  end
  if value == 209 then
    return "Reason Code: Invalid Auction Sell Indicator (209)"
  end
  if value == 243 then
    return "Reason Code: Invalid Allocation Pct (243)"
  end
  if value == 210 then
    return "Reason Code: Invalid Intraday Sell Short Qty (210)"
  end
  if value == 244 then
    return "Reason Code: Invalid Mm Quote Type (244)"
  end
  if value == 211 then
    return "Reason Code: Indication Template Is Open (211)"
  end
  if value == 245 then
    return "Reason Code: Invalid Mm Sent Time (245)"
  end
  if value == 212 then
    return "Reason Code: No Prev Closing Price (212)"
  end
  if value == 246 then
    return "Reason Code: Series Expired (246)"
  end
  if value == 213 then
    return "Reason Code: Cancelled Due To Trading Collars (213)"
  end
  if value == 247 then
    return "Reason Code: Invalid Give Up Mmid (247)"
  end
  if value == 214 then
    return "Reason Code: Underlying Is In Luld State (214)"
  end
  if value == 248 then
    return "Reason Code: Invalid No Sides (248)"
  end
  if value == 215 then
    return "Reason Code: Invalid Manual Response Type (215)"
  end
  if value == 249 then
    return "Reason Code: Pending To Acceptance (249)"
  end
  if value == 216 then
    return "Reason Code: No Nyse Last Sale (216)"
  end
  if value == 250 then
    return "Reason Code: Dmm Api Request Rejected (250)"
  end
  if value == 217 then
    return "Reason Code: Symbol Direct Listing State (217)"
  end
  if value == 251 then
    return "Reason Code: Invalid Bulk Action (251)"
  end
  if value == 252 then
    return "Reason Code: Invalid Cancel Scope (252)"
  end
  if value == 284 then
    return "Reason Code: Risk Roll Transact Breach (284)"
  end
  if value == 253 then
    return "Reason Code: No Legal Width Spread (253)"
  end
  if value == 285 then
    return "Reason Code: Risk Roll Vol Breach (285)"
  end
  if value == 254 then
    return "Reason Code: Invalid Target Cancel Mpid (254)"
  end
  if value == 286 then
    return "Reason Code: Risk Roll Pct Breach (286)"
  end
  if value == 255 then
    return "Reason Code: Invalid Target Cancel Sender Comp Id (255)"
  end
  if value == 287 then
    return "Reason Code: Risk Roll Grmp Breach (287)"
  end
  if value == 256 then
    return "Reason Code: Clear The Book Prev Entered (256)"
  end
  if value == 288 then
    return "Reason Code: Risk Mm Arbitrage Breach (288)"
  end
  if value == 257 then
    return "Reason Code: Timer Expired Api Allocation (257)"
  end
  if value == 289 then
    return "Reason Code: Risk Mm Intrinsic Breach (289)"
  end
  if value == 258 then
    return "Reason Code: Invalid Number Of Quotes (258)"
  end
  if value == 290 then
    return "Reason Code: Ido Must Exist (290)"
  end
  if value == 259 then
    return "Reason Code: Invalid Order Id (259)"
  end
  if value == 291 then
    return "Reason Code: Invalid Allocation Tag Insert Invalid Tag Number (291)"
  end
  if value == 260 then
    return "Reason Code: Risk Control Event (260)"
  end
  if value == 292 then
    return "Reason Code: Invalid Trade Tag Insert Invalid Tag Number (292)"
  end
  if value == 261 then
    return "Reason Code: To Rejected (261)"
  end
  if value == 293 then
    return "Reason Code: Arbitrage Check (293)"
  end
  if value == 262 then
    return "Reason Code: Cancelled Corporate Action (262)"
  end
  if value == 294 then
    return "Reason Code: Intrinsic Value Check (294)"
  end
  if value == 263 then
    return "Reason Code: Too Late To Replace (263)"
  end
  if value == 295 then
    return "Reason Code: Credit Debit Check (295)"
  end
  if value == 264 then
    return "Reason Code: Invalid Ref Delta (264)"
  end
  if value == 296 then
    return "Reason Code: Invalid Risk User (296)"
  end
  if value == 265 then
    return "Reason Code: Invalid Stock Price (265)"
  end
  if value == 297 then
    return "Reason Code: Invalid Risk Entity (297)"
  end
  if value == 266 then
    return "Reason Code: Reserved For Future Use (266)"
  end
  if value == 298 then
    return "Reason Code: Invalid Flex Series Already Exists (298)"
  end
  if value == 267 then
    return "Reason Code: Invalid Tied To Stock (267)"
  end
  if value == 299 then
    return "Reason Code: Invalid Flex Series Key (299)"
  end
  if value == 268 then
    return "Reason Code: Too Late To Allocate (268)"
  end
  if value == 300 then
    return "Reason Code: Invalid Clear The Book (300)"
  end
  if value == 269 then
    return "Reason Code: Customer Interest On Bbo (269)"
  end
  if value == 301 then
    return "Reason Code: Invalid Stock Qty (301)"
  end
  if value == 270 then
    return "Reason Code: Ido Cannot Be Modified (270)"
  end
  if value == 302 then
    return "Reason Code: Invalid Package Link Id (302)"
  end
  if value == 271 then
    return "Reason Code: Cross Outside Bbo (271)"
  end
  if value == 303 then
    return "Reason Code: Complex Max Series Breach (303)"
  end
  if value == 272 then
    return "Reason Code: Pending To Approval (272)"
  end
  if value == 304 then
    return "Reason Code: Invalid Flex Eod Tag Insert Invalid Tag Number (304)"
  end
  if value == 273 then
    return "Reason Code: Invalid Leg Open Close (273)"
  end
  if value == 305 then
    return "Reason Code: Invalid Percentage Price (305)"
  end
  if value == 274 then
    return "Reason Code: Invalid Risk Control Type (274)"
  end
  if value == 306 then
    return "Reason Code: Invalid Percentage Strike (306)"
  end
  if value == 275 then
    return "Reason Code: Invalid Risk Control Activation (275)"
  end
  if value == 307 then
    return "Reason Code: Cancel Remaining Gtx (307)"
  end
  if value == 276 then
    return "Reason Code: Invalid Breach Action Request (276)"
  end
  if value == 308 then
    return "Reason Code: Auction Not Running (308)"
  end
  if value == 277 then
    return "Reason Code: Invalid Ioc Attribution (277)"
  end
  if value == 309 then
    return "Reason Code: Invalid Ord Status (309)"
  end
  if value == 278 then
    return "Reason Code: Invalid Risk Action Type (278)"
  end
  if value == 310 then
    return "Reason Code: Mmid Blocked (310)"
  end
  if value == 279 then
    return "Reason Code: Invalid Usd Limit (279)"
  end
  if value == 311 then
    return "Reason Code: Invalid Catimid (311)"
  end
  if value == 280 then
    return "Reason Code: Ido Already Exists (280)"
  end
  if value == 312 then
    return "Reason Code: Risk Rej Iso (312)"
  end
  if value == 281 then
    return "Reason Code: Invalid Time Limit (281)"
  end
  if value == 313 then
    return "Reason Code: Risk Rej Mkt Orders (313)"
  end
  if value == 282 then
    return "Reason Code: Invalid Percentage Limit (282)"
  end
  if value == 314 then
    return "Reason Code: Risk Rej Moo Moc (314)"
  end
  if value == 283 then
    return "Reason Code: Invalid Count Limit (283)"
  end
  if value == 315 then
    return "Reason Code: Risk Rej Early Trading (315)"
  end
  if value == 316 then
    return "Reason Code: Risk Rej Late Trading (316)"
  end
  if value == 317 then
    return "Reason Code: Risk Rej Restricted Symbol (317)"
  end
  if value == 318 then
    return "Reason Code: Risk Rej Sell Short For Symbol (318)"
  end
  if value == 319 then
    return "Reason Code: Risk Rej Sell Short Exempt For Symbol (319)"
  end
  if value == 320 then
    return "Reason Code: Risk Rej Ord Max Qty Symbol Adv (320)"
  end
  if value == 321 then
    return "Reason Code: Risk Max Duplicative Ord (321)"
  end
  if value == 322 then
    return "Reason Code: Risk Require Locate Broker (322)"
  end
  if value == 323 then
    return "Reason Code: Invalid Risk Range Id (323)"
  end
  if value == 324 then
    return "Reason Code: Invalid Risk Minimum Value (324)"
  end
  if value == 325 then
    return "Reason Code: Invalid Price Scale (325)"
  end
  if value == 326 then
    return "Reason Code: Invalid Max Risk Symbols Exceeded (326)"
  end
  if value == 327 then
    return "Reason Code: Invalid Risk Settings Incomplete (327)"
  end
  if value == 328 then
    return "Reason Code: Invalid Auction Id (328)"
  end
  if value == 329 then
    return "Reason Code: Group Id Blocked (329)"
  end
  if value == 400 then
    return "Reason Code: Repriced (400)"
  end
  if value == 800 then
    return "Reason Code: Broker Reject (800)"
  end
  if value == 906 then
    return "Reason Code: System Full Cgarateexceeded (906)"
  end
  if value == 999 then
    return "Reason Code: Unknown Issue Encountered (999)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nyse_equities_binarygateway_pillar_v5_8_dissect.reason_code = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reason_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reason_code(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Application Layer Reject
nyse_equities_binarygateway_pillar_v5_8_size_of.application_layer_reject = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reason_code

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reject_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_data

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_4

  return index
end

-- Display: Application Layer Reject
nyse_equities_binarygateway_pillar_v5_8_display.application_layer_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Application Layer Reject
nyse_equities_binarygateway_pillar_v5_8_dissect.application_layer_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 334 values
  index, reason_code = nyse_equities_binarygateway_pillar_v5_8_dissect.reason_code(buffer, index, packet, parent)

  -- Reject Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, reject_type = nyse_equities_binarygateway_pillar_v5_8_dissect.reject_type(buffer, index, packet, parent)

  -- User Data: 8 Byte Ascii String
  index, user_data = nyse_equities_binarygateway_pillar_v5_8_dissect.user_data(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Application Layer Reject
nyse_equities_binarygateway_pillar_v5_8_dissect.application_layer_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.application_layer_reject then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.application_layer_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.application_layer_reject(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.application_layer_reject, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.application_layer_reject_fields(buffer, offset, packet, parent)
end

-- Size: Last Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.last_qty = 4

-- Display: Last Qty
nyse_equities_binarygateway_pillar_v5_8_display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.last_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.last_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.last_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Px
nyse_equities_binarygateway_pillar_v5_8_size_of.last_px = 8

-- Display: Last Px
nyse_equities_binarygateway_pillar_v5_8_display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
nyse_equities_binarygateway_pillar_v5_8_dissect.last_px = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_px(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.last_px(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Deal Id
nyse_equities_binarygateway_pillar_v5_8_size_of.deal_id = 8

-- Display: Deal Id
nyse_equities_binarygateway_pillar_v5_8_display.deal_id = function(value)
  return "Deal Id: "..value
end

-- Dissect: Deal Id
nyse_equities_binarygateway_pillar_v5_8_dissect.deal_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.deal_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.deal_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.deal_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_8_size_of.ref_seq_msg_id = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.stream_id(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq

  return index
end

-- Display: Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_8_display.ref_seq_msg_id = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_8_dissect.ref_seq_msg_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_equities_binarygateway_pillar_v5_8_dissect.seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_8_dissect.ref_seq_msg_id = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ref_seq_msg_id then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ref_seq_msg_id(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.ref_seq_msg_id(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ref_seq_msg_id, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.ref_seq_msg_id_fields(buffer, offset, packet, parent)
end

-- Size: Order Id
nyse_equities_binarygateway_pillar_v5_8_size_of.order_id = 8

-- Display: Order Id
nyse_equities_binarygateway_pillar_v5_8_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_equities_binarygateway_pillar_v5_8_dissect.order_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.order_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Bust Correct
nyse_equities_binarygateway_pillar_v5_8_size_of.trade_bust_correct = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ref_seq_msg_id(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.deal_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.last_px

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.last_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reason_code

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_data

  return index
end

-- Display: Trade Bust Correct
nyse_equities_binarygateway_pillar_v5_8_display.trade_bust_correct = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Bust Correct
nyse_equities_binarygateway_pillar_v5_8_dissect.trade_bust_correct_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_binarygateway_pillar_v5_8_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Ref Seq Msg Id: Struct of 2 fields
  index, ref_seq_msg_id = nyse_equities_binarygateway_pillar_v5_8_dissect.ref_seq_msg_id(buffer, index, packet, parent)

  -- Deal Id: 8 Byte Unsigned Fixed Width Integer
  index, deal_id = nyse_equities_binarygateway_pillar_v5_8_dissect.deal_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = nyse_equities_binarygateway_pillar_v5_8_dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.last_qty(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 334 values
  index, reason_code = nyse_equities_binarygateway_pillar_v5_8_dissect.reason_code(buffer, index, packet, parent)

  -- User Data: 8 Byte Ascii String
  index, user_data = nyse_equities_binarygateway_pillar_v5_8_dissect.user_data(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Correct
nyse_equities_binarygateway_pillar_v5_8_dissect.trade_bust_correct = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_bust_correct then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.trade_bust_correct(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.trade_bust_correct(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.trade_bust_correct, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.trade_bust_correct_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Type
nyse_equities_binarygateway_pillar_v5_8_size_of.settlement_type = 1

-- Display: Settlement Type
nyse_equities_binarygateway_pillar_v5_8_display.settlement_type = function(value)
  if value == "0" then
    return "Settlement Type: Regular Way (0)"
  end
  if value == "1" then
    return "Settlement Type: Cash (1)"
  end
  if value == "2" then
    return "Settlement Type: Next Day (2)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
nyse_equities_binarygateway_pillar_v5_8_dissect.settlement_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.settlement_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = nyse_equities_binarygateway_pillar_v5_8_display.settlement_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sub Msg Header
nyse_equities_binarygateway_pillar_v5_8_size_of.sub_msg_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_length

  return index
end

-- Display: Sub Msg Header
nyse_equities_binarygateway_pillar_v5_8_display.sub_msg_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sub Msg Header
nyse_equities_binarygateway_pillar_v5_8_dissect.sub_msg_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 33 values
  index, seq_msg_type = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_type(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Msg Header
nyse_equities_binarygateway_pillar_v5_8_dissect.sub_msg_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sub_msg_header then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.sub_msg_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.sub_msg_header(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.sub_msg_header, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.sub_msg_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_8_size_of.optional_settlement_type_add_on = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.sub_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.settlement_type

  return index
end

-- Display: Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_8_display.optional_settlement_type_add_on = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_8_dissect.optional_settlement_type_add_on_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.sub_msg_header(buffer, index, packet, parent)

  -- Settlement Type: 1 Byte Ascii String Enum with 3 values
  index, settlement_type = nyse_equities_binarygateway_pillar_v5_8_dissect.settlement_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_8_dissect.optional_settlement_type_add_on = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.optional_settlement_type_add_on then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.optional_settlement_type_add_on(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.optional_settlement_type_add_on(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.optional_settlement_type_add_on, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.optional_settlement_type_add_on_fields(buffer, offset, packet, parent)
end

-- Size: Participant Type
nyse_equities_binarygateway_pillar_v5_8_size_of.participant_type = 1

-- Display: Participant Type
nyse_equities_binarygateway_pillar_v5_8_display.participant_type = function(value)
  if value == 1 then
    return "Participant Type: Customer (1)"
  end
  if value == 2 then
    return "Participant Type: Market Maker Lmm (2)"
  end
  if value == 3 then
    return "Participant Type: Dmm (3)"
  end
  if value == 4 then
    return "Participant Type: Slp (4)"
  end

  return "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nyse_equities_binarygateway_pillar_v5_8_dissect.participant_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.participant_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.participant_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Size: Locate Reqd
nyse_equities_binarygateway_pillar_v5_8_size_of.locate_reqd = 1

-- Display: Locate Reqd
nyse_equities_binarygateway_pillar_v5_8_display.locate_reqd = function(value)
  if value == 0 then
    return "Locate Reqd: No Locate Reqd (0)"
  end
  if value == 1 then
    return "Locate Reqd: Locate Reqd For Ssh Orders (1)"
  end

  return "Locate Reqd: Unknown("..value..")"
end

-- Dissect: Locate Reqd
nyse_equities_binarygateway_pillar_v5_8_dissect.locate_reqd = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.locate_reqd
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.locate_reqd(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Size: Displayed Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_size_of.displayed_liquidity_indicator = 4

-- Display: Displayed Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_display.displayed_liquidity_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Displayed Liquidity Indicator: No Value"
  end

  return "Displayed Liquidity Indicator: "..value
end

-- Dissect: Displayed Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.displayed_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.displayed_liquidity_indicator
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.displayed_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.displayed_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_size_of.liquidity_indicator = 4

-- Display: Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_display.liquidity_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.liquidity_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.liquidity_indicator
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.cum_qty = 4

-- Display: Cum Qty
nyse_equities_binarygateway_pillar_v5_8_display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.leaves_qty = 4

-- Display: Leaves Qty
nyse_equities_binarygateway_pillar_v5_8_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report
nyse_equities_binarygateway_pillar_v5_8_size_of.execution_report = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.deal_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.last_px

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.leaves_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cum_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.last_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.liquidity_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.displayed_liquidity_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.locate_reqd

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.participant_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reason_code

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_data

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.optional_settlement_type_add_on(buffer, offset + index)

  return index
end

-- Display: Execution Report
nyse_equities_binarygateway_pillar_v5_8_display.execution_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report
nyse_equities_binarygateway_pillar_v5_8_dissect.execution_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_binarygateway_pillar_v5_8_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Deal Id: 8 Byte Unsigned Fixed Width Integer
  index, deal_id = nyse_equities_binarygateway_pillar_v5_8_dissect.deal_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = nyse_equities_binarygateway_pillar_v5_8_dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.cum_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.last_qty(buffer, index, packet, parent)

  -- Liquidity Indicator: 4 Byte Ascii String
  index, liquidity_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.liquidity_indicator(buffer, index, packet, parent)

  -- Displayed Liquidity Indicator: 4 Byte Ascii String
  index, displayed_liquidity_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.displayed_liquidity_indicator(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, locate_reqd = nyse_equities_binarygateway_pillar_v5_8_dissect.locate_reqd(buffer, index, packet, parent)

  -- Participant Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, participant_type = nyse_equities_binarygateway_pillar_v5_8_dissect.participant_type(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 334 values
  index, reason_code = nyse_equities_binarygateway_pillar_v5_8_dissect.reason_code(buffer, index, packet, parent)

  -- User Data: 8 Byte Ascii String
  index, user_data = nyse_equities_binarygateway_pillar_v5_8_dissect.user_data(buffer, index, packet, parent)

  -- Optional Settlement Type Add On: Struct of 2 fields
  index, optional_settlement_type_add_on = nyse_equities_binarygateway_pillar_v5_8_dissect.optional_settlement_type_add_on(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report
nyse_equities_binarygateway_pillar_v5_8_dissect.execution_report = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.execution_report(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.execution_report(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.execution_report, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.execution_report_fields(buffer, offset, packet, parent)
end

-- Size: Ack Type
nyse_equities_binarygateway_pillar_v5_8_size_of.ack_type = 1

-- Display: Ack Type
nyse_equities_binarygateway_pillar_v5_8_display.ack_type = function(value)
  if value == 1 then
    return "Ack Type: New Interest (1)"
  end
  if value == 2 then
    return "Ack Type: Order Priority Update New Order Id (2)"
  end
  if value == 4 then
    return "Ack Type: Bulk Cancel Ack (4)"
  end
  if value == 5 then
    return "Ack Type: Pending Cancel (5)"
  end
  if value == 6 then
    return "Ack Type: Pending Replace (6)"
  end
  if value == 7 then
    return "Ack Type: Pending Modify (7)"
  end
  if value == 8 then
    return "Ack Type: Replaced (8)"
  end
  if value == 9 then
    return "Ack Type: Modified (9)"
  end
  if value == 11 then
    return "Ack Type: Canceled (11)"
  end
  if value == 12 then
    return "Ack Type: Done For Day (12)"
  end
  if value == 13 then
    return "Ack Type: Billable Cancel Adding Liquidity (13)"
  end
  if value == 14 then
    return "Ack Type: Billable Cancel Removing Liquidity (14)"
  end
  if value == 15 then
    return "Ack Type: Billable Cancel Sub Dollar Adding Liquidity (15)"
  end
  if value == 16 then
    return "Ack Type: Billable Cancel Sub Dollar Removing Liquidity (16)"
  end

  return "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
nyse_equities_binarygateway_pillar_v5_8_dissect.ack_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ack_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ack_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Size: Pre Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_size_of.pre_liquidity_indicator = 4

-- Display: Pre Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_display.pre_liquidity_indicator = function(value)
  if value == "0" then
    return "Pre Liquidity Indicator: None (0)"
  end
  if value == "1" then
    return "Pre Liquidity Indicator: Candidate For Setting A New Displayed Bid Or Offer On The Local Market (1)"
  end
  if value == "4" then
    return "Pre Liquidity Indicator: Candidate For Setting A New Displayed Bid Or Offer On The Local Market And Joining The Nbbo (4)"
  end
  if value == "5" then
    return "Pre Liquidity Indicator: Candidate For Setting A New Displayed Bid Or Offer On The Local Market And Setting The Nbbo (5)"
  end

  return "Pre Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Pre Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.pre_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.pre_liquidity_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.pre_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.pre_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Working Away From Display
nyse_equities_binarygateway_pillar_v5_8_size_of.working_away_from_display = 1

-- Display: Working Away From Display
nyse_equities_binarygateway_pillar_v5_8_display.working_away_from_display = function(value)
  if value == 0 then
    return "Working Away From Display: Working Price Is Equal To Display Price (0)"
  end
  if value == 1 then
    return "Working Away From Display: Working Price Is Different From Display Price (1)"
  end

  return "Working Away From Display: Unknown("..value..")"
end

-- Dissect: Working Away From Display
nyse_equities_binarygateway_pillar_v5_8_dissect.working_away_from_display = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.working_away_from_display
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.working_away_from_display(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.working_away_from_display, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.order_qty = 4

-- Display: Order Qty
nyse_equities_binarygateway_pillar_v5_8_display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Working Price
nyse_equities_binarygateway_pillar_v5_8_size_of.working_price = 8

-- Display: Working Price
nyse_equities_binarygateway_pillar_v5_8_display.working_price = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
translate.working_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Working Price
nyse_equities_binarygateway_pillar_v5_8_dissect.working_price = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.working_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.working_price(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.working_price(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.working_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Priority Update Acknowledgment
nyse_equities_binarygateway_pillar_v5_8_size_of.order_priority_update_acknowledgment = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.working_price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.working_away_from_display

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.pre_liquidity_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ack_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_data

  return index
end

-- Display: Order Priority Update Acknowledgment
nyse_equities_binarygateway_pillar_v5_8_display.order_priority_update_acknowledgment = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Priority Update Acknowledgment
nyse_equities_binarygateway_pillar_v5_8_dissect.order_priority_update_acknowledgment_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_binarygateway_pillar_v5_8_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = nyse_equities_binarygateway_pillar_v5_8_dissect.working_price(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.order_qty(buffer, index, packet, parent)

  -- Working Away From Display: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, working_away_from_display = nyse_equities_binarygateway_pillar_v5_8_dissect.working_away_from_display(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: 4 Byte Ascii String Enum with 4 values
  index, pre_liquidity_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.pre_liquidity_indicator(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, ack_type = nyse_equities_binarygateway_pillar_v5_8_dissect.ack_type(buffer, index, packet, parent)

  -- User Data: 8 Byte Ascii String
  index, user_data = nyse_equities_binarygateway_pillar_v5_8_dissect.user_data(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Acknowledgment
nyse_equities_binarygateway_pillar_v5_8_dissect.order_priority_update_acknowledgment = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_priority_update_acknowledgment then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.order_priority_update_acknowledgment(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.order_priority_update_acknowledgment(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.order_priority_update_acknowledgment, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.order_priority_update_acknowledgment_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 7
nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_7 = 7

-- Display: Reserved 7
nyse_equities_binarygateway_pillar_v5_8_display.reserved_7 = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_7 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reserved_7(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_7, range, value, display)

  return offset + length, value
end

-- Size: Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_8_size_of.bitfield_flow_indicator = 7

-- Display: Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_8_display.bitfield_flow_indicator = function(buffer, packet, parent)
  local display = ""

  -- Is Throttled flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Throttled|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.bitfield_flow_indicator_bits = function(buffer, offset, packet, parent)

  -- Throttled: 1 Bit Enum with 2 values
  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.throttled, buffer(offset, 7))

  -- Reserved 7: 7 Byte
  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_7, buffer(offset, 7))
end

-- Dissect: Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.bitfield_flow_indicator = function(buffer, offset, packet, parent)
  local size = 7
  local range = buffer(offset, size)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.bitfield_flow_indicator(range, packet, parent)
  local element = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.bitfield_flow_indicator, range, display)

  if show.bitfield_flow_indicator then
    nyse_equities_binarygateway_pillar_v5_8_dissect.bitfield_flow_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 7, range
end

-- Size: Orig Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_size_of.orig_cl_ord_id = 8

-- Display: Orig Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_display.orig_cl_ord_id = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_dissect.orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Ref Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_size_of.ref_cl_ord_id = 8

-- Display: Ref Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_display.ref_cl_ord_id = function(value)
  return "Ref Cl Ord Id: "..value
end

-- Dissect: Ref Cl Ord Id
nyse_equities_binarygateway_pillar_v5_8_dissect.ref_cl_ord_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ref_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ref_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ref_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modify Cancel Request Acknowledgment And Urout
nyse_equities_binarygateway_pillar_v5_8_size_of.order_modify_cancel_request_acknowledgment_and_urout = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ref_cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.orig_cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.leaves_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.side

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.locate_reqd

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reason_code

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ack_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.bitfield_flow_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_data

  return index
end

-- Display: Order Modify Cancel Request Acknowledgment And Urout
nyse_equities_binarygateway_pillar_v5_8_display.order_modify_cancel_request_acknowledgment_and_urout = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modify Cancel Request Acknowledgment And Urout
nyse_equities_binarygateway_pillar_v5_8_dissect.order_modify_cancel_request_acknowledgment_and_urout_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_binarygateway_pillar_v5_8_dissect.order_id(buffer, index, packet, parent)

  -- Ref Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, ref_cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.ref_cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nyse_equities_binarygateway_pillar_v5_8_dissect.price(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.order_qty(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.leaves_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, side = nyse_equities_binarygateway_pillar_v5_8_dissect.side(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, locate_reqd = nyse_equities_binarygateway_pillar_v5_8_dissect.locate_reqd(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 334 values
  index, reason_code = nyse_equities_binarygateway_pillar_v5_8_dissect.reason_code(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, ack_type = nyse_equities_binarygateway_pillar_v5_8_dissect.ack_type(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.bitfield_flow_indicator(buffer, index, packet, parent)

  -- User Data: 8 Byte Ascii String
  index, user_data = nyse_equities_binarygateway_pillar_v5_8_dissect.user_data(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Cancel Request Acknowledgment And Urout
nyse_equities_binarygateway_pillar_v5_8_dissect.order_modify_cancel_request_acknowledgment_and_urout = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modify_cancel_request_acknowledgment_and_urout then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.order_modify_cancel_request_acknowledgment_and_urout(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.order_modify_cancel_request_acknowledgment_and_urout(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.order_modify_cancel_request_acknowledgment_and_urout, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.order_modify_cancel_request_acknowledgment_and_urout_fields(buffer, offset, packet, parent)
end

-- Size: Clearing Account
nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_account = 5

-- Display: Clearing Account
nyse_equities_binarygateway_pillar_v5_8_display.clearing_account = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_account = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_account
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.clearing_account(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Size: Optional Data
nyse_equities_binarygateway_pillar_v5_8_size_of.optional_data = 16

-- Display: Optional Data
nyse_equities_binarygateway_pillar_v5_8_display.optional_data = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data: No Value"
  end

  return "Optional Data: "..value
end

-- Dissect: Optional Data
nyse_equities_binarygateway_pillar_v5_8_dissect.optional_data = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.optional_data
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.optional_data(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.optional_data, range, value, display)

  return offset + length, value
end

-- Size: Clearing Firm
nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_firm = 5

-- Display: Clearing Firm
nyse_equities_binarygateway_pillar_v5_8_display.clearing_firm = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_firm = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_firm
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.clearing_firm(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Size: Deliver To Comp Id
nyse_equities_binarygateway_pillar_v5_8_size_of.deliver_to_comp_id = 5

-- Display: Deliver To Comp Id
nyse_equities_binarygateway_pillar_v5_8_display.deliver_to_comp_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Deliver To Comp Id: No Value"
  end

  return "Deliver To Comp Id: "..value
end

-- Dissect: Deliver To Comp Id
nyse_equities_binarygateway_pillar_v5_8_dissect.deliver_to_comp_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.deliver_to_comp_id
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.deliver_to_comp_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.deliver_to_comp_id, range, value, display)

  return offset + length, value
end

-- Size: Max Floor
nyse_equities_binarygateway_pillar_v5_8_size_of.max_floor = 4

-- Display: Max Floor
nyse_equities_binarygateway_pillar_v5_8_display.max_floor = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nyse_equities_binarygateway_pillar_v5_8_dissect.max_floor = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.max_floor
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.max_floor(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
nyse_equities_binarygateway_pillar_v5_8_size_of.stop_px = 8

-- Display: Stop Px
nyse_equities_binarygateway_pillar_v5_8_display.stop_px = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
translate.stop_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
nyse_equities_binarygateway_pillar_v5_8_dissect.stop_px = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.stop_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.stop_px(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.stop_px(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Optional Order Add On
nyse_equities_binarygateway_pillar_v5_8_size_of.optional_order_add_on = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.sub_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.stop_px

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.max_floor

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.deliver_to_comp_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_firm

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.optional_data

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_account

  return index
end

-- Display: Optional Order Add On
nyse_equities_binarygateway_pillar_v5_8_display.optional_order_add_on = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Order Add On
nyse_equities_binarygateway_pillar_v5_8_dissect.optional_order_add_on_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.sub_msg_header(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index, stop_px = nyse_equities_binarygateway_pillar_v5_8_dissect.stop_px(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = nyse_equities_binarygateway_pillar_v5_8_dissect.max_floor(buffer, index, packet, parent)

  -- Deliver To Comp Id: 5 Byte Ascii String
  index, deliver_to_comp_id = nyse_equities_binarygateway_pillar_v5_8_dissect.deliver_to_comp_id(buffer, index, packet, parent)

  -- Clearing Firm: 5 Byte Ascii String
  index, clearing_firm = nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_firm(buffer, index, packet, parent)

  -- Optional Data: 16 Byte Ascii String
  index, optional_data = nyse_equities_binarygateway_pillar_v5_8_dissect.optional_data(buffer, index, packet, parent)

  -- Clearing Account: 5 Byte Ascii String
  index, clearing_account = nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_account(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Order Add On
nyse_equities_binarygateway_pillar_v5_8_dissect.optional_order_add_on = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.optional_order_add_on then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.optional_order_add_on(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.optional_order_add_on(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.optional_order_add_on, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.optional_order_add_on_fields(buffer, offset, packet, parent)
end

-- Size: Min Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.min_qty = 4

-- Display: Min Qty
nyse_equities_binarygateway_pillar_v5_8_display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Bitfield Order Instructions
nyse_equities_binarygateway_pillar_v5_8_size_of.bitfield_order_instructions = 8

-- Display: Bitfield Order Instructions
nyse_equities_binarygateway_pillar_v5_8_display.bitfield_order_instructions = function(value)
  return "Bitfield Order Instructions: "..value
end

-- Dissect: Bitfield Order Instructions
nyse_equities_binarygateway_pillar_v5_8_dissect.bitfield_order_instructions = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.bitfield_order_instructions
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.bitfield_order_instructions(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.bitfield_order_instructions, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_8_size_of.order_and_cancel_replace_acknowledgement_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mmid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.orig_cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.bitfield_order_instructions

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.min_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.leaves_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.working_price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.working_away_from_display

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.pre_liquidity_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reason_code

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ack_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.bitfield_flow_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_data

  local seq_msg_length = buffer(offset + index - 113, 2):le_uint()

  if seq_msg_length ~= 65 then
    index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.optional_order_add_on(buffer, offset + index)

  end

  return index
end

-- Display: Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_8_display.order_and_cancel_replace_acknowledgement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_8_dissect.order_and_cancel_replace_acknowledgement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Mmid: 4 Byte Unsigned Fixed Width Integer
  index, mmid = nyse_equities_binarygateway_pillar_v5_8_dissect.mmid(buffer, index, packet, parent)

  -- Mp Sub Id: 1 Byte Ascii String
  index, mp_sub_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mp_sub_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Bitfield Order Instructions: 8 Byte
  index, bitfield_order_instructions = nyse_equities_binarygateway_pillar_v5_8_dissect.bitfield_order_instructions(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nyse_equities_binarygateway_pillar_v5_8_dissect.price(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.order_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.min_qty(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_equities_binarygateway_pillar_v5_8_dissect.order_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.leaves_qty(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = nyse_equities_binarygateway_pillar_v5_8_dissect.working_price(buffer, index, packet, parent)

  -- Working Away From Display: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, working_away_from_display = nyse_equities_binarygateway_pillar_v5_8_dissect.working_away_from_display(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: 4 Byte Ascii String Enum with 4 values
  index, pre_liquidity_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.pre_liquidity_indicator(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 334 values
  index, reason_code = nyse_equities_binarygateway_pillar_v5_8_dissect.reason_code(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, ack_type = nyse_equities_binarygateway_pillar_v5_8_dissect.ack_type(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.bitfield_flow_indicator(buffer, index, packet, parent)

  -- User Data: 8 Byte Ascii String
  index, user_data = nyse_equities_binarygateway_pillar_v5_8_dissect.user_data(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 113, 2):le_uint()

  -- Runtime optional field exists: Optional Order Add On
  local optional_order_add_on_exists = seq_msg_length ~= 65

  -- Runtime optional field: Optional Order Add On
  if optional_order_add_on_exists then
    index = nyse_equities_binarygateway_pillar_v5_8_dissect.optional_order_add_on(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_8_dissect.order_and_cancel_replace_acknowledgement_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_and_cancel_replace_acknowledgement_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.order_and_cancel_replace_acknowledgement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.order_and_cancel_replace_acknowledgement_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.order_and_cancel_replace_acknowledgement_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.order_and_cancel_replace_acknowledgement_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 49
nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_49 = 49

-- Display: Reserved 49
nyse_equities_binarygateway_pillar_v5_8_display.reserved_49 = function(value)
  return "Reserved 49: "..value
end

-- Dissect: Reserved 49
nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_49 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_49
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reserved_49(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_49, range, value, display)

  return offset + length, value
end

-- Size: Bold Designation
nyse_equities_binarygateway_pillar_v5_8_size_of.bold_designation = 1

-- Display: Bold Designation
nyse_equities_binarygateway_pillar_v5_8_display.bold_designation = function(value)
  return "Bold Designation: "..value
end

-- Dissect: Bold Designation
nyse_equities_binarygateway_pillar_v5_8_dissect.bold_designation = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.bold_designation
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.bold_designation(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.bold_designation, range, value, display)

  return offset + length, value
end

-- Size: Ack Status
nyse_equities_binarygateway_pillar_v5_8_size_of.ack_status = 1

-- Display: Ack Status
nyse_equities_binarygateway_pillar_v5_8_display.ack_status = function(value)
  if value == 0 then
    return "Ack Status: Unsolicited Start Of Day (0)"
  end
  if value == 1 then
    return "Ack Status: User Request Valid (1)"
  end

  return "Ack Status: Unknown("..value..")"
end

-- Dissect: Ack Status
nyse_equities_binarygateway_pillar_v5_8_dissect.ack_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ack_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ack_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ack_status, range, value, display)

  return offset + length, value
end

-- Size: Order Priority Update Ack Subscription
nyse_equities_binarygateway_pillar_v5_8_size_of.order_priority_update_ack_subscription = 1

-- Display: Order Priority Update Ack Subscription
nyse_equities_binarygateway_pillar_v5_8_display.order_priority_update_ack_subscription = function(value)
  if value == 0 then
    return "Order Priority Update Ack Subscription: Not Subscribed To Receive The Unsolicited Order Priority Update Ack Message On The Session (0)"
  end
  if value == 1 then
    return "Order Priority Update Ack Subscription: Receive Unsolicited Order Priority Update Ack Message On The Session (1)"
  end

  return "Order Priority Update Ack Subscription: Unknown("..value..")"
end

-- Dissect: Order Priority Update Ack Subscription
nyse_equities_binarygateway_pillar_v5_8_dissect.order_priority_update_ack_subscription = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.order_priority_update_ack_subscription
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.order_priority_update_ack_subscription(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.order_priority_update_ack_subscription, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Prevention
nyse_equities_binarygateway_pillar_v5_8_size_of.self_trade_prevention = 1

-- Display: Self Trade Prevention
nyse_equities_binarygateway_pillar_v5_8_display.self_trade_prevention = function(value)
  if value == 1 then
    return "Self Trade Prevention: No Self Trade Prevention (1)"
  end
  if value == 2 then
    return "Self Trade Prevention: Cancel Newest (2)"
  end
  if value == 3 then
    return "Self Trade Prevention: Cancel Oldest (3)"
  end
  if value == 4 then
    return "Self Trade Prevention: Cancel Both (4)"
  end
  if value == 5 then
    return "Self Trade Prevention: Cancel Decrement (5)"
  end

  return "Self Trade Prevention: Unknown("..value..")"
end

-- Dissect: Self Trade Prevention
nyse_equities_binarygateway_pillar_v5_8_dissect.self_trade_prevention = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.self_trade_prevention
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.self_trade_prevention(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Size: Max Order Quantity
nyse_equities_binarygateway_pillar_v5_8_size_of.max_order_quantity = 4

-- Display: Max Order Quantity
nyse_equities_binarygateway_pillar_v5_8_display.max_order_quantity = function(value)
  return "Max Order Quantity: "..value
end

-- Dissect: Max Order Quantity
nyse_equities_binarygateway_pillar_v5_8_dissect.max_order_quantity = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.max_order_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.max_order_quantity(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.max_order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Symbol Eligibility
nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_eligibility = 1

-- Display: Symbol Eligibility
nyse_equities_binarygateway_pillar_v5_8_display.symbol_eligibility = function(value)
  if value == 1 then
    return "Symbol Eligibility: All Symbols Production And Test Symbols (1)"
  end
  if value == 2 then
    return "Symbol Eligibility: Test Symbols Only (2)"
  end

  return "Symbol Eligibility: Unknown("..value..")"
end

-- Dissect: Symbol Eligibility
nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_eligibility = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_eligibility
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.symbol_eligibility(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.symbol_eligibility, range, value, display)

  return offset + length, value
end

-- Size: Throttle Threshold
nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_threshold = 2

-- Display: Throttle Threshold
nyse_equities_binarygateway_pillar_v5_8_display.throttle_threshold = function(value)
  return "Throttle Threshold: "..value
end

-- Dissect: Throttle Threshold
nyse_equities_binarygateway_pillar_v5_8_dissect.throttle_threshold = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_threshold
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.throttle_threshold(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.throttle_threshold, range, value, display)

  return offset + length, value
end

-- Size: Throttle Window
nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_window = 2

-- Display: Throttle Window
nyse_equities_binarygateway_pillar_v5_8_display.throttle_window = function(value)
  return "Throttle Window: "..value
end

-- Dissect: Throttle Window
nyse_equities_binarygateway_pillar_v5_8_dissect.throttle_window = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_window
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.throttle_window(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.throttle_window, range, value, display)

  return offset + length, value
end

-- Size: Throttle Preference
nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_preference = 1

-- Display: Throttle Preference
nyse_equities_binarygateway_pillar_v5_8_display.throttle_preference = function(value)
  if value == 0 then
    return "Throttle Preference: Queue Orders When Throttled (0)"
  end
  if value == 1 then
    return "Throttle Preference: Reject Orders When Throttled (1)"
  end

  return "Throttle Preference: Unknown("..value..")"
end

-- Dissect: Throttle Preference
nyse_equities_binarygateway_pillar_v5_8_dissect.throttle_preference = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_preference
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.throttle_preference(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.throttle_preference, range, value, display)

  return offset + length, value
end

-- Size: Cancel On Disconnect
nyse_equities_binarygateway_pillar_v5_8_size_of.cancel_on_disconnect = 1

-- Display: Cancel On Disconnect
nyse_equities_binarygateway_pillar_v5_8_display.cancel_on_disconnect = function(value)
  if value == 0 then
    return "Cancel On Disconnect: Cancel On Disconnect Disabled (0)"
  end
  if value == 1 then
    return "Cancel On Disconnect: Enable Cancel On Disconnect Day (1)"
  end
  if value == 2 then
    return "Cancel On Disconnect: Enable Cancel On Disconnect All (2)"
  end

  return "Cancel On Disconnect: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect
nyse_equities_binarygateway_pillar_v5_8_dissect.cancel_on_disconnect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.cancel_on_disconnect
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.cancel_on_disconnect(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.cancel_on_disconnect, range, value, display)

  return offset + length, value
end

-- Size: Mic
nyse_equities_binarygateway_pillar_v5_8_size_of.mic = 4

-- Display: Mic
nyse_equities_binarygateway_pillar_v5_8_display.mic = function(value)
  return "Mic: "..value
end

-- Dissect: Mic
nyse_equities_binarygateway_pillar_v5_8_dissect.mic = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mic
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.mic(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mic, range, value, display)

  return offset + length, value
end

-- Size: User Session Status
nyse_equities_binarygateway_pillar_v5_8_size_of.user_session_status = 1

-- Display: User Session Status
nyse_equities_binarygateway_pillar_v5_8_display.user_session_status = function(value)
  if value == 1 then
    return "User Session Status: Active (1)"
  end
  if value == 2 then
    return "User Session Status: Inactive (2)"
  end
  if value == 3 then
    return "User Session Status: Prospect (3)"
  end

  return "User Session Status: Unknown("..value..")"
end

-- Dissect: User Session Status
nyse_equities_binarygateway_pillar_v5_8_dissect.user_session_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.user_session_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.user_session_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.user_session_status, range, value, display)

  return offset + length, value
end

-- Size: User Session Type
nyse_equities_binarygateway_pillar_v5_8_size_of.user_session_type = 1

-- Display: User Session Type
nyse_equities_binarygateway_pillar_v5_8_display.user_session_type = function(value)
  if value == 1 then
    return "User Session Type: All Asset Clases Andor Equities Market Maker (1)"
  end
  if value == 2 then
    return "User Session Type: Service Bureau (2)"
  end
  if value == 3 then
    return "User Session Type: Designated Market Maker (3)"
  end

  return "User Session Type: Unknown("..value..")"
end

-- Dissect: User Session Type
nyse_equities_binarygateway_pillar_v5_8_dissect.user_session_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.user_session_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.user_session_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.user_session_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_8_size_of.session_configuration_acknowledgement_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_session_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_session_status

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.username

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mic

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cancel_on_disconnect

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_preference

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_window

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_threshold

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_eligibility

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.max_order_quantity

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.self_trade_prevention

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_priority_update_ack_subscription

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ack_status

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.bold_designation

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_49

  return index
end

-- Display: Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_8_display.session_configuration_acknowledgement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_8_dissect.session_configuration_acknowledgement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- User Session Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_session_type = nyse_equities_binarygateway_pillar_v5_8_dissect.user_session_type(buffer, index, packet, parent)

  -- User Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_session_status = nyse_equities_binarygateway_pillar_v5_8_dissect.user_session_status(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_equities_binarygateway_pillar_v5_8_dissect.username(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = nyse_equities_binarygateway_pillar_v5_8_dissect.mic(buffer, index, packet, parent)

  -- Cancel On Disconnect: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cancel_on_disconnect = nyse_equities_binarygateway_pillar_v5_8_dissect.cancel_on_disconnect(buffer, index, packet, parent)

  -- Throttle Preference: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, throttle_preference = nyse_equities_binarygateway_pillar_v5_8_dissect.throttle_preference(buffer, index, packet, parent)

  -- Throttle Window: 2 Byte Unsigned Fixed Width Integer
  index, throttle_window = nyse_equities_binarygateway_pillar_v5_8_dissect.throttle_window(buffer, index, packet, parent)

  -- Throttle Threshold: 2 Byte Unsigned Fixed Width Integer
  index, throttle_threshold = nyse_equities_binarygateway_pillar_v5_8_dissect.throttle_threshold(buffer, index, packet, parent)

  -- Symbol Eligibility: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, symbol_eligibility = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_eligibility(buffer, index, packet, parent)

  -- Max Order Quantity: 4 Byte Unsigned Fixed Width Integer
  index, max_order_quantity = nyse_equities_binarygateway_pillar_v5_8_dissect.max_order_quantity(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, self_trade_prevention = nyse_equities_binarygateway_pillar_v5_8_dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_priority_update_ack_subscription = nyse_equities_binarygateway_pillar_v5_8_dissect.order_priority_update_ack_subscription(buffer, index, packet, parent)

  -- Ack Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ack_status = nyse_equities_binarygateway_pillar_v5_8_dissect.ack_status(buffer, index, packet, parent)

  -- Bold Designation: 1 Byte Unsigned Fixed Width Integer
  index, bold_designation = nyse_equities_binarygateway_pillar_v5_8_dissect.bold_designation(buffer, index, packet, parent)

  -- Reserved 49: 49 Byte
  index, reserved_49 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_49(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_8_dissect.session_configuration_acknowledgement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.session_configuration_acknowledgement_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.session_configuration_acknowledgement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.session_configuration_acknowledgement_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.session_configuration_acknowledgement_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.session_configuration_acknowledgement_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 100
nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_100 = 100

-- Display: Reserved 100
nyse_equities_binarygateway_pillar_v5_8_display.reserved_100 = function(value)
  return "Reserved 100: "..value
end

-- Dissect: Reserved 100
nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_100 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_100
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reserved_100(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_100, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_8_size_of.mmid_configuration_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.market_maker

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mmid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.username

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_100

  return index
end

-- Display: Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_8_display.mmid_configuration_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_8_dissect.mmid_configuration_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_equities_binarygateway_pillar_v5_8_dissect.market_maker(buffer, index, packet, parent)

  -- Mmid: 4 Byte Unsigned Fixed Width Integer
  index, mmid = nyse_equities_binarygateway_pillar_v5_8_dissect.mmid(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_equities_binarygateway_pillar_v5_8_dissect.username(buffer, index, packet, parent)

  -- Reserved 100: 100 Byte
  index, reserved_100 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_100(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_8_dissect.mmid_configuration_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mmid_configuration_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mmid_configuration_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.mmid_configuration_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mmid_configuration_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.mmid_configuration_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 50
nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_50 = 50

-- Display: Reserved 50
nyse_equities_binarygateway_pillar_v5_8_display.reserved_50 = function(value)
  return "Reserved 50: "..value
end

-- Dissect: Reserved 50
nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_50 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_50
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reserved_50(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_50, range, value, display)

  return offset + length, value
end

-- Size: Mpid Status
nyse_equities_binarygateway_pillar_v5_8_size_of.mpid_status = 1

-- Display: Mpid Status
nyse_equities_binarygateway_pillar_v5_8_display.mpid_status = function(value)
  if value == 1 then
    return "Mpid Status: Active (1)"
  end
  if value == 2 then
    return "Mpid Status: Inactive (2)"
  end
  if value == 3 then
    return "Mpid Status: Prospect (3)"
  end

  return "Mpid Status: Unknown("..value..")"
end

-- Dissect: Mpid Status
nyse_equities_binarygateway_pillar_v5_8_dissect.mpid_status = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mpid_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.mpid_status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mpid_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_8_size_of.mpid_configuration_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid_status

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.username

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_50

  return index
end

-- Display: Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_8_display.mpid_configuration_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_8_dissect.mpid_configuration_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Mpid Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mpid_status = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid_status(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_equities_binarygateway_pillar_v5_8_dissect.username(buffer, index, packet, parent)

  -- Reserved 50: 50 Byte
  index, reserved_50 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_50(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_8_dissect.mpid_configuration_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mpid_configuration_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mpid_configuration_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.mpid_configuration_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mpid_configuration_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.mpid_configuration_message_fields(buffer, offset, packet, parent)
end

-- Size: Mpv Class Id
nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_class_id = 2

-- Display: Mpv Class Id
nyse_equities_binarygateway_pillar_v5_8_display.mpv_class_id = function(value)
  return "Mpv Class Id: "..value
end

-- Dissect: Mpv Class Id
nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_class_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_class_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.mpv_class_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mpv_class_id, range, value, display)

  return offset + length, value
end

-- Size: Trading Mpv
nyse_equities_binarygateway_pillar_v5_8_size_of.trading_mpv = 8

-- Display: Trading Mpv
nyse_equities_binarygateway_pillar_v5_8_display.trading_mpv = function(value)
  return "Trading Mpv: "..value
end

-- Translate: Trading Mpv
translate.trading_mpv = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trading Mpv
nyse_equities_binarygateway_pillar_v5_8_dissect.trading_mpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.trading_mpv
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.trading_mpv(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.trading_mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.trading_mpv, range, value, display)

  return offset + length, value
end

-- Size: Quoting Mpv
nyse_equities_binarygateway_pillar_v5_8_size_of.quoting_mpv = 8

-- Display: Quoting Mpv
nyse_equities_binarygateway_pillar_v5_8_display.quoting_mpv = function(value)
  return "Quoting Mpv: "..value
end

-- Translate: Quoting Mpv
translate.quoting_mpv = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Quoting Mpv
nyse_equities_binarygateway_pillar_v5_8_dissect.quoting_mpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.quoting_mpv
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.quoting_mpv(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.quoting_mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.quoting_mpv, range, value, display)

  return offset + length, value
end

-- Size: Mpv Level Name
nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_level_name = 24

-- Display: Mpv Level Name
nyse_equities_binarygateway_pillar_v5_8_display.mpv_level_name = function(value)
  return "Mpv Level Name: "..value
end

-- Dissect: Mpv Level Name
nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_level_name = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_level_name
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.mpv_level_name(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mpv_level_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_level_definition = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_level_name

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.quoting_mpv

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.trading_mpv

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_class_id

  return index
end

-- Display: Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_8_display.mpv_level_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_level_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mpv Level Name: 24 Byte Ascii String
  index, mpv_level_name = nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_level_name(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nyse_equities_binarygateway_pillar_v5_8_dissect.price(buffer, index, packet, parent)

  -- Quoting Mpv: 8 Byte Signed Fixed Width Integer
  index, quoting_mpv = nyse_equities_binarygateway_pillar_v5_8_dissect.quoting_mpv(buffer, index, packet, parent)

  -- Trading Mpv: 8 Byte Signed Fixed Width Integer
  index, trading_mpv = nyse_equities_binarygateway_pillar_v5_8_dissect.trading_mpv(buffer, index, packet, parent)

  -- Mpv Class Id: 2 Byte Unsigned Fixed Width Integer
  index, mpv_class_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_class_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_level_definition = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mpv_level_definition then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_level_definition(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.mpv_level_definition(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mpv_level_definition, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_level_definition_fields(buffer, offset, packet, parent)
end

-- Size Of: Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_size_of.minimum_price_variant_level_reference_data_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_display.minimum_price_variant_level_reference_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_dissect.minimum_price_variant_level_reference_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Dependency for Mpv Level Definition
  local end_of_payload = buffer:len()

  -- Mpv Level Definition: Struct of 5 fields
  while index < end_of_payload do
    index = nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_level_definition(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_dissect.minimum_price_variant_level_reference_data_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.minimum_price_variant_level_reference_data_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.minimum_price_variant_level_reference_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.minimum_price_variant_level_reference_data_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.minimum_price_variant_level_reference_data_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.minimum_price_variant_level_reference_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Luldmpv
nyse_equities_binarygateway_pillar_v5_8_size_of.luldmpv = 8

-- Display: Luldmpv
nyse_equities_binarygateway_pillar_v5_8_display.luldmpv = function(value)
  return "Luldmpv: "..value
end

-- Translate: Luldmpv
translate.luldmpv = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Luldmpv
nyse_equities_binarygateway_pillar_v5_8_dissect.luldmpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.luldmpv
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.luldmpv(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.luldmpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.luldmpv, range, value, display)

  return offset + length, value
end

-- Size: Rpimpv
nyse_equities_binarygateway_pillar_v5_8_size_of.rpimpv = 8

-- Display: Rpimpv
nyse_equities_binarygateway_pillar_v5_8_display.rpimpv = function(value)
  return "Rpimpv: "..value
end

-- Translate: Rpimpv
translate.rpimpv = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Rpimpv
nyse_equities_binarygateway_pillar_v5_8_dissect.rpimpv = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.rpimpv
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.rpimpv(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.rpimpv(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.rpimpv, range, value, display)

  return offset + length, value
end

-- Size: Mpv Class Name
nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_class_name = 20

-- Display: Mpv Class Name
nyse_equities_binarygateway_pillar_v5_8_display.mpv_class_name = function(value)
  return "Mpv Class Name: "..value
end

-- Dissect: Mpv Class Name
nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_class_name = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_class_name
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.mpv_class_name(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mpv_class_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_size_of.minimum_price_variant_class_reference_data_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_class_name

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_class_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.rpimpv

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.luldmpv

  return index
end

-- Display: Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_display.minimum_price_variant_class_reference_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_dissect.minimum_price_variant_class_reference_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Mpv Class Name: 20 Byte Ascii String
  index, mpv_class_name = nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_class_name(buffer, index, packet, parent)

  -- Mpv Class Id: 2 Byte Unsigned Fixed Width Integer
  index, mpv_class_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_class_id(buffer, index, packet, parent)

  -- Rpimpv: 8 Byte Signed Fixed Width Integer
  index, rpimpv = nyse_equities_binarygateway_pillar_v5_8_dissect.rpimpv(buffer, index, packet, parent)

  -- Luldmpv: 8 Byte Signed Fixed Width Integer
  index, luldmpv = nyse_equities_binarygateway_pillar_v5_8_dissect.luldmpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_dissect.minimum_price_variant_class_reference_data_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.minimum_price_variant_class_reference_data_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.minimum_price_variant_class_reference_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.minimum_price_variant_class_reference_data_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.minimum_price_variant_class_reference_data_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.minimum_price_variant_class_reference_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Lmocp
nyse_equities_binarygateway_pillar_v5_8_size_of.lmocp = 8

-- Display: Lmocp
nyse_equities_binarygateway_pillar_v5_8_display.lmocp = function(value)
  return "Lmocp: "..value
end

-- Translate: Lmocp
translate.lmocp = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lmocp
nyse_equities_binarygateway_pillar_v5_8_dissect.lmocp = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.lmocp
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.lmocp(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.lmocp(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.lmocp, range, value, display)

  return offset + length, value
end

-- Size: Close On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.close_on_trade_max_qty = 8

-- Display: Close On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_8_display.close_on_trade_max_qty = function(value)
  return "Close On Trade Max Qty: "..value
end

-- Dissect: Close On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.close_on_trade_max_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.close_on_trade_max_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.close_on_trade_max_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.close_on_trade_max_qty, range, value, display)

  return offset + length, value
end

-- Size: Open On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.open_on_trade_max_qty = 8

-- Display: Open On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_8_display.open_on_trade_max_qty = function(value)
  return "Open On Trade Max Qty: "..value
end

-- Dissect: Open On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.open_on_trade_max_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.open_on_trade_max_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.open_on_trade_max_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.open_on_trade_max_qty, range, value, display)

  return offset + length, value
end

-- Size: Ppp 3
nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_3 = 8

-- Display: Ppp 3
nyse_equities_binarygateway_pillar_v5_8_display.ppp_3 = function(value)
  return "Ppp 3: "..value
end

-- Translate: Ppp 3
translate.ppp_3 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ppp 3
nyse_equities_binarygateway_pillar_v5_8_dissect.ppp_3 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_3
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.ppp_3(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ppp_3(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ppp_3, range, value, display)

  return offset + length, value
end

-- Size: Ppp 2
nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_2 = 8

-- Display: Ppp 2
nyse_equities_binarygateway_pillar_v5_8_display.ppp_2 = function(value)
  return "Ppp 2: "..value
end

-- Translate: Ppp 2
translate.ppp_2 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ppp 2
nyse_equities_binarygateway_pillar_v5_8_dissect.ppp_2 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_2
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.ppp_2(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ppp_2(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ppp_2, range, value, display)

  return offset + length, value
end

-- Size: Ppp 1
nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_1 = 8

-- Display: Ppp 1
nyse_equities_binarygateway_pillar_v5_8_display.ppp_1 = function(value)
  return "Ppp 1: "..value
end

-- Translate: Ppp 1
translate.ppp_1 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ppp 1
nyse_equities_binarygateway_pillar_v5_8_dissect.ppp_1 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_1
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.ppp_1(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ppp_1(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ppp_1, range, value, display)

  return offset + length, value
end

-- Size: Ridge
nyse_equities_binarygateway_pillar_v5_8_size_of.ridge = 8

-- Display: Ridge
nyse_equities_binarygateway_pillar_v5_8_display.ridge = function(value)
  return "Ridge: "..value
end

-- Translate: Ridge
translate.ridge = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ridge
nyse_equities_binarygateway_pillar_v5_8_dissect.ridge = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.ridge
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.ridge(raw)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.ridge(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.ridge, range, value, display)

  return offset + length, value
end

-- Size: Rd Seq
nyse_equities_binarygateway_pillar_v5_8_size_of.rd_seq = 8

-- Display: Rd Seq
nyse_equities_binarygateway_pillar_v5_8_display.rd_seq = function(value)
  return "Rd Seq: "..value
end

-- Dissect: Rd Seq
nyse_equities_binarygateway_pillar_v5_8_dissect.rd_seq = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.rd_seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.rd_seq(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.rd_seq, range, value, display)

  return offset + length, value
end

-- Size: Median Volume
nyse_equities_binarygateway_pillar_v5_8_size_of.median_volume = 8

-- Display: Median Volume
nyse_equities_binarygateway_pillar_v5_8_display.median_volume = function(value)
  return "Median Volume: "..value
end

-- Dissect: Median Volume
nyse_equities_binarygateway_pillar_v5_8_dissect.median_volume = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.median_volume
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.median_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.median_volume, range, value, display)

  return offset + length, value
end

-- Size: Post
nyse_equities_binarygateway_pillar_v5_8_size_of.post = 2

-- Display: Post
nyse_equities_binarygateway_pillar_v5_8_display.post = function(value)
  return "Post: "..value
end

-- Dissect: Post
nyse_equities_binarygateway_pillar_v5_8_dissect.post = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.post
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.post(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.post, range, value, display)

  return offset + length, value
end

-- Size: Dmm Unit Num
nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_unit_num = 3

-- Display: Dmm Unit Num
nyse_equities_binarygateway_pillar_v5_8_display.dmm_unit_num = function(value)
  return "Dmm Unit Num: "..value
end

-- Dissect: Dmm Unit Num
nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_unit_num = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_unit_num
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.dmm_unit_num(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.dmm_unit_num, range, value, display)

  return offset + length, value
end

-- Size: Book
nyse_equities_binarygateway_pillar_v5_8_size_of.book = 8

-- Display: Book
nyse_equities_binarygateway_pillar_v5_8_display.book = function(value)
  return "Book: "..value
end

-- Dissect: Book
nyse_equities_binarygateway_pillar_v5_8_dissect.book = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.book
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.book(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.book, range, value, display)

  return offset + length, value
end

-- Size: Nyse Symbol
nyse_equities_binarygateway_pillar_v5_8_size_of.nyse_symbol = 24

-- Display: Nyse Symbol
nyse_equities_binarygateway_pillar_v5_8_display.nyse_symbol = function(value)
  return "Nyse Symbol: "..value
end

-- Dissect: Nyse Symbol
nyse_equities_binarygateway_pillar_v5_8_dissect.nyse_symbol = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.nyse_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.nyse_symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.nyse_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_symbol_reference_data_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.nyse_symbol

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.book

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_unit_num

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.post

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.median_volume

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.rd_seq

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ridge

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_1

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_2

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ppp_3

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.open_on_trade_max_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.close_on_trade_max_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.lmocp

  return index
end

-- Display: Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_display.dmm_symbol_reference_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_symbol_reference_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Nyse Symbol: 24 Byte Ascii String
  index, nyse_symbol = nyse_equities_binarygateway_pillar_v5_8_dissect.nyse_symbol(buffer, index, packet, parent)

  -- Book: 8 Byte Ascii String
  index, book = nyse_equities_binarygateway_pillar_v5_8_dissect.book(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Dmm Unit Num: 3 Byte Ascii String
  index, dmm_unit_num = nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_unit_num(buffer, index, packet, parent)

  -- Post: 2 Byte Ascii String
  index, post = nyse_equities_binarygateway_pillar_v5_8_dissect.post(buffer, index, packet, parent)

  -- Median Volume: 8 Byte Unsigned Fixed Width Integer
  index, median_volume = nyse_equities_binarygateway_pillar_v5_8_dissect.median_volume(buffer, index, packet, parent)

  -- Rd Seq: 8 Byte Unsigned Fixed Width Integer
  index, rd_seq = nyse_equities_binarygateway_pillar_v5_8_dissect.rd_seq(buffer, index, packet, parent)

  -- Ridge: 8 Byte Signed Fixed Width Integer
  index, ridge = nyse_equities_binarygateway_pillar_v5_8_dissect.ridge(buffer, index, packet, parent)

  -- Ppp 1: 8 Byte Signed Fixed Width Integer
  index, ppp_1 = nyse_equities_binarygateway_pillar_v5_8_dissect.ppp_1(buffer, index, packet, parent)

  -- Ppp 2: 8 Byte Signed Fixed Width Integer
  index, ppp_2 = nyse_equities_binarygateway_pillar_v5_8_dissect.ppp_2(buffer, index, packet, parent)

  -- Ppp 3: 8 Byte Signed Fixed Width Integer
  index, ppp_3 = nyse_equities_binarygateway_pillar_v5_8_dissect.ppp_3(buffer, index, packet, parent)

  -- Open On Trade Max Qty: 8 Byte Unsigned Fixed Width Integer
  index, open_on_trade_max_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.open_on_trade_max_qty(buffer, index, packet, parent)

  -- Close On Trade Max Qty: 8 Byte Unsigned Fixed Width Integer
  index, close_on_trade_max_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.close_on_trade_max_qty(buffer, index, packet, parent)

  -- Lmocp: 8 Byte Signed Fixed Width Integer
  index, lmocp = nyse_equities_binarygateway_pillar_v5_8_dissect.lmocp(buffer, index, packet, parent)

  return index
end

-- Dissect: Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_symbol_reference_data_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.dmm_symbol_reference_data_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_symbol_reference_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.dmm_symbol_reference_data_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.dmm_symbol_reference_data_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_symbol_reference_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Test Symbol Indicator
nyse_equities_binarygateway_pillar_v5_8_size_of.test_symbol_indicator = 1

-- Display: Test Symbol Indicator
nyse_equities_binarygateway_pillar_v5_8_display.test_symbol_indicator = function(value)
  if value == 0 then
    return "Test Symbol Indicator: Production Symbol (0)"
  end
  if value == 1 then
    return "Test Symbol Indicator: Test Symbol (1)"
  end

  return "Test Symbol Indicator: Unknown("..value..")"
end

-- Dissect: Test Symbol Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.test_symbol_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.test_symbol_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.test_symbol_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.test_symbol_indicator, range, value, display)

  return offset + length, value
end

-- Size: Adv Risk Range Id
nyse_equities_binarygateway_pillar_v5_8_size_of.adv_risk_range_id = 1

-- Display: Adv Risk Range Id
nyse_equities_binarygateway_pillar_v5_8_display.adv_risk_range_id = function(value)
  if value == 1 then
    return "Adv Risk Range Id: Below Or Equal To 10000 Shares (1)"
  end
  if value == 2 then
    return "Adv Risk Range Id: Above 10000 Shares And Below Or Equal To 100000 Shares (2)"
  end
  if value == 3 then
    return "Adv Risk Range Id: Above 100000 Shares And Below Or Equal To 1000000 Shares (3)"
  end
  if value == 4 then
    return "Adv Risk Range Id: Above 1000000 Shares (4)"
  end

  return "Adv Risk Range Id: Unknown("..value..")"
end

-- Dissect: Adv Risk Range Id
nyse_equities_binarygateway_pillar_v5_8_dissect.adv_risk_range_id = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.adv_risk_range_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.adv_risk_range_id(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.adv_risk_range_id, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
nyse_equities_binarygateway_pillar_v5_8_size_of.round_lot_size = 1

-- Display: Round Lot Size
nyse_equities_binarygateway_pillar_v5_8_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nyse_equities_binarygateway_pillar_v5_8_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Listed Mic
nyse_equities_binarygateway_pillar_v5_8_size_of.listed_mic = 4

-- Display: Listed Mic
nyse_equities_binarygateway_pillar_v5_8_display.listed_mic = function(value)
  return "Listed Mic: "..value
end

-- Dissect: Listed Mic
nyse_equities_binarygateway_pillar_v5_8_dissect.listed_mic = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.listed_mic
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.listed_mic(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.listed_mic, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_size_of.equities_symbol_reference_data_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.transact_time

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.nyse_symbol

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.listed_mic

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.round_lot_size

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.adv_risk_range_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_7

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpv_class_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.test_symbol_indicator

  return index
end

-- Display: Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_display.equities_symbol_reference_data_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_dissect.equities_symbol_reference_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_equities_binarygateway_pillar_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Nyse Symbol: 24 Byte Ascii String
  index, nyse_symbol = nyse_equities_binarygateway_pillar_v5_8_dissect.nyse_symbol(buffer, index, packet, parent)

  -- Listed Mic: 4 Byte Ascii String
  index, listed_mic = nyse_equities_binarygateway_pillar_v5_8_dissect.listed_mic(buffer, index, packet, parent)

  -- Round Lot Size: 1 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nyse_equities_binarygateway_pillar_v5_8_dissect.round_lot_size(buffer, index, packet, parent)

  -- Adv Risk Range Id: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, adv_risk_range_id = nyse_equities_binarygateway_pillar_v5_8_dissect.adv_risk_range_id(buffer, index, packet, parent)

  -- Reserved 7: 7 Byte
  index, reserved_7 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_7(buffer, index, packet, parent)

  -- Mpv Class Id: 2 Byte Unsigned Fixed Width Integer
  index, mpv_class_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mpv_class_id(buffer, index, packet, parent)

  -- Test Symbol Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, test_symbol_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.test_symbol_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_8_dissect.equities_symbol_reference_data_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equities_symbol_reference_data_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.equities_symbol_reference_data_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.equities_symbol_reference_data_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.equities_symbol_reference_data_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.equities_symbol_reference_data_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 199
nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_199 = 199

-- Display: Reserved 199
nyse_equities_binarygateway_pillar_v5_8_display.reserved_199 = function(value)
  return "Reserved 199: "..value
end

-- Dissect: Reserved 199
nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_199 = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_199
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_equities_binarygateway_pillar_v5_8_display.reserved_199(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.reserved_199, range, value, display)

  return offset + length, value
end

-- Calculate size of: Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_action_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.market_maker

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_4

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_number

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_crd

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_action_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_range_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_199

  return index
end

-- Display: Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_8_display.risk_action_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_action_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_equities_binarygateway_pillar_v5_8_dissect.market_maker(buffer, index, packet, parent)

  -- Mp Sub Id: 1 Byte Ascii String
  index, mp_sub_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mp_sub_id(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_4(buffer, index, packet, parent)

  -- Clearing Number: 5 Byte Ascii String
  index, clearing_number = nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_number(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Risk User Crd: 4 Byte Unsigned Fixed Width Integer
  index, risk_user_crd = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_crd(buffer, index, packet, parent)

  -- Risk User Type: 1 Byte Ascii String Enum with 2 values
  index, risk_user_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_type(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_type(buffer, index, packet, parent)

  -- Risk Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, risk_action_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_action_type(buffer, index, packet, parent)

  -- Risk Range Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, risk_range_id = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_range_id(buffer, index, packet, parent)

  -- Reserved 199: 199 Byte
  index, reserved_199 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_199(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_action_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.risk_action_request_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_action_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_action_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_action_request_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.risk_action_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Breach Action Request
nyse_equities_binarygateway_pillar_v5_8_size_of.breach_action_request = 1

-- Display: Breach Action Request
nyse_equities_binarygateway_pillar_v5_8_display.breach_action_request = function(value)
  if value == 1 then
    return "Breach Action Request: Notifications Only (1)"
  end
  if value == 2 then
    return "Breach Action Request: Cancel Non Auction Orders And Block (2)"
  end
  if value == 3 then
    return "Breach Action Request: Block Only (3)"
  end
  if value == 0 then
    return "Breach Action Request: No Value"
  end

  return "Breach Action Request: Unknown("..value..")"
end

-- Dissect: Breach Action Request
nyse_equities_binarygateway_pillar_v5_8_dissect.breach_action_request = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.breach_action_request
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.breach_action_request(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.breach_action_request, range, value, display)

  return offset + length, value
end

-- Calculate size of: Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_8_size_of.risk_limit_update_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.market_maker

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_4

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.clearing_number

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_crd

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_user_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_activation

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.usd_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.time_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.percentage_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.count_limit

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.breach_action_request

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.ioc_attribution

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_range_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.risk_minimum_value

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.price_scale

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_190

  return index
end

-- Display: Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_8_display.risk_limit_update_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_limit_update_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_equities_binarygateway_pillar_v5_8_dissect.market_maker(buffer, index, packet, parent)

  -- Mp Sub Id: 1 Byte Ascii String
  index, mp_sub_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mp_sub_id(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_4(buffer, index, packet, parent)

  -- Clearing Number: 5 Byte Ascii String
  index, clearing_number = nyse_equities_binarygateway_pillar_v5_8_dissect.clearing_number(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Risk User Crd: 4 Byte Unsigned Fixed Width Integer
  index, risk_user_crd = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_crd(buffer, index, packet, parent)

  -- Risk User Type: 1 Byte Ascii String Enum with 2 values
  index, risk_user_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_user_type(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_type(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_type(buffer, index, packet, parent)

  -- Risk Control Activation: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, risk_control_activation = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_activation(buffer, index, packet, parent)

  -- Usd Limit: 8 Byte Signed Fixed Width Integer
  index, usd_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.usd_limit(buffer, index, packet, parent)

  -- Time Limit: 4 Byte Signed Fixed Width Integer
  index, time_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.time_limit(buffer, index, packet, parent)

  -- Percentage Limit: 4 Byte Signed Fixed Width Integer
  index, percentage_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.percentage_limit(buffer, index, packet, parent)

  -- Count Limit: 4 Byte Signed Fixed Width Integer
  index, count_limit = nyse_equities_binarygateway_pillar_v5_8_dissect.count_limit(buffer, index, packet, parent)

  -- Breach Action Request: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, breach_action_request = nyse_equities_binarygateway_pillar_v5_8_dissect.breach_action_request(buffer, index, packet, parent)

  -- Ioc Attribution: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ioc_attribution = nyse_equities_binarygateway_pillar_v5_8_dissect.ioc_attribution(buffer, index, packet, parent)

  -- Risk Range Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, risk_range_id = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_range_id(buffer, index, packet, parent)

  -- Risk Minimum Value: 8 Byte Signed Fixed Width Integer
  index, risk_minimum_value = nyse_equities_binarygateway_pillar_v5_8_dissect.risk_minimum_value(buffer, index, packet, parent)

  -- Price Scale: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_scale = nyse_equities_binarygateway_pillar_v5_8_dissect.price_scale(buffer, index, packet, parent)

  -- Reserved 190: 190 Byte
  index, reserved_190 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_190(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.risk_limit_update_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.risk_limit_update_request_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.risk_limit_update_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.risk_limit_update_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.risk_limit_update_request_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.risk_limit_update_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Dmm Reject Reason
nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_reject_reason = 20

-- Display: Dmm Reject Reason
nyse_equities_binarygateway_pillar_v5_8_display.dmm_reject_reason = function(value)
  return "Dmm Reject Reason: "..value
end

-- Dissect: Dmm Reject Reason
nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_reject_reason = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_reject_reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_8_display.dmm_reject_reason(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.dmm_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Manual Response Type
nyse_equities_binarygateway_pillar_v5_8_size_of.manual_response_type = 1

-- Display: Manual Response Type
nyse_equities_binarygateway_pillar_v5_8_display.manual_response_type = function(value)
  if value == 1 then
    return "Manual Response Type: Approve Manual Action Request (1)"
  end
  if value == 2 then
    return "Manual Response Type: Reject Manual Action Request (2)"
  end

  return "Manual Response Type: Unknown("..value..")"
end

-- Dissect: Manual Response Type
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_response_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.manual_response_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.manual_response_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.manual_response_type, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Type
nyse_equities_binarygateway_pillar_v5_8_size_of.self_trade_type = 1

-- Display: Self Trade Type
nyse_equities_binarygateway_pillar_v5_8_display.self_trade_type = function(value)
  if value == 0 then
    return "Self Trade Type: Use Default For All Dbk Gui Streams Cancel Newest (0)"
  end
  if value == 1 then
    return "Self Trade Type: No Self Trade Prevention (1)"
  end
  if value == 2 then
    return "Self Trade Type: Cancel Newest (2)"
  end
  if value == 3 then
    return "Self Trade Type: Cancel Oldest (3)"
  end
  if value == 4 then
    return "Self Trade Type: Cancel Both (4)"
  end
  if value == 5 then
    return "Self Trade Type: Cancel Decrement (5)"
  end

  return "Self Trade Type: Unknown("..value..")"
end

-- Dissect: Self Trade Type
nyse_equities_binarygateway_pillar_v5_8_dissect.self_trade_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.self_trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.self_trade_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.self_trade_type, range, value, display)

  return offset + length, value
end

-- Size: Intraday Sell Short Qty
nyse_equities_binarygateway_pillar_v5_8_size_of.intraday_sell_short_qty = 4

-- Display: Intraday Sell Short Qty
nyse_equities_binarygateway_pillar_v5_8_display.intraday_sell_short_qty = function(value)
  return "Intraday Sell Short Qty: "..value
end

-- Dissect: Intraday Sell Short Qty
nyse_equities_binarygateway_pillar_v5_8_dissect.intraday_sell_short_qty = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.intraday_sell_short_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.intraday_sell_short_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.intraday_sell_short_qty, range, value, display)

  return offset + length, value
end

-- Size: Sell Indicator
nyse_equities_binarygateway_pillar_v5_8_size_of.sell_indicator = 1

-- Display: Sell Indicator
nyse_equities_binarygateway_pillar_v5_8_display.sell_indicator = function(value)
  return "Sell Indicator: "..value
end

-- Dissect: Sell Indicator
nyse_equities_binarygateway_pillar_v5_8_dissect.sell_indicator = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.sell_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.sell_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.sell_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_response_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_id(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.sell_indicator

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.intraday_sell_short_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.locate_reqd

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.self_trade_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_data

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.manual_response_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_reject_reason

  return index
end

-- Display: Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_8_display.manual_action_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Manual Action Id: Struct of 2 fields
  index, manual_action_id = nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_id(buffer, index, packet, parent)

  -- Sell Indicator: 1 Byte Unsigned Fixed Width Integer
  index, sell_indicator = nyse_equities_binarygateway_pillar_v5_8_dissect.sell_indicator(buffer, index, packet, parent)

  -- Intraday Sell Short Qty: 4 Byte Unsigned Fixed Width Integer
  index, intraday_sell_short_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.intraday_sell_short_qty(buffer, index, packet, parent)

  -- Mp Sub Id: 1 Byte Ascii String
  index, mp_sub_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mp_sub_id(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, locate_reqd = nyse_equities_binarygateway_pillar_v5_8_dissect.locate_reqd(buffer, index, packet, parent)

  -- Self Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, self_trade_type = nyse_equities_binarygateway_pillar_v5_8_dissect.self_trade_type(buffer, index, packet, parent)

  -- User Data: 8 Byte Ascii String
  index, user_data = nyse_equities_binarygateway_pillar_v5_8_dissect.user_data(buffer, index, packet, parent)

  -- Manual Response Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_response_type = nyse_equities_binarygateway_pillar_v5_8_dissect.manual_response_type(buffer, index, packet, parent)

  -- Dmm Reject Reason: 20 Byte Ascii String
  index, dmm_reject_reason = nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.manual_action_response_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.manual_action_response_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.manual_action_response_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_response_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Tg End Message
nyse_equities_binarygateway_pillar_v5_8_size_of.tg_end_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  return index
end

-- Display: Tg End Message
nyse_equities_binarygateway_pillar_v5_8_display.tg_end_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tg End Message
nyse_equities_binarygateway_pillar_v5_8_dissect.tg_end_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Tg End Message
nyse_equities_binarygateway_pillar_v5_8_dissect.tg_end_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tg_end_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.tg_end_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.tg_end_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.tg_end_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.tg_end_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Tg Begin Message
nyse_equities_binarygateway_pillar_v5_8_size_of.tg_begin_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  return index
end

-- Display: Tg Begin Message
nyse_equities_binarygateway_pillar_v5_8_display.tg_begin_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tg Begin Message
nyse_equities_binarygateway_pillar_v5_8_dissect.tg_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Tg Begin Message
nyse_equities_binarygateway_pillar_v5_8_dissect.tg_begin_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tg_begin_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.tg_begin_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.tg_begin_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.tg_begin_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.tg_begin_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_subscription_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.username

  return index
end

-- Display: Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_8_display.symbol_subscription_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_subscription_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_equities_binarygateway_pillar_v5_8_dissect.username(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_subscription_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_subscription_request_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_subscription_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.symbol_subscription_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.symbol_subscription_request_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_subscription_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Bulk Cancel Type
nyse_equities_binarygateway_pillar_v5_8_size_of.bulk_cancel_type = 1

-- Display: Bulk Cancel Type
nyse_equities_binarygateway_pillar_v5_8_display.bulk_cancel_type = function(value)
  if value == 1 then
    return "Bulk Cancel Type: Cancel Orders For The Individual Gateway Session Only Cancel Day Directed Orders (1)"
  end
  if value == 2 then
    return "Bulk Cancel Type: Cancel Orders For The Individual Gateway Session Only Cancel All Orders (2)"
  end
  if value == 3 then
    return "Bulk Cancel Type: Cancel Orders For The Individual Gateway Session Only Cancel At The Opening Day Directed Orders (3)"
  end
  if value == 4 then
    return "Bulk Cancel Type: Cancel Orders For The Mpid Cancel At The Opening Day Directed Orders (4)"
  end
  if value == 5 then
    return "Bulk Cancel Type: Cancel Orders For The Mpid Cancel Day Directed Orders (5)"
  end
  if value == 6 then
    return "Bulk Cancel Type: Cancel Orders For The Mpid Cancel Gtc Orders Nyse Arca American Options Only (6)"
  end
  if value == 7 then
    return "Bulk Cancel Type: Cancel Orders For The Mpid Cancel At The Opening And On Close Orders (7)"
  end
  if value == 8 then
    return "Bulk Cancel Type: Cancel Orders For The Mpid Cancel Day Orders (8)"
  end
  if value == 9 then
    return "Bulk Cancel Type: Cancel Orders For The Mpid And Block All New (9)"
  end
  if value == 10 then
    return "Bulk Cancel Type: Block All New Order Entry For The Mpid (10)"
  end
  if value == 11 then
    return "Bulk Cancel Type: Unblock New Order Entry For The Mpid (11)"
  end
  if value == 12 then
    return "Bulk Cancel Type: Cancel Orders For The Mpid Cancel Directed Orders (12)"
  end
  if value == 13 then
    return "Bulk Cancel Type: Cancel Orders For The Mpid Cancel Capital Commitment Orders (13)"
  end

  return "Bulk Cancel Type: Unknown("..value..")"
end

-- Dissect: Bulk Cancel Type
nyse_equities_binarygateway_pillar_v5_8_dissect.bulk_cancel_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.bulk_cancel_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.bulk_cancel_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.bulk_cancel_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_8_size_of.bulk_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mmid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.deliver_to_comp_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.bulk_cancel_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.side

  return index
end

-- Display: Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_8_display.bulk_cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.bulk_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Mmid: 4 Byte Unsigned Fixed Width Integer
  index, mmid = nyse_equities_binarygateway_pillar_v5_8_dissect.mmid(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Deliver To Comp Id: 5 Byte Ascii String
  index, deliver_to_comp_id = nyse_equities_binarygateway_pillar_v5_8_dissect.deliver_to_comp_id(buffer, index, packet, parent)

  -- Bulk Cancel Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, bulk_cancel_type = nyse_equities_binarygateway_pillar_v5_8_dissect.bulk_cancel_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, side = nyse_equities_binarygateway_pillar_v5_8_dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.bulk_cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bulk_cancel_request_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.bulk_cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.bulk_cancel_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.bulk_cancel_request_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.bulk_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_8_size_of.order_modify_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.orig_cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.side

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.locate_reqd

  return index
end

-- Display: Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_8_display.order_modify_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.order_modify_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.order_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, side = nyse_equities_binarygateway_pillar_v5_8_dissect.side(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, locate_reqd = nyse_equities_binarygateway_pillar_v5_8_dissect.locate_reqd(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.order_modify_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modify_request_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.order_modify_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.order_modify_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.order_modify_request_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.order_modify_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_8_size_of.order_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.orig_cl_ord_id

  return index
end

-- Display: Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_8_display.order_cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.order_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.order_cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_request_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.order_cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.order_cancel_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.order_cancel_request_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.order_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_8_size_of.new_order_single_and_cancel_replace_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mpid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mmid

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.mp_sub_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.orig_cl_ord_id

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.bitfield_order_instructions

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.price

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.min_qty

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.user_data

  local seq_msg_length = buffer(offset + index - 63, 2):le_uint()

  if seq_msg_length ~= 65 then
    index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.optional_order_add_on(buffer, offset + index)

  end

  return index
end

-- Display: New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_8_display.new_order_single_and_cancel_replace_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.new_order_single_and_cancel_replace_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_equities_binarygateway_pillar_v5_8_dissect.mpid(buffer, index, packet, parent)

  -- Mmid: 4 Byte Unsigned Fixed Width Integer
  index, mmid = nyse_equities_binarygateway_pillar_v5_8_dissect.mmid(buffer, index, packet, parent)

  -- Mp Sub Id: 1 Byte Ascii String
  index, mp_sub_id = nyse_equities_binarygateway_pillar_v5_8_dissect.mp_sub_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_8_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Bitfield Order Instructions: 8 Byte
  index, bitfield_order_instructions = nyse_equities_binarygateway_pillar_v5_8_dissect.bitfield_order_instructions(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nyse_equities_binarygateway_pillar_v5_8_dissect.price(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.order_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = nyse_equities_binarygateway_pillar_v5_8_dissect.min_qty(buffer, index, packet, parent)

  -- User Data: 8 Byte Ascii String
  index, user_data = nyse_equities_binarygateway_pillar_v5_8_dissect.user_data(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 63, 2):le_uint()

  -- Runtime optional field exists: Optional Order Add On
  local optional_order_add_on_exists = seq_msg_length ~= 65

  -- Runtime optional field: Optional Order Add On
  if optional_order_add_on_exists then
    index = nyse_equities_binarygateway_pillar_v5_8_dissect.optional_order_add_on(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.new_order_single_and_cancel_replace_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_single_and_cancel_replace_request_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.new_order_single_and_cancel_replace_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.new_order_single_and_cancel_replace_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.new_order_single_and_cancel_replace_request_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.new_order_single_and_cancel_replace_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequenced Filler Message
nyse_equities_binarygateway_pillar_v5_8_size_of.sequenced_filler_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  return index
end

-- Display: Sequenced Filler Message
nyse_equities_binarygateway_pillar_v5_8_display.sequenced_filler_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Filler Message
nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_filler_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Filler Message
nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_filler_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequenced_filler_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.sequenced_filler_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.sequenced_filler_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.sequenced_filler_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_filler_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_8_size_of.session_configuration_request_message = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg_header(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.username

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.cancel_on_disconnect

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.throttle_preference

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.self_trade_prevention

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.order_priority_update_ack_subscription

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.bold_designation

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.reserved_49

  return index
end

-- Display: Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_8_display.session_configuration_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.session_configuration_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_equities_binarygateway_pillar_v5_8_dissect.username(buffer, index, packet, parent)

  -- Cancel On Disconnect: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cancel_on_disconnect = nyse_equities_binarygateway_pillar_v5_8_dissect.cancel_on_disconnect(buffer, index, packet, parent)

  -- Throttle Preference: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, throttle_preference = nyse_equities_binarygateway_pillar_v5_8_dissect.throttle_preference(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, self_trade_prevention = nyse_equities_binarygateway_pillar_v5_8_dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_priority_update_ack_subscription = nyse_equities_binarygateway_pillar_v5_8_dissect.order_priority_update_ack_subscription(buffer, index, packet, parent)

  -- Bold Designation: 1 Byte Unsigned Fixed Width Integer
  index, bold_designation = nyse_equities_binarygateway_pillar_v5_8_dissect.bold_designation(buffer, index, packet, parent)

  -- Reserved 49: 49 Byte
  index, reserved_49 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_49(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_8_dissect.session_configuration_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.session_configuration_request_message then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.session_configuration_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.session_configuration_request_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.session_configuration_request_message, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.session_configuration_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Sequenced Message
nyse_equities_binarygateway_pillar_v5_8_size_of.sequenced_message = function(buffer, offset, seq_msg_type)
  -- Size of Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.session_configuration_request_message(buffer, offset)
  end
  -- Size of Sequenced Filler Message
  if seq_msg_type == 0x0282 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.sequenced_filler_message(buffer, offset)
  end
  -- Size of New Order Single And Cancel Replace Request Message
  if seq_msg_type == 0x0240 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.new_order_single_and_cancel_replace_request_message(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if seq_msg_type == 0x0280 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.order_cancel_request_message(buffer, offset)
  end
  -- Size of Order Modify Request Message
  if seq_msg_type == 0x0270 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.order_modify_request_message(buffer, offset)
  end
  -- Size of Bulk Cancel Request Message
  if seq_msg_type == 0x0281 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.bulk_cancel_request_message(buffer, offset)
  end
  -- Size of Symbol Subscription Request Message
  if seq_msg_type == 0x0346 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_subscription_request_message(buffer, offset)
  end
  -- Size of Tg Begin Message
  if seq_msg_type == 0x0343 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.tg_begin_message(buffer, offset)
  end
  -- Size of Tg End Message
  if seq_msg_type == 0x0344 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.tg_end_message(buffer, offset)
  end
  -- Size of Manual Action Response Message
  if seq_msg_type == 0x0354 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_response_message(buffer, offset)
  end
  -- Size of Risk Limit Update Request Message
  if seq_msg_type == 0x0330 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.risk_limit_update_request_message(buffer, offset)
  end
  -- Size of Risk Action Request Message
  if seq_msg_type == 0x0331 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.risk_action_request_message(buffer, offset)
  end
  -- Size of Equities Symbol Reference Data Message
  if seq_msg_type == 0x0232 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.equities_symbol_reference_data_message(buffer, offset)
  end
  -- Size of Dmm Symbol Reference Data Message
  if seq_msg_type == 0x0832 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.dmm_symbol_reference_data_message(buffer, offset)
  end
  -- Size of Minimum Price Variant Class Reference Data Message
  if seq_msg_type == 0x0230 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.minimum_price_variant_class_reference_data_message(buffer, offset)
  end
  -- Size of Minimum Price Variant Level Reference Data Message
  if seq_msg_type == 0x0231 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.minimum_price_variant_level_reference_data_message(buffer, offset)
  end
  -- Size of Mpid Configuration Message
  if seq_msg_type == 0x0272 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.mpid_configuration_message(buffer, offset)
  end
  -- Size of Mmid Configuration Message
  if seq_msg_type == 0x0273 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.mmid_configuration_message(buffer, offset)
  end
  -- Size of Session Configuration Acknowledgement Message
  if seq_msg_type == 0x0221 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.session_configuration_acknowledgement_message(buffer, offset)
  end
  -- Size of Order And Cancel Replace Acknowledgement Message
  if seq_msg_type == 0x0260 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.order_and_cancel_replace_acknowledgement_message(buffer, offset)
  end
  -- Size of Order Modify Cancel Request Acknowledgment And Urout
  if seq_msg_type == 0x0271 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.order_modify_cancel_request_acknowledgment_and_urout(buffer, offset)
  end
  -- Size of Order Priority Update Acknowledgment
  if seq_msg_type == 0x0262 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.order_priority_update_acknowledgment(buffer, offset)
  end
  -- Size of Execution Report
  if seq_msg_type == 0x0290 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.execution_report(buffer, offset)
  end
  -- Size of Trade Bust Correct
  if seq_msg_type == 0x0292 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.trade_bust_correct(buffer, offset)
  end
  -- Size of Application Layer Reject
  if seq_msg_type == 0x0263 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.application_layer_reject(buffer, offset)
  end
  -- Size of Symbol Subscription Acknowledgement
  if seq_msg_type == 0x0347 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.symbol_subscription_acknowledgement(buffer, offset)
  end
  -- Size of Gt Begin
  if seq_msg_type == 0x0349 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.gt_begin(buffer, offset)
  end
  -- Size of Gt End
  if seq_msg_type == 0x0350 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.gt_end(buffer, offset)
  end
  -- Size of Auction Price Data
  if seq_msg_type == 0x0352 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.auction_price_data(buffer, offset)
  end
  -- Size of Auction Request
  if seq_msg_type == 0x0348 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.auction_request(buffer, offset)
  end
  -- Size of Manual Action Request
  if seq_msg_type == 0x0353 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.manual_action_request(buffer, offset)
  end
  -- Size of Risk Control Acknowledgement
  if seq_msg_type == 0x0332 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_acknowledgement(buffer, offset)
  end
  -- Size of Risk Control Alert
  if seq_msg_type == 0x0333 then
    return nyse_equities_binarygateway_pillar_v5_8_size_of.risk_control_alert(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
nyse_equities_binarygateway_pillar_v5_8_display.sequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_message_branches = function(buffer, offset, packet, parent, seq_msg_type)
  -- Dissect Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.session_configuration_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Filler Message
  if seq_msg_type == 0x0282 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_filler_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single And Cancel Replace Request Message
  if seq_msg_type == 0x0240 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.new_order_single_and_cancel_replace_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if seq_msg_type == 0x0280 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.order_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Request Message
  if seq_msg_type == 0x0270 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.order_modify_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Cancel Request Message
  if seq_msg_type == 0x0281 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.bulk_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Subscription Request Message
  if seq_msg_type == 0x0346 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_subscription_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Tg Begin Message
  if seq_msg_type == 0x0343 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.tg_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Tg End Message
  if seq_msg_type == 0x0344 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.tg_end_message(buffer, offset, packet, parent)
  end
  -- Dissect Manual Action Response Message
  if seq_msg_type == 0x0354 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Risk Limit Update Request Message
  if seq_msg_type == 0x0330 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.risk_limit_update_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Risk Action Request Message
  if seq_msg_type == 0x0331 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.risk_action_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Equities Symbol Reference Data Message
  if seq_msg_type == 0x0232 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.equities_symbol_reference_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Dmm Symbol Reference Data Message
  if seq_msg_type == 0x0832 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.dmm_symbol_reference_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Class Reference Data Message
  if seq_msg_type == 0x0230 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.minimum_price_variant_class_reference_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Level Reference Data Message
  if seq_msg_type == 0x0231 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.minimum_price_variant_level_reference_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Mpid Configuration Message
  if seq_msg_type == 0x0272 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.mpid_configuration_message(buffer, offset, packet, parent)
  end
  -- Dissect Mmid Configuration Message
  if seq_msg_type == 0x0273 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.mmid_configuration_message(buffer, offset, packet, parent)
  end
  -- Dissect Session Configuration Acknowledgement Message
  if seq_msg_type == 0x0221 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.session_configuration_acknowledgement_message(buffer, offset, packet, parent)
  end
  -- Dissect Order And Cancel Replace Acknowledgement Message
  if seq_msg_type == 0x0260 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.order_and_cancel_replace_acknowledgement_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Cancel Request Acknowledgment And Urout
  if seq_msg_type == 0x0271 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.order_modify_cancel_request_acknowledgment_and_urout(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Acknowledgment
  if seq_msg_type == 0x0262 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.order_priority_update_acknowledgment(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report
  if seq_msg_type == 0x0290 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.execution_report(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Correct
  if seq_msg_type == 0x0292 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.trade_bust_correct(buffer, offset, packet, parent)
  end
  -- Dissect Application Layer Reject
  if seq_msg_type == 0x0263 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.application_layer_reject(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Subscription Acknowledgement
  if seq_msg_type == 0x0347 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.symbol_subscription_acknowledgement(buffer, offset, packet, parent)
  end
  -- Dissect Gt Begin
  if seq_msg_type == 0x0349 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.gt_begin(buffer, offset, packet, parent)
  end
  -- Dissect Gt End
  if seq_msg_type == 0x0350 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.gt_end(buffer, offset, packet, parent)
  end
  -- Dissect Auction Price Data
  if seq_msg_type == 0x0352 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.auction_price_data(buffer, offset, packet, parent)
  end
  -- Dissect Auction Request
  if seq_msg_type == 0x0348 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.auction_request(buffer, offset, packet, parent)
  end
  -- Dissect Manual Action Request
  if seq_msg_type == 0x0353 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.manual_action_request(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Acknowledgement
  if seq_msg_type == 0x0332 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_acknowledgement(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Alert
  if seq_msg_type == 0x0333 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.risk_control_alert(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_message = function(buffer, offset, packet, parent, seq_msg_type)
  if not show.sequenced_message then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_message_branches(buffer, offset, packet, parent, seq_msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_binarygateway_pillar_v5_8_size_of.sequenced_message(buffer, offset, seq_msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_binarygateway_pillar_v5_8_display.sequenced_message(buffer, packet, parent)
  local element = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.sequenced_message, range, display)

  return nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_message_branches(buffer, offset, packet, parent, seq_msg_type)
end

-- Size: Timestamp
nyse_equities_binarygateway_pillar_v5_8_size_of.timestamp = 8

-- Display: Timestamp
nyse_equities_binarygateway_pillar_v5_8_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_binarygateway_pillar_v5_8_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Seqmsgid
nyse_equities_binarygateway_pillar_v5_8_size_of.seqmsgid = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.stream_id(buffer, offset + index)

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.seq

  return index
end

-- Display: Seqmsgid
nyse_equities_binarygateway_pillar_v5_8_display.seqmsgid = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Seqmsgid
nyse_equities_binarygateway_pillar_v5_8_dissect.seqmsgid_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_equities_binarygateway_pillar_v5_8_dissect.seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Seqmsgid
nyse_equities_binarygateway_pillar_v5_8_dissect.seqmsgid = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.seqmsgid then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.seqmsgid(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.seqmsgid(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.seqmsgid, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.seqmsgid_fields(buffer, offset, packet, parent)
end

-- Size: Msg Length
nyse_equities_binarygateway_pillar_v5_8_size_of.msg_length = 2

-- Display: Msg Length
nyse_equities_binarygateway_pillar_v5_8_display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nyse_equities_binarygateway_pillar_v5_8_dissect.msg_length = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.msg_length(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Size: Msg Type
nyse_equities_binarygateway_pillar_v5_8_size_of.msg_type = 2

-- Display: Msg Type
nyse_equities_binarygateway_pillar_v5_8_display.msg_type = function(value)
  if value == 0x0201 then
    return "Msg Type: Login (0x0201)"
  end
  if value == 0x0202 then
    return "Msg Type: Login Response (0x0202)"
  end
  if value == 0x0203 then
    return "Msg Type: Stream Avail (0x0203)"
  end
  if value == 0x0204 then
    return "Msg Type: Heartbeat (0x0204)"
  end
  if value == 0x0205 then
    return "Msg Type: Open (0x0205)"
  end
  if value == 0x0206 then
    return "Msg Type: Open Response (0x0206)"
  end
  if value == 0x0207 then
    return "Msg Type: Close (0x0207)"
  end
  if value == 0x0208 then
    return "Msg Type: Close Response (0x0208)"
  end
  if value == 0x0905 then
    return "Msg Type: Seq Msg (0x0905)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
nyse_equities_binarygateway_pillar_v5_8_dissect.msg_type = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.msg_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.msg_type(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Msg Header
nyse_equities_binarygateway_pillar_v5_8_size_of.msg_header = function(buffer, offset)
  local index = 0

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.msg_type

  index = index + nyse_equities_binarygateway_pillar_v5_8_size_of.msg_length

  return index
end

-- Display: Msg Header
nyse_equities_binarygateway_pillar_v5_8_display.msg_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Msg Header
nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_type(buffer, index, packet, parent)

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.msg_header then
    local length = nyse_equities_binarygateway_pillar_v5_8_size_of.msg_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.msg_header(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.msg_header, range, display)
  end

  return nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header_fields(buffer, offset, packet, parent)
end

-- Read runtime size of: Seq Msg
nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Seq Msg
nyse_equities_binarygateway_pillar_v5_8_display.seq_msg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Seq Msg
nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_fields = function(buffer, offset, packet, parent, size_of_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  -- Seqmsgid: Struct of 2 fields
  index, seqmsgid = nyse_equities_binarygateway_pillar_v5_8_dissect.seqmsgid(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_8_dissect.reserved_4(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_binarygateway_pillar_v5_8_dissect.timestamp(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Type
  local seq_msg_type = buffer(index, 2):le_uint()

  -- Sequenced Message: Runtime Type with 33 branches
  index = nyse_equities_binarygateway_pillar_v5_8_dissect.sequenced_message(buffer, index, packet, parent, seq_msg_type)

  return index
end

-- Dissect: Seq Msg
nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_seq_msg = nyse_equities_binarygateway_pillar_v5_8_size_of.seq_msg(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.seq_msg then
    local range = buffer(offset, size_of_seq_msg)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.seq_msg(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.seq_msg, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg_fields(buffer, offset, packet, parent, size_of_seq_msg)

  return offset + size_of_seq_msg
end

-- Size: Status
nyse_equities_binarygateway_pillar_v5_8_size_of.status = 1

-- Display: Status
nyse_equities_binarygateway_pillar_v5_8_display.status = function(value)
  if value == 0 then
    return "Status: Request Processed Successfully (0)"
  end
  if value == 18 then
    return "Status: Not Logged In (18)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_equities_binarygateway_pillar_v5_8_dissect.status = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.status, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Close Response
nyse_equities_binarygateway_pillar_v5_8_size_of.close_response = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close Response
nyse_equities_binarygateway_pillar_v5_8_display.close_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Close Response
nyse_equities_binarygateway_pillar_v5_8_dissect.close_response_fields = function(buffer, offset, packet, parent, size_of_close_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_equities_binarygateway_pillar_v5_8_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Response
nyse_equities_binarygateway_pillar_v5_8_dissect.close_response = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close_response = nyse_equities_binarygateway_pillar_v5_8_size_of.close_response(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close_response then
    local range = buffer(offset, size_of_close_response)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.close_response(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.close_response, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.close_response_fields(buffer, offset, packet, parent, size_of_close_response)

  return offset + size_of_close_response
end

-- Read runtime size of: Close
nyse_equities_binarygateway_pillar_v5_8_size_of.close = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close
nyse_equities_binarygateway_pillar_v5_8_display.close = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Close
nyse_equities_binarygateway_pillar_v5_8_dissect.close_fields = function(buffer, offset, packet, parent, size_of_close)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Close
nyse_equities_binarygateway_pillar_v5_8_dissect.close = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close = nyse_equities_binarygateway_pillar_v5_8_size_of.close(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close then
    local range = buffer(offset, size_of_close)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.close(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.close, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.close_fields(buffer, offset, packet, parent, size_of_close)

  return offset + size_of_close
end

-- Size: Access
nyse_equities_binarygateway_pillar_v5_8_size_of.access = 1

-- Display: Access
nyse_equities_binarygateway_pillar_v5_8_display.access = function(value)
  return "Access: "..value
end

-- Dissect: Access
nyse_equities_binarygateway_pillar_v5_8_dissect.access = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.access
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.access(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.access, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Open Response
nyse_equities_binarygateway_pillar_v5_8_size_of.open_response = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open Response
nyse_equities_binarygateway_pillar_v5_8_display.open_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Response
nyse_equities_binarygateway_pillar_v5_8_dissect.open_response_fields = function(buffer, offset, packet, parent, size_of_open_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_equities_binarygateway_pillar_v5_8_dissect.status(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_equities_binarygateway_pillar_v5_8_dissect.access(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Response
nyse_equities_binarygateway_pillar_v5_8_dissect.open_response = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open_response = nyse_equities_binarygateway_pillar_v5_8_size_of.open_response(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open_response then
    local range = buffer(offset, size_of_open_response)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.open_response(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.open_response, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.open_response_fields(buffer, offset, packet, parent, size_of_open_response)

  return offset + size_of_open_response
end

-- Size: Mode
nyse_equities_binarygateway_pillar_v5_8_size_of.mode = 1

-- Display: Mode
nyse_equities_binarygateway_pillar_v5_8_display.mode = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
nyse_equities_binarygateway_pillar_v5_8_dissect.mode = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.mode
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.mode(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.mode, range, value, display)

  return offset + length, value
end

-- Size: End Seq
nyse_equities_binarygateway_pillar_v5_8_size_of.end_seq = 8

-- Display: End Seq
nyse_equities_binarygateway_pillar_v5_8_display.end_seq = function(value)
  return "End Seq: "..value
end

-- Dissect: End Seq
nyse_equities_binarygateway_pillar_v5_8_dissect.end_seq = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.end_seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.end_seq(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.end_seq, range, value, display)

  return offset + length, value
end

-- Size: Start Seq
nyse_equities_binarygateway_pillar_v5_8_size_of.start_seq = 8

-- Display: Start Seq
nyse_equities_binarygateway_pillar_v5_8_display.start_seq = function(value)
  return "Start Seq: "..value
end

-- Dissect: Start Seq
nyse_equities_binarygateway_pillar_v5_8_dissect.start_seq = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.start_seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.start_seq(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.start_seq, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Open
nyse_equities_binarygateway_pillar_v5_8_size_of.open = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open
nyse_equities_binarygateway_pillar_v5_8_display.open = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open
nyse_equities_binarygateway_pillar_v5_8_dissect.open_fields = function(buffer, offset, packet, parent, size_of_open)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id(buffer, index, packet, parent)

  -- Start Seq: 8 Byte Unsigned Fixed Width Integer
  index, start_seq = nyse_equities_binarygateway_pillar_v5_8_dissect.start_seq(buffer, index, packet, parent)

  -- End Seq: 8 Byte Unsigned Fixed Width Integer
  index, end_seq = nyse_equities_binarygateway_pillar_v5_8_dissect.end_seq(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_equities_binarygateway_pillar_v5_8_dissect.access(buffer, index, packet, parent)

  -- Mode: 1 Byte Unsigned Fixed Width Integer
  index, mode = nyse_equities_binarygateway_pillar_v5_8_dissect.mode(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
nyse_equities_binarygateway_pillar_v5_8_dissect.open = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open = nyse_equities_binarygateway_pillar_v5_8_size_of.open(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open then
    local range = buffer(offset, size_of_open)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.open(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.open, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.open_fields(buffer, offset, packet, parent, size_of_open)

  return offset + size_of_open
end

-- Read runtime size of: Heartbeat
nyse_equities_binarygateway_pillar_v5_8_size_of.heartbeat = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat
nyse_equities_binarygateway_pillar_v5_8_display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat
nyse_equities_binarygateway_pillar_v5_8_dissect.heartbeat_fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nyse_equities_binarygateway_pillar_v5_8_dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat = nyse_equities_binarygateway_pillar_v5_8_size_of.heartbeat(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.heartbeat(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.heartbeat, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.heartbeat_fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Size: Next Seq
nyse_equities_binarygateway_pillar_v5_8_size_of.next_seq = 8

-- Display: Next Seq
nyse_equities_binarygateway_pillar_v5_8_display.next_seq = function(value)
  return "Next Seq: "..value
end

-- Dissect: Next Seq
nyse_equities_binarygateway_pillar_v5_8_dissect.next_seq = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.next_seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_8_display.next_seq(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.next_seq, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Stream Avail
nyse_equities_binarygateway_pillar_v5_8_size_of.stream_avail = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Stream Avail
nyse_equities_binarygateway_pillar_v5_8_display.stream_avail = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Avail
nyse_equities_binarygateway_pillar_v5_8_dissect.stream_avail_fields = function(buffer, offset, packet, parent, size_of_stream_avail)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_8_dissect.stream_id(buffer, index, packet, parent)

  -- Next Seq: 8 Byte Unsigned Fixed Width Integer
  index, next_seq = nyse_equities_binarygateway_pillar_v5_8_dissect.next_seq(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_equities_binarygateway_pillar_v5_8_dissect.access(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Avail
nyse_equities_binarygateway_pillar_v5_8_dissect.stream_avail = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_stream_avail = nyse_equities_binarygateway_pillar_v5_8_size_of.stream_avail(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.stream_avail then
    local range = buffer(offset, size_of_stream_avail)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.stream_avail(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.stream_avail, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.stream_avail_fields(buffer, offset, packet, parent, size_of_stream_avail)

  return offset + size_of_stream_avail
end

-- Read runtime size of: Login Response
nyse_equities_binarygateway_pillar_v5_8_size_of.login_response = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Response
nyse_equities_binarygateway_pillar_v5_8_display.login_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Response
nyse_equities_binarygateway_pillar_v5_8_dissect.login_response_fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_equities_binarygateway_pillar_v5_8_dissect.username(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_equities_binarygateway_pillar_v5_8_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
nyse_equities_binarygateway_pillar_v5_8_dissect.login_response = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_response = nyse_equities_binarygateway_pillar_v5_8_size_of.login_response(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_response then
    local range = buffer(offset, size_of_login_response)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.login_response(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.login_response, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.login_response_fields(buffer, offset, packet, parent, size_of_login_response)

  return offset + size_of_login_response
end

-- Size: Version
nyse_equities_binarygateway_pillar_v5_8_size_of.version = 20

-- Display: Version
nyse_equities_binarygateway_pillar_v5_8_display.version = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version: No Value"
  end

  return "Version: "..value
end

-- Dissect: Version
nyse_equities_binarygateway_pillar_v5_8_dissect.version = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.version
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.version(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Password
nyse_equities_binarygateway_pillar_v5_8_size_of.password = 32

-- Display: Password
nyse_equities_binarygateway_pillar_v5_8_display.password = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nyse_equities_binarygateway_pillar_v5_8_dissect.password = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_8_size_of.password
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

  local display = nyse_equities_binarygateway_pillar_v5_8_display.password(value, buffer, offset, packet, parent)

  parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.password, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Login Message
nyse_equities_binarygateway_pillar_v5_8_size_of.login_message = function(buffer, offset)

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Message
nyse_equities_binarygateway_pillar_v5_8_display.login_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Message
nyse_equities_binarygateway_pillar_v5_8_dissect.login_message_fields = function(buffer, offset, packet, parent, size_of_login_message)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_8_dissect.msg_header(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_equities_binarygateway_pillar_v5_8_dissect.username(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = nyse_equities_binarygateway_pillar_v5_8_dissect.password(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = nyse_equities_binarygateway_pillar_v5_8_dissect.mic(buffer, index, packet, parent)

  -- Version: 20 Byte Ascii String
  index, version = nyse_equities_binarygateway_pillar_v5_8_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_equities_binarygateway_pillar_v5_8_dissect.login_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_message = nyse_equities_binarygateway_pillar_v5_8_size_of.login_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_message then
    local range = buffer(offset, size_of_login_message)
    local display = nyse_equities_binarygateway_pillar_v5_8_display.login_message(buffer, packet, parent)
    parent = parent:add(nyse_equities_binarygateway_pillar_v5_8.fields.login_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_8_dissect.login_message_fields(buffer, offset, packet, parent, size_of_login_message)

  return offset + size_of_login_message
end

-- Dissect pillarstreammessage
nyse_equities_binarygateway_pillar_v5_8_dissect.pillarstreammessage = function(buffer, packet, parent)
  local offset = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(0, 2):le_uint()

  -- Dissect Login Message
  if msg_type == 0x0201 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.login_message(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if msg_type == 0x0202 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.login_response(buffer, offset, packet, parent)
  end
  -- Dissect Stream Avail
  if msg_type == 0x0203 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.stream_avail(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Open
  if msg_type == 0x0205 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.open(buffer, offset, packet, parent)
  end
  -- Dissect Open Response
  if msg_type == 0x0206 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.open_response(buffer, offset, packet, parent)
  end
  -- Dissect Close
  if msg_type == 0x0207 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.close(buffer, offset, packet, parent)
  end
  -- Dissect Close Response
  if msg_type == 0x0208 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.close_response(buffer, offset, packet, parent)
  end
  -- Dissect Seq Msg
  if msg_type == 0x0905 then
    return nyse_equities_binarygateway_pillar_v5_8_dissect.seq_msg(buffer, offset, packet, parent)
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_equities_binarygateway_pillar_v5_8.init()
end

-- Dissector for Nyse Equities BinaryGateway Pillar 5.8
function nyse_equities_binarygateway_pillar_v5_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_equities_binarygateway_pillar_v5_8.name

  -- Dissect protocol
  local protocol = parent:add(nyse_equities_binarygateway_pillar_v5_8, buffer(), nyse_equities_binarygateway_pillar_v5_8.description, "("..buffer:len().." Bytes)")
  return nyse_equities_binarygateway_pillar_v5_8_dissect.pillarstreammessage(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, nyse_equities_binarygateway_pillar_v5_8)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_equities_binarygateway_pillar_v5_8_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities BinaryGateway Pillar 5.8
local function nyse_equities_binarygateway_pillar_v5_8_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_equities_binarygateway_pillar_v5_8_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_equities_binarygateway_pillar_v5_8
  nyse_equities_binarygateway_pillar_v5_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities BinaryGateway Pillar 5.8
nyse_equities_binarygateway_pillar_v5_8:register_heuristic("tcp", nyse_equities_binarygateway_pillar_v5_8_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 5.8
--   Date: Wednesday, August 23, 2023
--   Specification: NYSE_Pillar_Gateway_Binary_Protocol_Specification.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
