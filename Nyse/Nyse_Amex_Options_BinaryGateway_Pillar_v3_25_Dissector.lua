-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Amex Options BinaryGateway Pillar 3.25 Protocol
local omi_nyse_amex_options_binarygateway_pillar_v3_25 = Proto("Nyse.Amex.Options.BinaryGateway.Pillar.v3.25.Lua", "Nyse Amex Options BinaryGateway Pillar 3.25")

-- Protocol table
local nyse_amex_options_binarygateway_pillar_v3_25 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Amex Options BinaryGateway Pillar 3.25 Fields
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.access = ProtoField.new("Access", "nyse.amex.options.binarygateway.pillar.v3.25.access", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ack_status = ProtoField.new("Ack Status", "nyse.amex.options.binarygateway.pillar.v3.25.ackstatus", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ack_type = ProtoField.new("Ack Type", "nyse.amex.options.binarygateway.pillar.v3.25.acktype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.allocation_pct = ProtoField.new("Allocation Pct", "nyse.amex.options.binarygateway.pillar.v3.25.allocationpct", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.appointment_status = ProtoField.new("Appointment Status", "nyse.amex.options.binarygateway.pillar.v3.25.appointmentstatus", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.auction_id = ProtoField.new("Auction Id", "nyse.amex.options.binarygateway.pillar.v3.25.auctionid", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bitfield_flow_indicator = ProtoField.new("Bitfield Flow Indicator", "nyse.amex.options.binarygateway.pillar.v3.25.bitfieldflowindicator", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bitfield_order_instructions = ProtoField.new("Bitfield Order Instructions", "nyse.amex.options.binarygateway.pillar.v3.25.bitfieldorderinstructions", ftypes.BYTES)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bitfield_quote_inst = ProtoField.new("Bitfield Quote Inst", "nyse.amex.options.binarygateway.pillar.v3.25.bitfieldquoteinst", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.blocked_by_breach_indicator = ProtoField.new("Blocked By Breach Indicator", "nyse.amex.options.binarygateway.pillar.v3.25.blockedbybreachindicator", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.blocked_by_kill_switch_indicator = ProtoField.new("Blocked By Kill Switch Indicator", "nyse.amex.options.binarygateway.pillar.v3.25.blockedbykillswitchindicator", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bold_designation = ProtoField.new("Bold Designation", "nyse.amex.options.binarygateway.pillar.v3.25.bolddesignation", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.breach_action_request = ProtoField.new("Breach Action Request", "nyse.amex.options.binarygateway.pillar.v3.25.breachactionrequest", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.breach_action_response = ProtoField.new("Breach Action Response", "nyse.amex.options.binarygateway.pillar.v3.25.breachactionresponse", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_action = ProtoField.new("Bulk Action", "nyse.amex.options.binarygateway.pillar.v3.25.bulkaction", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_quote_group = ProtoField.new("Bulk Quote Group", "nyse.amex.options.binarygateway.pillar.v3.25.bulkquotegroup", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bust_correct_indicator = ProtoField.new("Bust Correct Indicator", "nyse.amex.options.binarygateway.pillar.v3.25.bustcorrectindicator", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cancel_on_disconnect = ProtoField.new("Cancel On Disconnect", "nyse.amex.options.binarygateway.pillar.v3.25.cancelondisconnect", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cancel_scope = ProtoField.new("Cancel Scope", "nyse.amex.options.binarygateway.pillar.v3.25.cancelscope", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.channel_id = ProtoField.new("Channel Id", "nyse.amex.options.binarygateway.pillar.v3.25.channelid", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "nyse.amex.options.binarygateway.pillar.v3.25.clordid", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_account = ProtoField.new("Clearing Account", "nyse.amex.options.binarygateway.pillar.v3.25.clearingaccount", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_account_covered = ProtoField.new("Clearing Account Covered", "nyse.amex.options.binarygateway.pillar.v3.25.clearingaccountcovered", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_account_exposed = ProtoField.new("Clearing Account Exposed", "nyse.amex.options.binarygateway.pillar.v3.25.clearingaccountexposed", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_firm = ProtoField.new("Clearing Firm", "nyse.amex.options.binarygateway.pillar.v3.25.clearingfirm", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_firm_covered = ProtoField.new("Clearing Firm Covered", "nyse.amex.options.binarygateway.pillar.v3.25.clearingfirmcovered", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_firm_exposed = ProtoField.new("Clearing Firm Exposed", "nyse.amex.options.binarygateway.pillar.v3.25.clearingfirmexposed", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_number = ProtoField.new("Clearing Number", "nyse.amex.options.binarygateway.pillar.v3.25.clearingnumber", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.closing_only_indicator = ProtoField.new("Closing Only Indicator", "nyse.amex.options.binarygateway.pillar.v3.25.closingonlyindicator", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.complex_series_leg_group = ProtoField.new("Complex Series Leg Group", "nyse.amex.options.binarygateway.pillar.v3.25.complexseriesleggroup", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_clearing_account = ProtoField.new("Contra Clearing Account", "nyse.amex.options.binarygateway.pillar.v3.25.contraclearingaccount", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_clearing_firm = ProtoField.new("Contra Clearing Firm", "nyse.amex.options.binarygateway.pillar.v3.25.contraclearingfirm", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_covered_or_uncovered = ProtoField.new("Contra Covered Or Uncovered", "nyse.amex.options.binarygateway.pillar.v3.25.contracoveredoruncovered", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_cross_type = ProtoField.new("Contra Cross Type", "nyse.amex.options.binarygateway.pillar.v3.25.contracrosstype", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_customer_or_firm = ProtoField.new("Contra Customer Or Firm", "nyse.amex.options.binarygateway.pillar.v3.25.contracustomerorfirm", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_market_maker = ProtoField.new("Contra Market Maker", "nyse.amex.options.binarygateway.pillar.v3.25.contramarketmaker", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_mpid = ProtoField.new("Contra Mpid", "nyse.amex.options.binarygateway.pillar.v3.25.contrampid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_open_close = ProtoField.new("Contra Open Close", "nyse.amex.options.binarygateway.pillar.v3.25.contraopenclose", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.amex.options.binarygateway.pillar.v3.25.contractmultiplier", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.count_calculation = ProtoField.new("Count Calculation", "nyse.amex.options.binarygateway.pillar.v3.25.countcalculation", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.count_limit = ProtoField.new("Count Limit", "nyse.amex.options.binarygateway.pillar.v3.25.countlimit", ftypes.INT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.covered = ProtoField.new("Covered", "nyse.amex.options.binarygateway.pillar.v3.25.covered", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.covered_or_uncovered = ProtoField.new("Covered Or Uncovered", "nyse.amex.options.binarygateway.pillar.v3.25.coveredoruncovered", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cross_id = ProtoField.new("Cross Id", "nyse.amex.options.binarygateway.pillar.v3.25.crossid", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cum_qty = ProtoField.new("Cum Qty", "nyse.amex.options.binarygateway.pillar.v3.25.cumqty", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.deal_id = ProtoField.new("Deal Id", "nyse.amex.options.binarygateway.pillar.v3.25.dealid", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.deliver_to_comp_id = ProtoField.new("Deliver To Comp Id", "nyse.amex.options.binarygateway.pillar.v3.25.delivertocompid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.end_seq = ProtoField.new("End Seq", "nyse.amex.options.binarygateway.pillar.v3.25.endseq", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.exposed = ProtoField.new("Exposed", "nyse.amex.options.binarygateway.pillar.v3.25.exposed", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.group_id = ProtoField.new("Group Id", "nyse.amex.options.binarygateway.pillar.v3.25.groupid", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ioc_attribution = ProtoField.new("Ioc Attribution", "nyse.amex.options.binarygateway.pillar.v3.25.iocattribution", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.last_px = ProtoField.new("Last Px", "nyse.amex.options.binarygateway.pillar.v3.25.lastpx", ftypes.DOUBLE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.last_qty = ProtoField.new("Last Qty", "nyse.amex.options.binarygateway.pillar.v3.25.lastqty", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leaves_qty = ProtoField.new("Leaves Qty", "nyse.amex.options.binarygateway.pillar.v3.25.leavesqty", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_group = ProtoField.new("Leg Group", "nyse.amex.options.binarygateway.pillar.v3.25.leggroup", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_open_close = ProtoField.new("Leg Open Close", "nyse.amex.options.binarygateway.pillar.v3.25.legopenclose", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.amex.options.binarygateway.pillar.v3.25.legratioqty", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_side = ProtoField.new("Leg Side", "nyse.amex.options.binarygateway.pillar.v3.25.legside", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_symbol_id = ProtoField.new("Leg Symbol Id", "nyse.amex.options.binarygateway.pillar.v3.25.legsymbolid", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.legal_width_multiplier = ProtoField.new("Legal Width Multiplier", "nyse.amex.options.binarygateway.pillar.v3.25.legalwidthmultiplier", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "nyse.amex.options.binarygateway.pillar.v3.25.liquidityindicator", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.listed_mic = ProtoField.new("Listed Mic", "nyse.amex.options.binarygateway.pillar.v3.25.listedmic", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.locate_reqd_u_81 = ProtoField.new("Locate Reqd U 81", "nyse.amex.options.binarygateway.pillar.v3.25.locatereqdu81", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.market_maker = ProtoField.new("Market Maker", "nyse.amex.options.binarygateway.pillar.v3.25.marketmaker", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.amex.options.binarygateway.pillar.v3.25.maturitydate", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.max_floor = ProtoField.new("Max Floor", "nyse.amex.options.binarygateway.pillar.v3.25.maxfloor", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.max_order_price = ProtoField.new("Max Order Price", "nyse.amex.options.binarygateway.pillar.v3.25.maxorderprice", ftypes.DOUBLE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.max_order_quantity = ProtoField.new("Max Order Quantity", "nyse.amex.options.binarygateway.pillar.v3.25.maxorderquantity", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mic = ProtoField.new("Mic", "nyse.amex.options.binarygateway.pillar.v3.25.mic", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.min_qty = ProtoField.new("Min Qty", "nyse.amex.options.binarygateway.pillar.v3.25.minqty", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mm_quote_type = ProtoField.new("Mm Quote Type", "nyse.amex.options.binarygateway.pillar.v3.25.mmquotetype", ftypes.UINT8, nil, base.DEC, 0x1C)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mm_sent_time = ProtoField.new("Mm Sent Time", "nyse.amex.options.binarygateway.pillar.v3.25.mmsenttime", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mm_type = ProtoField.new("Mm Type", "nyse.amex.options.binarygateway.pillar.v3.25.mmtype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mode = ProtoField.new("Mode", "nyse.amex.options.binarygateway.pillar.v3.25.mode", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mp_sub_id = ProtoField.new("Mp Sub Id", "nyse.amex.options.binarygateway.pillar.v3.25.mpsubid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpid = ProtoField.new("Mpid", "nyse.amex.options.binarygateway.pillar.v3.25.mpid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpid_status = ProtoField.new("Mpid Status", "nyse.amex.options.binarygateway.pillar.v3.25.mpidstatus", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpv_class_id = ProtoField.new("Mpv Class Id", "nyse.amex.options.binarygateway.pillar.v3.25.mpvclassid", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpv_class_name = ProtoField.new("Mpv Class Name", "nyse.amex.options.binarygateway.pillar.v3.25.mpvclassname", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpv_level_definition = ProtoField.new("Mpv Level Definition", "nyse.amex.options.binarygateway.pillar.v3.25.mpvleveldefinition", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpv_level_name = ProtoField.new("Mpv Level Name", "nyse.amex.options.binarygateway.pillar.v3.25.mpvlevelname", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.msg_header = ProtoField.new("Msg Header", "nyse.amex.options.binarygateway.pillar.v3.25.msgheader", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.msg_length = ProtoField.new("Msg Length", "nyse.amex.options.binarygateway.pillar.v3.25.msglength", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.msg_type = ProtoField.new("Msg Type", "nyse.amex.options.binarygateway.pillar.v3.25.msgtype", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "nyse.amex.options.binarygateway.pillar.v3.25.multilegreportingtype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.next_seq = ProtoField.new("Next Seq", "nyse.amex.options.binarygateway.pillar.v3.25.nextseq", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.nyse_symbol = ProtoField.new("Nyse Symbol", "nyse.amex.options.binarygateway.pillar.v3.25.nysesymbol", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.occ_symbol_root = ProtoField.new("Occ Symbol Root", "nyse.amex.options.binarygateway.pillar.v3.25.occsymbolroot", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.open_close_u_81 = ProtoField.new("Open Close U 81", "nyse.amex.options.binarygateway.pillar.v3.25.opencloseu81", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.optional_data = ProtoField.new("Optional Data", "nyse.amex.options.binarygateway.pillar.v3.25.optionaldata", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.optional_data_covered = ProtoField.new("Optional Data Covered", "nyse.amex.options.binarygateway.pillar.v3.25.optionaldatacovered", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.optional_data_exposed = ProtoField.new("Optional Data Exposed", "nyse.amex.options.binarygateway.pillar.v3.25.optionaldataexposed", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.optional_order_add_on = ProtoField.new("Optional Order Add On", "nyse.amex.options.binarygateway.pillar.v3.25.optionalorderaddon", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_id = ProtoField.new("Order Id", "nyse.amex.options.binarygateway.pillar.v3.25.orderid", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_priority_update_ack_subscription = ProtoField.new("Order Priority Update Ack Subscription", "nyse.amex.options.binarygateway.pillar.v3.25.orderpriorityupdateacksubscription", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_qty = ProtoField.new("Order Qty", "nyse.amex.options.binarygateway.pillar.v3.25.orderqty", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "nyse.amex.options.binarygateway.pillar.v3.25.origclordid", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.participant_type = ProtoField.new("Participant Type", "nyse.amex.options.binarygateway.pillar.v3.25.participanttype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.password = ProtoField.new("Password", "nyse.amex.options.binarygateway.pillar.v3.25.password", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.percentage_limit = ProtoField.new("Percentage Limit", "nyse.amex.options.binarygateway.pillar.v3.25.percentagelimit", ftypes.INT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.pillar_stream_message = ProtoField.new("Pillar Stream Message", "nyse.amex.options.binarygateway.pillar.v3.25.pillarstreammessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.pre_liquidity_indicator = ProtoField.new("Pre Liquidity Indicator", "nyse.amex.options.binarygateway.pillar.v3.25.preliquidityindicator", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.price_price_8 = ProtoField.new("Price Price 8", "nyse.amex.options.binarygateway.pillar.v3.25.priceprice8", ftypes.DOUBLE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.price_scale = ProtoField.new("Price Scale", "nyse.amex.options.binarygateway.pillar.v3.25.pricescale", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.price_u_price_8 = ProtoField.new("Price U Price 8", "nyse.amex.options.binarygateway.pillar.v3.25.priceuprice8", ftypes.DOUBLE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.amex.options.binarygateway.pillar.v3.25.putorcall", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.quantity = ProtoField.new("Quantity", "nyse.amex.options.binarygateway.pillar.v3.25.quantity", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.quote_ack_group_294 = ProtoField.new("Quote Ack Group 294", "nyse.amex.options.binarygateway.pillar.v3.25.quoteackgroup294", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.quote_ack_group_308 = ProtoField.new("Quote Ack Group 308", "nyse.amex.options.binarygateway.pillar.v3.25.quoteackgroup308", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.quoting_mpv = ProtoField.new("Quoting Mpv", "nyse.amex.options.binarygateway.pillar.v3.25.quotingmpv", ftypes.DOUBLE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reason_code = ProtoField.new("Reason Code", "nyse.amex.options.binarygateway.pillar.v3.25.reasoncode", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ref_cl_ord_id = ProtoField.new("Ref Cl Ord Id", "nyse.amex.options.binarygateway.pillar.v3.25.refclordid", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ref_seq_msg_id = ProtoField.new("Ref Seq Msg Id", "nyse.amex.options.binarygateway.pillar.v3.25.refseqmsgid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reinstatement_required_by_other = ProtoField.new("Reinstatement Required By Other", "nyse.amex.options.binarygateway.pillar.v3.25.reinstatementrequiredbyother", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reinstatement_required_by_self = ProtoField.new("Reinstatement Required By Self", "nyse.amex.options.binarygateway.pillar.v3.25.reinstatementrequiredbyself", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reject_type = ProtoField.new("Reject Type", "nyse.amex.options.binarygateway.pillar.v3.25.rejecttype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.repeating_groups = ProtoField.new("Repeating Groups", "nyse.amex.options.binarygateway.pillar.v3.25.repeatinggroups", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_1_u_324 = ProtoField.new("Reserved 1 U 324", "nyse.amex.options.binarygateway.pillar.v3.25.reserved1u324", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_1_u_81 = ProtoField.new("Reserved 1 U 81", "nyse.amex.options.binarygateway.pillar.v3.25.reserved1u81", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.amex.options.binarygateway.pillar.v3.25.reserved2", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_3 = ProtoField.new("Reserved 3", "nyse.amex.options.binarygateway.pillar.v3.25.reserved3", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.amex.options.binarygateway.pillar.v3.25.reserved4", ftypes.BYTES)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_7 = ProtoField.new("Reserved 7", "nyse.amex.options.binarygateway.pillar.v3.25.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_char_1616 = ProtoField.new("Reserved Char 1616", "nyse.amex.options.binarygateway.pillar.v3.25.reservedchar1616", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_char_2020 = ProtoField.new("Reserved Char 2020", "nyse.amex.options.binarygateway.pillar.v3.25.reservedchar2020", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_char_44 = ProtoField.new("Reserved Char 44", "nyse.amex.options.binarygateway.pillar.v3.25.reservedchar44", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_char_5050 = ProtoField.new("Reserved Char 5050", "nyse.amex.options.binarygateway.pillar.v3.25.reservedchar5050", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_zchar_190190 = ProtoField.new("Reserved Zchar 190190", "nyse.amex.options.binarygateway.pillar.v3.25.reservedzchar190190", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_zchar_199199 = ProtoField.new("Reserved Zchar 199199", "nyse.amex.options.binarygateway.pillar.v3.25.reservedzchar199199", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_zchar_200200 = ProtoField.new("Reserved Zchar 200200", "nyse.amex.options.binarygateway.pillar.v3.25.reservedzchar200200", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_zchar_4949 = ProtoField.new("Reserved Zchar 4949", "nyse.amex.options.binarygateway.pillar.v3.25.reservedzchar4949", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_ack_type = ProtoField.new("Risk Ack Type", "nyse.amex.options.binarygateway.pillar.v3.25.riskacktype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_action_type = ProtoField.new("Risk Action Type", "nyse.amex.options.binarygateway.pillar.v3.25.riskactiontype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_control_activation = ProtoField.new("Risk Control Activation", "nyse.amex.options.binarygateway.pillar.v3.25.riskcontrolactivation", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_control_type = ProtoField.new("Risk Control Type", "nyse.amex.options.binarygateway.pillar.v3.25.riskcontroltype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_minimum_value = ProtoField.new("Risk Minimum Value", "nyse.amex.options.binarygateway.pillar.v3.25.riskminimumvalue", ftypes.INT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_range_id = ProtoField.new("Risk Range Id", "nyse.amex.options.binarygateway.pillar.v3.25.riskrangeid", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_user_crd = ProtoField.new("Risk User Crd", "nyse.amex.options.binarygateway.pillar.v3.25.riskusercrd", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_user_type = ProtoField.new("Risk User Type", "nyse.amex.options.binarygateway.pillar.v3.25.riskusertype", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "nyse.amex.options.binarygateway.pillar.v3.25.selftradeprevention", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.self_trade_type_u_81 = ProtoField.new("Self Trade Type U 81", "nyse.amex.options.binarygateway.pillar.v3.25.selftradetypeu81", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq = ProtoField.new("Seq", "nyse.amex.options.binarygateway.pillar.v3.25.seq", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg_header = ProtoField.new("Seq Msg Header", "nyse.amex.options.binarygateway.pillar.v3.25.seqmsgheader", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg_id = ProtoField.new("Seq Msg Id", "nyse.amex.options.binarygateway.pillar.v3.25.seqmsgid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg_length = ProtoField.new("Seq Msg Length", "nyse.amex.options.binarygateway.pillar.v3.25.seqmsglength", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg_type = ProtoField.new("Seq Msg Type", "nyse.amex.options.binarygateway.pillar.v3.25.seqmsgtype", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sequenced_message = ProtoField.new("Sequenced Message", "nyse.amex.options.binarygateway.pillar.v3.25.sequencedmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.series_index = ProtoField.new("Series Index", "nyse.amex.options.binarygateway.pillar.v3.25.seriesindex", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.series_type = ProtoField.new("Series Type", "nyse.amex.options.binarygateway.pillar.v3.25.seriestype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sess = ProtoField.new("Sess", "nyse.amex.options.binarygateway.pillar.v3.25.sess", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.side_2 = ProtoField.new("Side 2", "nyse.amex.options.binarygateway.pillar.v3.25.side2", ftypes.UINT8, nil, base.DEC, 0x03)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.side_u_81 = ProtoField.new("Side U 81", "nyse.amex.options.binarygateway.pillar.v3.25.sideu81", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.start_seq = ProtoField.new("Start Seq", "nyse.amex.options.binarygateway.pillar.v3.25.startseq", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.status = ProtoField.new("Status", "nyse.amex.options.binarygateway.pillar.v3.25.status", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.stop_px = ProtoField.new("Stop Px", "nyse.amex.options.binarygateway.pillar.v3.25.stoppx", ftypes.DOUBLE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.stream_id = ProtoField.new("Stream Id", "nyse.amex.options.binarygateway.pillar.v3.25.streamid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.strike_price = ProtoField.new("Strike Price", "nyse.amex.options.binarygateway.pillar.v3.25.strikeprice", ftypes.DOUBLE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sub_id = ProtoField.new("Sub Id", "nyse.amex.options.binarygateway.pillar.v3.25.subid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sub_msg_header = ProtoField.new("Sub Msg Header", "nyse.amex.options.binarygateway.pillar.v3.25.submsgheader", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sub_msg_length = ProtoField.new("Sub Msg Length", "nyse.amex.options.binarygateway.pillar.v3.25.submsglength", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sub_msg_type = ProtoField.new("Sub Msg Type", "nyse.amex.options.binarygateway.pillar.v3.25.submsgtype", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.symbol_eligibility = ProtoField.new("Symbol Eligibility", "nyse.amex.options.binarygateway.pillar.v3.25.symboleligibility", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.symbol_id = ProtoField.new("Symbol Id", "nyse.amex.options.binarygateway.pillar.v3.25.symbolid", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.target_cancel_mpid = ProtoField.new("Target Cancel Mpid", "nyse.amex.options.binarygateway.pillar.v3.25.targetcancelmpid", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.target_cancel_username = ProtoField.new("Target Cancel Username", "nyse.amex.options.binarygateway.pillar.v3.25.targetcancelusername", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.test_symbol_indicator = ProtoField.new("Test Symbol Indicator", "nyse.amex.options.binarygateway.pillar.v3.25.testsymbolindicator", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.threshold_breach_level = ProtoField.new("Threshold Breach Level", "nyse.amex.options.binarygateway.pillar.v3.25.thresholdbreachlevel", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.throttle_preference = ProtoField.new("Throttle Preference", "nyse.amex.options.binarygateway.pillar.v3.25.throttlepreference", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.throttle_threshold = ProtoField.new("Throttle Threshold", "nyse.amex.options.binarygateway.pillar.v3.25.throttlethreshold", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.throttle_window = ProtoField.new("Throttle Window", "nyse.amex.options.binarygateway.pillar.v3.25.throttlewindow", ftypes.UINT16)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.throttled = ProtoField.new("Throttled", "nyse.amex.options.binarygateway.pillar.v3.25.throttled", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.time_limit = ProtoField.new("Time Limit", "nyse.amex.options.binarygateway.pillar.v3.25.timelimit", ftypes.INT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.timestamp = ProtoField.new("Timestamp", "nyse.amex.options.binarygateway.pillar.v3.25.timestamp", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.trading_mpv = ProtoField.new("Trading Mpv", "nyse.amex.options.binarygateway.pillar.v3.25.tradingmpv", ftypes.DOUBLE)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.transact_time_timestamp_8 = ProtoField.new("Transact Time Timestamp 8", "nyse.amex.options.binarygateway.pillar.v3.25.transacttimetimestamp8", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.transact_time_u_648 = ProtoField.new("Transact Time U 648", "nyse.amex.options.binarygateway.pillar.v3.25.transacttimeu648", ftypes.UINT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.underlying_type = ProtoField.new("Underlying Type", "nyse.amex.options.binarygateway.pillar.v3.25.underlyingtype", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_calculation_1 = ProtoField.new("Usd Calculation 1", "nyse.amex.options.binarygateway.pillar.v3.25.usdcalculation1", ftypes.INT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_calculation_2 = ProtoField.new("Usd Calculation 2", "nyse.amex.options.binarygateway.pillar.v3.25.usdcalculation2", ftypes.INT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_calculation_3 = ProtoField.new("Usd Calculation 3", "nyse.amex.options.binarygateway.pillar.v3.25.usdcalculation3", ftypes.INT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_calculation_4 = ProtoField.new("Usd Calculation 4", "nyse.amex.options.binarygateway.pillar.v3.25.usdcalculation4", ftypes.INT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_limit = ProtoField.new("Usd Limit", "nyse.amex.options.binarygateway.pillar.v3.25.usdlimit", ftypes.INT64)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.user = ProtoField.new("User", "nyse.amex.options.binarygateway.pillar.v3.25.user", ftypes.UINT32)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.user_data = ProtoField.new("User Data", "nyse.amex.options.binarygateway.pillar.v3.25.userdata", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.user_session_status = ProtoField.new("User Session Status", "nyse.amex.options.binarygateway.pillar.v3.25.usersessionstatus", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.user_session_type = ProtoField.new("User Session Type", "nyse.amex.options.binarygateway.pillar.v3.25.usersessiontype", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.username = ProtoField.new("Username", "nyse.amex.options.binarygateway.pillar.v3.25.username", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.version = ProtoField.new("Version", "nyse.amex.options.binarygateway.pillar.v3.25.version", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.working_away_from_display = ProtoField.new("Working Away From Display", "nyse.amex.options.binarygateway.pillar.v3.25.workingawayfromdisplay", ftypes.UINT8)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.working_price = ProtoField.new("Working Price", "nyse.amex.options.binarygateway.pillar.v3.25.workingprice", ftypes.DOUBLE)

-- Nyse Amex Options Pillar BinaryGateway 3.25 Application Messages
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.application_layer_reject_message = ProtoField.new("Application Layer Reject Message", "nyse.amex.options.binarygateway.pillar.v3.25.applicationlayerrejectmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_cancel_request_type_223_message = ProtoField.new("Bulk Cancel Request Type 223 Message", "nyse.amex.options.binarygateway.pillar.v3.25.bulkcancelrequesttype223message", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_cancel_request_type_224_message = ProtoField.new("Bulk Cancel Request Type 224 Message", "nyse.amex.options.binarygateway.pillar.v3.25.bulkcancelrequesttype224message", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_quote_acknowledgment_message = ProtoField.new("Bulk Quote Acknowledgment Message", "nyse.amex.options.binarygateway.pillar.v3.25.bulkquoteacknowledgmentmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_quote_acknowledgment_type_294_message = ProtoField.new("Bulk Quote Acknowledgment Type 294 Message", "nyse.amex.options.binarygateway.pillar.v3.25.bulkquoteacknowledgmenttype294message", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.complex_series_request_acknowledgement_message = ProtoField.new("Complex Series Request Acknowledgement Message", "nyse.amex.options.binarygateway.pillar.v3.25.complexseriesrequestacknowledgementmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.execution_report_message = ProtoField.new("Execution Report Message", "nyse.amex.options.binarygateway.pillar.v3.25.executionreportmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.minimum_price_variant_class_reference_data_message = ProtoField.new("Minimum Price Variant Class Reference Data Message", "nyse.amex.options.binarygateway.pillar.v3.25.minimumpricevariantclassreferencedatamessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.minimum_price_variant_level_reference_data_message = ProtoField.new("Minimum Price Variant Level Reference Data Message", "nyse.amex.options.binarygateway.pillar.v3.25.minimumpricevariantlevelreferencedatamessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpid_configuration_message = ProtoField.new("Mpid Configuration Message", "nyse.amex.options.binarygateway.pillar.v3.25.mpidconfigurationmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_bulk_quote_type_243_message = ProtoField.new("New Bulk Quote Type 243 Message", "nyse.amex.options.binarygateway.pillar.v3.25.newbulkquotetype243message", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_bulk_quote_type_259_message = ProtoField.new("New Bulk Quote Type 259 Message", "nyse.amex.options.binarygateway.pillar.v3.25.newbulkquotetype259message", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_complex_series_request_message = ProtoField.new("New Complex Series Request Message", "nyse.amex.options.binarygateway.pillar.v3.25.newcomplexseriesrequestmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_order_cross_message = ProtoField.new("New Order Cross Message", "nyse.amex.options.binarygateway.pillar.v3.25.newordercrossmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_order_message = ProtoField.new("New Order Message", "nyse.amex.options.binarygateway.pillar.v3.25.newordermessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.options_market_maker_symbol_appointment_reference_data_message = ProtoField.new("Options Market Maker Symbol Appointment Reference Data Message", "nyse.amex.options.binarygateway.pillar.v3.25.optionsmarketmakersymbolappointmentreferencedatamessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_and_cancel_replace_acknowledgement_message = ProtoField.new("Order And Cancel Replace Acknowledgement Message", "nyse.amex.options.binarygateway.pillar.v3.25.orderandcancelreplaceacknowledgementmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "nyse.amex.options.binarygateway.pillar.v3.25.ordercancelrequestmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_modify_request_message = ProtoField.new("Order Modify Request Message", "nyse.amex.options.binarygateway.pillar.v3.25.ordermodifyrequestmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_priority_update_acknowledgment_message = ProtoField.new("Order Priority Update Acknowledgment Message", "nyse.amex.options.binarygateway.pillar.v3.25.orderpriorityupdateacknowledgmentmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = ProtoField.new("Order Single Complex Modify Cancel Request Acknowledgment And Urout Message", "nyse.amex.options.binarygateway.pillar.v3.25.ordersinglecomplexmodifycancelrequestacknowledgmentanduroutmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_action_request_message = ProtoField.new("Risk Action Request Message", "nyse.amex.options.binarygateway.pillar.v3.25.riskactionrequestmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_control_acknowledgement_message = ProtoField.new("Risk Control Acknowledgement Message", "nyse.amex.options.binarygateway.pillar.v3.25.riskcontrolacknowledgementmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_control_alert_message = ProtoField.new("Risk Control Alert Message", "nyse.amex.options.binarygateway.pillar.v3.25.riskcontrolalertmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_limit_update_request_message = ProtoField.new("Risk Limit Update Request Message", "nyse.amex.options.binarygateway.pillar.v3.25.risklimitupdaterequestmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.series_reference_data_message = ProtoField.new("Series Reference Data Message", "nyse.amex.options.binarygateway.pillar.v3.25.seriesreferencedatamessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.session_configuration_acknowledgement_message = ProtoField.new("Session Configuration Acknowledgement Message", "nyse.amex.options.binarygateway.pillar.v3.25.sessionconfigurationacknowledgementmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.session_configuration_request_message = ProtoField.new("Session Configuration Request Message", "nyse.amex.options.binarygateway.pillar.v3.25.sessionconfigurationrequestmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.trade_bust_correct_message = ProtoField.new("Trade Bust Correct Message", "nyse.amex.options.binarygateway.pillar.v3.25.tradebustcorrectmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.underlying_symbol_reference_data_message = ProtoField.new("Underlying Symbol Reference Data Message", "nyse.amex.options.binarygateway.pillar.v3.25.underlyingsymbolreferencedatamessage", ftypes.STRING)

-- Nyse Amex Options Pillar BinaryGateway 3.25 Session Messages
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.close = ProtoField.new("Close", "nyse.amex.options.binarygateway.pillar.v3.25.close", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.close_response = ProtoField.new("Close Response", "nyse.amex.options.binarygateway.pillar.v3.25.closeresponse", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.amex.options.binarygateway.pillar.v3.25.heartbeat", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.login_message = ProtoField.new("Login Message", "nyse.amex.options.binarygateway.pillar.v3.25.loginmessage", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.login_response = ProtoField.new("Login Response", "nyse.amex.options.binarygateway.pillar.v3.25.loginresponse", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.open = ProtoField.new("Open", "nyse.amex.options.binarygateway.pillar.v3.25.open", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.open_response = ProtoField.new("Open Response", "nyse.amex.options.binarygateway.pillar.v3.25.openresponse", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg = ProtoField.new("Seq Msg", "nyse.amex.options.binarygateway.pillar.v3.25.seqmsg", ftypes.STRING)
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.stream_avail = ProtoField.new("Stream Avail", "nyse.amex.options.binarygateway.pillar.v3.25.streamavail", ftypes.STRING)

-- Nyse Amex Options BinaryGateway Pillar 3.25 generated fields
omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_group_index = ProtoField.new("Leg Group Index", "nyse.amex.options.binarygateway.pillar.v3.25.leggroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Amex Options BinaryGateway Pillar 3.25 Element Dissection Options
show.application_layer_reject_message = true
show.bitfield_flow_indicator = true
show.bitfield_quote_inst = true
show.bulk_cancel_request_type_223_message = true
show.bulk_cancel_request_type_224_message = true
show.bulk_quote_acknowledgment_message = true
show.bulk_quote_acknowledgment_type_294_message = true
show.bulk_quote_group = true
show.close = true
show.close_response = true
show.complex_series_leg_group = true
show.complex_series_request_acknowledgement_message = true
show.covered = true
show.execution_report_message = true
show.exposed = true
show.heartbeat = true
show.leg_group = true
show.login_message = true
show.login_response = true
show.minimum_price_variant_class_reference_data_message = true
show.minimum_price_variant_level_reference_data_message = true
show.mpid_configuration_message = true
show.mpv_level_definition = true
show.msg_header = true
show.new_bulk_quote_type_243_message = true
show.new_bulk_quote_type_259_message = true
show.new_complex_series_request_message = true
show.new_order_cross_message = true
show.new_order_message = true
show.open = true
show.open_response = true
show.optional_order_add_on = true
show.options_market_maker_symbol_appointment_reference_data_message = true
show.order_and_cancel_replace_acknowledgement_message = true
show.order_cancel_request_message = true
show.order_modify_request_message = true
show.order_priority_update_acknowledgment_message = true
show.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = true
show.quote_ack_group_294 = true
show.quote_ack_group_308 = true
show.ref_seq_msg_id = true
show.risk_action_request_message = true
show.risk_control_acknowledgement_message = true
show.risk_control_alert_message = true
show.risk_limit_update_request_message = true
show.seq_msg = true
show.seq_msg_header = true
show.seq_msg_id = true
show.series_reference_data_message = true
show.session_configuration_acknowledgement_message = true
show.session_configuration_request_message = true
show.stream_avail = true
show.stream_id = true
show.sub_msg_header = true
show.trade_bust_correct_message = true
show.underlying_symbol_reference_data_message = true
show.pillar_stream_message = false
show.sequenced_message = false

-- Register Nyse Amex Options BinaryGateway Pillar 3.25 Show Options
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_application_layer_reject_message = Pref.bool("Show Application Layer Reject Message", show.application_layer_reject_message, "Parse and add Application Layer Reject Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bitfield_flow_indicator = Pref.bool("Show Bitfield Flow Indicator", show.bitfield_flow_indicator, "Parse and add Bitfield Flow Indicator to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bitfield_quote_inst = Pref.bool("Show Bitfield Quote Inst", show.bitfield_quote_inst, "Parse and add Bitfield Quote Inst to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_cancel_request_type_223_message = Pref.bool("Show Bulk Cancel Request Type 223 Message", show.bulk_cancel_request_type_223_message, "Parse and add Bulk Cancel Request Type 223 Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_cancel_request_type_224_message = Pref.bool("Show Bulk Cancel Request Type 224 Message", show.bulk_cancel_request_type_224_message, "Parse and add Bulk Cancel Request Type 224 Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_acknowledgment_message = Pref.bool("Show Bulk Quote Acknowledgment Message", show.bulk_quote_acknowledgment_message, "Parse and add Bulk Quote Acknowledgment Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_acknowledgment_type_294_message = Pref.bool("Show Bulk Quote Acknowledgment Type 294 Message", show.bulk_quote_acknowledgment_type_294_message, "Parse and add Bulk Quote Acknowledgment Type 294 Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_group = Pref.bool("Show Bulk Quote Group", show.bulk_quote_group, "Parse and add Bulk Quote Group to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_close = Pref.bool("Show Close", show.close, "Parse and add Close to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_close_response = Pref.bool("Show Close Response", show.close_response, "Parse and add Close Response to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_complex_series_leg_group = Pref.bool("Show Complex Series Leg Group", show.complex_series_leg_group, "Parse and add Complex Series Leg Group to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_complex_series_request_acknowledgement_message = Pref.bool("Show Complex Series Request Acknowledgement Message", show.complex_series_request_acknowledgement_message, "Parse and add Complex Series Request Acknowledgement Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_covered = Pref.bool("Show Covered", show.covered, "Parse and add Covered to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_execution_report_message = Pref.bool("Show Execution Report Message", show.execution_report_message, "Parse and add Execution Report Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_exposed = Pref.bool("Show Exposed", show.exposed, "Parse and add Exposed to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_leg_group = Pref.bool("Show Leg Group", show.leg_group, "Parse and add Leg Group to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_login_message = Pref.bool("Show Login Message", show.login_message, "Parse and add Login Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_minimum_price_variant_class_reference_data_message = Pref.bool("Show Minimum Price Variant Class Reference Data Message", show.minimum_price_variant_class_reference_data_message, "Parse and add Minimum Price Variant Class Reference Data Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_minimum_price_variant_level_reference_data_message = Pref.bool("Show Minimum Price Variant Level Reference Data Message", show.minimum_price_variant_level_reference_data_message, "Parse and add Minimum Price Variant Level Reference Data Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_mpid_configuration_message = Pref.bool("Show Mpid Configuration Message", show.mpid_configuration_message, "Parse and add Mpid Configuration Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_mpv_level_definition = Pref.bool("Show Mpv Level Definition", show.mpv_level_definition, "Parse and add Mpv Level Definition to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_bulk_quote_type_243_message = Pref.bool("Show New Bulk Quote Type 243 Message", show.new_bulk_quote_type_243_message, "Parse and add New Bulk Quote Type 243 Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_bulk_quote_type_259_message = Pref.bool("Show New Bulk Quote Type 259 Message", show.new_bulk_quote_type_259_message, "Parse and add New Bulk Quote Type 259 Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_complex_series_request_message = Pref.bool("Show New Complex Series Request Message", show.new_complex_series_request_message, "Parse and add New Complex Series Request Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_order_cross_message = Pref.bool("Show New Order Cross Message", show.new_order_cross_message, "Parse and add New Order Cross Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_open = Pref.bool("Show Open", show.open, "Parse and add Open to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_open_response = Pref.bool("Show Open Response", show.open_response, "Parse and add Open Response to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_optional_order_add_on = Pref.bool("Show Optional Order Add On", show.optional_order_add_on, "Parse and add Optional Order Add On to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_options_market_maker_symbol_appointment_reference_data_message = Pref.bool("Show Options Market Maker Symbol Appointment Reference Data Message", show.options_market_maker_symbol_appointment_reference_data_message, "Parse and add Options Market Maker Symbol Appointment Reference Data Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_and_cancel_replace_acknowledgement_message = Pref.bool("Show Order And Cancel Replace Acknowledgement Message", show.order_and_cancel_replace_acknowledgement_message, "Parse and add Order And Cancel Replace Acknowledgement Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_modify_request_message = Pref.bool("Show Order Modify Request Message", show.order_modify_request_message, "Parse and add Order Modify Request Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_priority_update_acknowledgment_message = Pref.bool("Show Order Priority Update Acknowledgment Message", show.order_priority_update_acknowledgment_message, "Parse and add Order Priority Update Acknowledgment Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = Pref.bool("Show Order Single Complex Modify Cancel Request Acknowledgment And Urout Message", show.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message, "Parse and add Order Single Complex Modify Cancel Request Acknowledgment And Urout Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_quote_ack_group_294 = Pref.bool("Show Quote Ack Group 294", show.quote_ack_group_294, "Parse and add Quote Ack Group 294 to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_quote_ack_group_308 = Pref.bool("Show Quote Ack Group 308", show.quote_ack_group_308, "Parse and add Quote Ack Group 308 to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_ref_seq_msg_id = Pref.bool("Show Ref Seq Msg Id", show.ref_seq_msg_id, "Parse and add Ref Seq Msg Id to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_action_request_message = Pref.bool("Show Risk Action Request Message", show.risk_action_request_message, "Parse and add Risk Action Request Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_control_acknowledgement_message = Pref.bool("Show Risk Control Acknowledgement Message", show.risk_control_acknowledgement_message, "Parse and add Risk Control Acknowledgement Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_control_alert_message = Pref.bool("Show Risk Control Alert Message", show.risk_control_alert_message, "Parse and add Risk Control Alert Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_limit_update_request_message = Pref.bool("Show Risk Limit Update Request Message", show.risk_limit_update_request_message, "Parse and add Risk Limit Update Request Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg = Pref.bool("Show Seq Msg", show.seq_msg, "Parse and add Seq Msg to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg_header = Pref.bool("Show Seq Msg Header", show.seq_msg_header, "Parse and add Seq Msg Header to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg_id = Pref.bool("Show Seq Msg Id", show.seq_msg_id, "Parse and add Seq Msg Id to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_series_reference_data_message = Pref.bool("Show Series Reference Data Message", show.series_reference_data_message, "Parse and add Series Reference Data Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_session_configuration_acknowledgement_message = Pref.bool("Show Session Configuration Acknowledgement Message", show.session_configuration_acknowledgement_message, "Parse and add Session Configuration Acknowledgement Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_session_configuration_request_message = Pref.bool("Show Session Configuration Request Message", show.session_configuration_request_message, "Parse and add Session Configuration Request Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_stream_avail = Pref.bool("Show Stream Avail", show.stream_avail, "Parse and add Stream Avail to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_stream_id = Pref.bool("Show Stream Id", show.stream_id, "Parse and add Stream Id to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_sub_msg_header = Pref.bool("Show Sub Msg Header", show.sub_msg_header, "Parse and add Sub Msg Header to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_trade_bust_correct_message = Pref.bool("Show Trade Bust Correct Message", show.trade_bust_correct_message, "Parse and add Trade Bust Correct Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_underlying_symbol_reference_data_message = Pref.bool("Show Underlying Symbol Reference Data Message", show.underlying_symbol_reference_data_message, "Parse and add Underlying Symbol Reference Data Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_pillar_stream_message = Pref.bool("Show Pillar Stream Message", show.pillar_stream_message, "Parse and add Pillar Stream Message to protocol tree")
omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")

-- Handle changed preferences
function omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_layer_reject_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_application_layer_reject_message then
    show.application_layer_reject_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_application_layer_reject_message
    changed = true
  end
  if show.bitfield_flow_indicator ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bitfield_flow_indicator then
    show.bitfield_flow_indicator = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bitfield_flow_indicator
    changed = true
  end
  if show.bitfield_quote_inst ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bitfield_quote_inst then
    show.bitfield_quote_inst = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bitfield_quote_inst
    changed = true
  end
  if show.bulk_cancel_request_type_223_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_cancel_request_type_223_message then
    show.bulk_cancel_request_type_223_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_cancel_request_type_223_message
    changed = true
  end
  if show.bulk_cancel_request_type_224_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_cancel_request_type_224_message then
    show.bulk_cancel_request_type_224_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_cancel_request_type_224_message
    changed = true
  end
  if show.bulk_quote_acknowledgment_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_acknowledgment_message then
    show.bulk_quote_acknowledgment_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_acknowledgment_message
    changed = true
  end
  if show.bulk_quote_acknowledgment_type_294_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_acknowledgment_type_294_message then
    show.bulk_quote_acknowledgment_type_294_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_acknowledgment_type_294_message
    changed = true
  end
  if show.bulk_quote_group ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_group then
    show.bulk_quote_group = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_bulk_quote_group
    changed = true
  end
  if show.close ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_close then
    show.close = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_close
    changed = true
  end
  if show.close_response ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_close_response then
    show.close_response = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_close_response
    changed = true
  end
  if show.complex_series_leg_group ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_complex_series_leg_group then
    show.complex_series_leg_group = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_complex_series_leg_group
    changed = true
  end
  if show.complex_series_request_acknowledgement_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_complex_series_request_acknowledgement_message then
    show.complex_series_request_acknowledgement_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_complex_series_request_acknowledgement_message
    changed = true
  end
  if show.covered ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_covered then
    show.covered = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_covered
    changed = true
  end
  if show.execution_report_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_execution_report_message then
    show.execution_report_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_execution_report_message
    changed = true
  end
  if show.exposed ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_exposed then
    show.exposed = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_exposed
    changed = true
  end
  if show.heartbeat ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_heartbeat then
    show.heartbeat = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_heartbeat
    changed = true
  end
  if show.leg_group ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_leg_group then
    show.leg_group = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_leg_group
    changed = true
  end
  if show.login_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_login_message then
    show.login_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_login_message
    changed = true
  end
  if show.login_response ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_login_response then
    show.login_response = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_login_response
    changed = true
  end
  if show.minimum_price_variant_class_reference_data_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_minimum_price_variant_class_reference_data_message then
    show.minimum_price_variant_class_reference_data_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_minimum_price_variant_class_reference_data_message
    changed = true
  end
  if show.minimum_price_variant_level_reference_data_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_minimum_price_variant_level_reference_data_message then
    show.minimum_price_variant_level_reference_data_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_minimum_price_variant_level_reference_data_message
    changed = true
  end
  if show.mpid_configuration_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_mpid_configuration_message then
    show.mpid_configuration_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_mpid_configuration_message
    changed = true
  end
  if show.mpv_level_definition ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_mpv_level_definition then
    show.mpv_level_definition = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_mpv_level_definition
    changed = true
  end
  if show.msg_header ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_msg_header then
    show.msg_header = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_msg_header
    changed = true
  end
  if show.new_bulk_quote_type_243_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_bulk_quote_type_243_message then
    show.new_bulk_quote_type_243_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_bulk_quote_type_243_message
    changed = true
  end
  if show.new_bulk_quote_type_259_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_bulk_quote_type_259_message then
    show.new_bulk_quote_type_259_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_bulk_quote_type_259_message
    changed = true
  end
  if show.new_complex_series_request_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_complex_series_request_message then
    show.new_complex_series_request_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_complex_series_request_message
    changed = true
  end
  if show.new_order_cross_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_order_cross_message then
    show.new_order_cross_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_order_cross_message
    changed = true
  end
  if show.new_order_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_order_message then
    show.new_order_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_new_order_message
    changed = true
  end
  if show.open ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_open then
    show.open = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_open
    changed = true
  end
  if show.open_response ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_open_response then
    show.open_response = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_open_response
    changed = true
  end
  if show.optional_order_add_on ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_optional_order_add_on then
    show.optional_order_add_on = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_optional_order_add_on
    changed = true
  end
  if show.options_market_maker_symbol_appointment_reference_data_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_options_market_maker_symbol_appointment_reference_data_message then
    show.options_market_maker_symbol_appointment_reference_data_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_options_market_maker_symbol_appointment_reference_data_message
    changed = true
  end
  if show.order_and_cancel_replace_acknowledgement_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_and_cancel_replace_acknowledgement_message then
    show.order_and_cancel_replace_acknowledgement_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_and_cancel_replace_acknowledgement_message
    changed = true
  end
  if show.order_cancel_request_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.order_modify_request_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_modify_request_message then
    show.order_modify_request_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_modify_request_message
    changed = true
  end
  if show.order_priority_update_acknowledgment_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_priority_update_acknowledgment_message then
    show.order_priority_update_acknowledgment_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_priority_update_acknowledgment_message
    changed = true
  end
  if show.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message then
    show.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message
    changed = true
  end
  if show.quote_ack_group_294 ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_quote_ack_group_294 then
    show.quote_ack_group_294 = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_quote_ack_group_294
    changed = true
  end
  if show.quote_ack_group_308 ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_quote_ack_group_308 then
    show.quote_ack_group_308 = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_quote_ack_group_308
    changed = true
  end
  if show.ref_seq_msg_id ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_ref_seq_msg_id then
    show.ref_seq_msg_id = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_ref_seq_msg_id
    changed = true
  end
  if show.risk_action_request_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_action_request_message then
    show.risk_action_request_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_action_request_message
    changed = true
  end
  if show.risk_control_acknowledgement_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_control_acknowledgement_message then
    show.risk_control_acknowledgement_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_control_acknowledgement_message
    changed = true
  end
  if show.risk_control_alert_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_control_alert_message then
    show.risk_control_alert_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_control_alert_message
    changed = true
  end
  if show.risk_limit_update_request_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_limit_update_request_message then
    show.risk_limit_update_request_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_risk_limit_update_request_message
    changed = true
  end
  if show.seq_msg ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg then
    show.seq_msg = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg
    changed = true
  end
  if show.seq_msg_header ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg_header then
    show.seq_msg_header = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg_header
    changed = true
  end
  if show.seq_msg_id ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg_id then
    show.seq_msg_id = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_seq_msg_id
    changed = true
  end
  if show.series_reference_data_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_series_reference_data_message then
    show.series_reference_data_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_series_reference_data_message
    changed = true
  end
  if show.session_configuration_acknowledgement_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_session_configuration_acknowledgement_message then
    show.session_configuration_acknowledgement_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_session_configuration_acknowledgement_message
    changed = true
  end
  if show.session_configuration_request_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_session_configuration_request_message then
    show.session_configuration_request_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_session_configuration_request_message
    changed = true
  end
  if show.stream_avail ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_stream_avail then
    show.stream_avail = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_stream_avail
    changed = true
  end
  if show.stream_id ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_stream_id then
    show.stream_id = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_stream_id
    changed = true
  end
  if show.sub_msg_header ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_sub_msg_header then
    show.sub_msg_header = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_sub_msg_header
    changed = true
  end
  if show.trade_bust_correct_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_trade_bust_correct_message then
    show.trade_bust_correct_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_trade_bust_correct_message
    changed = true
  end
  if show.underlying_symbol_reference_data_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_underlying_symbol_reference_data_message then
    show.underlying_symbol_reference_data_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_underlying_symbol_reference_data_message
    changed = true
  end
  if show.pillar_stream_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_pillar_stream_message then
    show.pillar_stream_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_pillar_stream_message
    changed = true
  end
  if show.sequenced_message ~= omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_sequenced_message then
    show.sequenced_message = omi_nyse_amex_options_binarygateway_pillar_v3_25.prefs.show_sequenced_message
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
-- Dissect Nyse Amex Options BinaryGateway Pillar 3.25
-----------------------------------------------------------------------

-- Leg Side
nyse_amex_options_binarygateway_pillar_v3_25.leg_side = {}

-- Size: Leg Side
nyse_amex_options_binarygateway_pillar_v3_25.leg_side.size = 1

-- Display: Leg Side
nyse_amex_options_binarygateway_pillar_v3_25.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nyse_amex_options_binarygateway_pillar_v3_25.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Symbol Id
nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id = {}

-- Size: Leg Symbol Id
nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.size = 4

-- Display: Leg Symbol Id
nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.display = function(value)
  return "Leg Symbol Id: "..value
end

-- Dissect: Leg Symbol Id
nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_symbol_id, range, value, display)

  return offset + length, value
end

-- Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.leg_group = {}

-- Size: Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.leg_group.size =
  nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.leg_side.size

-- Display: Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.leg_group.fields = function(buffer, offset, packet, parent, leg_group_index)
  local index = offset

  -- Implicit Leg Group Index
  if leg_group_index ~= nil then
    local iteration = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_group_index, leg_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol Id: u32
  index, leg_symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: u16
  index, leg_ratio_qty = nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: u8
  index, leg_side = nyse_amex_options_binarygateway_pillar_v3_25.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.leg_group.dissect = function(buffer, offset, packet, parent, leg_group_index)
  if show.leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_group, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.leg_group.fields(buffer, offset, packet, parent, leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.leg_group.fields(buffer, offset, packet, parent, leg_group_index)
  end
end

-- Repeating Groups
nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups = {}

-- Size: Repeating Groups
nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups.size = 1

-- Display: Repeating Groups
nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups.display = function(value)
  return "Repeating Groups: "..value
end

-- Dissect: Repeating Groups
nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.repeating_groups, range, value, display)

  return offset + length, value
end

-- Side U 81
nyse_amex_options_binarygateway_pillar_v3_25.side_u_81 = {}

-- Size: Side U 81
nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.size = 1

-- Display: Side U 81
nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.display = function(value)
  return "Side U 81: "..value
end

-- Dissect: Side U 81
nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.side_u_81, range, value, display)

  return offset + length, value
end

-- Symbol Id
nyse_amex_options_binarygateway_pillar_v3_25.symbol_id = {}

-- Size: Symbol Id
nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.size = 4

-- Display: Symbol Id
nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_amex_options_binarygateway_pillar_v3_25.reason_code = {}

-- Size: Reason Code
nyse_amex_options_binarygateway_pillar_v3_25.reason_code.size = 2

-- Display: Reason Code
nyse_amex_options_binarygateway_pillar_v3_25.reason_code.display = function(value)
  if value == 0 then
    return "Reason Code: Ok (0)"
  end
  if value == 1 then
    return "Reason Code: Invalid Sender Comp Id (1)"
  end
  if value == 2 then
    return "Reason Code: Invalid Sender Sub Id (2)"
  end
  if value == 3 then
    return "Reason Code: Invalid Sending Time (3)"
  end
  if value == 4 then
    return "Reason Code: Invalid Target Comp Id (4)"
  end
  if value == 5 then
    return "Reason Code: Invalid Target Sub Id (5)"
  end
  if value == 6 then
    return "Reason Code: Invalid On Behalf Of Comp Id (6)"
  end
  if value == 7 then
    return "Reason Code: Invalid On Behalf Of Sub Id (7)"
  end
  if value == 8 then
    return "Reason Code: Invalid Deliver To Comp Id (8)"
  end
  if value == 9 then
    return "Reason Code: Invalid Deliver To Sub Id (9)"
  end
  if value == 10 then
    return "Reason Code: Invalid Account (10)"
  end
  if value == 11 then
    return "Reason Code: Invalid Cl Ord Id (11)"
  end
  if value == 12 then
    return "Reason Code: Invalid Exec Inst (12)"
  end
  if value == 13 then
    return "Reason Code: Invalid Id Source (13)"
  end
  if value == 14 then
    return "Reason Code: Invalid Order Qty (14)"
  end
  if value == 15 then
    return "Reason Code: Invalid Ord Type (15)"
  end
  if value == 16 then
    return "Reason Code: Invalid Price (16)"
  end
  if value == 17 then
    return "Reason Code: Invalid Order Capacity (17)"
  end
  if value == 18 then
    return "Reason Code: Invalid Security Id (18)"
  end
  if value == 19 then
    return "Reason Code: Invalid Side (19)"
  end
  if value == 20 then
    return "Reason Code: Invalid Symbol Series (20)"
  end
  if value == 21 then
    return "Reason Code: Invalid Text (21)"
  end
  if value == 22 then
    return "Reason Code: Invalid Time In Force (22)"
  end
  if value == 23 then
    return "Reason Code: Invalid Settlement Type (23)"
  end
  if value == 24 then
    return "Reason Code: Invalid Fut Sett Date (24)"
  end
  if value == 25 then
    return "Reason Code: Invalid Symbol Sfx (25)"
  end
  if value == 26 then
    return "Reason Code: Invalid Open Close (26)"
  end
  if value == 27 then
    return "Reason Code: Invalid Stop Px (27)"
  end
  if value == 28 then
    return "Reason Code: Invalid Client Id (28)"
  end
  if value == 29 then
    return "Reason Code: Invalid Min Qty (29)"
  end
  if value == 30 then
    return "Reason Code: Invalid Max Floor (30)"
  end
  if value == 31 then
    return "Reason Code: Invalid Locate Reqd (31)"
  end
  if value == 32 then
    return "Reason Code: Invalid Expire Time (32)"
  end
  if value == 33 then
    return "Reason Code: Invalid Security Type (33)"
  end
  if value == 34 then
    return "Reason Code: Invalid Maturity Month Year (34)"
  end
  if value == 35 then
    return "Reason Code: Invalid Put Or Call (35)"
  end
  if value == 36 then
    return "Reason Code: Invalid Strike Price (36)"
  end
  if value == 37 then
    return "Reason Code: Invalid Covered Or Uncovered (37)"
  end
  if value == 38 then
    return "Reason Code: Invalid Customer Or Firm (38)"
  end
  if value == 39 then
    return "Reason Code: Invalid Maturity Day (39)"
  end
  if value == 40 then
    return "Reason Code: Invalid Peg Difference (40)"
  end
  if value == 41 then
    return "Reason Code: Invalid Sellers Days (41)"
  end
  if value == 42 then
    return "Reason Code: Invalid Trading Session Id (42)"
  end
  if value == 43 then
    return "Reason Code: Invalid No Trading Sessions (43)"
  end
  if value == 44 then
    return "Reason Code: Invalid Discretion Inst (44)"
  end
  if value == 45 then
    return "Reason Code: Invalid Discretion Offset (45)"
  end
  if value == 46 then
    return "Reason Code: Invalid Price Type (46)"
  end
  if value == 47 then
    return "Reason Code: Invalid Clearing Firm (47)"
  end
  if value == 48 then
    return "Reason Code: Invalid Clearing Account (48)"
  end
  if value == 49 then
    return "Reason Code: Invalid Party Id (49)"
  end
  if value == 50 then
    return "Reason Code: Invalid Optional Data (50)"
  end
  if value == 51 then
    return "Reason Code: Invalid Cross Id (51)"
  end
  if value == 52 then
    return "Reason Code: Invalid Strategy Indicator (52)"
  end
  if value == 53 then
    return "Reason Code: Invalid Trade Id (53)"
  end
  if value == 54 then
    return "Reason Code: Invalid No Self Trade (54)"
  end
  if value == 55 then
    return "Reason Code: Invalid Cap Strategy (55)"
  end
  if value == 56 then
    return "Reason Code: Invalid Special Ord Type (56)"
  end
  if value == 57 then
    return "Reason Code: Invalid Routing Inst (57)"
  end
  if value == 58 then
    return "Reason Code: Invalid Offset Price (58)"
  end
  if value == 59 then
    return "Reason Code: Invalid Extended Exec Inst (59)"
  end
  if value == 60 then
    return "Reason Code: Invalid Introducing Badge Id (60)"
  end
  if value == 61 then
    return "Reason Code: Invalid Bill To (61)"
  end
  if value == 62 then
    return "Reason Code: Invalid Parent Firm Cl Ord Id (62)"
  end
  if value == 63 then
    return "Reason Code: Invalid Parent Firm Exchange Ord Id (63)"
  end
  if value == 64 then
    return "Reason Code: Invalid Parent Firm (64)"
  end
  if value == 65 then
    return "Reason Code: Invalid Interest Type (65)"
  end
  if value == 66 then
    return "Reason Code: Invalid Display Ind (66)"
  end
  if value == 67 then
    return "Reason Code: Invalid Peg Ind (67)"
  end
  if value == 68 then
    return "Reason Code: Invalid Ceiling Floor Price (68)"
  end
  if value == 69 then
    return "Reason Code: Invalid Min Peg Qty (69)"
  end
  if value == 70 then
    return "Reason Code: Invalid D Order Auction Price (70)"
  end
  if value == 71 then
    return "Reason Code: Invalid Disc Max Vol (71)"
  end
  if value == 72 then
    return "Reason Code: Invalid Dics Route Ind (72)"
  end
  if value == 73 then
    return "Reason Code: Invalid Minimum Trigger Vol Mtv (73)"
  end
  if value == 74 then
    return "Reason Code: Invalid Attributed Quote (74)"
  end
  if value == 75 then
    return "Reason Code: Invalid Proactive If Locked (75)"
  end
  if value == 76 then
    return "Reason Code: System Not Available (76)"
  end
  if value == 77 then
    return "Reason Code: System Full Mengrateexceeded (77)"
  end
  if value == 78 then
    return "Reason Code: Throttle Reject (78)"
  end
  if value == 79 then
    return "Reason Code: Symbol Series Halted (79)"
  end
  if value == 80 then
    return "Reason Code: No Symbolseries Permission (80)"
  end
  if value == 81 then
    return "Reason Code: Price Too Far Outside (81)"
  end
  if value == 82 then
    return "Reason Code: Mwcb Halt (82)"
  end
  if value == 83 then
    return "Reason Code: Market Closed (83)"
  end
  if value == 84 then
    return "Reason Code: Symbolseries Closed (84)"
  end
  if value == 85 then
    return "Reason Code: Luld Cancel Instruction (85)"
  end
  if value == 86 then
    return "Reason Code: No Price Slide Inst During Ssr (86)"
  end
  if value == 87 then
    return "Reason Code: Invalid Stock Leg Give Up (87)"
  end
  if value == 88 then
    return "Reason Code: Invalid No Legs (88)"
  end
  if value == 89 then
    return "Reason Code: Invalid Leg Position Effect (89)"
  end
  if value == 90 then
    return "Reason Code: Invalid Leg Symbol (90)"
  end
  if value == 91 then
    return "Reason Code: Invalid Leg Cfi Code (91)"
  end
  if value == 92 then
    return "Reason Code: Invalid Leg Maturity Date (92)"
  end
  if value == 93 then
    return "Reason Code: Invalid Leg Strike Price (93)"
  end
  if value == 94 then
    return "Reason Code: Invalid Leg Contract Multiplier (94)"
  end
  if value == 95 then
    return "Reason Code: Invalid Leg Ratio Qty (95)"
  end
  if value == 96 then
    return "Reason Code: Invalid Leg Side (96)"
  end
  if value == 97 then
    return "Reason Code: Invalid Leg Ref Id (97)"
  end
  if value == 98 then
    return "Reason Code: Unsupported Order Type (98)"
  end
  if value == 99 then
    return "Reason Code: Urout (99)"
  end
  if value == 100 then
    return "Reason Code: Primary Market Not Available (100)"
  end
  if value == 101 then
    return "Reason Code: No Nbbopbbo For Peg (101)"
  end
  if value == 102 then
    return "Reason Code: No Market For Market Order (102)"
  end
  if value == 103 then
    return "Reason Code: Marketable Price (103)"
  end
  if value == 104 then
    return "Reason Code: Done For Day (104)"
  end
  if value == 105 then
    return "Reason Code: Credit Limit Violation (105)"
  end
  if value == 106 then
    return "Reason Code: Cancel Remaining Ioc (106)"
  end
  if value == 107 then
    return "Reason Code: Too Late To Cancel (107)"
  end
  if value == 108 then
    return "Reason Code: Invalid Poss Resend (108)"
  end
  if value == 109 then
    return "Reason Code: Cancel Pending (109)"
  end
  if value == 110 then
    return "Reason Code: Symbol Series Already Opened (110)"
  end
  if value == 111 then
    return "Reason Code: Firm Bulk Cancel (111)"
  end
  if value == 112 then
    return "Reason Code: On Behalf Of Comp Id Blocked (112)"
  end
  if value == 113 then
    return "Reason Code: Clearing Firm Blocked (113)"
  end
  if value == 114 then
    return "Reason Code: Cancel Replace Pending (114)"
  end
  if value == 115 then
    return "Reason Code: Modify Pending (115)"
  end
  if value == 116 then
    return "Reason Code: Cannot Flip Imbalance (116)"
  end
  if value == 117 then
    return "Reason Code: Cannot Increase Imbalance (117)"
  end
  if value == 118 then
    return "Reason Code: Pending Cancel Imbalance Freeze (118)"
  end
  if value == 119 then
    return "Reason Code: Pending Replace Imbalance Freeze (119)"
  end
  if value == 120 then
    return "Reason Code: Pending Modify Imbalance Freeze (120)"
  end
  if value == 121 then
    return "Reason Code: Pending Cancel Routed Interest (121)"
  end
  if value == 122 then
    return "Reason Code: Pending Replace Routed Interest (122)"
  end
  if value == 123 then
    return "Reason Code: Pending Modify Routed Interest (123)"
  end
  if value == 124 then
    return "Reason Code: Pending Auction Running (124)"
  end
  if value == 125 then
    return "Reason Code: Duplicative Order Check (125)"
  end
  if value == 126 then
    return "Reason Code: Cancelled By Exchange (126)"
  end
  if value == 127 then
    return "Reason Code: New Order (127)"
  end
  if value == 128 then
    return "Reason Code: Fill (128)"
  end
  if value == 129 then
    return "Reason Code: Partial Fill (129)"
  end
  if value == 130 then
    return "Reason Code: Reduced (130)"
  end
  if value == 131 then
    return "Reason Code: Replaced (131)"
  end
  if value == 132 then
    return "Reason Code: No Market For Cross (132)"
  end
  if value == 133 then
    return "Reason Code: Stp Cancel (133)"
  end
  if value == 134 then
    return "Reason Code: Invalid Poss Dupe (134)"
  end
  if value == 135 then
    return "Reason Code: Tpid Blocked (135)"
  end
  if value == 136 then
    return "Reason Code: Invalid Bulk Cancel (136)"
  end
  if value == 137 then
    return "Reason Code: Pending Bulk Cancel (137)"
  end
  if value == 138 then
    return "Reason Code: Symbol Series Not Open (138)"
  end
  if value == 139 then
    return "Reason Code: Symbol Series Suspended (139)"
  end
  if value == 140 then
    return "Reason Code: Symbol Ipo Halt (140)"
  end
  if value == 141 then
    return "Reason Code: Invld Inst During Imbalance Freeze (141)"
  end
  if value == 142 then
    return "Reason Code: Invld Inst After Cutoff Time (142)"
  end
  if value == 143 then
    return "Reason Code: Cancelled By Primary Market (143)"
  end
  if value == 144 then
    return "Reason Code: Pending Imbalance Freeze (144)"
  end
  if value == 145 then
    return "Reason Code: No Rlp Permission (145)"
  end
  if value == 146 then
    return "Reason Code: Invalid Instruction For Io Cs (146)"
  end
  if value == 147 then
    return "Reason Code: System Full Cgrateexceeded (147)"
  end
  if value == 148 then
    return "Reason Code: Pending Cancel Auction Running (148)"
  end
  if value == 149 then
    return "Reason Code: Pending Modify Auction Running (149)"
  end
  if value == 150 then
    return "Reason Code: Pending Replace Auction Running (150)"
  end
  if value == 151 then
    return "Reason Code: Invld Inst For Pending Order (151)"
  end
  if value == 152 then
    return "Reason Code: Ssh Price Below Nbb On Iso (152)"
  end
  if value == 153 then
    return "Reason Code: Ioc Received While Auction Running (153)"
  end
  if value == 154 then
    return "Reason Code: Pending Session Transition (154)"
  end
  if value == 155 then
    return "Reason Code: Pending Cancel Session Transition (155)"
  end
  if value == 156 then
    return "Reason Code: Pending Modify Session Transition (156)"
  end
  if value == 157 then
    return "Reason Code: Pending Replace Session Transition (157)"
  end
  if value == 158 then
    return "Reason Code: Invalid For Tick Pilot (158)"
  end
  if value == 159 then
    return "Reason Code: Invalid Mmid (159)"
  end
  if value == 160 then
    return "Reason Code: Invalid Mpid (160)"
  end
  if value == 161 then
    return "Reason Code: Invalid Cancel Instead Of Reprice (161)"
  end
  if value == 162 then
    return "Reason Code: Invalid Retail Indicator (162)"
  end
  if value == 163 then
    return "Reason Code: Sender Comp Id Not Active (163)"
  end
  if value == 164 then
    return "Reason Code: Mpid Blocked (164)"
  end
  if value == 165 then
    return "Reason Code: Invalid Timestamp (165)"
  end
  if value == 166 then
    return "Reason Code: Invalid Permission For Sender Comp Id (166)"
  end
  if value == 167 then
    return "Reason Code: Invalid User Data (167)"
  end
  if value == 168 then
    return "Reason Code: Pillar Risk Mitigation (168)"
  end
  if value == 169 then
    return "Reason Code: No Last Sale For Peg (169)"
  end
  if value == 170 then
    return "Reason Code: Symbol Pending Closing Auction (170)"
  end
  if value == 171 then
    return "Reason Code: Extreme Closing Order Imbalance (171)"
  end
  if value == 172 then
    return "Reason Code: Invalid Multi Message (172)"
  end
  if value == 173 then
    return "Reason Code: Invalid Request Targeting Manual Sender Comp Id (173)"
  end
  if value == 174 then
    return "Reason Code: Invalid Dmm Reject Reason (174)"
  end
  if value == 175 then
    return "Reason Code: Pending Pending Auction State (175)"
  end
  if value == 176 then
    return "Reason Code: Pending Cancel Pending Auction State (176)"
  end
  if value == 177 then
    return "Reason Code: Pending Modify Pending Auction State (177)"
  end
  if value == 178 then
    return "Reason Code: Pending Replace Pending Auction State (178)"
  end
  if value == 179 then
    return "Reason Code: Cancelled Dmm Manual Order Reprice (179)"
  end
  if value == 180 then
    return "Reason Code: Too Early To Open (180)"
  end
  if value == 181 then
    return "Reason Code: Too Early To Close (181)"
  end
  if value == 182 then
    return "Reason Code: Symbol Not Frozen By Auction Request (182)"
  end
  if value == 183 then
    return "Reason Code: Symbol Is Frozen By Dbk Gui (183)"
  end
  if value == 184 then
    return "Reason Code: Too Late Auction Running (184)"
  end
  if value == 185 then
    return "Reason Code: Too Late Symbol Transition (185)"
  end
  if value == 186 then
    return "Reason Code: No Eligible Crossing Interest (186)"
  end
  if value == 187 then
    return "Reason Code: Book Is Lockedcrossed (187)"
  end
  if value == 188 then
    return "Reason Code: No Interest Exists (188)"
  end
  if value == 189 then
    return "Reason Code: Imbalance Too Large (189)"
  end
  if value == 190 then
    return "Reason Code: Ssh Price Below Ssr Filing Price (190)"
  end
  if value == 191 then
    return "Reason Code: Symbol Already Closed (191)"
  end
  if value == 192 then
    return "Reason Code: Opening Template Opened (192)"
  end
  if value == 193 then
    return "Reason Code: Closing Template Opened (193)"
  end
  if value == 194 then
    return "Reason Code: Prin Entered On Auction Template (194)"
  end
  if value == 195 then
    return "Reason Code: Mandatory Indication Submitted (195)"
  end
  if value == 196 then
    return "Reason Code: Pending Crowd Exists (196)"
  end
  if value == 197 then
    return "Reason Code: No Consolidated Last Sale (197)"
  end
  if value == 198 then
    return "Reason Code: Paired Qty Exceeds Max Trade Parameter (198)"
  end
  if value == 199 then
    return "Reason Code: Luld Or Mwcb Timer Running (199)"
  end
  if value == 200 then
    return "Reason Code: Locking Crossing Away Quote (200)"
  end
  if value == 201 then
    return "Reason Code: Cross Not Eligible (201)"
  end
  if value == 202 then
    return "Reason Code: Reserved For Future Use 202 (202)"
  end
  if value == 203 then
    return "Reason Code: Pending Acceptance For Ack On Order Arrival (203)"
  end
  if value == 204 then
    return "Reason Code: Rejected Cancel By Dmm (204)"
  end
  if value == 205 then
    return "Reason Code: Cancelled By Dmm (205)"
  end
  if value == 206 then
    return "Reason Code: Price Is Outside Allowable Range (206)"
  end
  if value == 207 then
    return "Reason Code: Auction Validation In Progress (207)"
  end
  if value == 208 then
    return "Reason Code: Invalid Manual Action Id (208)"
  end
  if value == 209 then
    return "Reason Code: Invalid Auction Sell Indicator (209)"
  end
  if value == 210 then
    return "Reason Code: Invalid Intraday Sell Short Qty (210)"
  end
  if value == 211 then
    return "Reason Code: Indication Template Is Open (211)"
  end
  if value == 212 then
    return "Reason Code: No Prev Closing Price (212)"
  end
  if value == 213 then
    return "Reason Code: Cancelled Due To Trading Collars (213)"
  end
  if value == 214 then
    return "Reason Code: Underlying Is In Luld State (214)"
  end
  if value == 215 then
    return "Reason Code: Invalid Manual Response Type (215)"
  end
  if value == 216 then
    return "Reason Code: No Nyse Last Sale (216)"
  end
  if value == 217 then
    return "Reason Code: Symbol Direct Listing State (217)"
  end
  if value == 218 then
    return "Reason Code: Dmm Gui Reduction In Manual Order Qty (218)"
  end
  if value == 219 then
    return "Reason Code: Cross Eligible (219)"
  end
  if value == 220 then
    return "Reason Code: Dry Run (220)"
  end
  if value == 221 then
    return "Reason Code: Unsupported By Broker Plex (221)"
  end
  if value == 222 then
    return "Reason Code: Cross Blocked By Bbopbbo (222)"
  end
  if value == 223 then
    return "Reason Code: Risk Single Ord Max Qty (223)"
  end
  if value == 224 then
    return "Reason Code: Risk Single Ord Max Notional (224)"
  end
  if value == 225 then
    return "Reason Code: Risk Gross Credit Breach (225)"
  end
  if value == 226 then
    return "Reason Code: Risk Kill Switch (226)"
  end
  if value == 227 then
    return "Reason Code: Invalid Route To Broker (227)"
  end
  if value == 228 then
    return "Reason Code: Spread Too Wide (228)"
  end
  if value == 229 then
    return "Reason Code: Expire Fok (229)"
  end
  if value == 230 then
    return "Reason Code: Locks Displayed Interest (230)"
  end
  if value == 231 then
    return "Reason Code: Mm Quote Price Lockcross Contra Side Nbbo (231)"
  end
  if value == 232 then
    return "Reason Code: Invalid Leg Symbols (232)"
  end
  if value == 233 then
    return "Reason Code: Duplicate Leg Symbol (233)"
  end
  if value == 234 then
    return "Reason Code: Symbol Not In Underlying (234)"
  end
  if value == 235 then
    return "Reason Code: Leg Ratios Not In The Most Reduced Form (235)"
  end
  if value == 236 then
    return "Reason Code: Option Leg Ratio Too High (236)"
  end
  if value == 237 then
    return "Reason Code: Stock Leg Ratio Too Low (237)"
  end
  if value == 238 then
    return "Reason Code: Complex Series Already Exists (238)"
  end
  if value == 239 then
    return "Reason Code: Number Of Legs Incorrect (239)"
  end
  if value == 240 then
    return "Reason Code: Cancel Does Not Set Nbbo Inst (240)"
  end
  if value == 241 then
    return "Reason Code: Cancel Avoid Reprice Inst (241)"
  end
  if value == 242 then
    return "Reason Code: Allow Reprice Once Then Cancel Inst (242)"
  end
  if value == 243 then
    return "Reason Code: Invalid Allocation Pct (243)"
  end
  if value == 244 then
    return "Reason Code: Invalid Mm Quote Type (244)"
  end
  if value == 245 then
    return "Reason Code: Invalid Mm Sent Time (245)"
  end
  if value == 246 then
    return "Reason Code: Series Expired (246)"
  end
  if value == 247 then
    return "Reason Code: Invalid Give Up Mmid (247)"
  end
  if value == 248 then
    return "Reason Code: Invalid No Sides (248)"
  end
  if value == 249 then
    return "Reason Code: Pending To Acceptance (249)"
  end
  if value == 250 then
    return "Reason Code: Reserved For Future Use 250 (250)"
  end
  if value == 251 then
    return "Reason Code: Invalid Bulk Action (251)"
  end
  if value == 252 then
    return "Reason Code: Invalid Cancel Scope (252)"
  end
  if value == 253 then
    return "Reason Code: No Legal Width Spread (253)"
  end
  if value == 254 then
    return "Reason Code: Invalid Target Cancel Mpid (254)"
  end
  if value == 255 then
    return "Reason Code: Invalid Target Cancel Sender Comp Id (255)"
  end
  if value == 256 then
    return "Reason Code: Clear The Book Prev Entered (256)"
  end
  if value == 257 then
    return "Reason Code: Timer Expired Api Allocation (257)"
  end
  if value == 258 then
    return "Reason Code: Invalid Number Of Quotes (258)"
  end
  if value == 259 then
    return "Reason Code: Invalid Order Id (259)"
  end
  if value == 260 then
    return "Reason Code: Risk Control Event (260)"
  end
  if value == 261 then
    return "Reason Code: To Rejected (261)"
  end
  if value == 262 then
    return "Reason Code: Cancelled Corporate Action (262)"
  end
  if value == 263 then
    return "Reason Code: Too Late To Replace (263)"
  end
  if value == 264 then
    return "Reason Code: Invalid Ref Delta (264)"
  end
  if value == 265 then
    return "Reason Code: Invalid Stock Price (265)"
  end
  if value == 266 then
    return "Reason Code: Reserved For Future Use 266 (266)"
  end
  if value == 267 then
    return "Reason Code: Invalid Tied To Stock (267)"
  end
  if value == 268 then
    return "Reason Code: Too Late To Allocate (268)"
  end
  if value == 269 then
    return "Reason Code: Customer Interest On Bbo (269)"
  end
  if value == 270 then
    return "Reason Code: Ido Cannot Be Modified (270)"
  end
  if value == 271 then
    return "Reason Code: Cross Outside Bbo (271)"
  end
  if value == 272 then
    return "Reason Code: Pending To Approval (272)"
  end
  if value == 273 then
    return "Reason Code: Invalid Leg Open Close (273)"
  end
  if value == 274 then
    return "Reason Code: Invalid Risk Control Type (274)"
  end
  if value == 275 then
    return "Reason Code: Invalid Risk Control Activation (275)"
  end
  if value == 276 then
    return "Reason Code: Invalid Breach Action Request (276)"
  end
  if value == 277 then
    return "Reason Code: Invalid Ioc Attribution (277)"
  end
  if value == 278 then
    return "Reason Code: Invalid Risk Action Type (278)"
  end
  if value == 279 then
    return "Reason Code: Invalid Usd Limit (279)"
  end
  if value == 280 then
    return "Reason Code: Ido Already Exists (280)"
  end
  if value == 281 then
    return "Reason Code: Invalid Time Limit (281)"
  end
  if value == 282 then
    return "Reason Code: Invalid Percentage Limit (282)"
  end
  if value == 283 then
    return "Reason Code: Invalid Count Limit (283)"
  end
  if value == 284 then
    return "Reason Code: Risk Roll Transact Breach (284)"
  end
  if value == 285 then
    return "Reason Code: Risk Roll Vol Breach (285)"
  end
  if value == 286 then
    return "Reason Code: Risk Roll Pct Breach (286)"
  end
  if value == 287 then
    return "Reason Code: Risk Roll Grmp Breach (287)"
  end
  if value == 288 then
    return "Reason Code: Risk Mm Arbitrage Breach (288)"
  end
  if value == 289 then
    return "Reason Code: Risk Mm Intrinsic Breach (289)"
  end
  if value == 290 then
    return "Reason Code: Ido Must Exist (290)"
  end
  if value == 291 then
    return "Reason Code: Invalid Allocation Tag (291)"
  end
  if value == 292 then
    return "Reason Code: Invalid Trade Tag (292)"
  end
  if value == 293 then
    return "Reason Code: Arbitrage Check (293)"
  end
  if value == 294 then
    return "Reason Code: Intrinsic Value Check (294)"
  end
  if value == 295 then
    return "Reason Code: Credit Debit Check (295)"
  end
  if value == 296 then
    return "Reason Code: Invalid Risk User (296)"
  end
  if value == 297 then
    return "Reason Code: Invalid Risk Entity (297)"
  end
  if value == 298 then
    return "Reason Code: Invalid Flex Series Already Exists (298)"
  end
  if value == 299 then
    return "Reason Code: Invalid Flex Series Key (299)"
  end
  if value == 300 then
    return "Reason Code: Invalid Clear The Book (300)"
  end
  if value == 301 then
    return "Reason Code: Invalid Stock Qty (301)"
  end
  if value == 302 then
    return "Reason Code: Invalid Package Link Id (302)"
  end
  if value == 303 then
    return "Reason Code: Complex Max Series Breach (303)"
  end
  if value == 304 then
    return "Reason Code: Invalid Flex Eod Tag (304)"
  end
  if value == 305 then
    return "Reason Code: Invalid Percentage Price (305)"
  end
  if value == 999 then
    return "Reason Code: Unknown Issue Encountered (999)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id = {}

-- Size: Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.size = 8

-- Display: Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Transact Time Timestamp 8
nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8 = {}

-- Size: Transact Time Timestamp 8
nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.size = 8

-- Display: Transact Time Timestamp 8
nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time Timestamp 8: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time Timestamp 8
nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.transact_time_timestamp_8, range, value, display)

  return offset + length, value
end

-- Complex Series Request Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message = {}

-- Read runtime size of: Complex Series Request Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Complex Series Request Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Request Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_complex_series_request_acknowledgement_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect(buffer, index, packet, parent)

  -- Repeating Groups: u8
  index, repeating_groups = nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Group
  for leg_group_index = 1, repeating_groups do
    index, leg_group = nyse_amex_options_binarygateway_pillar_v3_25.leg_group.dissect(buffer, index, packet, parent, leg_group_index)
  end

  return index
end

-- Dissect: Complex Series Request Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_complex_series_request_acknowledgement_message = nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.complex_series_request_acknowledgement_message then
    local range = buffer(offset, size_of_complex_series_request_acknowledgement_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.complex_series_request_acknowledgement_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_complex_series_request_acknowledgement_message)

  return offset + size_of_complex_series_request_acknowledgement_message
end

-- Reserved Zchar 200200
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_200200 = {}

-- Size: Reserved Zchar 200200
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_200200.size = 200

-- Display: Reserved Zchar 200200
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_200200.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved Zchar 200200: No Value"
  end

  return "Reserved Zchar 200200: "..value
end

-- Dissect: Reserved Zchar 200200
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_200200.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_200200.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_200200.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_zchar_200200, range, value, display)

  return offset + length, value
end

-- Reinstatement Required By Other
nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_other = {}

-- Size: Reinstatement Required By Other
nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_other.size = 1

-- Display: Reinstatement Required By Other
nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_other.display = function(value)
  if value == 0 then
    return "Reinstatement Required By Other: Not Required (0)"
  end
  if value == 1 then
    return "Reinstatement Required By Other: Required (1)"
  end

  return "Reinstatement Required By Other: Unknown("..value..")"
end

-- Dissect: Reinstatement Required By Other
nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_other.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_other.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_other.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reinstatement_required_by_other, range, value, display)

  return offset + length, value
end

-- Reinstatement Required By Self
nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_self = {}

-- Size: Reinstatement Required By Self
nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_self.size = 1

-- Display: Reinstatement Required By Self
nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_self.display = function(value)
  if value == 0 then
    return "Reinstatement Required By Self: Not Required (0)"
  end
  if value == 1 then
    return "Reinstatement Required By Self: Required (1)"
  end

  return "Reinstatement Required By Self: Unknown("..value..")"
end

-- Dissect: Reinstatement Required By Self
nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_self.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_self.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_self.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reinstatement_required_by_self, range, value, display)

  return offset + length, value
end

-- Blocked By Kill Switch Indicator
nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_kill_switch_indicator = {}

-- Size: Blocked By Kill Switch Indicator
nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_kill_switch_indicator.size = 1

-- Display: Blocked By Kill Switch Indicator
nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_kill_switch_indicator.display = function(value)
  if value == 0 then
    return "Blocked By Kill Switch Indicator: Not Blocked By Kill Switch (0)"
  end
  if value == 1 then
    return "Blocked By Kill Switch Indicator: Blocked By Kill Switch (1)"
  end

  return "Blocked By Kill Switch Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Kill Switch Indicator
nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_kill_switch_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_kill_switch_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_kill_switch_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.blocked_by_kill_switch_indicator, range, value, display)

  return offset + length, value
end

-- Blocked By Breach Indicator
nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_breach_indicator = {}

-- Size: Blocked By Breach Indicator
nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_breach_indicator.size = 1

-- Display: Blocked By Breach Indicator
nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_breach_indicator.display = function(value)
  if value == 0 then
    return "Blocked By Breach Indicator: Not Blocked By Breach (0)"
  end
  if value == 1 then
    return "Blocked By Breach Indicator: Blocked By Breach (1)"
  end
  if value == 2 then
    return "Blocked By Breach Indicator: Blocked By Arbitrage Check (2)"
  end
  if value == 3 then
    return "Blocked By Breach Indicator: Blocked By Intrinsic Value Check (3)"
  end

  return "Blocked By Breach Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Breach Indicator
nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_breach_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_breach_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_breach_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.blocked_by_breach_indicator, range, value, display)

  return offset + length, value
end

-- Threshold Breach Level
nyse_amex_options_binarygateway_pillar_v3_25.threshold_breach_level = {}

-- Size: Threshold Breach Level
nyse_amex_options_binarygateway_pillar_v3_25.threshold_breach_level.size = 1

-- Display: Threshold Breach Level
nyse_amex_options_binarygateway_pillar_v3_25.threshold_breach_level.display = function(value)
  if value == 0 then
    return "Threshold Breach Level: Not Applicable (0)"
  end
  if value == 4 then
    return "Threshold Breach Level: Greater Than 100 Percent (4)"
  end

  return "Threshold Breach Level: Unknown("..value..")"
end

-- Dissect: Threshold Breach Level
nyse_amex_options_binarygateway_pillar_v3_25.threshold_breach_level.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.threshold_breach_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.threshold_breach_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.threshold_breach_level, range, value, display)

  return offset + length, value
end

-- Risk Action Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type = {}

-- Size: Risk Action Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type.size = 1

-- Display: Risk Action Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type.display = function(value)
  if value == 0 then
    return "Risk Action Type: Not Applicable (0)"
  end
  if value == 1 then
    return "Risk Action Type: Query (1)"
  end
  if value == 2 then
    return "Risk Action Type: Kill Switch Block (2)"
  end
  if value == 3 then
    return "Risk Action Type: Kill Switch Unblock (3)"
  end
  if value == 4 then
    return "Risk Action Type: Kill Switch Cancel Auction Orders (4)"
  end
  if value == 5 then
    return "Risk Action Type: Kill Switch Cancel Non Auction Orders (5)"
  end
  if value == 6 then
    return "Risk Action Type: Kill Switch Cancel Gtc Orders (6)"
  end
  if value == 7 then
    return "Risk Action Type: Approve Reinstatement (7)"
  end
  if value == 8 then
    return "Risk Action Type: Risk Entity Reinstated (8)"
  end

  return "Risk Action Type: Unknown("..value..")"
end

-- Dissect: Risk Action Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_action_type, range, value, display)

  return offset + length, value
end

-- Count Calculation
nyse_amex_options_binarygateway_pillar_v3_25.count_calculation = {}

-- Size: Count Calculation
nyse_amex_options_binarygateway_pillar_v3_25.count_calculation.size = 4

-- Display: Count Calculation
nyse_amex_options_binarygateway_pillar_v3_25.count_calculation.display = function(value)
  return "Count Calculation: "..value
end

-- Dissect: Count Calculation
nyse_amex_options_binarygateway_pillar_v3_25.count_calculation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.count_calculation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.count_calculation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.count_calculation, range, value, display)

  return offset + length, value
end

-- Usd Calculation 4
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_4 = {}

-- Size: Usd Calculation 4
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_4.size = 8

-- Display: Usd Calculation 4
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_4.display = function(value)
  return "Usd Calculation 4: "..value
end

-- Dissect: Usd Calculation 4
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_4.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_calculation_4, range, value, display)

  return offset + length, value
end

-- Usd Calculation 3
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_3 = {}

-- Size: Usd Calculation 3
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_3.size = 8

-- Display: Usd Calculation 3
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_3.display = function(value)
  return "Usd Calculation 3: "..value
end

-- Dissect: Usd Calculation 3
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_3.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_calculation_3, range, value, display)

  return offset + length, value
end

-- Usd Calculation 2
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_2 = {}

-- Size: Usd Calculation 2
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_2.size = 8

-- Display: Usd Calculation 2
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_2.display = function(value)
  return "Usd Calculation 2: "..value
end

-- Dissect: Usd Calculation 2
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_2.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_calculation_2, range, value, display)

  return offset + length, value
end

-- Usd Calculation 1
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_1 = {}

-- Size: Usd Calculation 1
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_1.size = 8

-- Display: Usd Calculation 1
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_1.display = function(value)
  return "Usd Calculation 1: "..value
end

-- Dissect: Usd Calculation 1
nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_1.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_calculation_1, range, value, display)

  return offset + length, value
end

-- Ioc Attribution
nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution = {}

-- Size: Ioc Attribution
nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution.size = 1

-- Display: Ioc Attribution
nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution.display = function(value)
  if value == 0 then
    return "Ioc Attribution: Not Applicable (0)"
  end
  if value == 1 then
    return "Ioc Attribution: Include Ioc (1)"
  end
  if value == 2 then
    return "Ioc Attribution: Exclude Ioc (2)"
  end

  return "Ioc Attribution: Unknown("..value..")"
end

-- Dissect: Ioc Attribution
nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ioc_attribution, range, value, display)

  return offset + length, value
end

-- Breach Action Response
nyse_amex_options_binarygateway_pillar_v3_25.breach_action_response = {}

-- Size: Breach Action Response
nyse_amex_options_binarygateway_pillar_v3_25.breach_action_response.size = 1

-- Display: Breach Action Response
nyse_amex_options_binarygateway_pillar_v3_25.breach_action_response.display = function(value)
  if value == 0 then
    return "Breach Action Response: Not Applicable (0)"
  end
  if value == 1 then
    return "Breach Action Response: Notifications Only (1)"
  end
  if value == 2 then
    return "Breach Action Response: Cancel Non Auction Orders And Block (2)"
  end
  if value == 3 then
    return "Breach Action Response: Block (3)"
  end

  return "Breach Action Response: Unknown("..value..")"
end

-- Dissect: Breach Action Response
nyse_amex_options_binarygateway_pillar_v3_25.breach_action_response.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.breach_action_response.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.breach_action_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.breach_action_response, range, value, display)

  return offset + length, value
end

-- Count Limit
nyse_amex_options_binarygateway_pillar_v3_25.count_limit = {}

-- Size: Count Limit
nyse_amex_options_binarygateway_pillar_v3_25.count_limit.size = 4

-- Display: Count Limit
nyse_amex_options_binarygateway_pillar_v3_25.count_limit.display = function(value)
  return "Count Limit: "..value
end

-- Dissect: Count Limit
nyse_amex_options_binarygateway_pillar_v3_25.count_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.count_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.count_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.count_limit, range, value, display)

  return offset + length, value
end

-- Percentage Limit
nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit = {}

-- Size: Percentage Limit
nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit.size = 4

-- Display: Percentage Limit
nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit.display = function(value)
  return "Percentage Limit: "..value
end

-- Dissect: Percentage Limit
nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.percentage_limit, range, value, display)

  return offset + length, value
end

-- Time Limit
nyse_amex_options_binarygateway_pillar_v3_25.time_limit = {}

-- Size: Time Limit
nyse_amex_options_binarygateway_pillar_v3_25.time_limit.size = 4

-- Display: Time Limit
nyse_amex_options_binarygateway_pillar_v3_25.time_limit.display = function(value)
  return "Time Limit: "..value
end

-- Dissect: Time Limit
nyse_amex_options_binarygateway_pillar_v3_25.time_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.time_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.time_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.time_limit, range, value, display)

  return offset + length, value
end

-- Usd Limit
nyse_amex_options_binarygateway_pillar_v3_25.usd_limit = {}

-- Size: Usd Limit
nyse_amex_options_binarygateway_pillar_v3_25.usd_limit.size = 8

-- Display: Usd Limit
nyse_amex_options_binarygateway_pillar_v3_25.usd_limit.display = function(value)
  return "Usd Limit: "..value
end

-- Dissect: Usd Limit
nyse_amex_options_binarygateway_pillar_v3_25.usd_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.usd_limit.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.usd_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.usd_limit, range, value, display)

  return offset + length, value
end

-- Risk Control Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type = {}

-- Size: Risk Control Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.size = 1

-- Display: Risk Control Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.display = function(value)
  if value == 0 then
    return "Risk Control Type: Not Applicable (0)"
  end
  if value == 1 then
    return "Risk Control Type: Single Order Max Qty (1)"
  end
  if value == 2 then
    return "Risk Control Type: Single Order Max Notional (2)"
  end
  if value == 3 then
    return "Risk Control Type: Gross Credit Executed (3)"
  end
  if value == 4 then
    return "Risk Control Type: Gross Credit Open (4)"
  end
  if value == 5 then
    return "Risk Control Type: Gross Credit Open And Executed (5)"
  end
  if value == 6 then
    return "Risk Control Type: Maximum Duplicative Orders (6)"
  end
  if value == 8 then
    return "Risk Control Type: Activity Rolling Transaction (8)"
  end
  if value == 9 then
    return "Risk Control Type: Activity Rolling Volume (9)"
  end
  if value == 10 then
    return "Risk Control Type: Activity Rolling Percentage (10)"
  end
  if value == 11 then
    return "Risk Control Type: Global Risk Mitigation Protection (11)"
  end
  if value == 13 then
    return "Risk Control Type: Reject Market Orders (13)"
  end
  if value == 14 then
    return "Risk Control Type: Reject Moo And Moc (14)"
  end
  if value == 19 then
    return "Risk Control Type: Reject Restricted Symbol (19)"
  end
  if value == 26 then
    return "Risk Control Type: Limit Order Price Protection Options Single Leg (26)"
  end
  if value == 27 then
    return "Risk Control Type: Limit Order Price Protection Options Complex (27)"
  end
  if value == 29 then
    return "Risk Control Type: Order Rate Threshold (29)"
  end
  if value == 30 then
    return "Risk Control Type: Reject Isoioc (30)"
  end
  if value == 31 then
    return "Risk Control Type: Reject Iso Day (31)"
  end

  return "Risk Control Type: Unknown("..value..")"
end

-- Dissect: Risk Control Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_control_type, range, value, display)

  return offset + length, value
end

-- Risk User Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type = {}

-- Size: Risk User Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.size = 1

-- Display: Risk User Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.display = function(value)
  if value == "E" then
    return "Risk User Type: Entering Firm (E)"
  end
  if value == "C" then
    return "Risk User Type: Clearing Firm (C)"
  end
  if value == "O" then
    return "Risk User Type: Options Market Maker Firm (O)"
  end

  return "Risk User Type: Unknown("..value..")"
end

-- Dissect: Risk User Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_user_type, range, value, display)

  return offset + length, value
end

-- Risk User Crd
nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd = {}

-- Size: Risk User Crd
nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.size = 4

-- Display: Risk User Crd
nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.display = function(value)
  return "Risk User Crd: "..value
end

-- Dissect: Risk User Crd
nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_user_crd, range, value, display)

  return offset + length, value
end

-- Clearing Number
nyse_amex_options_binarygateway_pillar_v3_25.clearing_number = {}

-- Size: Clearing Number
nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.size = 5

-- Display: Clearing Number
nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Number: No Value"
  end

  return "Clearing Number: "..value
end

-- Dissect: Clearing Number
nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_number, range, value, display)

  return offset + length, value
end

-- Mp Sub Id
nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id = {}

-- Size: Mp Sub Id
nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.size = 4

-- Display: Mp Sub Id
nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mp Sub Id: No Value"
  end

  return "Mp Sub Id: "..value
end

-- Dissect: Mp Sub Id
nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mp_sub_id, range, value, display)

  return offset + length, value
end

-- Market Maker
nyse_amex_options_binarygateway_pillar_v3_25.market_maker = {}

-- Size: Market Maker
nyse_amex_options_binarygateway_pillar_v3_25.market_maker.size = 10

-- Display: Market Maker
nyse_amex_options_binarygateway_pillar_v3_25.market_maker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Maker: No Value"
  end

  return "Market Maker: "..value
end

-- Dissect: Market Maker
nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.market_maker, range, value, display)

  return offset + length, value
end

-- Mpid
nyse_amex_options_binarygateway_pillar_v3_25.mpid = {}

-- Size: Mpid
nyse_amex_options_binarygateway_pillar_v3_25.mpid.size = 4

-- Display: Mpid
nyse_amex_options_binarygateway_pillar_v3_25.mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid: No Value"
  end

  return "Mpid: "..value
end

-- Dissect: Mpid
nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mpid.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpid, range, value, display)

  return offset + length, value
end

-- Risk Control Alert Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message = {}

-- Read runtime size of: Risk Control Alert Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Control Alert Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Alert Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.fields = function(buffer, offset, packet, parent, size_of_risk_control_alert_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_amex_options_binarygateway_pillar_v3_25.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_amex_options_binarygateway_pillar_v3_25.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_amex_options_binarygateway_pillar_v3_25.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Response: u8
  index, breach_action_response = nyse_amex_options_binarygateway_pillar_v3_25.breach_action_response.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Usd Calculation 1: i64
  index, usd_calculation_1 = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_1.dissect(buffer, index, packet, parent)

  -- Usd Calculation 2: i64
  index, usd_calculation_2 = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_2.dissect(buffer, index, packet, parent)

  -- Usd Calculation 3: i64
  index, usd_calculation_3 = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_3.dissect(buffer, index, packet, parent)

  -- Usd Calculation 4: i64
  index, usd_calculation_4 = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_4.dissect(buffer, index, packet, parent)

  -- Count Calculation: u32
  index, count_calculation = nyse_amex_options_binarygateway_pillar_v3_25.count_calculation.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type.dissect(buffer, index, packet, parent)

  -- Threshold Breach Level: u8
  index, threshold_breach_level = nyse_amex_options_binarygateway_pillar_v3_25.threshold_breach_level.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: u8
  index, blocked_by_breach_indicator = nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: u8
  index, blocked_by_kill_switch_indicator = nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_kill_switch_indicator.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Self: u8
  index, reinstatement_required_by_self = nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_self.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Other: u8
  index, reinstatement_required_by_other = nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_other.dissect(buffer, index, packet, parent)

  -- Reserved Zchar 200200: zchar(200)
  index, reserved_zchar_200200 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_200200.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Alert Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_control_alert_message = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_control_alert_message then
    local range = buffer(offset, size_of_risk_control_alert_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_control_alert_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.fields(buffer, offset, packet, parent, size_of_risk_control_alert_message)

  return offset + size_of_risk_control_alert_message
end

-- Reserved Zchar 190190
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_190190 = {}

-- Size: Reserved Zchar 190190
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_190190.size = 190

-- Display: Reserved Zchar 190190
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_190190.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved Zchar 190190: No Value"
  end

  return "Reserved Zchar 190190: "..value
end

-- Dissect: Reserved Zchar 190190
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_190190.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_190190.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_190190.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_zchar_190190, range, value, display)

  return offset + length, value
end

-- Price Scale
nyse_amex_options_binarygateway_pillar_v3_25.price_scale = {}

-- Size: Price Scale
nyse_amex_options_binarygateway_pillar_v3_25.price_scale.size = 1

-- Display: Price Scale
nyse_amex_options_binarygateway_pillar_v3_25.price_scale.display = function(value)
  if value == 0 then
    return "Price Scale: No Decimals (0)"
  end
  if value == 2 then
    return "Price Scale: Two Decimals (2)"
  end

  return "Price Scale: Unknown("..value..")"
end

-- Dissect: Price Scale
nyse_amex_options_binarygateway_pillar_v3_25.price_scale.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.price_scale.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.price_scale.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.price_scale, range, value, display)

  return offset + length, value
end

-- Risk Minimum Value
nyse_amex_options_binarygateway_pillar_v3_25.risk_minimum_value = {}

-- Size: Risk Minimum Value
nyse_amex_options_binarygateway_pillar_v3_25.risk_minimum_value.size = 8

-- Display: Risk Minimum Value
nyse_amex_options_binarygateway_pillar_v3_25.risk_minimum_value.display = function(value)
  return "Risk Minimum Value: "..value
end

-- Dissect: Risk Minimum Value
nyse_amex_options_binarygateway_pillar_v3_25.risk_minimum_value.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.risk_minimum_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_minimum_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_minimum_value, range, value, display)

  return offset + length, value
end

-- Risk Range Id
nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id = {}

-- Size: Risk Range Id
nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id.size = 1

-- Display: Risk Range Id
nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id.display = function(value)
  return "Risk Range Id: "..value
end

-- Dissect: Risk Range Id
nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_range_id, range, value, display)

  return offset + length, value
end

-- Risk Control Activation
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_activation = {}

-- Size: Risk Control Activation
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_activation.size = 1

-- Display: Risk Control Activation
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_activation.display = function(value)
  if value == 0 then
    return "Risk Control Activation: Off (0)"
  end
  if value == 1 then
    return "Risk Control Activation: On (1)"
  end

  return "Risk Control Activation: Unknown("..value..")"
end

-- Dissect: Risk Control Activation
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_activation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_activation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_activation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_control_activation, range, value, display)

  return offset + length, value
end

-- Risk Ack Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_ack_type = {}

-- Size: Risk Ack Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_ack_type.size = 1

-- Display: Risk Ack Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_ack_type.display = function(value)
  return "Risk Ack Type: "..value
end

-- Dissect: Risk Ack Type
nyse_amex_options_binarygateway_pillar_v3_25.risk_ack_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.risk_ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_ack_type, range, value, display)

  return offset + length, value
end

-- Reserved 1 U 324
nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324 = {}

-- Size: Reserved 1 U 324
nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324.size = 4

-- Display: Reserved 1 U 324
nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324.display = function(value)
  return "Reserved 1 U 324: "..value
end

-- Dissect: Reserved 1 U 324
nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_1_u_324, range, value, display)

  return offset + length, value
end

-- Risk Control Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message = {}

-- Read runtime size of: Risk Control Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Control Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_risk_control_acknowledgement_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Reserved 1 U 324: u32
  index, reserved_1_u_324 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk Ack Type: u8
  index, risk_ack_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_ack_type.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Control Activation: u8
  index, risk_control_activation = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_activation.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_amex_options_binarygateway_pillar_v3_25.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_amex_options_binarygateway_pillar_v3_25.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_amex_options_binarygateway_pillar_v3_25.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Response: u8
  index, breach_action_response = nyse_amex_options_binarygateway_pillar_v3_25.breach_action_response.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Usd Calculation 1: i64
  index, usd_calculation_1 = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_1.dissect(buffer, index, packet, parent)

  -- Usd Calculation 2: i64
  index, usd_calculation_2 = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_2.dissect(buffer, index, packet, parent)

  -- Usd Calculation 3: i64
  index, usd_calculation_3 = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_3.dissect(buffer, index, packet, parent)

  -- Usd Calculation 4: i64
  index, usd_calculation_4 = nyse_amex_options_binarygateway_pillar_v3_25.usd_calculation_4.dissect(buffer, index, packet, parent)

  -- Count Calculation: u32
  index, count_calculation = nyse_amex_options_binarygateway_pillar_v3_25.count_calculation.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: u8
  index, blocked_by_breach_indicator = nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: u8
  index, blocked_by_kill_switch_indicator = nyse_amex_options_binarygateway_pillar_v3_25.blocked_by_kill_switch_indicator.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Self: u8
  index, reinstatement_required_by_self = nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_self.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Other: u8
  index, reinstatement_required_by_other = nyse_amex_options_binarygateway_pillar_v3_25.reinstatement_required_by_other.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id.dissect(buffer, index, packet, parent)

  -- Risk Minimum Value: i64
  index, risk_minimum_value = nyse_amex_options_binarygateway_pillar_v3_25.risk_minimum_value.dissect(buffer, index, packet, parent)

  -- Price Scale: u8
  index, price_scale = nyse_amex_options_binarygateway_pillar_v3_25.price_scale.dissect(buffer, index, packet, parent)

  -- Reserved Zchar 190190: zchar(190)
  index, reserved_zchar_190190 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_190190.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_control_acknowledgement_message = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_control_acknowledgement_message then
    local range = buffer(offset, size_of_risk_control_acknowledgement_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_control_acknowledgement_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_risk_control_acknowledgement_message)

  return offset + size_of_risk_control_acknowledgement_message
end

-- Reserved Char 44
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_44 = {}

-- Size: Reserved Char 44
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_44.size = 4

-- Display: Reserved Char 44
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_44.display = function(value)
  return "Reserved Char 44: "..value
end

-- Dissect: Reserved Char 44
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_44.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_44.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_44.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_char_44, range, value, display)

  return offset + length, value
end

-- User Data
nyse_amex_options_binarygateway_pillar_v3_25.user_data = {}

-- Size: User Data
nyse_amex_options_binarygateway_pillar_v3_25.user_data.size = 10

-- Display: User Data
nyse_amex_options_binarygateway_pillar_v3_25.user_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Data: No Value"
  end

  return "User Data: "..value
end

-- Dissect: User Data
nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.user_data.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.user_data, range, value, display)

  return offset + length, value
end

-- Reject Type
nyse_amex_options_binarygateway_pillar_v3_25.reject_type = {}

-- Size: Reject Type
nyse_amex_options_binarygateway_pillar_v3_25.reject_type.size = 1

-- Display: Reject Type
nyse_amex_options_binarygateway_pillar_v3_25.reject_type.display = function(value)
  if value == 1 then
    return "Reject Type: Order Or Cancel Replace Reject (1)"
  end
  if value == 2 then
    return "Reject Type: Modify Request Reject (2)"
  end
  if value == 3 then
    return "Reject Type: Cancel Request Reject (3)"
  end
  if value == 5 then
    return "Reject Type: New Bulk Quote Reject (5)"
  end
  if value == 7 then
    return "Reject Type: Risk Limit Update Request Reject (7)"
  end
  if value == 8 then
    return "Reject Type: Bulk Cancel Request Reject Options (8)"
  end
  if value == 9 then
    return "Reject Type: Cross Order Reject (9)"
  end
  if value == 10 then
    return "Reject Type: New Complex Series Request Reject (10)"
  end
  if value == 11 then
    return "Reject Type: Risk Action Request Reject (11)"
  end

  return "Reject Type: Unknown("..value..")"
end

-- Dissect: Reject Type
nyse_amex_options_binarygateway_pillar_v3_25.reject_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reject_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reject_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reject_type, range, value, display)

  return offset + length, value
end

-- Application Layer Reject Message
nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message = {}

-- Read runtime size of: Application Layer Reject Message
nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Application Layer Reject Message
nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Layer Reject Message
nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.fields = function(buffer, offset, packet, parent, size_of_application_layer_reject_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect(buffer, index, packet, parent)

  -- Reject Type: u8
  index, reject_type = nyse_amex_options_binarygateway_pillar_v3_25.reject_type.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  -- Reserved Char 44: char(4)
  index, reserved_char_44 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Application Layer Reject Message
nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_layer_reject_message = nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_layer_reject_message then
    local range = buffer(offset, size_of_application_layer_reject_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.application_layer_reject_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.fields(buffer, offset, packet, parent, size_of_application_layer_reject_message)

  return offset + size_of_application_layer_reject_message
end

-- Bust Correct Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bust_correct_indicator = {}

-- Size: Bust Correct Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bust_correct_indicator.size = 1

-- Display: Bust Correct Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bust_correct_indicator.display = function(value)
  if value == 0 then
    return "Bust Correct Indicator: Trade Bust (0)"
  end
  if value == 1 then
    return "Bust Correct Indicator: Trade Correction (1)"
  end

  return "Bust Correct Indicator: Unknown("..value..")"
end

-- Dissect: Bust Correct Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bust_correct_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.bust_correct_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.bust_correct_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bust_correct_indicator, range, value, display)

  return offset + length, value
end

-- Last Qty
nyse_amex_options_binarygateway_pillar_v3_25.last_qty = {}

-- Size: Last Qty
nyse_amex_options_binarygateway_pillar_v3_25.last_qty.size = 4

-- Display: Last Qty
nyse_amex_options_binarygateway_pillar_v3_25.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
nyse_amex_options_binarygateway_pillar_v3_25.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Px
nyse_amex_options_binarygateway_pillar_v3_25.last_px = {}

-- Size: Last Px
nyse_amex_options_binarygateway_pillar_v3_25.last_px.size = 8

-- Display: Last Px
nyse_amex_options_binarygateway_pillar_v3_25.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
nyse_amex_options_binarygateway_pillar_v3_25.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
nyse_amex_options_binarygateway_pillar_v3_25.last_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.last_px.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.last_px, range, value, display)

  return offset + length, value
end

-- Deal Id
nyse_amex_options_binarygateway_pillar_v3_25.deal_id = {}

-- Size: Deal Id
nyse_amex_options_binarygateway_pillar_v3_25.deal_id.size = 8

-- Display: Deal Id
nyse_amex_options_binarygateway_pillar_v3_25.deal_id.display = function(value)
  return "Deal Id: "..value
end

-- Dissect: Deal Id
nyse_amex_options_binarygateway_pillar_v3_25.deal_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.deal_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.deal_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.deal_id, range, value, display)

  return offset + length, value
end

-- Seq
nyse_amex_options_binarygateway_pillar_v3_25.seq = {}

-- Size: Seq
nyse_amex_options_binarygateway_pillar_v3_25.seq.size = 8

-- Display: Seq
nyse_amex_options_binarygateway_pillar_v3_25.seq.display = function(value)
  return "Seq: "..value
end

-- Dissect: Seq
nyse_amex_options_binarygateway_pillar_v3_25.seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq, range, value, display)

  return offset + length, value
end

-- User
nyse_amex_options_binarygateway_pillar_v3_25.user = {}

-- Size: User
nyse_amex_options_binarygateway_pillar_v3_25.user.size = 4

-- Display: User
nyse_amex_options_binarygateway_pillar_v3_25.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nyse_amex_options_binarygateway_pillar_v3_25.user.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.user.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.user, range, value, display)

  return offset + length, value
end

-- Sess
nyse_amex_options_binarygateway_pillar_v3_25.sess = {}

-- Size: Sess
nyse_amex_options_binarygateway_pillar_v3_25.sess.size = 4

-- Display: Sess
nyse_amex_options_binarygateway_pillar_v3_25.sess.display = function(value)
  return "Sess: "..value
end

-- Dissect: Sess
nyse_amex_options_binarygateway_pillar_v3_25.sess.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.sess.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.sess.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sess, range, value, display)

  return offset + length, value
end

-- Stream Id
nyse_amex_options_binarygateway_pillar_v3_25.stream_id = {}

-- Size: Stream Id
nyse_amex_options_binarygateway_pillar_v3_25.stream_id.size =
  nyse_amex_options_binarygateway_pillar_v3_25.sess.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.user.size

-- Display: Stream Id
nyse_amex_options_binarygateway_pillar_v3_25.stream_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id
nyse_amex_options_binarygateway_pillar_v3_25.stream_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sess: 4 Byte Unsigned Fixed Width Integer
  index, sess = nyse_amex_options_binarygateway_pillar_v3_25.sess.dissect(buffer, index, packet, parent)

  -- User: 4 Byte Unsigned Fixed Width Integer
  index, user = nyse_amex_options_binarygateway_pillar_v3_25.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id
nyse_amex_options_binarygateway_pillar_v3_25.stream_id.dissect = function(buffer, offset, packet, parent)
  if show.stream_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.stream_id, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.stream_id.fields(buffer, offset, packet, parent)
  end
end

-- Ref Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id = {}

-- Size: Ref Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id.size =
  nyse_amex_options_binarygateway_pillar_v3_25.stream_id.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.seq.size

-- Display: Ref Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ref Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_amex_options_binarygateway_pillar_v3_25.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ref Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id.dissect = function(buffer, offset, packet, parent)
  if show.ref_seq_msg_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ref_seq_msg_id, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
nyse_amex_options_binarygateway_pillar_v3_25.order_id = {}

-- Size: Order Id
nyse_amex_options_binarygateway_pillar_v3_25.order_id.size = 8

-- Display: Order Id
nyse_amex_options_binarygateway_pillar_v3_25.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_amex_options_binarygateway_pillar_v3_25.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Bust Correct Message
nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message = {}

-- Read runtime size of: Trade Bust Correct Message
nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Trade Bust Correct Message
nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Correct Message
nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.fields = function(buffer, offset, packet, parent, size_of_trade_bust_correct_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_amex_options_binarygateway_pillar_v3_25.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Ref Seq Msg Id: Struct of 2 fields
  index, ref_seq_msg_id = nyse_amex_options_binarygateway_pillar_v3_25.ref_seq_msg_id.dissect(buffer, index, packet, parent)

  -- Deal Id: u64
  index, deal_id = nyse_amex_options_binarygateway_pillar_v3_25.deal_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = nyse_amex_options_binarygateway_pillar_v3_25.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: u32
  index, last_qty = nyse_amex_options_binarygateway_pillar_v3_25.last_qty.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  -- Bust Correct Indicator: u8
  index, bust_correct_indicator = nyse_amex_options_binarygateway_pillar_v3_25.bust_correct_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Correct Message
nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_bust_correct_message = nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_bust_correct_message then
    local range = buffer(offset, size_of_trade_bust_correct_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.trade_bust_correct_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.fields(buffer, offset, packet, parent, size_of_trade_bust_correct_message)

  return offset + size_of_trade_bust_correct_message
end

-- Clearing Account
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account = {}

-- Size: Clearing Account
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account.size = 5

-- Display: Clearing Account
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Optional Data
nyse_amex_options_binarygateway_pillar_v3_25.optional_data = {}

-- Size: Optional Data
nyse_amex_options_binarygateway_pillar_v3_25.optional_data.size = 16

-- Display: Optional Data
nyse_amex_options_binarygateway_pillar_v3_25.optional_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data: No Value"
  end

  return "Optional Data: "..value
end

-- Dissect: Optional Data
nyse_amex_options_binarygateway_pillar_v3_25.optional_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.optional_data.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.optional_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.optional_data, range, value, display)

  return offset + length, value
end

-- Clearing Firm
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm = {}

-- Size: Clearing Firm
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm.size = 5

-- Display: Clearing Firm
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Deliver To Comp Id
nyse_amex_options_binarygateway_pillar_v3_25.deliver_to_comp_id = {}

-- Size: Deliver To Comp Id
nyse_amex_options_binarygateway_pillar_v3_25.deliver_to_comp_id.size = 5

-- Display: Deliver To Comp Id
nyse_amex_options_binarygateway_pillar_v3_25.deliver_to_comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Deliver To Comp Id: No Value"
  end

  return "Deliver To Comp Id: "..value
end

-- Dissect: Deliver To Comp Id
nyse_amex_options_binarygateway_pillar_v3_25.deliver_to_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.deliver_to_comp_id.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.deliver_to_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.deliver_to_comp_id, range, value, display)

  return offset + length, value
end

-- Max Floor
nyse_amex_options_binarygateway_pillar_v3_25.max_floor = {}

-- Size: Max Floor
nyse_amex_options_binarygateway_pillar_v3_25.max_floor.size = 4

-- Display: Max Floor
nyse_amex_options_binarygateway_pillar_v3_25.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nyse_amex_options_binarygateway_pillar_v3_25.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Stop Px
nyse_amex_options_binarygateway_pillar_v3_25.stop_px = {}

-- Size: Stop Px
nyse_amex_options_binarygateway_pillar_v3_25.stop_px.size = 8

-- Display: Stop Px
nyse_amex_options_binarygateway_pillar_v3_25.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
nyse_amex_options_binarygateway_pillar_v3_25.stop_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
nyse_amex_options_binarygateway_pillar_v3_25.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.stop_px.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Sub Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_length = {}

-- Size: Sub Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_length.size = 2

-- Display: Sub Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_length.display = function(value)
  return "Sub Msg Length: "..value
end

-- Dissect: Sub Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sub_msg_length, range, value, display)

  return offset + length, value
end

-- Sub Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_type = {}

-- Size: Sub Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_type.size = 2

-- Display: Sub Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_type.display = function(value)
  return "Sub Msg Type: "..value
end

-- Dissect: Sub Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sub_msg_type, range, value, display)

  return offset + length, value
end

-- Sub Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header = {}

-- Size: Sub Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.size =
  nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_type.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_length.size

-- Display: Sub Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Type: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_type = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_type.dissect(buffer, index, packet, parent)

  -- Sub Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_length = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.sub_msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sub_msg_header, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Optional Order Add On
nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on = {}

-- Size: Optional Order Add On
nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.size =
  nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.stop_px.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.max_floor.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.deliver_to_comp_id.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.optional_data.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.clearing_account.size

-- Display: Optional Order Add On
nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Order Add On
nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Stop Px: Price
  index, stop_px = nyse_amex_options_binarygateway_pillar_v3_25.stop_px.dissect(buffer, index, packet, parent)

  -- Max Floor: u32
  index, max_floor = nyse_amex_options_binarygateway_pillar_v3_25.max_floor.dissect(buffer, index, packet, parent)

  -- Deliver To Comp Id: zchar(5)
  index, deliver_to_comp_id = nyse_amex_options_binarygateway_pillar_v3_25.deliver_to_comp_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: zchar(5)
  index, clearing_firm = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm.dissect(buffer, index, packet, parent)

  -- Optional Data: zchar(16)
  index, optional_data = nyse_amex_options_binarygateway_pillar_v3_25.optional_data.dissect(buffer, index, packet, parent)

  -- Clearing Account: zchar(5)
  index, clearing_account = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Order Add On
nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.dissect = function(buffer, offset, packet, parent)
  if show.optional_order_add_on then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.optional_order_add_on, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.fields(buffer, offset, packet, parent)
  end
end

-- Open Close U 81
nyse_amex_options_binarygateway_pillar_v3_25.open_close_u_81 = {}

-- Size: Open Close U 81
nyse_amex_options_binarygateway_pillar_v3_25.open_close_u_81.size = 1

-- Display: Open Close U 81
nyse_amex_options_binarygateway_pillar_v3_25.open_close_u_81.display = function(value)
  return "Open Close U 81: "..value
end

-- Dissect: Open Close U 81
nyse_amex_options_binarygateway_pillar_v3_25.open_close_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.open_close_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.open_close_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.open_close_u_81, range, value, display)

  return offset + length, value
end

-- Cross Id
nyse_amex_options_binarygateway_pillar_v3_25.cross_id = {}

-- Size: Cross Id
nyse_amex_options_binarygateway_pillar_v3_25.cross_id.size = 8

-- Display: Cross Id
nyse_amex_options_binarygateway_pillar_v3_25.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_amex_options_binarygateway_pillar_v3_25.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Covered Or Uncovered
nyse_amex_options_binarygateway_pillar_v3_25.covered_or_uncovered = {}

-- Size: Covered Or Uncovered
nyse_amex_options_binarygateway_pillar_v3_25.covered_or_uncovered.size = 1

-- Display: Covered Or Uncovered
nyse_amex_options_binarygateway_pillar_v3_25.covered_or_uncovered.display = function(value)
  if value == 0 then
    return "Covered Or Uncovered: Not Applicable (0)"
  end
  if value == 1 then
    return "Covered Or Uncovered: Exposed (1)"
  end
  if value == 2 then
    return "Covered Or Uncovered: Covered (2)"
  end

  return "Covered Or Uncovered: Unknown("..value..")"
end

-- Dissect: Covered Or Uncovered
nyse_amex_options_binarygateway_pillar_v3_25.covered_or_uncovered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.covered_or_uncovered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.covered_or_uncovered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.covered_or_uncovered, range, value, display)

  return offset + length, value
end

-- Contra Covered Or Uncovered
nyse_amex_options_binarygateway_pillar_v3_25.contra_covered_or_uncovered = {}

-- Size: Contra Covered Or Uncovered
nyse_amex_options_binarygateway_pillar_v3_25.contra_covered_or_uncovered.size = 1

-- Display: Contra Covered Or Uncovered
nyse_amex_options_binarygateway_pillar_v3_25.contra_covered_or_uncovered.display = function(value)
  if value == 0 then
    return "Contra Covered Or Uncovered: Not Applicable (0)"
  end
  if value == 1 then
    return "Contra Covered Or Uncovered: Exposed (1)"
  end
  if value == 2 then
    return "Contra Covered Or Uncovered: Covered (2)"
  end

  return "Contra Covered Or Uncovered: Unknown("..value..")"
end

-- Dissect: Contra Covered Or Uncovered
nyse_amex_options_binarygateway_pillar_v3_25.contra_covered_or_uncovered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contra_covered_or_uncovered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.contra_covered_or_uncovered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_covered_or_uncovered, range, value, display)

  return offset + length, value
end

-- Contra Cross Type
nyse_amex_options_binarygateway_pillar_v3_25.contra_cross_type = {}

-- Size: Contra Cross Type
nyse_amex_options_binarygateway_pillar_v3_25.contra_cross_type.size = 2

-- Display: Contra Cross Type
nyse_amex_options_binarygateway_pillar_v3_25.contra_cross_type.display = function(value)
  if value == 0 then
    return "Contra Cross Type: Not Applicable (0)"
  end
  if value == 5 then
    return "Contra Cross Type: Price Improvement Cube (5)"
  end
  if value == 7 then
    return "Contra Cross Type: Aoncube Solicitation (7)"
  end
  if value == 10 then
    return "Contra Cross Type: Qcc (10)"
  end
  if value == 11 then
    return "Contra Cross Type: Customer To Customer Cross (11)"
  end

  return "Contra Cross Type: Unknown("..value..")"
end

-- Dissect: Contra Cross Type
nyse_amex_options_binarygateway_pillar_v3_25.contra_cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contra_cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.contra_cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_cross_type, range, value, display)

  return offset + length, value
end

-- Contra Clearing Account
nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_account = {}

-- Size: Contra Clearing Account
nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_account.size = 5

-- Display: Contra Clearing Account
nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Clearing Account: No Value"
  end

  return "Contra Clearing Account: "..value
end

-- Dissect: Contra Clearing Account
nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_account.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_clearing_account, range, value, display)

  return offset + length, value
end

-- Contra Customer Or Firm
nyse_amex_options_binarygateway_pillar_v3_25.contra_customer_or_firm = {}

-- Size: Contra Customer Or Firm
nyse_amex_options_binarygateway_pillar_v3_25.contra_customer_or_firm.size = 1

-- Display: Contra Customer Or Firm
nyse_amex_options_binarygateway_pillar_v3_25.contra_customer_or_firm.display = function(value)
  if value == 0 then
    return "Contra Customer Or Firm: Not Applicable (0)"
  end
  if value == 1 then
    return "Contra Customer Or Firm: Customer (1)"
  end
  if value == 2 then
    return "Contra Customer Or Firm: Firm (2)"
  end
  if value == 3 then
    return "Contra Customer Or Firm: Broker (3)"
  end
  if value == 4 then
    return "Contra Customer Or Firm: Market Maker (4)"
  end
  if value == 5 then
    return "Contra Customer Or Firm: Away Market Maker (5)"
  end
  if value == 6 then
    return "Contra Customer Or Firm: Prof Customer (6)"
  end

  return "Contra Customer Or Firm: Unknown("..value..")"
end

-- Dissect: Contra Customer Or Firm
nyse_amex_options_binarygateway_pillar_v3_25.contra_customer_or_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contra_customer_or_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.contra_customer_or_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_customer_or_firm, range, value, display)

  return offset + length, value
end

-- Contra Open Close
nyse_amex_options_binarygateway_pillar_v3_25.contra_open_close = {}

-- Size: Contra Open Close
nyse_amex_options_binarygateway_pillar_v3_25.contra_open_close.size = 1

-- Display: Contra Open Close
nyse_amex_options_binarygateway_pillar_v3_25.contra_open_close.display = function(value)
  if value == 0 then
    return "Contra Open Close: Not Applicable (0)"
  end
  if value == 1 then
    return "Contra Open Close: Open (1)"
  end
  if value == 2 then
    return "Contra Open Close: Close (2)"
  end

  return "Contra Open Close: Unknown("..value..")"
end

-- Dissect: Contra Open Close
nyse_amex_options_binarygateway_pillar_v3_25.contra_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contra_open_close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.contra_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_open_close, range, value, display)

  return offset + length, value
end

-- Contra Mpid
nyse_amex_options_binarygateway_pillar_v3_25.contra_mpid = {}

-- Size: Contra Mpid
nyse_amex_options_binarygateway_pillar_v3_25.contra_mpid.size = 4

-- Display: Contra Mpid
nyse_amex_options_binarygateway_pillar_v3_25.contra_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Mpid: No Value"
  end

  return "Contra Mpid: "..value
end

-- Dissect: Contra Mpid
nyse_amex_options_binarygateway_pillar_v3_25.contra_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contra_mpid.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.contra_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_mpid, range, value, display)

  return offset + length, value
end

-- Contra Clearing Firm
nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_firm = {}

-- Size: Contra Clearing Firm
nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_firm.size = 5

-- Display: Contra Clearing Firm
nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Clearing Firm: No Value"
  end

  return "Contra Clearing Firm: "..value
end

-- Dissect: Contra Clearing Firm
nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_firm.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_clearing_firm, range, value, display)

  return offset + length, value
end

-- Contra Market Maker
nyse_amex_options_binarygateway_pillar_v3_25.contra_market_maker = {}

-- Size: Contra Market Maker
nyse_amex_options_binarygateway_pillar_v3_25.contra_market_maker.size = 10

-- Display: Contra Market Maker
nyse_amex_options_binarygateway_pillar_v3_25.contra_market_maker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Market Maker: No Value"
  end

  return "Contra Market Maker: "..value
end

-- Dissect: Contra Market Maker
nyse_amex_options_binarygateway_pillar_v3_25.contra_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contra_market_maker.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.contra_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contra_market_maker, range, value, display)

  return offset + length, value
end

-- Participant Type
nyse_amex_options_binarygateway_pillar_v3_25.participant_type = {}

-- Size: Participant Type
nyse_amex_options_binarygateway_pillar_v3_25.participant_type.size = 1

-- Display: Participant Type
nyse_amex_options_binarygateway_pillar_v3_25.participant_type.display = function(value)
  if value == 0 then
    return "Participant Type: Not Applicable (0)"
  end

  return "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nyse_amex_options_binarygateway_pillar_v3_25.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.participant_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Locate Reqd U 81
nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81 = {}

-- Size: Locate Reqd U 81
nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81.size = 1

-- Display: Locate Reqd U 81
nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81.display = function(value)
  return "Locate Reqd U 81: "..value
end

-- Dissect: Locate Reqd U 81
nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.locate_reqd_u_81, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_amex_options_binarygateway_pillar_v3_25.reserved_2 = {}

-- Size: Reserved 2
nyse_amex_options_binarygateway_pillar_v3_25.reserved_2.size = 2

-- Display: Reserved 2
nyse_amex_options_binarygateway_pillar_v3_25.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_amex_options_binarygateway_pillar_v3_25.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 1 U 81
nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_81 = {}

-- Size: Reserved 1 U 81
nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_81.size = 1

-- Display: Reserved 1 U 81
nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_81.display = function(value)
  return "Reserved 1 U 81: "..value
end

-- Dissect: Reserved 1 U 81
nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_1_u_81, range, value, display)

  return offset + length, value
end

-- Multileg Reporting Type
nyse_amex_options_binarygateway_pillar_v3_25.multileg_reporting_type = {}

-- Size: Multileg Reporting Type
nyse_amex_options_binarygateway_pillar_v3_25.multileg_reporting_type.size = 1

-- Display: Multileg Reporting Type
nyse_amex_options_binarygateway_pillar_v3_25.multileg_reporting_type.display = function(value)
  if value == 1 then
    return "Multileg Reporting Type: Single Leg Security (1)"
  end
  if value == 2 then
    return "Multileg Reporting Type: Individual Leg Of Multi Leg Security (2)"
  end
  if value == 3 then
    return "Multileg Reporting Type: Multi Leg Security (3)"
  end

  return "Multileg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multileg Reporting Type
nyse_amex_options_binarygateway_pillar_v3_25.multileg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.multileg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.multileg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
nyse_amex_options_binarygateway_pillar_v3_25.liquidity_indicator = {}

-- Size: Liquidity Indicator
nyse_amex_options_binarygateway_pillar_v3_25.liquidity_indicator.size = 4

-- Display: Liquidity Indicator
nyse_amex_options_binarygateway_pillar_v3_25.liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
nyse_amex_options_binarygateway_pillar_v3_25.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.liquidity_indicator.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cum Qty
nyse_amex_options_binarygateway_pillar_v3_25.cum_qty = {}

-- Size: Cum Qty
nyse_amex_options_binarygateway_pillar_v3_25.cum_qty.size = 4

-- Display: Cum Qty
nyse_amex_options_binarygateway_pillar_v3_25.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
nyse_amex_options_binarygateway_pillar_v3_25.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty = {}

-- Size: Leaves Qty
nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty.size = 4

-- Display: Leaves Qty
nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Transact Time U 648
nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648 = {}

-- Size: Transact Time U 648
nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648.size = 8

-- Display: Transact Time U 648
nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648.display = function(value)
  return "Transact Time U 648: "..value
end

-- Dissect: Transact Time U 648
nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.transact_time_u_648, range, value, display)

  return offset + length, value
end

-- Execution Report Message
nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message = {}

-- Read runtime size of: Execution Report Message
nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Execution Report Message
nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.fields = function(buffer, offset, packet, parent, size_of_execution_report_message)
  local index = offset

  -- Transact Time U 648: u64
  index, transact_time_u_648 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_amex_options_binarygateway_pillar_v3_25.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Deal Id: u64
  index, deal_id = nyse_amex_options_binarygateway_pillar_v3_25.deal_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = nyse_amex_options_binarygateway_pillar_v3_25.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: u32
  index, cum_qty = nyse_amex_options_binarygateway_pillar_v3_25.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: u32
  index, last_qty = nyse_amex_options_binarygateway_pillar_v3_25.last_qty.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: zchar(4)
  index, liquidity_indicator = nyse_amex_options_binarygateway_pillar_v3_25.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Multileg Reporting Type: u8
  index, multileg_reporting_type = nyse_amex_options_binarygateway_pillar_v3_25.multileg_reporting_type.dissect(buffer, index, packet, parent)

  -- Reserved 1 U 81: u8
  index, reserved_1_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_81.dissect(buffer, index, packet, parent)

  -- Reserved 2: u16
  index, reserved_2 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_2.dissect(buffer, index, packet, parent)

  -- Locate Reqd U 81: u8
  index, locate_reqd_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81.dissect(buffer, index, packet, parent)

  -- Participant Type: u8
  index, participant_type = nyse_amex_options_binarygateway_pillar_v3_25.participant_type.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Contra Market Maker: zchar(10)
  index, contra_market_maker = nyse_amex_options_binarygateway_pillar_v3_25.contra_market_maker.dissect(buffer, index, packet, parent)

  -- Contra Clearing Firm: zchar(5)
  index, contra_clearing_firm = nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_firm.dissect(buffer, index, packet, parent)

  -- Contra Mpid: zchar(4)
  index, contra_mpid = nyse_amex_options_binarygateway_pillar_v3_25.contra_mpid.dissect(buffer, index, packet, parent)

  -- Contra Open Close: u8
  index, contra_open_close = nyse_amex_options_binarygateway_pillar_v3_25.contra_open_close.dissect(buffer, index, packet, parent)

  -- Contra Customer Or Firm: u8
  index, contra_customer_or_firm = nyse_amex_options_binarygateway_pillar_v3_25.contra_customer_or_firm.dissect(buffer, index, packet, parent)

  -- Contra Clearing Account: zchar(5)
  index, contra_clearing_account = nyse_amex_options_binarygateway_pillar_v3_25.contra_clearing_account.dissect(buffer, index, packet, parent)

  -- Contra Cross Type: u16
  index, contra_cross_type = nyse_amex_options_binarygateway_pillar_v3_25.contra_cross_type.dissect(buffer, index, packet, parent)

  -- Contra Covered Or Uncovered: u8
  index, contra_covered_or_uncovered = nyse_amex_options_binarygateway_pillar_v3_25.contra_covered_or_uncovered.dissect(buffer, index, packet, parent)

  -- Covered Or Uncovered: u8
  index, covered_or_uncovered = nyse_amex_options_binarygateway_pillar_v3_25.covered_or_uncovered.dissect(buffer, index, packet, parent)

  -- Cross Id: u64
  index, cross_id = nyse_amex_options_binarygateway_pillar_v3_25.cross_id.dissect(buffer, index, packet, parent)

  -- Open Close U 81: u8
  index, open_close_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.open_close_u_81.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Message
nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_execution_report_message = nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.execution_report_message then
    local range = buffer(offset, size_of_execution_report_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.execution_report_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.fields(buffer, offset, packet, parent, size_of_execution_report_message)

  return offset + size_of_execution_report_message
end

-- Ack Type
nyse_amex_options_binarygateway_pillar_v3_25.ack_type = {}

-- Size: Ack Type
nyse_amex_options_binarygateway_pillar_v3_25.ack_type.size = 1

-- Display: Ack Type
nyse_amex_options_binarygateway_pillar_v3_25.ack_type.display = function(value)
  if value == 1 then
    return "Ack Type: New Interest (1)"
  end
  if value == 2 then
    return "Ack Type: Order Priority Update New Order Id (2)"
  end
  if value == 3 then
    return "Ack Type: Order Priority Update Same Order Id (3)"
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
  if value == 17 then
    return "Ack Type: Gtc Renewal Or Restatement (17)"
  end
  if value == 18 then
    return "Ack Type: Individual Market Maker Quote Reject (18)"
  end

  return "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
nyse_amex_options_binarygateway_pillar_v3_25.ack_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Pre Liquidity Indicator
nyse_amex_options_binarygateway_pillar_v3_25.pre_liquidity_indicator = {}

-- Size: Pre Liquidity Indicator
nyse_amex_options_binarygateway_pillar_v3_25.pre_liquidity_indicator.size = 4

-- Display: Pre Liquidity Indicator
nyse_amex_options_binarygateway_pillar_v3_25.pre_liquidity_indicator.display = function(value)
  if value == "0" then
    return "Pre Liquidity Indicator: None (0)"
  end
  if value == "1" then
    return "Pre Liquidity Indicator: Local Market Candidate (1)"
  end
  if value == "4" then
    return "Pre Liquidity Indicator: Join Nbbo Candidate (4)"
  end
  if value == "5" then
    return "Pre Liquidity Indicator: Set Nbbo Candidate (5)"
  end

  return "Pre Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Pre Liquidity Indicator
nyse_amex_options_binarygateway_pillar_v3_25.pre_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.pre_liquidity_indicator.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.pre_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.pre_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Working Away From Display
nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display = {}

-- Size: Working Away From Display
nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.size = 1

-- Display: Working Away From Display
nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.display = function(value)
  if value == 0 then
    return "Working Away From Display: Equal To Display Price (0)"
  end
  if value == 1 then
    return "Working Away From Display: Away From Display Price (1)"
  end

  return "Working Away From Display: Unknown("..value..")"
end

-- Dissect: Working Away From Display
nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.working_away_from_display, range, value, display)

  return offset + length, value
end

-- Order Qty
nyse_amex_options_binarygateway_pillar_v3_25.order_qty = {}

-- Size: Order Qty
nyse_amex_options_binarygateway_pillar_v3_25.order_qty.size = 4

-- Display: Order Qty
nyse_amex_options_binarygateway_pillar_v3_25.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_amex_options_binarygateway_pillar_v3_25.working_price = {}

-- Size: Working Price
nyse_amex_options_binarygateway_pillar_v3_25.working_price.size = 8

-- Display: Working Price
nyse_amex_options_binarygateway_pillar_v3_25.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
nyse_amex_options_binarygateway_pillar_v3_25.working_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Working Price
nyse_amex_options_binarygateway_pillar_v3_25.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.working_price.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.working_price, range, value, display)

  return offset + length, value
end

-- Order Priority Update Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message = {}

-- Read runtime size of: Order Priority Update Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Priority Update Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_order_priority_update_acknowledgment_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_amex_options_binarygateway_pillar_v3_25.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Working Price: Price
  index, working_price = nyse_amex_options_binarygateway_pillar_v3_25.working_price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: zchar(4)
  index, pre_liquidity_indicator = nyse_amex_options_binarygateway_pillar_v3_25.pre_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_amex_options_binarygateway_pillar_v3_25.ack_type.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_priority_update_acknowledgment_message = nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_priority_update_acknowledgment_message then
    local range = buffer(offset, size_of_order_priority_update_acknowledgment_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_priority_update_acknowledgment_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_priority_update_acknowledgment_message)

  return offset + size_of_order_priority_update_acknowledgment_message
end

-- Cancel Scope
nyse_amex_options_binarygateway_pillar_v3_25.cancel_scope = {}

-- Size: Cancel Scope
nyse_amex_options_binarygateway_pillar_v3_25.cancel_scope.size = 1

-- Display: Cancel Scope
nyse_amex_options_binarygateway_pillar_v3_25.cancel_scope.display = function(value)
  if value == 0 then
    return "Cancel Scope: Orders Only (0)"
  end
  if value == 1 then
    return "Cancel Scope: Quotes Only (1)"
  end
  if value == 2 then
    return "Cancel Scope: Orders And Quotes (2)"
  end

  return "Cancel Scope: Unknown("..value..")"
end

-- Dissect: Cancel Scope
nyse_amex_options_binarygateway_pillar_v3_25.cancel_scope.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.cancel_scope.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.cancel_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cancel_scope, range, value, display)

  return offset + length, value
end

-- Bulk Action
nyse_amex_options_binarygateway_pillar_v3_25.bulk_action = {}

-- Size: Bulk Action
nyse_amex_options_binarygateway_pillar_v3_25.bulk_action.size = 1

-- Display: Bulk Action
nyse_amex_options_binarygateway_pillar_v3_25.bulk_action.display = function(value)
  if value == 0 then
    return "Bulk Action: Not Applicable (0)"
  end
  if value == 1 then
    return "Bulk Action: Cancel Single Leg Only (1)"
  end
  if value == 2 then
    return "Bulk Action: Cancel Complex Only (2)"
  end
  if value == 3 then
    return "Bulk Action: Cancel Single And Complex (3)"
  end
  if value == 4 then
    return "Bulk Action: Block And Cancel (4)"
  end
  if value == 5 then
    return "Bulk Action: Unblock (5)"
  end

  return "Bulk Action: Unknown("..value..")"
end

-- Dissect: Bulk Action
nyse_amex_options_binarygateway_pillar_v3_25.bulk_action.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.bulk_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.bulk_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_action, range, value, display)

  return offset + length, value
end

-- Target Cancel Mpid
nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid = {}

-- Size: Target Cancel Mpid
nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid.size = 4

-- Display: Target Cancel Mpid
nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Target Cancel Mpid: No Value"
  end

  return "Target Cancel Mpid: "..value
end

-- Dissect: Target Cancel Mpid
nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.target_cancel_mpid, range, value, display)

  return offset + length, value
end

-- Target Cancel Username
nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username = {}

-- Size: Target Cancel Username
nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username.size = 16

-- Display: Target Cancel Username
nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username.display = function(value)
  return "Target Cancel Username: "..value
end

-- Dissect: Target Cancel Username
nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.target_cancel_username, range, value, display)

  return offset + length, value
end

-- Group Id
nyse_amex_options_binarygateway_pillar_v3_25.group_id = {}

-- Size: Group Id
nyse_amex_options_binarygateway_pillar_v3_25.group_id.size = 4

-- Display: Group Id
nyse_amex_options_binarygateway_pillar_v3_25.group_id.display = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
nyse_amex_options_binarygateway_pillar_v3_25.group_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.group_id, range, value, display)

  return offset + length, value
end

-- Bitfield Flow Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator = {}

-- Size: Bitfield Flow Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.size = 1

-- Display: Bitfield Flow Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Throttled flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Throttled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bitfield Flow Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.bits = function(range, value, packet, parent)

  -- Throttled: 1 Bit Enum with 2 values
  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.throttled, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_7, range, value)
end

-- Dissect: Bitfield Flow Indicator
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bitfield_flow_indicator, range, display)

  if show.bitfield_flow_indicator then
    nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Price Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_price_8 = {}

-- Size: Price Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.size = 8

-- Display: Price Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.display = function(value)
  return "Price Price 8: "..value
end

-- Translate: Price Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.price_price_8, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Ref Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_cl_ord_id = {}

-- Size: Ref Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_cl_ord_id.size = 8

-- Display: Ref Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_cl_ord_id.display = function(value)
  return "Ref Cl Ord Id: "..value
end

-- Dissect: Ref Cl Ord Id
nyse_amex_options_binarygateway_pillar_v3_25.ref_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.ref_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.ref_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ref_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = {}

-- Read runtime size of: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.fields = function(buffer, offset, packet, parent, size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_amex_options_binarygateway_pillar_v3_25.order_id.dissect(buffer, index, packet, parent)

  -- Ref Cl Ord Id: u64
  index, ref_cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.ref_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect(buffer, index, packet, parent)

  -- Locate Reqd U 81: u8
  index, locate_reqd_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_amex_options_binarygateway_pillar_v3_25.ack_type.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_amex_options_binarygateway_pillar_v3_25.group_id.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Target Cancel Username: char(16)
  index, target_cancel_username = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username.dissect(buffer, index, packet, parent)

  -- Target Cancel Mpid: zchar(4)
  index, target_cancel_mpid = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid.dissect(buffer, index, packet, parent)

  -- Bulk Action: u8
  index, bulk_action = nyse_amex_options_binarygateway_pillar_v3_25.bulk_action.dissect(buffer, index, packet, parent)

  -- Cancel Scope: u8
  index, cancel_scope = nyse_amex_options_binarygateway_pillar_v3_25.cancel_scope.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message then
    local range = buffer(offset, size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.fields(buffer, offset, packet, parent, size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message)

  return offset + size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message
end

-- Quantity
nyse_amex_options_binarygateway_pillar_v3_25.quantity = {}

-- Size: Quantity
nyse_amex_options_binarygateway_pillar_v3_25.quantity.size = 4

-- Display: Quantity
nyse_amex_options_binarygateway_pillar_v3_25.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nyse_amex_options_binarygateway_pillar_v3_25.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.quantity, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_amex_options_binarygateway_pillar_v3_25.series_index = {}

-- Size: Series Index
nyse_amex_options_binarygateway_pillar_v3_25.series_index.size = 4

-- Display: Series Index
nyse_amex_options_binarygateway_pillar_v3_25.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_amex_options_binarygateway_pillar_v3_25.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.series_index, range, value, display)

  return offset + length, value
end

-- Quote Ack Group 308
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308 = {}

-- Size: Quote Ack Group 308
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308.size =
  nyse_amex_options_binarygateway_pillar_v3_25.series_index.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.ack_type.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.quantity.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.reason_code.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.order_id.size

-- Display: Quote Ack Group 308
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Ack Group 308
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: u32
  index, series_index = nyse_amex_options_binarygateway_pillar_v3_25.series_index.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_amex_options_binarygateway_pillar_v3_25.ack_type.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = nyse_amex_options_binarygateway_pillar_v3_25.quantity.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_amex_options_binarygateway_pillar_v3_25.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Group 308
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308.dissect = function(buffer, offset, packet, parent)
  if show.quote_ack_group_308 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.quote_ack_group_308, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308.fields(buffer, offset, packet, parent)
  end
end

-- Self Trade Type U 81
nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81 = {}

-- Size: Self Trade Type U 81
nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.size = 1

-- Display: Self Trade Type U 81
nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.display = function(value)
  return "Self Trade Type U 81: "..value
end

-- Dissect: Self Trade Type U 81
nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.self_trade_type_u_81, range, value, display)

  return offset + length, value
end

-- Sub Id
nyse_amex_options_binarygateway_pillar_v3_25.sub_id = {}

-- Size: Sub Id
nyse_amex_options_binarygateway_pillar_v3_25.sub_id.size = 4

-- Display: Sub Id
nyse_amex_options_binarygateway_pillar_v3_25.sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sub Id: No Value"
  end

  return "Sub Id: "..value
end

-- Dissect: Sub Id
nyse_amex_options_binarygateway_pillar_v3_25.sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.sub_id.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sub_id, range, value, display)

  return offset + length, value
end

-- Bulk Quote Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message = {}

-- Read runtime size of: Bulk Quote Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Quote Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: zchar(4)
  index, sub_id = nyse_amex_options_binarygateway_pillar_v3_25.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- Self Trade Type U 81: u8
  index, self_trade_type_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_amex_options_binarygateway_pillar_v3_25.group_id.dissect(buffer, index, packet, parent)

  -- Repeating Groups: u8
  index, repeating_groups = nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups.dissect(buffer, index, packet, parent)

  -- Quote Ack Group 308: Struct of 8 fields
  index, quote_ack_group_308 = nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_308.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Acknowledgment Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_bulk_quote_acknowledgment_message = nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.bulk_quote_acknowledgment_message then
    local range = buffer(offset, size_of_bulk_quote_acknowledgment_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_quote_acknowledgment_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_message)

  return offset + size_of_bulk_quote_acknowledgment_message
end

-- Quote Ack Group 294
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294 = {}

-- Size: Quote Ack Group 294
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294.size =
  nyse_amex_options_binarygateway_pillar_v3_25.series_index.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.ack_type.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.quantity.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.reason_code.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.size

-- Display: Quote Ack Group 294
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Ack Group 294
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: u32
  index, series_index = nyse_amex_options_binarygateway_pillar_v3_25.series_index.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_amex_options_binarygateway_pillar_v3_25.ack_type.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = nyse_amex_options_binarygateway_pillar_v3_25.quantity.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Group 294
nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294.dissect = function(buffer, offset, packet, parent)
  if show.quote_ack_group_294 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.quote_ack_group_294, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Acknowledgment Type 294 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message = {}

-- Read runtime size of: Bulk Quote Acknowledgment Type 294 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Quote Acknowledgment Type 294 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgment Type 294 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.fields = function(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_type_294_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: zchar(4)
  index, sub_id = nyse_amex_options_binarygateway_pillar_v3_25.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- Self Trade Type U 81: u8
  index, self_trade_type_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_amex_options_binarygateway_pillar_v3_25.group_id.dissect(buffer, index, packet, parent)

  -- Repeating Groups: u8
  index, repeating_groups = nyse_amex_options_binarygateway_pillar_v3_25.repeating_groups.dissect(buffer, index, packet, parent)

  -- Quote Ack Group 294: Struct of 7 fields
  index, quote_ack_group_294 = nyse_amex_options_binarygateway_pillar_v3_25.quote_ack_group_294.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Acknowledgment Type 294 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_bulk_quote_acknowledgment_type_294_message = nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.bulk_quote_acknowledgment_type_294_message then
    local range = buffer(offset, size_of_bulk_quote_acknowledgment_type_294_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_quote_acknowledgment_type_294_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.fields(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_type_294_message)

  return offset + size_of_bulk_quote_acknowledgment_type_294_message
end

-- Auction Id
nyse_amex_options_binarygateway_pillar_v3_25.auction_id = {}

-- Size: Auction Id
nyse_amex_options_binarygateway_pillar_v3_25.auction_id.size = 8

-- Display: Auction Id
nyse_amex_options_binarygateway_pillar_v3_25.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_amex_options_binarygateway_pillar_v3_25.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Leg Open Close
nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close = {}

-- Size: Leg Open Close
nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.size = 8

-- Display: Leg Open Close
nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.display = function(value)
  if value == 0 then
    return "Leg Open Close: Open (0)"
  end
  if value == 1 then
    return "Leg Open Close: Close (1)"
  end

  return "Leg Open Close: Unknown("..value..")"
end

-- Dissect: Leg Open Close
nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.leg_open_close, range, value, display)

  return offset + length, value
end

-- Min Qty
nyse_amex_options_binarygateway_pillar_v3_25.min_qty = {}

-- Size: Min Qty
nyse_amex_options_binarygateway_pillar_v3_25.min_qty.size = 4

-- Display: Min Qty
nyse_amex_options_binarygateway_pillar_v3_25.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nyse_amex_options_binarygateway_pillar_v3_25.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Bitfield Order Instructions
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions = {}

-- Size: Bitfield Order Instructions
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.size = 16

-- Display: Bitfield Order Instructions
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.display = function(value)
  return "Bitfield Order Instructions: "..value
end

-- Dissect: Bitfield Order Instructions
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bitfield_order_instructions, range, value, display)

  return offset + length, value
end

-- Order And Cancel Replace Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message = {}

-- Read runtime size of: Order And Cancel Replace Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order And Cancel Replace Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order And Cancel Replace Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_order_and_cancel_replace_acknowledgement_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: u128
  index, bitfield_order_instructions = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_amex_options_binarygateway_pillar_v3_25.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_amex_options_binarygateway_pillar_v3_25.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_amex_options_binarygateway_pillar_v3_25.leaves_qty.dissect(buffer, index, packet, parent)

  -- Working Price: Price
  index, working_price = nyse_amex_options_binarygateway_pillar_v3_25.working_price.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_amex_options_binarygateway_pillar_v3_25.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: zchar(4)
  index, pre_liquidity_indicator = nyse_amex_options_binarygateway_pillar_v3_25.pre_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_amex_options_binarygateway_pillar_v3_25.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_amex_options_binarygateway_pillar_v3_25.ack_type.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- Leg Open Close: u64
  index, leg_open_close = nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: u64
  index, auction_id = nyse_amex_options_binarygateway_pillar_v3_25.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order And Cancel Replace Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_and_cancel_replace_acknowledgement_message = nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_and_cancel_replace_acknowledgement_message then
    local range = buffer(offset, size_of_order_and_cancel_replace_acknowledgement_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_and_cancel_replace_acknowledgement_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_order_and_cancel_replace_acknowledgement_message)

  return offset + size_of_order_and_cancel_replace_acknowledgement_message
end

-- Reserved Zchar 4949
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_4949 = {}

-- Size: Reserved Zchar 4949
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_4949.size = 49

-- Display: Reserved Zchar 4949
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_4949.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved Zchar 4949: No Value"
  end

  return "Reserved Zchar 4949: "..value
end

-- Dissect: Reserved Zchar 4949
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_4949.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_4949.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_4949.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_zchar_4949, range, value, display)

  return offset + length, value
end

-- Bold Designation
nyse_amex_options_binarygateway_pillar_v3_25.bold_designation = {}

-- Size: Bold Designation
nyse_amex_options_binarygateway_pillar_v3_25.bold_designation.size = 1

-- Display: Bold Designation
nyse_amex_options_binarygateway_pillar_v3_25.bold_designation.display = function(value)
  if value == 0 then
    return "Bold Designation: Not Applicable (0)"
  end
  if value == 4 then
    return "Bold Designation: Expose Order Info Only (4)"
  end
  if value == 5 then
    return "Bold Designation: Expose Order Info And Capacity (5)"
  end
  if value == 6 then
    return "Bold Designation: Expose Order Info And Participant Id (6)"
  end
  if value == 7 then
    return "Bold Designation: Expose Order Info Capacity And Participant Id (7)"
  end
  if value == 8 then
    return "Bold Designation: No Bold Defaulting (8)"
  end

  return "Bold Designation: Unknown("..value..")"
end

-- Dissect: Bold Designation
nyse_amex_options_binarygateway_pillar_v3_25.bold_designation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.bold_designation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.bold_designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bold_designation, range, value, display)

  return offset + length, value
end

-- Ack Status
nyse_amex_options_binarygateway_pillar_v3_25.ack_status = {}

-- Size: Ack Status
nyse_amex_options_binarygateway_pillar_v3_25.ack_status.size = 1

-- Display: Ack Status
nyse_amex_options_binarygateway_pillar_v3_25.ack_status.display = function(value)
  if value == 0 then
    return "Ack Status: Unsolicited (0)"
  end
  if value == 1 then
    return "Ack Status: User Request Valid (1)"
  end
  if value == 2 then
    return "Ack Status: User Request Invalid (2)"
  end

  return "Ack Status: Unknown("..value..")"
end

-- Dissect: Ack Status
nyse_amex_options_binarygateway_pillar_v3_25.ack_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.ack_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.ack_status, range, value, display)

  return offset + length, value
end

-- Order Priority Update Ack Subscription
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_ack_subscription = {}

-- Size: Order Priority Update Ack Subscription
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_ack_subscription.size = 1

-- Display: Order Priority Update Ack Subscription
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_ack_subscription.display = function(value)
  if value == 0 then
    return "Order Priority Update Ack Subscription: Not Subscribed (0)"
  end
  if value == 1 then
    return "Order Priority Update Ack Subscription: Order Priority Update Only (1)"
  end
  if value == 2 then
    return "Order Priority Update Ack Subscription: Order Priority Update And Repricing (2)"
  end

  return "Order Priority Update Ack Subscription: Unknown("..value..")"
end

-- Dissect: Order Priority Update Ack Subscription
nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_ack_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_ack_subscription.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_ack_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_priority_update_ack_subscription, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention
nyse_amex_options_binarygateway_pillar_v3_25.self_trade_prevention = {}

-- Size: Self Trade Prevention
nyse_amex_options_binarygateway_pillar_v3_25.self_trade_prevention.size = 1

-- Display: Self Trade Prevention
nyse_amex_options_binarygateway_pillar_v3_25.self_trade_prevention.display = function(value)
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

  return "Self Trade Prevention: Unknown("..value..")"
end

-- Dissect: Self Trade Prevention
nyse_amex_options_binarygateway_pillar_v3_25.self_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Max Order Quantity
nyse_amex_options_binarygateway_pillar_v3_25.max_order_quantity = {}

-- Size: Max Order Quantity
nyse_amex_options_binarygateway_pillar_v3_25.max_order_quantity.size = 4

-- Display: Max Order Quantity
nyse_amex_options_binarygateway_pillar_v3_25.max_order_quantity.display = function(value)
  return "Max Order Quantity: "..value
end

-- Dissect: Max Order Quantity
nyse_amex_options_binarygateway_pillar_v3_25.max_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.max_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.max_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.max_order_quantity, range, value, display)

  return offset + length, value
end

-- Symbol Eligibility
nyse_amex_options_binarygateway_pillar_v3_25.symbol_eligibility = {}

-- Size: Symbol Eligibility
nyse_amex_options_binarygateway_pillar_v3_25.symbol_eligibility.size = 1

-- Display: Symbol Eligibility
nyse_amex_options_binarygateway_pillar_v3_25.symbol_eligibility.display = function(value)
  if value == 1 then
    return "Symbol Eligibility: All Symbols (1)"
  end
  if value == 2 then
    return "Symbol Eligibility: Test Symbols Only (2)"
  end

  return "Symbol Eligibility: Unknown("..value..")"
end

-- Dissect: Symbol Eligibility
nyse_amex_options_binarygateway_pillar_v3_25.symbol_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.symbol_eligibility.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.symbol_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.symbol_eligibility, range, value, display)

  return offset + length, value
end

-- Throttle Threshold
nyse_amex_options_binarygateway_pillar_v3_25.throttle_threshold = {}

-- Size: Throttle Threshold
nyse_amex_options_binarygateway_pillar_v3_25.throttle_threshold.size = 2

-- Display: Throttle Threshold
nyse_amex_options_binarygateway_pillar_v3_25.throttle_threshold.display = function(value)
  return "Throttle Threshold: "..value
end

-- Dissect: Throttle Threshold
nyse_amex_options_binarygateway_pillar_v3_25.throttle_threshold.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.throttle_threshold.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.throttle_threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.throttle_threshold, range, value, display)

  return offset + length, value
end

-- Throttle Window
nyse_amex_options_binarygateway_pillar_v3_25.throttle_window = {}

-- Size: Throttle Window
nyse_amex_options_binarygateway_pillar_v3_25.throttle_window.size = 2

-- Display: Throttle Window
nyse_amex_options_binarygateway_pillar_v3_25.throttle_window.display = function(value)
  return "Throttle Window: "..value
end

-- Dissect: Throttle Window
nyse_amex_options_binarygateway_pillar_v3_25.throttle_window.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.throttle_window.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.throttle_window.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.throttle_window, range, value, display)

  return offset + length, value
end

-- Throttle Preference
nyse_amex_options_binarygateway_pillar_v3_25.throttle_preference = {}

-- Size: Throttle Preference
nyse_amex_options_binarygateway_pillar_v3_25.throttle_preference.size = 1

-- Display: Throttle Preference
nyse_amex_options_binarygateway_pillar_v3_25.throttle_preference.display = function(value)
  if value == 0 then
    return "Throttle Preference: Queue When Throttled (0)"
  end
  if value == 1 then
    return "Throttle Preference: Reject When Throttled (1)"
  end

  return "Throttle Preference: Unknown("..value..")"
end

-- Dissect: Throttle Preference
nyse_amex_options_binarygateway_pillar_v3_25.throttle_preference.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.throttle_preference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.throttle_preference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.throttle_preference, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect
nyse_amex_options_binarygateway_pillar_v3_25.cancel_on_disconnect = {}

-- Size: Cancel On Disconnect
nyse_amex_options_binarygateway_pillar_v3_25.cancel_on_disconnect.size = 1

-- Display: Cancel On Disconnect
nyse_amex_options_binarygateway_pillar_v3_25.cancel_on_disconnect.display = function(value)
  if value == 1 then
    return "Cancel On Disconnect: Cancel Day Orders (1)"
  end
  if value == 2 then
    return "Cancel On Disconnect: Cancel All Orders (2)"
  end

  return "Cancel On Disconnect: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect
nyse_amex_options_binarygateway_pillar_v3_25.cancel_on_disconnect.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.cancel_on_disconnect.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.cancel_on_disconnect.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.cancel_on_disconnect, range, value, display)

  return offset + length, value
end

-- Mic
nyse_amex_options_binarygateway_pillar_v3_25.mic = {}

-- Size: Mic
nyse_amex_options_binarygateway_pillar_v3_25.mic.size = 4

-- Display: Mic
nyse_amex_options_binarygateway_pillar_v3_25.mic.display = function(value)
  if value == "AMXO" then
    return "Mic: Nyse American Options (AMXO)"
  end

  return "Mic: Unknown("..value..")"
end

-- Dissect: Mic
nyse_amex_options_binarygateway_pillar_v3_25.mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mic, range, value, display)

  return offset + length, value
end

-- Username
nyse_amex_options_binarygateway_pillar_v3_25.username = {}

-- Size: Username
nyse_amex_options_binarygateway_pillar_v3_25.username.size = 16

-- Display: Username
nyse_amex_options_binarygateway_pillar_v3_25.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nyse_amex_options_binarygateway_pillar_v3_25.username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.username, range, value, display)

  return offset + length, value
end

-- User Session Status
nyse_amex_options_binarygateway_pillar_v3_25.user_session_status = {}

-- Size: User Session Status
nyse_amex_options_binarygateway_pillar_v3_25.user_session_status.size = 1

-- Display: User Session Status
nyse_amex_options_binarygateway_pillar_v3_25.user_session_status.display = function(value)
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
nyse_amex_options_binarygateway_pillar_v3_25.user_session_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.user_session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.user_session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.user_session_status, range, value, display)

  return offset + length, value
end

-- User Session Type
nyse_amex_options_binarygateway_pillar_v3_25.user_session_type = {}

-- Size: User Session Type
nyse_amex_options_binarygateway_pillar_v3_25.user_session_type.size = 1

-- Display: User Session Type
nyse_amex_options_binarygateway_pillar_v3_25.user_session_type.display = function(value)
  if value == 1 then
    return "User Session Type: Customer (1)"
  end
  if value == 2 then
    return "User Session Type: Service Bureau (2)"
  end
  if value == 4 then
    return "User Session Type: Options Market Maker (4)"
  end
  if value == 12 then
    return "User Session Type: Risk Admin (12)"
  end

  return "User Session Type: Unknown("..value..")"
end

-- Dissect: User Session Type
nyse_amex_options_binarygateway_pillar_v3_25.user_session_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.user_session_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.user_session_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.user_session_type, range, value, display)

  return offset + length, value
end

-- Session Configuration Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message = {}

-- Read runtime size of: Session Configuration Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Session Configuration Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_session_configuration_acknowledgement_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- User Session Type: u8
  index, user_session_type = nyse_amex_options_binarygateway_pillar_v3_25.user_session_type.dissect(buffer, index, packet, parent)

  -- User Session Status: u8
  index, user_session_status = nyse_amex_options_binarygateway_pillar_v3_25.user_session_status.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_amex_options_binarygateway_pillar_v3_25.username.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = nyse_amex_options_binarygateway_pillar_v3_25.mic.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: u8
  index, cancel_on_disconnect = nyse_amex_options_binarygateway_pillar_v3_25.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Throttle Preference: u8
  index, throttle_preference = nyse_amex_options_binarygateway_pillar_v3_25.throttle_preference.dissect(buffer, index, packet, parent)

  -- Throttle Window: u16
  index, throttle_window = nyse_amex_options_binarygateway_pillar_v3_25.throttle_window.dissect(buffer, index, packet, parent)

  -- Throttle Threshold: u16
  index, throttle_threshold = nyse_amex_options_binarygateway_pillar_v3_25.throttle_threshold.dissect(buffer, index, packet, parent)

  -- Symbol Eligibility: u8
  index, symbol_eligibility = nyse_amex_options_binarygateway_pillar_v3_25.symbol_eligibility.dissect(buffer, index, packet, parent)

  -- Max Order Quantity: u32
  index, max_order_quantity = nyse_amex_options_binarygateway_pillar_v3_25.max_order_quantity.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: u8
  index, self_trade_prevention = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: u8
  index, order_priority_update_ack_subscription = nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_ack_subscription.dissect(buffer, index, packet, parent)

  -- Ack Status: u8
  index, ack_status = nyse_amex_options_binarygateway_pillar_v3_25.ack_status.dissect(buffer, index, packet, parent)

  -- Bold Designation: u8
  index, bold_designation = nyse_amex_options_binarygateway_pillar_v3_25.bold_designation.dissect(buffer, index, packet, parent)

  -- Reserved Zchar 4949: zchar(49)
  index, reserved_zchar_4949 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_4949.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Acknowledgement Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_configuration_acknowledgement_message = nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_configuration_acknowledgement_message then
    local range = buffer(offset, size_of_session_configuration_acknowledgement_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.session_configuration_acknowledgement_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_session_configuration_acknowledgement_message)

  return offset + size_of_session_configuration_acknowledgement_message
end

-- Reserved Char 5050
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_5050 = {}

-- Size: Reserved Char 5050
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_5050.size = 50

-- Display: Reserved Char 5050
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_5050.display = function(value)
  return "Reserved Char 5050: "..value
end

-- Dissect: Reserved Char 5050
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_5050.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_5050.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_5050.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_char_5050, range, value, display)

  return offset + length, value
end

-- Appointment Status
nyse_amex_options_binarygateway_pillar_v3_25.appointment_status = {}

-- Size: Appointment Status
nyse_amex_options_binarygateway_pillar_v3_25.appointment_status.size = 1

-- Display: Appointment Status
nyse_amex_options_binarygateway_pillar_v3_25.appointment_status.display = function(value)
  if value == 0 then
    return "Appointment Status: Not Appointed (0)"
  end
  if value == 1 then
    return "Appointment Status: Appointed (1)"
  end

  return "Appointment Status: Unknown("..value..")"
end

-- Dissect: Appointment Status
nyse_amex_options_binarygateway_pillar_v3_25.appointment_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.appointment_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.appointment_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.appointment_status, range, value, display)

  return offset + length, value
end

-- Mm Type
nyse_amex_options_binarygateway_pillar_v3_25.mm_type = {}

-- Size: Mm Type
nyse_amex_options_binarygateway_pillar_v3_25.mm_type.size = 1

-- Display: Mm Type
nyse_amex_options_binarygateway_pillar_v3_25.mm_type.display = function(value)
  if value == 1 then
    return "Mm Type: Nyse Arca Options Lead Market Maker (1)"
  end
  if value == 2 then
    return "Mm Type: Nyse Arca Options Market Maker (2)"
  end
  if value == 1 then
    return "Mm Type: Nyse American Options Market Maker (1)"
  end
  if value == 2 then
    return "Mm Type: Nyse American Options Specialist (2)"
  end
  if value == 3 then
    return "Mm Type: Nyse American Optionse Specialist (3)"
  end
  if value == 4 then
    return "Mm Type: Nyse American Options Domm (4)"
  end
  if value == 5 then
    return "Mm Type: Nyse American Options Specialist And Domm (5)"
  end
  if value == 6 then
    return "Mm Type: Nyse American Optionse Specialist And Domm (6)"
  end

  return "Mm Type: Unknown("..value..")"
end

-- Dissect: Mm Type
nyse_amex_options_binarygateway_pillar_v3_25.mm_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mm_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.mm_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mm_type, range, value, display)

  return offset + length, value
end

-- Nyse Symbol
nyse_amex_options_binarygateway_pillar_v3_25.nyse_symbol = {}

-- Size: Nyse Symbol
nyse_amex_options_binarygateway_pillar_v3_25.nyse_symbol.size = 24

-- Display: Nyse Symbol
nyse_amex_options_binarygateway_pillar_v3_25.nyse_symbol.display = function(value)
  return "Nyse Symbol: "..value
end

-- Dissect: Nyse Symbol
nyse_amex_options_binarygateway_pillar_v3_25.nyse_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.nyse_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.nyse_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.nyse_symbol, range, value, display)

  return offset + length, value
end

-- Options Market Maker Symbol Appointment Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message = {}

-- Read runtime size of: Options Market Maker Symbol Appointment Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Options Market Maker Symbol Appointment Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Market Maker Symbol Appointment Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_options_market_maker_symbol_appointment_reference_data_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Nyse Symbol: char(24)
  index, nyse_symbol = nyse_amex_options_binarygateway_pillar_v3_25.nyse_symbol.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Mm Type: u8
  index, mm_type = nyse_amex_options_binarygateway_pillar_v3_25.mm_type.dissect(buffer, index, packet, parent)

  -- Appointment Status: u8
  index, appointment_status = nyse_amex_options_binarygateway_pillar_v3_25.appointment_status.dissect(buffer, index, packet, parent)

  -- Reserved Char 5050: char(50)
  index, reserved_char_5050 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_5050.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Market Maker Symbol Appointment Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_options_market_maker_symbol_appointment_reference_data_message = nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.options_market_maker_symbol_appointment_reference_data_message then
    local range = buffer(offset, size_of_options_market_maker_symbol_appointment_reference_data_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.options_market_maker_symbol_appointment_reference_data_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.fields(buffer, offset, packet, parent, size_of_options_market_maker_symbol_appointment_reference_data_message)

  return offset + size_of_options_market_maker_symbol_appointment_reference_data_message
end

-- Mpid Status
nyse_amex_options_binarygateway_pillar_v3_25.mpid_status = {}

-- Size: Mpid Status
nyse_amex_options_binarygateway_pillar_v3_25.mpid_status.size = 1

-- Display: Mpid Status
nyse_amex_options_binarygateway_pillar_v3_25.mpid_status.display = function(value)
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
nyse_amex_options_binarygateway_pillar_v3_25.mpid_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mpid_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.mpid_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpid_status, range, value, display)

  return offset + length, value
end

-- Mpid Configuration Message
nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message = {}

-- Read runtime size of: Mpid Configuration Message
nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Mpid Configuration Message
nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpid Configuration Message
nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.fields = function(buffer, offset, packet, parent, size_of_mpid_configuration_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Mpid Status: u8
  index, mpid_status = nyse_amex_options_binarygateway_pillar_v3_25.mpid_status.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_amex_options_binarygateway_pillar_v3_25.username.dissect(buffer, index, packet, parent)

  -- Reserved Char 5050: char(50)
  index, reserved_char_5050 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_5050.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpid Configuration Message
nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mpid_configuration_message = nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mpid_configuration_message then
    local range = buffer(offset, size_of_mpid_configuration_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpid_configuration_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.fields(buffer, offset, packet, parent, size_of_mpid_configuration_message)

  return offset + size_of_mpid_configuration_message
end

-- Mpv Class Id
nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id = {}

-- Size: Mpv Class Id
nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.size = 2

-- Display: Mpv Class Id
nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.display = function(value)
  return "Mpv Class Id: "..value
end

-- Dissect: Mpv Class Id
nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpv_class_id, range, value, display)

  return offset + length, value
end

-- Trading Mpv
nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv = {}

-- Size: Trading Mpv
nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.size = 8

-- Display: Trading Mpv
nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.display = function(value)
  return "Trading Mpv: "..value
end

-- Translate: Trading Mpv
nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trading Mpv
nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.trading_mpv, range, value, display)

  return offset + length, value
end

-- Quoting Mpv
nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv = {}

-- Size: Quoting Mpv
nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.size = 8

-- Display: Quoting Mpv
nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.display = function(value)
  return "Quoting Mpv: "..value
end

-- Translate: Quoting Mpv
nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Quoting Mpv
nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.quoting_mpv, range, value, display)

  return offset + length, value
end

-- Price U Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8 = {}

-- Size: Price U Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.size = 8

-- Display: Price U Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.display = function(value)
  return "Price U Price 8: "..value
end

-- Translate: Price U Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price U Price 8
nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.price_u_price_8, range, value, display)

  return offset + length, value
end

-- Mpv Level Name
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_name = {}

-- Size: Mpv Level Name
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_name.size = 24

-- Display: Mpv Level Name
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_name.display = function(value)
  return "Mpv Level Name: "..value
end

-- Dissect: Mpv Level Name
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_name.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpv_level_name, range, value, display)

  return offset + length, value
end

-- Mpv Level Definition
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition = {}

-- Size: Mpv Level Definition
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition.size =
  nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_name.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.size

-- Display: Mpv Level Definition
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpv Level Definition
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mpv Level Name: char(24)
  index, mpv_level_name = nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_name.dissect(buffer, index, packet, parent)

  -- Price U Price 8: uPrice
  index, price_u_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_u_price_8.dissect(buffer, index, packet, parent)

  -- Quoting Mpv: uPrice
  index, quoting_mpv = nyse_amex_options_binarygateway_pillar_v3_25.quoting_mpv.dissect(buffer, index, packet, parent)

  -- Trading Mpv: uPrice
  index, trading_mpv = nyse_amex_options_binarygateway_pillar_v3_25.trading_mpv.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpv Level Definition
nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition.dissect = function(buffer, offset, packet, parent)
  if show.mpv_level_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpv_level_definition, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Price Variant Level Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message = {}

-- Read runtime size of: Minimum Price Variant Level Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Minimum Price Variant Level Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Price Variant Level Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_minimum_price_variant_level_reference_data_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Mpv Level Definition: Struct of 5 fields
  index, mpv_level_definition = nyse_amex_options_binarygateway_pillar_v3_25.mpv_level_definition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Price Variant Level Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_minimum_price_variant_level_reference_data_message = nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.minimum_price_variant_level_reference_data_message then
    local range = buffer(offset, size_of_minimum_price_variant_level_reference_data_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.minimum_price_variant_level_reference_data_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.fields(buffer, offset, packet, parent, size_of_minimum_price_variant_level_reference_data_message)

  return offset + size_of_minimum_price_variant_level_reference_data_message
end

-- Mpv Class Name
nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_name = {}

-- Size: Mpv Class Name
nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_name.size = 20

-- Display: Mpv Class Name
nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpv Class Name: No Value"
  end

  return "Mpv Class Name: "..value
end

-- Dissect: Mpv Class Name
nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_name.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_name.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mpv_class_name, range, value, display)

  return offset + length, value
end

-- Minimum Price Variant Class Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message = {}

-- Read runtime size of: Minimum Price Variant Class Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Minimum Price Variant Class Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Price Variant Class Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_minimum_price_variant_class_reference_data_message)
  local index = offset

  -- Transact Time Timestamp 8: Timestamp
  index, transact_time_timestamp_8 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_timestamp_8.dissect(buffer, index, packet, parent)

  -- Mpv Class Name: zchar(20)
  index, mpv_class_name = nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_name.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Price Variant Class Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_minimum_price_variant_class_reference_data_message = nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.minimum_price_variant_class_reference_data_message then
    local range = buffer(offset, size_of_minimum_price_variant_class_reference_data_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.minimum_price_variant_class_reference_data_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.fields(buffer, offset, packet, parent, size_of_minimum_price_variant_class_reference_data_message)

  return offset + size_of_minimum_price_variant_class_reference_data_message
end

-- Closing Only Indicator
nyse_amex_options_binarygateway_pillar_v3_25.closing_only_indicator = {}

-- Size: Closing Only Indicator
nyse_amex_options_binarygateway_pillar_v3_25.closing_only_indicator.size = 1

-- Display: Closing Only Indicator
nyse_amex_options_binarygateway_pillar_v3_25.closing_only_indicator.display = function(value)
  if value == 0 then
    return "Closing Only Indicator: Standard Series (0)"
  end
  if value == 1 then
    return "Closing Only Indicator: Closing Only Series (1)"
  end

  return "Closing Only Indicator: Unknown("..value..")"
end

-- Dissect: Closing Only Indicator
nyse_amex_options_binarygateway_pillar_v3_25.closing_only_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.closing_only_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.closing_only_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.closing_only_indicator, range, value, display)

  return offset + length, value
end

-- Series Type
nyse_amex_options_binarygateway_pillar_v3_25.series_type = {}

-- Size: Series Type
nyse_amex_options_binarygateway_pillar_v3_25.series_type.size = 1

-- Display: Series Type
nyse_amex_options_binarygateway_pillar_v3_25.series_type.display = function(value)
  if value == 0 then
    return "Series Type: Standard (0)"
  end

  return "Series Type: Unknown("..value..")"
end

-- Dissect: Series Type
nyse_amex_options_binarygateway_pillar_v3_25.series_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.series_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.series_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.series_type, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
nyse_amex_options_binarygateway_pillar_v3_25.contract_multiplier = {}

-- Size: Contract Multiplier
nyse_amex_options_binarygateway_pillar_v3_25.contract_multiplier.size = 4

-- Display: Contract Multiplier
nyse_amex_options_binarygateway_pillar_v3_25.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_amex_options_binarygateway_pillar_v3_25.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Maturity Date
nyse_amex_options_binarygateway_pillar_v3_25.maturity_date = {}

-- Size: Maturity Date
nyse_amex_options_binarygateway_pillar_v3_25.maturity_date.size = 8

-- Display: Maturity Date
nyse_amex_options_binarygateway_pillar_v3_25.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_amex_options_binarygateway_pillar_v3_25.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.maturity_date.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Strike Price
nyse_amex_options_binarygateway_pillar_v3_25.strike_price = {}

-- Size: Strike Price
nyse_amex_options_binarygateway_pillar_v3_25.strike_price.size = 8

-- Display: Strike Price
nyse_amex_options_binarygateway_pillar_v3_25.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nyse_amex_options_binarygateway_pillar_v3_25.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
nyse_amex_options_binarygateway_pillar_v3_25.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.strike_price.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Put Or Call
nyse_amex_options_binarygateway_pillar_v3_25.put_or_call = {}

-- Size: Put Or Call
nyse_amex_options_binarygateway_pillar_v3_25.put_or_call.size = 1

-- Display: Put Or Call
nyse_amex_options_binarygateway_pillar_v3_25.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_amex_options_binarygateway_pillar_v3_25.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Occ Symbol Root
nyse_amex_options_binarygateway_pillar_v3_25.occ_symbol_root = {}

-- Size: Occ Symbol Root
nyse_amex_options_binarygateway_pillar_v3_25.occ_symbol_root.size = 24

-- Display: Occ Symbol Root
nyse_amex_options_binarygateway_pillar_v3_25.occ_symbol_root.display = function(value)
  return "Occ Symbol Root: "..value
end

-- Dissect: Occ Symbol Root
nyse_amex_options_binarygateway_pillar_v3_25.occ_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.occ_symbol_root.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.occ_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.occ_symbol_root, range, value, display)

  return offset + length, value
end

-- Series Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message = {}

-- Read runtime size of: Series Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Series Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_series_reference_data_message)
  local index = offset

  -- Transact Time U 648: u64
  index, transact_time_u_648 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648.dissect(buffer, index, packet, parent)

  -- Series Index: u32
  index, series_index = nyse_amex_options_binarygateway_pillar_v3_25.series_index.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Occ Symbol Root: char(24)
  index, occ_symbol_root = nyse_amex_options_binarygateway_pillar_v3_25.occ_symbol_root.dissect(buffer, index, packet, parent)

  -- Put Or Call: u8
  index, put_or_call = nyse_amex_options_binarygateway_pillar_v3_25.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: uPrice
  index, strike_price = nyse_amex_options_binarygateway_pillar_v3_25.strike_price.dissect(buffer, index, packet, parent)

  -- Maturity Date: zchar(8)
  index, maturity_date = nyse_amex_options_binarygateway_pillar_v3_25.maturity_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: u32
  index, contract_multiplier = nyse_amex_options_binarygateway_pillar_v3_25.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Series Type: u8
  index, series_type = nyse_amex_options_binarygateway_pillar_v3_25.series_type.dissect(buffer, index, packet, parent)

  -- Closing Only Indicator: u8
  index, closing_only_indicator = nyse_amex_options_binarygateway_pillar_v3_25.closing_only_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_series_reference_data_message = nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.series_reference_data_message then
    local range = buffer(offset, size_of_series_reference_data_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.series_reference_data_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.fields(buffer, offset, packet, parent, size_of_series_reference_data_message)

  return offset + size_of_series_reference_data_message
end

-- Legal Width Multiplier
nyse_amex_options_binarygateway_pillar_v3_25.legal_width_multiplier = {}

-- Size: Legal Width Multiplier
nyse_amex_options_binarygateway_pillar_v3_25.legal_width_multiplier.size = 1

-- Display: Legal Width Multiplier
nyse_amex_options_binarygateway_pillar_v3_25.legal_width_multiplier.display = function(value)
  return "Legal Width Multiplier: "..value
end

-- Dissect: Legal Width Multiplier
nyse_amex_options_binarygateway_pillar_v3_25.legal_width_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.legal_width_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.legal_width_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.legal_width_multiplier, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_amex_options_binarygateway_pillar_v3_25.channel_id = {}

-- Size: Channel Id
nyse_amex_options_binarygateway_pillar_v3_25.channel_id.size = 1

-- Display: Channel Id
nyse_amex_options_binarygateway_pillar_v3_25.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_amex_options_binarygateway_pillar_v3_25.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Test Symbol Indicator
nyse_amex_options_binarygateway_pillar_v3_25.test_symbol_indicator = {}

-- Size: Test Symbol Indicator
nyse_amex_options_binarygateway_pillar_v3_25.test_symbol_indicator.size = 1

-- Display: Test Symbol Indicator
nyse_amex_options_binarygateway_pillar_v3_25.test_symbol_indicator.display = function(value)
  if value == 0 then
    return "Test Symbol Indicator: Production (0)"
  end
  if value == 1 then
    return "Test Symbol Indicator: Test (1)"
  end

  return "Test Symbol Indicator: Unknown("..value..")"
end

-- Dissect: Test Symbol Indicator
nyse_amex_options_binarygateway_pillar_v3_25.test_symbol_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.test_symbol_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.test_symbol_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.test_symbol_indicator, range, value, display)

  return offset + length, value
end

-- Max Order Price
nyse_amex_options_binarygateway_pillar_v3_25.max_order_price = {}

-- Size: Max Order Price
nyse_amex_options_binarygateway_pillar_v3_25.max_order_price.size = 8

-- Display: Max Order Price
nyse_amex_options_binarygateway_pillar_v3_25.max_order_price.display = function(value)
  return "Max Order Price: "..value
end

-- Translate: Max Order Price
nyse_amex_options_binarygateway_pillar_v3_25.max_order_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Max Order Price
nyse_amex_options_binarygateway_pillar_v3_25.max_order_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.max_order_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_amex_options_binarygateway_pillar_v3_25.max_order_price.translate(raw)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.max_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.max_order_price, range, value, display)

  return offset + length, value
end

-- Underlying Type
nyse_amex_options_binarygateway_pillar_v3_25.underlying_type = {}

-- Size: Underlying Type
nyse_amex_options_binarygateway_pillar_v3_25.underlying_type.size = 1

-- Display: Underlying Type
nyse_amex_options_binarygateway_pillar_v3_25.underlying_type.display = function(value)
  if value == "A" then
    return "Underlying Type: Adr (A)"
  end
  if value == "C" then
    return "Underlying Type: Common Stock (C)"
  end
  if value == "D" then
    return "Underlying Type: Debentures (D)"
  end
  if value == "E" then
    return "Underlying Type: Etf (E)"
  end
  if value == "F" then
    return "Underlying Type: Foreign (F)"
  end
  if value == "H" then
    return "Underlying Type: Ads (H)"
  end
  if value == "I" then
    return "Underlying Type: Units (I)"
  end
  if value == "M" then
    return "Underlying Type: Miscellaneous (M)"
  end
  if value == "L" then
    return "Underlying Type: Index Linked Notes (L)"
  end
  if value == "N" then
    return "Underlying Type: Bonds (N)"
  end
  if value == "O" then
    return "Underlying Type: Ordinary Shares (O)"
  end
  if value == "P" then
    return "Underlying Type: Preferred Stock (P)"
  end
  if value == "R" then
    return "Underlying Type: Rights (R)"
  end
  if value == "S" then
    return "Underlying Type: Beneficiary Interest (S)"
  end
  if value == "T" then
    return "Underlying Type: Structured Notes (T)"
  end
  if value == "U" then
    return "Underlying Type: Closed End Fund (U)"
  end
  if value == "W" then
    return "Underlying Type: Warrant (W)"
  end
  if value == "X" then
    return "Underlying Type: Index (X)"
  end
  if value == "Z" then
    return "Underlying Type: Options (Z)"
  end

  return "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
nyse_amex_options_binarygateway_pillar_v3_25.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.underlying_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Listed Mic
nyse_amex_options_binarygateway_pillar_v3_25.listed_mic = {}

-- Size: Listed Mic
nyse_amex_options_binarygateway_pillar_v3_25.listed_mic.size = 4

-- Display: Listed Mic
nyse_amex_options_binarygateway_pillar_v3_25.listed_mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Listed Mic: No Value"
  end

  return "Listed Mic: "..value
end

-- Dissect: Listed Mic
nyse_amex_options_binarygateway_pillar_v3_25.listed_mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.listed_mic.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.listed_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.listed_mic, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message = {}

-- Read runtime size of: Underlying Symbol Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Underlying Symbol Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Symbol Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_underlying_symbol_reference_data_message)
  local index = offset

  -- Transact Time U 648: u64
  index, transact_time_u_648 = nyse_amex_options_binarygateway_pillar_v3_25.transact_time_u_648.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Nyse Symbol: char(24)
  index, nyse_symbol = nyse_amex_options_binarygateway_pillar_v3_25.nyse_symbol.dissect(buffer, index, packet, parent)

  -- Listed Mic: zchar(4)
  index, listed_mic = nyse_amex_options_binarygateway_pillar_v3_25.listed_mic.dissect(buffer, index, packet, parent)

  -- Underlying Type: char
  index, underlying_type = nyse_amex_options_binarygateway_pillar_v3_25.underlying_type.dissect(buffer, index, packet, parent)

  -- Max Order Price: Price
  index, max_order_price = nyse_amex_options_binarygateway_pillar_v3_25.max_order_price.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_amex_options_binarygateway_pillar_v3_25.mpv_class_id.dissect(buffer, index, packet, parent)

  -- Test Symbol Indicator: u8
  index, test_symbol_indicator = nyse_amex_options_binarygateway_pillar_v3_25.test_symbol_indicator.dissect(buffer, index, packet, parent)

  -- Channel Id: u8
  index, channel_id = nyse_amex_options_binarygateway_pillar_v3_25.channel_id.dissect(buffer, index, packet, parent)

  -- Legal Width Multiplier: u8
  index, legal_width_multiplier = nyse_amex_options_binarygateway_pillar_v3_25.legal_width_multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Symbol Reference Data Message
nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_underlying_symbol_reference_data_message = nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.underlying_symbol_reference_data_message then
    local range = buffer(offset, size_of_underlying_symbol_reference_data_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.underlying_symbol_reference_data_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.fields(buffer, offset, packet, parent, size_of_underlying_symbol_reference_data_message)

  return offset + size_of_underlying_symbol_reference_data_message
end

-- Complex Series Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group = {}

-- Size: Complex Series Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group.size =
  nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.leg_side.size

-- Display: Complex Series Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Id: u32
  index, leg_symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.leg_symbol_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: u16
  index, leg_ratio_qty = nyse_amex_options_binarygateway_pillar_v3_25.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: u8
  index, leg_side = nyse_amex_options_binarygateway_pillar_v3_25.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Series Leg Group
nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group.dissect = function(buffer, offset, packet, parent)
  if show.complex_series_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.complex_series_leg_group, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Series Request Message
nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message = {}

-- Read runtime size of: New Complex Series Request Message
nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Complex Series Request Message
nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Series Request Message
nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.fields = function(buffer, offset, packet, parent, size_of_new_complex_series_request_message)
  local index = offset

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Complex Series Leg Group: Struct of 3 fields
  index, complex_series_leg_group = nyse_amex_options_binarygateway_pillar_v3_25.complex_series_leg_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Series Request Message
nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_complex_series_request_message = nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_complex_series_request_message then
    local range = buffer(offset, size_of_new_complex_series_request_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_complex_series_request_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.fields(buffer, offset, packet, parent, size_of_new_complex_series_request_message)

  return offset + size_of_new_complex_series_request_message
end

-- Reserved Zchar 199199
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_199199 = {}

-- Size: Reserved Zchar 199199
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_199199.size = 199

-- Display: Reserved Zchar 199199
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_199199.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved Zchar 199199: No Value"
  end

  return "Reserved Zchar 199199: "..value
end

-- Dissect: Reserved Zchar 199199
nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_199199.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_199199.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_199199.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_zchar_199199, range, value, display)

  return offset + length, value
end

-- Risk Action Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message = {}

-- Read runtime size of: Risk Action Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Action Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Action Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.fields = function(buffer, offset, packet, parent, size_of_risk_action_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Reserved 1 U 324: u32
  index, reserved_1_u_324 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_action_type.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id.dissect(buffer, index, packet, parent)

  -- Reserved Zchar 199199: zchar(199)
  index, reserved_zchar_199199 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_199199.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Action Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_action_request_message = nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_action_request_message then
    local range = buffer(offset, size_of_risk_action_request_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_action_request_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.fields(buffer, offset, packet, parent, size_of_risk_action_request_message)

  return offset + size_of_risk_action_request_message
end

-- Breach Action Request
nyse_amex_options_binarygateway_pillar_v3_25.breach_action_request = {}

-- Size: Breach Action Request
nyse_amex_options_binarygateway_pillar_v3_25.breach_action_request.size = 1

-- Display: Breach Action Request
nyse_amex_options_binarygateway_pillar_v3_25.breach_action_request.display = function(value)
  if value == 0 then
    return "Breach Action Request: Not Applicable (0)"
  end
  if value == 1 then
    return "Breach Action Request: Notifications Only (1)"
  end
  if value == 2 then
    return "Breach Action Request: Cancel And Block (2)"
  end
  if value == 3 then
    return "Breach Action Request: Block Only (3)"
  end

  return "Breach Action Request: Unknown("..value..")"
end

-- Dissect: Breach Action Request
nyse_amex_options_binarygateway_pillar_v3_25.breach_action_request.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.breach_action_request.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.breach_action_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.breach_action_request, range, value, display)

  return offset + length, value
end

-- Risk Limit Update Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message = {}

-- Read runtime size of: Risk Limit Update Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Limit Update Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limit Update Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.fields = function(buffer, offset, packet, parent, size_of_risk_limit_update_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Reserved 1 U 324: u32
  index, reserved_1_u_324 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_1_u_324.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_amex_options_binarygateway_pillar_v3_25.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Control Activation: u8
  index, risk_control_activation = nyse_amex_options_binarygateway_pillar_v3_25.risk_control_activation.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_amex_options_binarygateway_pillar_v3_25.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_amex_options_binarygateway_pillar_v3_25.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_amex_options_binarygateway_pillar_v3_25.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_amex_options_binarygateway_pillar_v3_25.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Request: u8
  index, breach_action_request = nyse_amex_options_binarygateway_pillar_v3_25.breach_action_request.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_amex_options_binarygateway_pillar_v3_25.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_amex_options_binarygateway_pillar_v3_25.risk_range_id.dissect(buffer, index, packet, parent)

  -- Risk Minimum Value: i64
  index, risk_minimum_value = nyse_amex_options_binarygateway_pillar_v3_25.risk_minimum_value.dissect(buffer, index, packet, parent)

  -- Price Scale: u8
  index, price_scale = nyse_amex_options_binarygateway_pillar_v3_25.price_scale.dissect(buffer, index, packet, parent)

  -- Reserved Zchar 190190: zchar(190)
  index, reserved_zchar_190190 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_190190.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Limit Update Request Message
nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_limit_update_request_message = nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_limit_update_request_message then
    local range = buffer(offset, size_of_risk_limit_update_request_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.risk_limit_update_request_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.fields(buffer, offset, packet, parent, size_of_risk_limit_update_request_message)

  return offset + size_of_risk_limit_update_request_message
end

-- Reserved Char 2020
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_2020 = {}

-- Size: Reserved Char 2020
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_2020.size = 20

-- Display: Reserved Char 2020
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_2020.display = function(value)
  return "Reserved Char 2020: "..value
end

-- Dissect: Reserved Char 2020
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_2020.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_2020.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_2020.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_char_2020, range, value, display)

  return offset + length, value
end

-- Bulk Cancel Request Type 224 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message = {}

-- Read runtime size of: Bulk Cancel Request Type 224 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Cancel Request Type 224 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Cancel Request Type 224 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.fields = function(buffer, offset, packet, parent, size_of_bulk_cancel_request_type_224_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect(buffer, index, packet, parent)

  -- Target Cancel Username: char(16)
  index, target_cancel_username = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username.dissect(buffer, index, packet, parent)

  -- Bulk Action: u8
  index, bulk_action = nyse_amex_options_binarygateway_pillar_v3_25.bulk_action.dissect(buffer, index, packet, parent)

  -- Target Cancel Mpid: zchar(4)
  index, target_cancel_mpid = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid.dissect(buffer, index, packet, parent)

  -- Reserved Char 2020: char(20)
  index, reserved_char_2020 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_2020.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Cancel Request Type 224 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_bulk_cancel_request_type_224_message = nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.bulk_cancel_request_type_224_message then
    local range = buffer(offset, size_of_bulk_cancel_request_type_224_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_cancel_request_type_224_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.fields(buffer, offset, packet, parent, size_of_bulk_cancel_request_type_224_message)

  return offset + size_of_bulk_cancel_request_type_224_message
end

-- Mm Sent Time
nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time = {}

-- Size: Mm Sent Time
nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time.size = 8

-- Display: Mm Sent Time
nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Mm Sent Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Mm Sent Time
nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mm_sent_time, range, value, display)

  return offset + length, value
end

-- Bulk Cancel Request Type 223 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message = {}

-- Read runtime size of: Bulk Cancel Request Type 223 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Cancel Request Type 223 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Cancel Request Type 223 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.fields = function(buffer, offset, packet, parent, size_of_bulk_cancel_request_type_223_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Mm Sent Time: Timestamp
  index, mm_sent_time = nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_amex_options_binarygateway_pillar_v3_25.group_id.dissect(buffer, index, packet, parent)

  -- Target Cancel Username: char(16)
  index, target_cancel_username = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_username.dissect(buffer, index, packet, parent)

  -- Bulk Action: u8
  index, bulk_action = nyse_amex_options_binarygateway_pillar_v3_25.bulk_action.dissect(buffer, index, packet, parent)

  -- Cancel Scope: u8
  index, cancel_scope = nyse_amex_options_binarygateway_pillar_v3_25.cancel_scope.dissect(buffer, index, packet, parent)

  -- Target Cancel Mpid: zchar(4)
  index, target_cancel_mpid = nyse_amex_options_binarygateway_pillar_v3_25.target_cancel_mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Cancel Request Type 223 Message
nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_bulk_cancel_request_type_223_message = nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.bulk_cancel_request_type_223_message then
    local range = buffer(offset, size_of_bulk_cancel_request_type_223_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_cancel_request_type_223_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.fields(buffer, offset, packet, parent, size_of_bulk_cancel_request_type_223_message)

  return offset + size_of_bulk_cancel_request_type_223_message
end

-- Covered
nyse_amex_options_binarygateway_pillar_v3_25.covered = {}

-- Calculate size of: Covered
nyse_amex_options_binarygateway_pillar_v3_25.covered.size = function(buffer, offset)
  local index = 0

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.mpid.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.market_maker.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.order_qty.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.min_qty.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.user_data.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.auction_id.size

  local seq_msg_length = buffer(offset + index - 326, 2):le_uint()

  if seq_msg_length ~= 100 then
    index = index + nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.size

  end

  return index
end

-- Display: Covered
nyse_amex_options_binarygateway_pillar_v3_25.covered.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Covered
nyse_amex_options_binarygateway_pillar_v3_25.covered.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: u128
  index, bitfield_order_instructions = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_amex_options_binarygateway_pillar_v3_25.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: u64
  index, leg_open_close = nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: u64
  index, auction_id = nyse_amex_options_binarygateway_pillar_v3_25.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 226, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Covered
nyse_amex_options_binarygateway_pillar_v3_25.covered.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.covered then
    local length = nyse_amex_options_binarygateway_pillar_v3_25.covered.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.covered.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.covered, range, display)
  end

  return nyse_amex_options_binarygateway_pillar_v3_25.covered.fields(buffer, offset, packet, parent)
end

-- Exposed
nyse_amex_options_binarygateway_pillar_v3_25.exposed = {}

-- Calculate size of: Exposed
nyse_amex_options_binarygateway_pillar_v3_25.exposed.size = function(buffer, offset)
  local index = 0

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.mpid.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.market_maker.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.order_qty.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.min_qty.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.user_data.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.size

  index = index + nyse_amex_options_binarygateway_pillar_v3_25.auction_id.size

  local seq_msg_length = buffer(offset + index - 179, 2):le_uint()

  if seq_msg_length ~= 100 then
    index = index + nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.size

  end

  return index
end

-- Display: Exposed
nyse_amex_options_binarygateway_pillar_v3_25.exposed.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exposed
nyse_amex_options_binarygateway_pillar_v3_25.exposed.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_amex_options_binarygateway_pillar_v3_25.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: u128
  index, bitfield_order_instructions = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_amex_options_binarygateway_pillar_v3_25.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: u64
  index, leg_open_close = nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: u64
  index, auction_id = nyse_amex_options_binarygateway_pillar_v3_25.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 79, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Exposed
nyse_amex_options_binarygateway_pillar_v3_25.exposed.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.exposed then
    local length = nyse_amex_options_binarygateway_pillar_v3_25.exposed.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.exposed.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.exposed, range, display)
  end

  return nyse_amex_options_binarygateway_pillar_v3_25.exposed.fields(buffer, offset, packet, parent)
end

-- Reserved Char 1616
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_1616 = {}

-- Size: Reserved Char 1616
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_1616.size = 16

-- Display: Reserved Char 1616
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_1616.display = function(value)
  return "Reserved Char 1616: "..value
end

-- Dissect: Reserved Char 1616
nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_1616.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_1616.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_1616.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_char_1616, range, value, display)

  return offset + length, value
end

-- Optional Data Covered
nyse_amex_options_binarygateway_pillar_v3_25.optional_data_covered = {}

-- Size: Optional Data Covered
nyse_amex_options_binarygateway_pillar_v3_25.optional_data_covered.size = 16

-- Display: Optional Data Covered
nyse_amex_options_binarygateway_pillar_v3_25.optional_data_covered.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data Covered: No Value"
  end

  return "Optional Data Covered: "..value
end

-- Dissect: Optional Data Covered
nyse_amex_options_binarygateway_pillar_v3_25.optional_data_covered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.optional_data_covered.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.optional_data_covered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.optional_data_covered, range, value, display)

  return offset + length, value
end

-- Clearing Account Covered
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_covered = {}

-- Size: Clearing Account Covered
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_covered.size = 5

-- Display: Clearing Account Covered
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_covered.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account Covered: No Value"
  end

  return "Clearing Account Covered: "..value
end

-- Dissect: Clearing Account Covered
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_covered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_covered.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_covered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_account_covered, range, value, display)

  return offset + length, value
end

-- Clearing Firm Covered
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_covered = {}

-- Size: Clearing Firm Covered
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_covered.size = 5

-- Display: Clearing Firm Covered
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_covered.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Covered: No Value"
  end

  return "Clearing Firm Covered: "..value
end

-- Dissect: Clearing Firm Covered
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_covered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_covered.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_covered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_firm_covered, range, value, display)

  return offset + length, value
end

-- Optional Data Exposed
nyse_amex_options_binarygateway_pillar_v3_25.optional_data_exposed = {}

-- Size: Optional Data Exposed
nyse_amex_options_binarygateway_pillar_v3_25.optional_data_exposed.size = 16

-- Display: Optional Data Exposed
nyse_amex_options_binarygateway_pillar_v3_25.optional_data_exposed.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data Exposed: No Value"
  end

  return "Optional Data Exposed: "..value
end

-- Dissect: Optional Data Exposed
nyse_amex_options_binarygateway_pillar_v3_25.optional_data_exposed.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.optional_data_exposed.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.optional_data_exposed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.optional_data_exposed, range, value, display)

  return offset + length, value
end

-- Clearing Account Exposed
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_exposed = {}

-- Size: Clearing Account Exposed
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_exposed.size = 5

-- Display: Clearing Account Exposed
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_exposed.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account Exposed: No Value"
  end

  return "Clearing Account Exposed: "..value
end

-- Dissect: Clearing Account Exposed
nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_exposed.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_exposed.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_exposed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_account_exposed, range, value, display)

  return offset + length, value
end

-- Clearing Firm Exposed
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_exposed = {}

-- Size: Clearing Firm Exposed
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_exposed.size = 5

-- Display: Clearing Firm Exposed
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_exposed.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Exposed: No Value"
  end

  return "Clearing Firm Exposed: "..value
end

-- Dissect: Clearing Firm Exposed
nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_exposed.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_exposed.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_exposed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.clearing_firm_exposed, range, value, display)

  return offset + length, value
end

-- Allocation Pct
nyse_amex_options_binarygateway_pillar_v3_25.allocation_pct = {}

-- Size: Allocation Pct
nyse_amex_options_binarygateway_pillar_v3_25.allocation_pct.size = 1

-- Display: Allocation Pct
nyse_amex_options_binarygateway_pillar_v3_25.allocation_pct.display = function(value)
  return "Allocation Pct: "..value
end

-- Dissect: Allocation Pct
nyse_amex_options_binarygateway_pillar_v3_25.allocation_pct.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.allocation_pct.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.allocation_pct.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.allocation_pct, range, value, display)

  return offset + length, value
end

-- New Order Cross Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message = {}

-- Read runtime size of: New Order Cross Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Order Cross Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.fields = function(buffer, offset, packet, parent, size_of_new_order_cross_message)
  local index = offset

  -- Cross Id: u64
  index, cross_id = nyse_amex_options_binarygateway_pillar_v3_25.cross_id.dissect(buffer, index, packet, parent)

  -- Allocation Pct: u8
  index, allocation_pct = nyse_amex_options_binarygateway_pillar_v3_25.allocation_pct.dissect(buffer, index, packet, parent)

  -- Clearing Firm Exposed: zchar(5)
  index, clearing_firm_exposed = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_exposed.dissect(buffer, index, packet, parent)

  -- Clearing Account Exposed: zchar(5)
  index, clearing_account_exposed = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_exposed.dissect(buffer, index, packet, parent)

  -- Optional Data Exposed: zchar(16)
  index, optional_data_exposed = nyse_amex_options_binarygateway_pillar_v3_25.optional_data_exposed.dissect(buffer, index, packet, parent)

  -- Clearing Firm Covered: zchar(5)
  index, clearing_firm_covered = nyse_amex_options_binarygateway_pillar_v3_25.clearing_firm_covered.dissect(buffer, index, packet, parent)

  -- Clearing Account Covered: zchar(5)
  index, clearing_account_covered = nyse_amex_options_binarygateway_pillar_v3_25.clearing_account_covered.dissect(buffer, index, packet, parent)

  -- Optional Data Covered: zchar(16)
  index, optional_data_covered = nyse_amex_options_binarygateway_pillar_v3_25.optional_data_covered.dissect(buffer, index, packet, parent)

  -- Reserved Char 1616: char(16)
  index, reserved_char_1616 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_char_1616.dissect(buffer, index, packet, parent)

  -- Exposed: Struct of 15 fields
  index, exposed = nyse_amex_options_binarygateway_pillar_v3_25.exposed.dissect(buffer, index, packet, parent)

  -- Covered: Struct of 15 fields
  index, covered = nyse_amex_options_binarygateway_pillar_v3_25.covered.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_order_cross_message = nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_order_cross_message then
    local range = buffer(offset, size_of_new_order_cross_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_order_cross_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.fields(buffer, offset, packet, parent, size_of_new_order_cross_message)

  return offset + size_of_new_order_cross_message
end

-- Bitfield Quote Inst
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst = {}

-- Size: Bitfield Quote Inst
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.size = 1

-- Display: Bitfield Quote Inst
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bitfield Quote Inst
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.bits = function(range, value, packet, parent)

  -- Side 2: 2 Bit
  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.side_2, range, value)

  -- Mm Quote Type: 3 Bit Enum with 5 values
  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mm_quote_type, range, value)

  -- Reserved 3: 3 Bit
  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_3, range, value)
end

-- Dissect: Bitfield Quote Inst
nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.dissect = function(buffer, offset, packet, parent)
  local size = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bitfield_quote_inst, range, display)

  if show.bitfield_quote_inst then
    nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Bulk Quote Group
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group = {}

-- Size: Bulk Quote Group
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group.size =
  nyse_amex_options_binarygateway_pillar_v3_25.series_index.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.order_qty.size

-- Display: Bulk Quote Group
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Group
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: u32
  index, series_index = nyse_amex_options_binarygateway_pillar_v3_25.series_index.dissect(buffer, index, packet, parent)

  -- Bitfield Quote Inst: Struct of 3 fields
  index, bitfield_quote_inst = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_quote_inst.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Group
nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group.dissect = function(buffer, offset, packet, parent)
  if show.bulk_quote_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.bulk_quote_group, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group.fields(buffer, offset, packet, parent)
  end
end

-- New Bulk Quote Type 259 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message = {}

-- Read runtime size of: New Bulk Quote Type 259 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Bulk Quote Type 259 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Bulk Quote Type 259 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.fields = function(buffer, offset, packet, parent, size_of_new_bulk_quote_type_259_message)
  local index = offset

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: zchar(4)
  index, sub_id = nyse_amex_options_binarygateway_pillar_v3_25.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Self Trade Type U 81: u8
  index, self_trade_type_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_amex_options_binarygateway_pillar_v3_25.group_id.dissect(buffer, index, packet, parent)

  -- Mm Sent Time: Timestamp
  index, mm_sent_time = nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time.dissect(buffer, index, packet, parent)

  -- Bulk Quote Group: Struct of 4 fields
  index, bulk_quote_group = nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Bulk Quote Type 259 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_bulk_quote_type_259_message = nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_bulk_quote_type_259_message then
    local range = buffer(offset, size_of_new_bulk_quote_type_259_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_bulk_quote_type_259_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.fields(buffer, offset, packet, parent, size_of_new_bulk_quote_type_259_message)

  return offset + size_of_new_bulk_quote_type_259_message
end

-- New Bulk Quote Type 243 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message = {}

-- Read runtime size of: New Bulk Quote Type 243 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Bulk Quote Type 243 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Bulk Quote Type 243 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.fields = function(buffer, offset, packet, parent, size_of_new_bulk_quote_type_243_message)
  local index = offset

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: zchar(4)
  index, sub_id = nyse_amex_options_binarygateway_pillar_v3_25.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Self Trade Type U 81: u8
  index, self_trade_type_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_type_u_81.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_amex_options_binarygateway_pillar_v3_25.group_id.dissect(buffer, index, packet, parent)

  -- Mm Sent Time: Timestamp
  index, mm_sent_time = nyse_amex_options_binarygateway_pillar_v3_25.mm_sent_time.dissect(buffer, index, packet, parent)

  -- Repeating Group
  index, repeating_group = nyse_amex_options_binarygateway_pillar_v3_25.repeating_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Bulk Quote Type 243 Message
nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_bulk_quote_type_243_message = nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_bulk_quote_type_243_message then
    local range = buffer(offset, size_of_new_bulk_quote_type_243_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_bulk_quote_type_243_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.fields(buffer, offset, packet, parent, size_of_new_bulk_quote_type_243_message)

  return offset + size_of_new_bulk_quote_type_243_message
end

-- Order Modify Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message = {}

-- Read runtime size of: Order Modify Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Modify Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.fields = function(buffer, offset, packet, parent, size_of_order_modify_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.side_u_81.dissect(buffer, index, packet, parent)

  -- Locate Reqd U 81: u8
  index, locate_reqd_u_81 = nyse_amex_options_binarygateway_pillar_v3_25.locate_reqd_u_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_modify_request_message = nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_modify_request_message then
    local range = buffer(offset, size_of_order_modify_request_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_modify_request_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.fields(buffer, offset, packet, parent, size_of_order_modify_request_message)

  return offset + size_of_order_modify_request_message
end

-- Order Cancel Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message = {}

-- Read runtime size of: Order Cancel Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Cancel Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.fields = function(buffer, offset, packet, parent, size_of_order_cancel_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_cancel_request_message = nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_cancel_request_message then
    local range = buffer(offset, size_of_order_cancel_request_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.order_cancel_request_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.fields(buffer, offset, packet, parent, size_of_order_cancel_request_message)

  return offset + size_of_order_cancel_request_message
end

-- New Order Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_message = {}

-- Read runtime size of: New Order Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Order Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.fields = function(buffer, offset, packet, parent, size_of_new_order_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_amex_options_binarygateway_pillar_v3_25.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_amex_options_binarygateway_pillar_v3_25.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_amex_options_binarygateway_pillar_v3_25.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_amex_options_binarygateway_pillar_v3_25.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_amex_options_binarygateway_pillar_v3_25.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: u128
  index, bitfield_order_instructions = nyse_amex_options_binarygateway_pillar_v3_25.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = nyse_amex_options_binarygateway_pillar_v3_25.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_amex_options_binarygateway_pillar_v3_25.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_amex_options_binarygateway_pillar_v3_25.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_amex_options_binarygateway_pillar_v3_25.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: u64
  index, leg_open_close = nyse_amex_options_binarygateway_pillar_v3_25.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: u64
  index, auction_id = nyse_amex_options_binarygateway_pillar_v3_25.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_amex_options_binarygateway_pillar_v3_25.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Message
nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_order_message = nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_order_message then
    local range = buffer(offset, size_of_new_order_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.new_order_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)

  return offset + size_of_new_order_message
end

-- Session Configuration Request Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message = {}

-- Read runtime size of: Session Configuration Request Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Session Configuration Request Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Request Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.fields = function(buffer, offset, packet, parent, size_of_session_configuration_request_message)
  local index = offset

  -- Username: char(16)
  index, username = nyse_amex_options_binarygateway_pillar_v3_25.username.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: u8
  index, cancel_on_disconnect = nyse_amex_options_binarygateway_pillar_v3_25.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Throttle Preference: u8
  index, throttle_preference = nyse_amex_options_binarygateway_pillar_v3_25.throttle_preference.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: u8
  index, self_trade_prevention = nyse_amex_options_binarygateway_pillar_v3_25.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: u8
  index, order_priority_update_ack_subscription = nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_ack_subscription.dissect(buffer, index, packet, parent)

  -- Bold Designation: u8
  index, bold_designation = nyse_amex_options_binarygateway_pillar_v3_25.bold_designation.dissect(buffer, index, packet, parent)

  -- Reserved Zchar 4949: zchar(49)
  index, reserved_zchar_4949 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_zchar_4949.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Request Message
nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_configuration_request_message = nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_configuration_request_message then
    local range = buffer(offset, size_of_session_configuration_request_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.session_configuration_request_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.fields(buffer, offset, packet, parent, size_of_session_configuration_request_message)

  return offset + size_of_session_configuration_request_message
end

-- Sequenced Message
nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message = {}

-- Size: Sequenced Message
nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.size = function(buffer, offset, seq_msg_type)
  -- Size of Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.size(buffer, offset)
  end
  -- Size of Sequenced Filler Message
  if seq_msg_type == 0x0282 then
    return 0
  end
  -- Size of New Order Message
  if seq_msg_type == 0x0248 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.size(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if seq_msg_type == 0x0250 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.size(buffer, offset)
  end
  -- Size of Order Modify Request Message
  if seq_msg_type == 0x0251 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.size(buffer, offset)
  end
  -- Size of New Bulk Quote Type 243 Message
  if seq_msg_type == 0x0243 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.size(buffer, offset)
  end
  -- Size of New Bulk Quote Type 259 Message
  if seq_msg_type == 0x0259 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.size(buffer, offset)
  end
  -- Size of New Order Cross Message
  if seq_msg_type == 0x0222 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.size(buffer, offset)
  end
  -- Size of Bulk Cancel Request Type 223 Message
  if seq_msg_type == 0x0223 then
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.size(buffer, offset)
  end
  -- Size of Bulk Cancel Request Type 224 Message
  if seq_msg_type == 0x0224 then
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.size(buffer, offset)
  end
  -- Size of Risk Limit Update Request Message
  if seq_msg_type == 0x0330 then
    return nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.size(buffer, offset)
  end
  -- Size of Risk Action Request Message
  if seq_msg_type == 0x0331 then
    return nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.size(buffer, offset)
  end
  -- Size of New Complex Series Request Message
  if seq_msg_type == 0x0357 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.size(buffer, offset)
  end
  -- Size of Underlying Symbol Reference Data Message
  if seq_msg_type == 0x0233 then
    return nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.size(buffer, offset)
  end
  -- Size of Series Reference Data Message
  if seq_msg_type == 0x0234 then
    return nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.size(buffer, offset)
  end
  -- Size of Minimum Price Variant Class Reference Data Message
  if seq_msg_type == 0x0230 then
    return nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.size(buffer, offset)
  end
  -- Size of Minimum Price Variant Level Reference Data Message
  if seq_msg_type == 0x0231 then
    return nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.size(buffer, offset)
  end
  -- Size of Mpid Configuration Message
  if seq_msg_type == 0x0272 then
    return nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.size(buffer, offset)
  end
  -- Size of Options Market Maker Symbol Appointment Reference Data Message
  if seq_msg_type == 0x0833 then
    return nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.size(buffer, offset)
  end
  -- Size of Session Configuration Acknowledgement Message
  if seq_msg_type == 0x0221 then
    return nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Order And Cancel Replace Acknowledgement Message
  if seq_msg_type == 0x0269 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Bulk Quote Acknowledgment Type 294 Message
  if seq_msg_type == 0x0294 then
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.size(buffer, offset)
  end
  -- Size of Bulk Quote Acknowledgment Message
  if seq_msg_type == 0x0308 then
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.size(buffer, offset)
  end
  -- Size of Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
  if seq_msg_type == 0x0278 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.size(buffer, offset)
  end
  -- Size of Order Priority Update Acknowledgment Message
  if seq_msg_type == 0x0268 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.size(buffer, offset)
  end
  -- Size of Execution Report Message
  if seq_msg_type == 0x0295 then
    return nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.size(buffer, offset)
  end
  -- Size of Trade Bust Correct Message
  if seq_msg_type == 0x0293 then
    return nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.size(buffer, offset)
  end
  -- Size of Application Layer Reject Message
  if seq_msg_type == 0x0267 then
    return nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.size(buffer, offset)
  end
  -- Size of Risk Control Acknowledgement Message
  if seq_msg_type == 0x0332 then
    return nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Risk Control Alert Message
  if seq_msg_type == 0x0333 then
    return nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.size(buffer, offset)
  end
  -- Size of Complex Series Request Acknowledgement Message
  if seq_msg_type == 0x0358 then
    return nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.branches = function(buffer, offset, packet, parent, seq_msg_type)
  -- Dissect Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Filler Message
  if seq_msg_type == 0x0282 then
  end
  -- Dissect New Order Message
  if seq_msg_type == 0x0248 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if seq_msg_type == 0x0250 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Request Message
  if seq_msg_type == 0x0251 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_modify_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Bulk Quote Type 243 Message
  if seq_msg_type == 0x0243 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_243_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Bulk Quote Type 259 Message
  if seq_msg_type == 0x0259 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_bulk_quote_type_259_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Message
  if seq_msg_type == 0x0222 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_order_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Cancel Request Type 223 Message
  if seq_msg_type == 0x0223 then
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_223_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Cancel Request Type 224 Message
  if seq_msg_type == 0x0224 then
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_cancel_request_type_224_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Limit Update Request Message
  if seq_msg_type == 0x0330 then
    return nyse_amex_options_binarygateway_pillar_v3_25.risk_limit_update_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Action Request Message
  if seq_msg_type == 0x0331 then
    return nyse_amex_options_binarygateway_pillar_v3_25.risk_action_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Series Request Message
  if seq_msg_type == 0x0357 then
    return nyse_amex_options_binarygateway_pillar_v3_25.new_complex_series_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Symbol Reference Data Message
  if seq_msg_type == 0x0233 then
    return nyse_amex_options_binarygateway_pillar_v3_25.underlying_symbol_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Reference Data Message
  if seq_msg_type == 0x0234 then
    return nyse_amex_options_binarygateway_pillar_v3_25.series_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Class Reference Data Message
  if seq_msg_type == 0x0230 then
    return nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_class_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Level Reference Data Message
  if seq_msg_type == 0x0231 then
    return nyse_amex_options_binarygateway_pillar_v3_25.minimum_price_variant_level_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mpid Configuration Message
  if seq_msg_type == 0x0272 then
    return nyse_amex_options_binarygateway_pillar_v3_25.mpid_configuration_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Market Maker Symbol Appointment Reference Data Message
  if seq_msg_type == 0x0833 then
    return nyse_amex_options_binarygateway_pillar_v3_25.options_market_maker_symbol_appointment_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Configuration Acknowledgement Message
  if seq_msg_type == 0x0221 then
    return nyse_amex_options_binarygateway_pillar_v3_25.session_configuration_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order And Cancel Replace Acknowledgement Message
  if seq_msg_type == 0x0269 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_and_cancel_replace_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Acknowledgment Type 294 Message
  if seq_msg_type == 0x0294 then
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_type_294_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Acknowledgment Message
  if seq_msg_type == 0x0308 then
    return nyse_amex_options_binarygateway_pillar_v3_25.bulk_quote_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
  if seq_msg_type == 0x0278 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Acknowledgment Message
  if seq_msg_type == 0x0268 then
    return nyse_amex_options_binarygateway_pillar_v3_25.order_priority_update_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Message
  if seq_msg_type == 0x0295 then
    return nyse_amex_options_binarygateway_pillar_v3_25.execution_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Correct Message
  if seq_msg_type == 0x0293 then
    return nyse_amex_options_binarygateway_pillar_v3_25.trade_bust_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Application Layer Reject Message
  if seq_msg_type == 0x0267 then
    return nyse_amex_options_binarygateway_pillar_v3_25.application_layer_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Acknowledgement Message
  if seq_msg_type == 0x0332 then
    return nyse_amex_options_binarygateway_pillar_v3_25.risk_control_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Alert Message
  if seq_msg_type == 0x0333 then
    return nyse_amex_options_binarygateway_pillar_v3_25.risk_control_alert_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Series Request Acknowledgement Message
  if seq_msg_type == 0x0358 then
    return nyse_amex_options_binarygateway_pillar_v3_25.complex_series_request_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.dissect = function(buffer, offset, packet, parent, seq_msg_type)
  if not show.sequenced_message then
    return nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.branches(buffer, offset, packet, parent, seq_msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.size(buffer, offset, seq_msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.sequenced_message, range, display)

  return nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.branches(buffer, offset, packet, parent, seq_msg_type)
end

-- Seq Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_length = {}

-- Size: Seq Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_length.size = 2

-- Display: Seq Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_length.display = function(value)
  return "Seq Msg Length: "..value
end

-- Dissect: Seq Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg_length, range, value, display)

  return offset + length, value
end

-- Seq Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_type = {}

-- Size: Seq Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_type.size = 2

-- Display: Seq Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_type.display = function(value)
  if value == 0x0220 then
    return "Seq Msg Type: Session Configuration Request Message (0x0220)"
  end
  if value == 0x0282 then
    return "Seq Msg Type: Sequenced Filler Message (0x0282)"
  end
  if value == 0x0248 then
    return "Seq Msg Type: New Order Message (0x0248)"
  end
  if value == 0x0250 then
    return "Seq Msg Type: Order Cancel Request Message (0x0250)"
  end
  if value == 0x0251 then
    return "Seq Msg Type: Order Modify Request Message (0x0251)"
  end
  if value == 0x0243 then
    return "Seq Msg Type: New Bulk Quote Type 243 Message (0x0243)"
  end
  if value == 0x0259 then
    return "Seq Msg Type: New Bulk Quote Type 259 Message (0x0259)"
  end
  if value == 0x0222 then
    return "Seq Msg Type: New Order Cross Message (0x0222)"
  end
  if value == 0x0223 then
    return "Seq Msg Type: Bulk Cancel Request Type 223 Message (0x0223)"
  end
  if value == 0x0224 then
    return "Seq Msg Type: Bulk Cancel Request Type 224 Message (0x0224)"
  end
  if value == 0x0330 then
    return "Seq Msg Type: Risk Limit Update Request Message (0x0330)"
  end
  if value == 0x0331 then
    return "Seq Msg Type: Risk Action Request Message (0x0331)"
  end
  if value == 0x0357 then
    return "Seq Msg Type: New Complex Series Request Message (0x0357)"
  end
  if value == 0x0233 then
    return "Seq Msg Type: Underlying Symbol Reference Data Message (0x0233)"
  end
  if value == 0x0234 then
    return "Seq Msg Type: Series Reference Data Message (0x0234)"
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
  if value == 0x0833 then
    return "Seq Msg Type: Options Market Maker Symbol Appointment Reference Data Message (0x0833)"
  end
  if value == 0x0221 then
    return "Seq Msg Type: Session Configuration Acknowledgement Message (0x0221)"
  end
  if value == 0x0269 then
    return "Seq Msg Type: Order And Cancel Replace Acknowledgement Message (0x0269)"
  end
  if value == 0x0294 then
    return "Seq Msg Type: Bulk Quote Acknowledgment Type 294 Message (0x0294)"
  end
  if value == 0x0308 then
    return "Seq Msg Type: Bulk Quote Acknowledgment Message (0x0308)"
  end
  if value == 0x0278 then
    return "Seq Msg Type: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message (0x0278)"
  end
  if value == 0x0268 then
    return "Seq Msg Type: Order Priority Update Acknowledgment Message (0x0268)"
  end
  if value == 0x0295 then
    return "Seq Msg Type: Execution Report Message (0x0295)"
  end
  if value == 0x0293 then
    return "Seq Msg Type: Trade Bust Correct Message (0x0293)"
  end
  if value == 0x0267 then
    return "Seq Msg Type: Application Layer Reject Message (0x0267)"
  end
  if value == 0x0332 then
    return "Seq Msg Type: Risk Control Acknowledgement Message (0x0332)"
  end
  if value == 0x0333 then
    return "Seq Msg Type: Risk Control Alert Message (0x0333)"
  end
  if value == 0x0358 then
    return "Seq Msg Type: Complex Series Request Acknowledgement Message (0x0358)"
  end

  return "Seq Msg Type: Unknown("..value..")"
end

-- Dissect: Seq Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg_type, range, value, display)

  return offset + length, value
end

-- Seq Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header = {}

-- Size: Seq Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header.size =
  nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_type.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_length.size

-- Display: Seq Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, seq_msg_type = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_type.dissect(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.seq_msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg_header, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp
nyse_amex_options_binarygateway_pillar_v3_25.timestamp = {}

-- Size: Timestamp
nyse_amex_options_binarygateway_pillar_v3_25.timestamp.size = 8

-- Display: Timestamp
nyse_amex_options_binarygateway_pillar_v3_25.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_amex_options_binarygateway_pillar_v3_25.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_amex_options_binarygateway_pillar_v3_25.reserved_4 = {}

-- Size: Reserved 4
nyse_amex_options_binarygateway_pillar_v3_25.reserved_4.size = 4

-- Display: Reserved 4
nyse_amex_options_binarygateway_pillar_v3_25.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_amex_options_binarygateway_pillar_v3_25.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_amex_options_binarygateway_pillar_v3_25.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id = {}

-- Size: Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id.size =
  nyse_amex_options_binarygateway_pillar_v3_25.stream_id.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.seq.size

-- Display: Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_amex_options_binarygateway_pillar_v3_25.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Id
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id.dissect = function(buffer, offset, packet, parent)
  if show.seq_msg_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg_id, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id.fields(buffer, offset, packet, parent)
  end
end

-- Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.msg_length = {}

-- Size: Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.msg_length.size = 2

-- Display: Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nyse_amex_options_binarygateway_pillar_v3_25.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.msg_type = {}

-- Size: Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.msg_type.size = 2

-- Display: Msg Type
nyse_amex_options_binarygateway_pillar_v3_25.msg_type.display = function(value)
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
nyse_amex_options_binarygateway_pillar_v3_25.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.msg_header = {}

-- Size: Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.msg_header.size =
  nyse_amex_options_binarygateway_pillar_v3_25.msg_type.size + 
  nyse_amex_options_binarygateway_pillar_v3_25.msg_length.size

-- Display: Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = nyse_amex_options_binarygateway_pillar_v3_25.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = nyse_amex_options_binarygateway_pillar_v3_25.msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.msg_header, buffer(offset, 0))
    local index = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_amex_options_binarygateway_pillar_v3_25.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Seq Msg
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg = {}

-- Read runtime size of: Seq Msg
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Seq Msg
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg.fields = function(buffer, offset, packet, parent, size_of_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  -- Seq Msg Id: Struct of 2 fields
  index, seq_msg_id = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_amex_options_binarygateway_pillar_v3_25.reserved_4.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_amex_options_binarygateway_pillar_v3_25.timestamp.dissect(buffer, index, packet, parent)

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Type
  local seq_msg_type = buffer(index - 4, 2):le_uint()

  -- Sequenced Message: Runtime Type with 31 branches
  index = nyse_amex_options_binarygateway_pillar_v3_25.sequenced_message.dissect(buffer, index, packet, parent, seq_msg_type)

  return index
end

-- Dissect: Seq Msg
nyse_amex_options_binarygateway_pillar_v3_25.seq_msg.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_seq_msg = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.seq_msg then
    local range = buffer(offset, size_of_seq_msg)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.seq_msg.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.seq_msg, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.seq_msg.fields(buffer, offset, packet, parent, size_of_seq_msg)

  return offset + size_of_seq_msg
end

-- Status
nyse_amex_options_binarygateway_pillar_v3_25.status = {}

-- Size: Status
nyse_amex_options_binarygateway_pillar_v3_25.status.size = 1

-- Display: Status
nyse_amex_options_binarygateway_pillar_v3_25.status.display = function(value)
  if value == 0 then
    return "Status: Request Processed Successfully (0)"
  end
  if value == 18 then
    return "Status: Not Logged In (18)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_amex_options_binarygateway_pillar_v3_25.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.status, range, value, display)

  return offset + length, value
end

-- Close Response
nyse_amex_options_binarygateway_pillar_v3_25.close_response = {}

-- Read runtime size of: Close Response
nyse_amex_options_binarygateway_pillar_v3_25.close_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close Response
nyse_amex_options_binarygateway_pillar_v3_25.close_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close Response
nyse_amex_options_binarygateway_pillar_v3_25.close_response.fields = function(buffer, offset, packet, parent, size_of_close_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_amex_options_binarygateway_pillar_v3_25.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Response
nyse_amex_options_binarygateway_pillar_v3_25.close_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close_response = nyse_amex_options_binarygateway_pillar_v3_25.close_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close_response then
    local range = buffer(offset, size_of_close_response)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.close_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.close_response, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.close_response.fields(buffer, offset, packet, parent, size_of_close_response)

  return offset + size_of_close_response
end

-- Close
nyse_amex_options_binarygateway_pillar_v3_25.close = {}

-- Read runtime size of: Close
nyse_amex_options_binarygateway_pillar_v3_25.close.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close
nyse_amex_options_binarygateway_pillar_v3_25.close.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close
nyse_amex_options_binarygateway_pillar_v3_25.close.fields = function(buffer, offset, packet, parent, size_of_close)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close
nyse_amex_options_binarygateway_pillar_v3_25.close.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close = nyse_amex_options_binarygateway_pillar_v3_25.close.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close then
    local range = buffer(offset, size_of_close)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.close.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.close, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.close.fields(buffer, offset, packet, parent, size_of_close)

  return offset + size_of_close
end

-- Access
nyse_amex_options_binarygateway_pillar_v3_25.access = {}

-- Size: Access
nyse_amex_options_binarygateway_pillar_v3_25.access.size = 1

-- Display: Access
nyse_amex_options_binarygateway_pillar_v3_25.access.display = function(value)
  return "Access: "..value
end

-- Dissect: Access
nyse_amex_options_binarygateway_pillar_v3_25.access.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.access.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.access.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.access, range, value, display)

  return offset + length, value
end

-- Open Response
nyse_amex_options_binarygateway_pillar_v3_25.open_response = {}

-- Read runtime size of: Open Response
nyse_amex_options_binarygateway_pillar_v3_25.open_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open Response
nyse_amex_options_binarygateway_pillar_v3_25.open_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Response
nyse_amex_options_binarygateway_pillar_v3_25.open_response.fields = function(buffer, offset, packet, parent, size_of_open_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_amex_options_binarygateway_pillar_v3_25.status.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_amex_options_binarygateway_pillar_v3_25.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Response
nyse_amex_options_binarygateway_pillar_v3_25.open_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open_response = nyse_amex_options_binarygateway_pillar_v3_25.open_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open_response then
    local range = buffer(offset, size_of_open_response)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.open_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.open_response, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.open_response.fields(buffer, offset, packet, parent, size_of_open_response)

  return offset + size_of_open_response
end

-- Mode
nyse_amex_options_binarygateway_pillar_v3_25.mode = {}

-- Size: Mode
nyse_amex_options_binarygateway_pillar_v3_25.mode.size = 1

-- Display: Mode
nyse_amex_options_binarygateway_pillar_v3_25.mode.display = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
nyse_amex_options_binarygateway_pillar_v3_25.mode.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.mode, range, value, display)

  return offset + length, value
end

-- End Seq
nyse_amex_options_binarygateway_pillar_v3_25.end_seq = {}

-- Size: End Seq
nyse_amex_options_binarygateway_pillar_v3_25.end_seq.size = 8

-- Display: End Seq
nyse_amex_options_binarygateway_pillar_v3_25.end_seq.display = function(value)
  return "End Seq: "..value
end

-- Dissect: End Seq
nyse_amex_options_binarygateway_pillar_v3_25.end_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.end_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.end_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.end_seq, range, value, display)

  return offset + length, value
end

-- Start Seq
nyse_amex_options_binarygateway_pillar_v3_25.start_seq = {}

-- Size: Start Seq
nyse_amex_options_binarygateway_pillar_v3_25.start_seq.size = 8

-- Display: Start Seq
nyse_amex_options_binarygateway_pillar_v3_25.start_seq.display = function(value)
  return "Start Seq: "..value
end

-- Dissect: Start Seq
nyse_amex_options_binarygateway_pillar_v3_25.start_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.start_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.start_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.start_seq, range, value, display)

  return offset + length, value
end

-- Open
nyse_amex_options_binarygateway_pillar_v3_25.open = {}

-- Read runtime size of: Open
nyse_amex_options_binarygateway_pillar_v3_25.open.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open
nyse_amex_options_binarygateway_pillar_v3_25.open.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
nyse_amex_options_binarygateway_pillar_v3_25.open.fields = function(buffer, offset, packet, parent, size_of_open)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.dissect(buffer, index, packet, parent)

  -- Start Seq: 8 Byte Unsigned Fixed Width Integer
  index, start_seq = nyse_amex_options_binarygateway_pillar_v3_25.start_seq.dissect(buffer, index, packet, parent)

  -- End Seq: 8 Byte Unsigned Fixed Width Integer
  index, end_seq = nyse_amex_options_binarygateway_pillar_v3_25.end_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_amex_options_binarygateway_pillar_v3_25.access.dissect(buffer, index, packet, parent)

  -- Mode: 1 Byte Unsigned Fixed Width Integer
  index, mode = nyse_amex_options_binarygateway_pillar_v3_25.mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
nyse_amex_options_binarygateway_pillar_v3_25.open.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open = nyse_amex_options_binarygateway_pillar_v3_25.open.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open then
    local range = buffer(offset, size_of_open)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.open.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.open, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.open.fields(buffer, offset, packet, parent, size_of_open)

  return offset + size_of_open
end

-- Heartbeat
nyse_amex_options_binarygateway_pillar_v3_25.heartbeat = {}

-- Read runtime size of: Heartbeat
nyse_amex_options_binarygateway_pillar_v3_25.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat
nyse_amex_options_binarygateway_pillar_v3_25.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nyse_amex_options_binarygateway_pillar_v3_25.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nyse_amex_options_binarygateway_pillar_v3_25.heartbeat.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat = nyse_amex_options_binarygateway_pillar_v3_25.heartbeat.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.heartbeat.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.heartbeat, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Next Seq
nyse_amex_options_binarygateway_pillar_v3_25.next_seq = {}

-- Size: Next Seq
nyse_amex_options_binarygateway_pillar_v3_25.next_seq.size = 8

-- Display: Next Seq
nyse_amex_options_binarygateway_pillar_v3_25.next_seq.display = function(value)
  return "Next Seq: "..value
end

-- Dissect: Next Seq
nyse_amex_options_binarygateway_pillar_v3_25.next_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.next_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_amex_options_binarygateway_pillar_v3_25.next_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.next_seq, range, value, display)

  return offset + length, value
end

-- Stream Avail
nyse_amex_options_binarygateway_pillar_v3_25.stream_avail = {}

-- Read runtime size of: Stream Avail
nyse_amex_options_binarygateway_pillar_v3_25.stream_avail.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Stream Avail
nyse_amex_options_binarygateway_pillar_v3_25.stream_avail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Avail
nyse_amex_options_binarygateway_pillar_v3_25.stream_avail.fields = function(buffer, offset, packet, parent, size_of_stream_avail)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_amex_options_binarygateway_pillar_v3_25.stream_id.dissect(buffer, index, packet, parent)

  -- Next Seq: 8 Byte Unsigned Fixed Width Integer
  index, next_seq = nyse_amex_options_binarygateway_pillar_v3_25.next_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_amex_options_binarygateway_pillar_v3_25.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Avail
nyse_amex_options_binarygateway_pillar_v3_25.stream_avail.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_stream_avail = nyse_amex_options_binarygateway_pillar_v3_25.stream_avail.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.stream_avail then
    local range = buffer(offset, size_of_stream_avail)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.stream_avail.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.stream_avail, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)

  return offset + size_of_stream_avail
end

-- Login Response
nyse_amex_options_binarygateway_pillar_v3_25.login_response = {}

-- Read runtime size of: Login Response
nyse_amex_options_binarygateway_pillar_v3_25.login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Response
nyse_amex_options_binarygateway_pillar_v3_25.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
nyse_amex_options_binarygateway_pillar_v3_25.login_response.fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_amex_options_binarygateway_pillar_v3_25.username.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_amex_options_binarygateway_pillar_v3_25.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
nyse_amex_options_binarygateway_pillar_v3_25.login_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_response = nyse_amex_options_binarygateway_pillar_v3_25.login_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_response then
    local range = buffer(offset, size_of_login_response)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.login_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.login_response, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.login_response.fields(buffer, offset, packet, parent, size_of_login_response)

  return offset + size_of_login_response
end

-- Version
nyse_amex_options_binarygateway_pillar_v3_25.version = {}

-- Size: Version
nyse_amex_options_binarygateway_pillar_v3_25.version.size = 20

-- Display: Version
nyse_amex_options_binarygateway_pillar_v3_25.version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version: No Value"
  end

  return "Version: "..value
end

-- Dissect: Version
nyse_amex_options_binarygateway_pillar_v3_25.version.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.version.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.version, range, value, display)

  return offset + length, value
end

-- Password
nyse_amex_options_binarygateway_pillar_v3_25.password = {}

-- Size: Password
nyse_amex_options_binarygateway_pillar_v3_25.password.size = 32

-- Display: Password
nyse_amex_options_binarygateway_pillar_v3_25.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nyse_amex_options_binarygateway_pillar_v3_25.password.dissect = function(buffer, offset, packet, parent)
  local length = nyse_amex_options_binarygateway_pillar_v3_25.password.size
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

  local display = nyse_amex_options_binarygateway_pillar_v3_25.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.password, range, value, display)

  return offset + length, value
end

-- Login Message
nyse_amex_options_binarygateway_pillar_v3_25.login_message = {}

-- Read runtime size of: Login Message
nyse_amex_options_binarygateway_pillar_v3_25.login_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Message
nyse_amex_options_binarygateway_pillar_v3_25.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_amex_options_binarygateway_pillar_v3_25.login_message.fields = function(buffer, offset, packet, parent, size_of_login_message)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_amex_options_binarygateway_pillar_v3_25.msg_header.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_amex_options_binarygateway_pillar_v3_25.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = nyse_amex_options_binarygateway_pillar_v3_25.password.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = nyse_amex_options_binarygateway_pillar_v3_25.mic.dissect(buffer, index, packet, parent)

  -- Version: 20 Byte Ascii String
  index, version = nyse_amex_options_binarygateway_pillar_v3_25.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_amex_options_binarygateway_pillar_v3_25.login_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_message = nyse_amex_options_binarygateway_pillar_v3_25.login_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_message then
    local range = buffer(offset, size_of_login_message)
    local display = nyse_amex_options_binarygateway_pillar_v3_25.login_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25.fields.login_message, range, display)
  end

  nyse_amex_options_binarygateway_pillar_v3_25.login_message.fields(buffer, offset, packet, parent, size_of_login_message)

  return offset + size_of_login_message
end

-- Pillar Stream Message
nyse_amex_options_binarygateway_pillar_v3_25.pillar_stream_message = {}

-- Dissect Pillar Stream Message
nyse_amex_options_binarygateway_pillar_v3_25.pillar_stream_message.dissect = function(buffer, packet, parent)
  local offset = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(0, 2):le_uint()

  -- Dissect Login Message
  if msg_type == 0x0201 then
    return nyse_amex_options_binarygateway_pillar_v3_25.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if msg_type == 0x0202 then
    return nyse_amex_options_binarygateway_pillar_v3_25.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Avail
  if msg_type == 0x0203 then
    return nyse_amex_options_binarygateway_pillar_v3_25.stream_avail.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_amex_options_binarygateway_pillar_v3_25.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open
  if msg_type == 0x0205 then
    return nyse_amex_options_binarygateway_pillar_v3_25.open.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Response
  if msg_type == 0x0206 then
    return nyse_amex_options_binarygateway_pillar_v3_25.open_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close
  if msg_type == 0x0207 then
    return nyse_amex_options_binarygateway_pillar_v3_25.close.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close Response
  if msg_type == 0x0208 then
    return nyse_amex_options_binarygateway_pillar_v3_25.close_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Seq Msg
  if msg_type == 0x0905 then
    return nyse_amex_options_binarygateway_pillar_v3_25.seq_msg.dissect(buffer, offset, packet, parent)
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_amex_options_binarygateway_pillar_v3_25.init()
end

-- Dissector for Nyse Amex Options BinaryGateway Pillar 3.25
function omi_nyse_amex_options_binarygateway_pillar_v3_25.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_amex_options_binarygateway_pillar_v3_25.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_amex_options_binarygateway_pillar_v3_25, buffer(), omi_nyse_amex_options_binarygateway_pillar_v3_25.description, "("..buffer:len().." Bytes)")
  return nyse_amex_options_binarygateway_pillar_v3_25.pillar_stream_message.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nyse_amex_options_binarygateway_pillar_v3_25)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_amex_options_binarygateway_pillar_v3_25.pillar_stream_message.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Amex Options BinaryGateway Pillar 3.25
local function omi_nyse_amex_options_binarygateway_pillar_v3_25_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_amex_options_binarygateway_pillar_v3_25.pillar_stream_message.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_amex_options_binarygateway_pillar_v3_25
  omi_nyse_amex_options_binarygateway_pillar_v3_25.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Amex Options BinaryGateway Pillar 3.25
omi_nyse_amex_options_binarygateway_pillar_v3_25:register_heuristic("tcp", omi_nyse_amex_options_binarygateway_pillar_v3_25_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 3.25
--   Date: Friday, October 17, 2025
--   Specification: NYSE_Pillar_Options_Gateway_Binary_Protocol_Specification.pdf
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
