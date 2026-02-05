-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Arca Options BinaryGateway Pillar 3.15 Protocol
local omi_nyse_arca_options_binarygateway_pillar_v3_15 = Proto("Nyse.Arca.Options.BinaryGateway.Pillar.v3.15.Lua", "Nyse Arca Options BinaryGateway Pillar 3.15")

-- Protocol table
local nyse_arca_options_binarygateway_pillar_v3_15 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Arca Options BinaryGateway Pillar 3.15 Fields
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.access = ProtoField.new("Access", "nyse.arca.options.binarygateway.pillar.v3.15.access", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ack_status = ProtoField.new("Ack Status", "nyse.arca.options.binarygateway.pillar.v3.15.ackstatus", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ack_type = ProtoField.new("Ack Type", "nyse.arca.options.binarygateway.pillar.v3.15.acktype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.allocation_pct = ProtoField.new("Allocation Pct", "nyse.arca.options.binarygateway.pillar.v3.15.allocationpct", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.appointment_status = ProtoField.new("Appointment Status", "nyse.arca.options.binarygateway.pillar.v3.15.appointmentstatus", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.attributed_quote = ProtoField.new("Attributed Quote", "nyse.arca.options.binarygateway.pillar.v3.15.attributedquote", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.auction_id = ProtoField.new("Auction Id", "nyse.arca.options.binarygateway.pillar.v3.15.auctionid", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bit_field_quote_inst = ProtoField.new("Bit Field Quote Inst", "nyse.arca.options.binarygateway.pillar.v3.15.bitfieldquoteinst", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.blocked_by_breach_indicator = ProtoField.new("Blocked By Breach Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.blockedbybreachindicator", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.blocked_by_kill_switch_indicator = ProtoField.new("Blocked By Kill Switch Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.blockedbykillswitchindicator", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bold_designation = ProtoField.new("Bold Designation", "nyse.arca.options.binarygateway.pillar.v3.15.bolddesignation", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.breach_action_request = ProtoField.new("Breach Action Request", "nyse.arca.options.binarygateway.pillar.v3.15.breachactionrequest", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.breach_action_response = ProtoField.new("Breach Action Response", "nyse.arca.options.binarygateway.pillar.v3.15.breachactionresponse", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bulk_action = ProtoField.new("Bulk Action", "nyse.arca.options.binarygateway.pillar.v3.15.bulkaction", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bulk_quote = ProtoField.new("Bulk Quote", "nyse.arca.options.binarygateway.pillar.v3.15.bulkquote", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bust_correct_indicator = ProtoField.new("Bust Correct Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.bustcorrectindicator", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cancel_instead_of_reprice = ProtoField.new("Cancel Instead Of Reprice", "nyse.arca.options.binarygateway.pillar.v3.15.cancelinsteadofreprice", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cancel_on_disconnect = ProtoField.new("Cancel On Disconnect", "nyse.arca.options.binarygateway.pillar.v3.15.cancelondisconnect", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cancel_scope = ProtoField.new("Cancel Scope", "nyse.arca.options.binarygateway.pillar.v3.15.cancelscope", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.capacity = ProtoField.new("Capacity", "nyse.arca.options.binarygateway.pillar.v3.15.capacity", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.channel_id = ProtoField.new("Channel Id", "nyse.arca.options.binarygateway.pillar.v3.15.channelid", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "nyse.arca.options.binarygateway.pillar.v3.15.clordid", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_account = ProtoField.new("Clearing Account", "nyse.arca.options.binarygateway.pillar.v3.15.clearingaccount", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_account_covered = ProtoField.new("Clearing Account Covered", "nyse.arca.options.binarygateway.pillar.v3.15.clearingaccountcovered", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_account_exposed = ProtoField.new("Clearing Account Exposed", "nyse.arca.options.binarygateway.pillar.v3.15.clearingaccountexposed", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_firm = ProtoField.new("Clearing Firm", "nyse.arca.options.binarygateway.pillar.v3.15.clearingfirm", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_firm_covered = ProtoField.new("Clearing Firm Covered", "nyse.arca.options.binarygateway.pillar.v3.15.clearingfirmcovered", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_firm_exposed = ProtoField.new("Clearing Firm Exposed", "nyse.arca.options.binarygateway.pillar.v3.15.clearingfirmexposed", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_number = ProtoField.new("Clearing Number", "nyse.arca.options.binarygateway.pillar.v3.15.clearingnumber", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.complex_leg = ProtoField.new("Complex Leg", "nyse.arca.options.binarygateway.pillar.v3.15.complexleg", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.complex_leg_ack = ProtoField.new("Complex Leg Ack", "nyse.arca.options.binarygateway.pillar.v3.15.complexlegack", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_clearing_account = ProtoField.new("Contra Clearing Account", "nyse.arca.options.binarygateway.pillar.v3.15.contraclearingaccount", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_clearing_firm = ProtoField.new("Contra Clearing Firm", "nyse.arca.options.binarygateway.pillar.v3.15.contraclearingfirm", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_covered_or_uncovered = ProtoField.new("Contra Covered Or Uncovered", "nyse.arca.options.binarygateway.pillar.v3.15.contracoveredoruncovered", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_cross_type = ProtoField.new("Contra Cross Type", "nyse.arca.options.binarygateway.pillar.v3.15.contracrosstype", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_customer_or_firm = ProtoField.new("Contra Customer Or Firm", "nyse.arca.options.binarygateway.pillar.v3.15.contracustomerorfirm", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_market_maker = ProtoField.new("Contra Market Maker", "nyse.arca.options.binarygateway.pillar.v3.15.contramarketmaker", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_mpid = ProtoField.new("Contra Mpid", "nyse.arca.options.binarygateway.pillar.v3.15.contrampid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_open_close = ProtoField.new("Contra Open Close", "nyse.arca.options.binarygateway.pillar.v3.15.contraopenclose", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.count_calculation = ProtoField.new("Count Calculation", "nyse.arca.options.binarygateway.pillar.v3.15.countcalculation", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.count_limit = ProtoField.new("Count Limit", "nyse.arca.options.binarygateway.pillar.v3.15.countlimit", ftypes.INT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.covered = ProtoField.new("Covered", "nyse.arca.options.binarygateway.pillar.v3.15.covered", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.covered_or_uncovered = ProtoField.new("Covered Or Uncovered", "nyse.arca.options.binarygateway.pillar.v3.15.coveredoruncovered", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cross_id = ProtoField.new("Cross Id", "nyse.arca.options.binarygateway.pillar.v3.15.crossid", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cum_qty = ProtoField.new("Cum Qty", "nyse.arca.options.binarygateway.pillar.v3.15.cumqty", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.deal_id = ProtoField.new("Deal Id", "nyse.arca.options.binarygateway.pillar.v3.15.dealid", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.deliver_to_comp_id = ProtoField.new("Deliver To Comp Id", "nyse.arca.options.binarygateway.pillar.v3.15.delivertocompid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.end_seq = ProtoField.new("End Seq", "nyse.arca.options.binarygateway.pillar.v3.15.endseq", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.exec_inst = ProtoField.new("Exec Inst", "nyse.arca.options.binarygateway.pillar.v3.15.execinst", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.exposed = ProtoField.new("Exposed", "nyse.arca.options.binarygateway.pillar.v3.15.exposed", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.extended_exec_inst = ProtoField.new("Extended Exec Inst", "nyse.arca.options.binarygateway.pillar.v3.15.extendedexecinst", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.floor_broker_firm_crd = ProtoField.new("Floor Broker Firm Crd", "nyse.arca.options.binarygateway.pillar.v3.15.floorbrokerfirmcrd", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.flow_indicator = ProtoField.new("Flow Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.flowindicator", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.group_id = ProtoField.new("Group Id", "nyse.arca.options.binarygateway.pillar.v3.15.groupid", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.interest_type = ProtoField.new("Interest Type", "nyse.arca.options.binarygateway.pillar.v3.15.interesttype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ioc_attribution = ProtoField.new("Ioc Attribution", "nyse.arca.options.binarygateway.pillar.v3.15.iocattribution", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.last_px = ProtoField.new("Last Px", "nyse.arca.options.binarygateway.pillar.v3.15.lastpx", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.last_qty = ProtoField.new("Last Qty", "nyse.arca.options.binarygateway.pillar.v3.15.lastqty", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leaves_qty = ProtoField.new("Leaves Qty", "nyse.arca.options.binarygateway.pillar.v3.15.leavesqty", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leg_open_close = ProtoField.new("Leg Open Close", "nyse.arca.options.binarygateway.pillar.v3.15.legopenclose", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.arca.options.binarygateway.pillar.v3.15.legratioqty", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leg_side = ProtoField.new("Leg Side", "nyse.arca.options.binarygateway.pillar.v3.15.legside", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leg_symbol_id = ProtoField.new("Leg Symbol Id", "nyse.arca.options.binarygateway.pillar.v3.15.legsymbolid", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.legal_width_multiplier = ProtoField.new("Legal Width Multiplier", "nyse.arca.options.binarygateway.pillar.v3.15.legalwidthmultiplier", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.liquidityindicator", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.listed_mic = ProtoField.new("Listed Mic", "nyse.arca.options.binarygateway.pillar.v3.15.listedmic", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.locate_reqd = ProtoField.new("Locate Reqd", "nyse.arca.options.binarygateway.pillar.v3.15.locatereqd", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.luldmpv = ProtoField.new("Luldmpv", "nyse.arca.options.binarygateway.pillar.v3.15.luldmpv", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.market_maker = ProtoField.new("Market Maker", "nyse.arca.options.binarygateway.pillar.v3.15.marketmaker", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.max_floor = ProtoField.new("Max Floor", "nyse.arca.options.binarygateway.pillar.v3.15.maxfloor", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.max_order_price = ProtoField.new("Max Order Price", "nyse.arca.options.binarygateway.pillar.v3.15.maxorderprice", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.max_order_quantity = ProtoField.new("Max Order Quantity", "nyse.arca.options.binarygateway.pillar.v3.15.maxorderquantity", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mic = ProtoField.new("Mic", "nyse.arca.options.binarygateway.pillar.v3.15.mic", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.min_qty = ProtoField.new("Min Qty", "nyse.arca.options.binarygateway.pillar.v3.15.minqty", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mm_sent_time = ProtoField.new("Mm Sent Time", "nyse.arca.options.binarygateway.pillar.v3.15.mmsenttime", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mm_type = ProtoField.new("Mm Type", "nyse.arca.options.binarygateway.pillar.v3.15.mmtype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mode = ProtoField.new("Mode", "nyse.arca.options.binarygateway.pillar.v3.15.mode", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mp_sub_id = ProtoField.new("Mp Sub Id", "nyse.arca.options.binarygateway.pillar.v3.15.mpsubid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpid = ProtoField.new("Mpid", "nyse.arca.options.binarygateway.pillar.v3.15.mpid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpid_status = ProtoField.new("Mpid Status", "nyse.arca.options.binarygateway.pillar.v3.15.mpidstatus", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpv_class_id = ProtoField.new("Mpv Class Id", "nyse.arca.options.binarygateway.pillar.v3.15.mpvclassid", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpv_class_name = ProtoField.new("Mpv Class Name", "nyse.arca.options.binarygateway.pillar.v3.15.mpvclassname", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpv_level_definition = ProtoField.new("Mpv Level Definition", "nyse.arca.options.binarygateway.pillar.v3.15.mpvleveldefinition", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpv_level_name = ProtoField.new("Mpv Level Name", "nyse.arca.options.binarygateway.pillar.v3.15.mpvlevelname", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.msg_header = ProtoField.new("Msg Header", "nyse.arca.options.binarygateway.pillar.v3.15.msgheader", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.msg_length = ProtoField.new("Msg Length", "nyse.arca.options.binarygateway.pillar.v3.15.msglength", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.msg_type = ProtoField.new("Msg Type", "nyse.arca.options.binarygateway.pillar.v3.15.msgtype", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "nyse.arca.options.binarygateway.pillar.v3.15.multilegreportingtype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.next_seq = ProtoField.new("Next Seq", "nyse.arca.options.binarygateway.pillar.v3.15.nextseq", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.nyse_symbol = ProtoField.new("Nyse Symbol", "nyse.arca.options.binarygateway.pillar.v3.15.nysesymbol", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.open_close = ProtoField.new("Open Close", "nyse.arca.options.binarygateway.pillar.v3.15.openclose", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.optional_data = ProtoField.new("Optional Data", "nyse.arca.options.binarygateway.pillar.v3.15.optionaldata", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.optional_order_add_on = ProtoField.new("Optional Order Add On", "nyse.arca.options.binarygateway.pillar.v3.15.optionalorderaddon", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ord_type = ProtoField.new("Ord Type", "nyse.arca.options.binarygateway.pillar.v3.15.ordtype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_capacity = ProtoField.new("Order Capacity", "nyse.arca.options.binarygateway.pillar.v3.15.ordercapacity", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_id = ProtoField.new("Order Id", "nyse.arca.options.binarygateway.pillar.v3.15.orderid", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_instructions = ProtoField.new("Order Instructions", "nyse.arca.options.binarygateway.pillar.v3.15.orderinstructions", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_priority_update_ack_subscription = ProtoField.new("Order Priority Update Ack Subscription", "nyse.arca.options.binarygateway.pillar.v3.15.orderpriorityupdateacksubscription", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_qty = ProtoField.new("Order Qty", "nyse.arca.options.binarygateway.pillar.v3.15.orderqty", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "nyse.arca.options.binarygateway.pillar.v3.15.origclordid", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.participant_type = ProtoField.new("Participant Type", "nyse.arca.options.binarygateway.pillar.v3.15.participanttype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.password = ProtoField.new("Password", "nyse.arca.options.binarygateway.pillar.v3.15.password", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.percentage_limit = ProtoField.new("Percentage Limit", "nyse.arca.options.binarygateway.pillar.v3.15.percentagelimit", ftypes.INT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.pillar_stream_message = ProtoField.new("Pillar Stream Message", "nyse.arca.options.binarygateway.pillar.v3.15.pillarstreammessage", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.pre_liquidity_indicator = ProtoField.new("Pre Liquidity Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.preliquidityindicator", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.price_price_8 = ProtoField.new("Price Price 8", "nyse.arca.options.binarygateway.pillar.v3.15.priceprice8", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.price_u_price_8 = ProtoField.new("Price U Price 8", "nyse.arca.options.binarygateway.pillar.v3.15.priceuprice8", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.proactive_if_locked = ProtoField.new("Proactive If Locked", "nyse.arca.options.binarygateway.pillar.v3.15.proactiveiflocked", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.quantity = ProtoField.new("Quantity", "nyse.arca.options.binarygateway.pillar.v3.15.quantity", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.quote_ack = ProtoField.new("Quote Ack", "nyse.arca.options.binarygateway.pillar.v3.15.quoteack", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.quoting_mpv = ProtoField.new("Quoting Mpv", "nyse.arca.options.binarygateway.pillar.v3.15.quotingmpv", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reason_code = ProtoField.new("Reason Code", "nyse.arca.options.binarygateway.pillar.v3.15.reasoncode", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ref_cl_ord_id = ProtoField.new("Ref Cl Ord Id", "nyse.arca.options.binarygateway.pillar.v3.15.refclordid", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.refseqmsgid = ProtoField.new("Refseqmsgid", "nyse.arca.options.binarygateway.pillar.v3.15.refseqmsgid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reinstatement_requiredby_other = ProtoField.new("Reinstatement Requiredby Other", "nyse.arca.options.binarygateway.pillar.v3.15.reinstatementrequiredbyother", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reinstatement_requiredby_self = ProtoField.new("Reinstatement Requiredby Self", "nyse.arca.options.binarygateway.pillar.v3.15.reinstatementrequiredbyself", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reject_type = ProtoField.new("Reject Type", "nyse.arca.options.binarygateway.pillar.v3.15.rejecttype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.repeating_groups = ProtoField.new("Repeating Groups", "nyse.arca.options.binarygateway.pillar.v3.15.repeatinggroups", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arca.options.binarygateway.pillar.v3.15.reserved1", ftypes.BYTES)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_16 = ProtoField.new("Reserved 16", "nyse.arca.options.binarygateway.pillar.v3.15.reserved16", ftypes.BYTES)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.arca.options.binarygateway.pillar.v3.15.reserved2", ftypes.BYTES)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_200 = ProtoField.new("Reserved 200", "nyse.arca.options.binarygateway.pillar.v3.15.reserved200", ftypes.BYTES)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arca.options.binarygateway.pillar.v3.15.reserved4", ftypes.BYTES)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_49 = ProtoField.new("Reserved 49", "nyse.arca.options.binarygateway.pillar.v3.15.reserved49", ftypes.BYTES)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_50 = ProtoField.new("Reserved 50", "nyse.arca.options.binarygateway.pillar.v3.15.reserved50", ftypes.BYTES)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_bits_34 = ProtoField.new("Reserved Bits 34", "nyse.arca.options.binarygateway.pillar.v3.15.reservedbits34", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.retail_indicator = ProtoField.new("Retail Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.retailindicator", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_ack_type = ProtoField.new("Risk Ack Type", "nyse.arca.options.binarygateway.pillar.v3.15.riskacktype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_action_type = ProtoField.new("Risk Action Type", "nyse.arca.options.binarygateway.pillar.v3.15.riskactiontype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_control_activation = ProtoField.new("Risk Control Activation", "nyse.arca.options.binarygateway.pillar.v3.15.riskcontrolactivation", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_control_type = ProtoField.new("Risk Control Type", "nyse.arca.options.binarygateway.pillar.v3.15.riskcontroltype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_user_crd = ProtoField.new("Risk User Crd", "nyse.arca.options.binarygateway.pillar.v3.15.riskusercrd", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_user_type = ProtoField.new("Risk User Type", "nyse.arca.options.binarygateway.pillar.v3.15.riskusertype", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.routing_inst = ProtoField.new("Routing Inst", "nyse.arca.options.binarygateway.pillar.v3.15.routinginst", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.rpimpv = ProtoField.new("Rpimpv", "nyse.arca.options.binarygateway.pillar.v3.15.rpimpv", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.security_type = ProtoField.new("Security Type", "nyse.arca.options.binarygateway.pillar.v3.15.securitytype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "nyse.arca.options.binarygateway.pillar.v3.15.selftradeprevention", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.self_trade_type = ProtoField.new("Self Trade Type", "nyse.arca.options.binarygateway.pillar.v3.15.selftradetype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq = ProtoField.new("Seq", "nyse.arca.options.binarygateway.pillar.v3.15.seq", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq_msg_header = ProtoField.new("Seq Msg Header", "nyse.arca.options.binarygateway.pillar.v3.15.seqmsgheader", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq_msg_length = ProtoField.new("Seq Msg Length", "nyse.arca.options.binarygateway.pillar.v3.15.seqmsglength", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq_msg_type = ProtoField.new("Seq Msg Type", "nyse.arca.options.binarygateway.pillar.v3.15.seqmsgtype", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seqmsgid = ProtoField.new("Seqmsgid", "nyse.arca.options.binarygateway.pillar.v3.15.seqmsgid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sequenced_message = ProtoField.new("Sequenced Message", "nyse.arca.options.binarygateway.pillar.v3.15.sequencedmessage", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.series_index = ProtoField.new("Series Index", "nyse.arca.options.binarygateway.pillar.v3.15.seriesindex", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sess = ProtoField.new("Sess", "nyse.arca.options.binarygateway.pillar.v3.15.sess", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.side_bit_5 = ProtoField.new("Side Bit 5", "nyse.arca.options.binarygateway.pillar.v3.15.sidebit5", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.side_u_81 = ProtoField.new("Side U 81", "nyse.arca.options.binarygateway.pillar.v3.15.sideu81", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.special_ord_type = ProtoField.new("Special Ord Type", "nyse.arca.options.binarygateway.pillar.v3.15.specialordtype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.start_seq = ProtoField.new("Start Seq", "nyse.arca.options.binarygateway.pillar.v3.15.startseq", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.status = ProtoField.new("Status", "nyse.arca.options.binarygateway.pillar.v3.15.status", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.stop_px = ProtoField.new("Stop Px", "nyse.arca.options.binarygateway.pillar.v3.15.stoppx", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.stream_id = ProtoField.new("Stream Id", "nyse.arca.options.binarygateway.pillar.v3.15.streamid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_id = ProtoField.new("Sub Id", "nyse.arca.options.binarygateway.pillar.v3.15.subid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_id_indicator = ProtoField.new("Sub Id Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.subidindicator", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_msg_header = ProtoField.new("Sub Msg Header", "nyse.arca.options.binarygateway.pillar.v3.15.submsgheader", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_msg_length = ProtoField.new("Sub Msg Length", "nyse.arca.options.binarygateway.pillar.v3.15.submsglength", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_msg_type = ProtoField.new("Sub Msg Type", "nyse.arca.options.binarygateway.pillar.v3.15.submsgtype", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.symbol_eligibility = ProtoField.new("Symbol Eligibility", "nyse.arca.options.binarygateway.pillar.v3.15.symboleligibility", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.symbol_id = ProtoField.new("Symbol Id", "nyse.arca.options.binarygateway.pillar.v3.15.symbolid", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.target_cancel_mpid = ProtoField.new("Target Cancel Mpid", "nyse.arca.options.binarygateway.pillar.v3.15.targetcancelmpid", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.target_cancel_username = ProtoField.new("Target Cancel Username", "nyse.arca.options.binarygateway.pillar.v3.15.targetcancelusername", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.test_symbol_indicator = ProtoField.new("Test Symbol Indicator", "nyse.arca.options.binarygateway.pillar.v3.15.testsymbolindicator", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.threshold_breach_level = ProtoField.new("Threshold Breach Level", "nyse.arca.options.binarygateway.pillar.v3.15.thresholdbreachlevel", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.throttle_preference = ProtoField.new("Throttle Preference", "nyse.arca.options.binarygateway.pillar.v3.15.throttlepreference", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.throttle_threshold = ProtoField.new("Throttle Threshold", "nyse.arca.options.binarygateway.pillar.v3.15.throttlethreshold", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.throttle_window = ProtoField.new("Throttle Window", "nyse.arca.options.binarygateway.pillar.v3.15.throttlewindow", ftypes.UINT16)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.time_in_force = ProtoField.new("Time In Force", "nyse.arca.options.binarygateway.pillar.v3.15.timeinforce", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.time_limit = ProtoField.new("Time Limit", "nyse.arca.options.binarygateway.pillar.v3.15.timelimit", ftypes.INT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.timestamp = ProtoField.new("Timestamp", "nyse.arca.options.binarygateway.pillar.v3.15.timestamp", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.trading_mpv = ProtoField.new("Trading Mpv", "nyse.arca.options.binarygateway.pillar.v3.15.tradingmpv", ftypes.DOUBLE)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.trading_session_id = ProtoField.new("Trading Session Id", "nyse.arca.options.binarygateway.pillar.v3.15.tradingsessionid", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.transact_time = ProtoField.new("Transact Time", "nyse.arca.options.binarygateway.pillar.v3.15.transacttime", ftypes.UINT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.underlying_type = ProtoField.new("Underlying Type", "nyse.arca.options.binarygateway.pillar.v3.15.underlyingtype", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_calculation_1 = ProtoField.new("Usd Calculation 1", "nyse.arca.options.binarygateway.pillar.v3.15.usdcalculation1", ftypes.INT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_calculation_2 = ProtoField.new("Usd Calculation 2", "nyse.arca.options.binarygateway.pillar.v3.15.usdcalculation2", ftypes.INT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_calculation_3 = ProtoField.new("Usd Calculation 3", "nyse.arca.options.binarygateway.pillar.v3.15.usdcalculation3", ftypes.INT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_calculation_4 = ProtoField.new("Usd Calculation 4", "nyse.arca.options.binarygateway.pillar.v3.15.usdcalculation4", ftypes.INT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_limit = ProtoField.new("Usd Limit", "nyse.arca.options.binarygateway.pillar.v3.15.usdlimit", ftypes.INT64)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.user = ProtoField.new("User", "nyse.arca.options.binarygateway.pillar.v3.15.user", ftypes.UINT32)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.user_data = ProtoField.new("User Data", "nyse.arca.options.binarygateway.pillar.v3.15.userdata", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.user_session_status = ProtoField.new("User Session Status", "nyse.arca.options.binarygateway.pillar.v3.15.usersessionstatus", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.user_session_type = ProtoField.new("User Session Type", "nyse.arca.options.binarygateway.pillar.v3.15.usersessiontype", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.username = ProtoField.new("Username", "nyse.arca.options.binarygateway.pillar.v3.15.username", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.version = ProtoField.new("Version", "nyse.arca.options.binarygateway.pillar.v3.15.version", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.working_away_from_display = ProtoField.new("Working Away From Display", "nyse.arca.options.binarygateway.pillar.v3.15.workingawayfromdisplay", ftypes.UINT8)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.working_price = ProtoField.new("Working Price", "nyse.arca.options.binarygateway.pillar.v3.15.workingprice", ftypes.DOUBLE)

-- Nyse Arca Options Pillar BinaryGateway 3.15 Application Messages
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.application_layer_reject = ProtoField.new("Application Layer Reject", "nyse.arca.options.binarygateway.pillar.v3.15.applicationlayerreject", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bulk_cancel_request = ProtoField.new("Bulk Cancel Request", "nyse.arca.options.binarygateway.pillar.v3.15.bulkcancelrequest", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bulk_quote_acknowledgment = ProtoField.new("Bulk Quote Acknowledgment", "nyse.arca.options.binarygateway.pillar.v3.15.bulkquoteacknowledgment", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.complex_series_request_acknowledgement = ProtoField.new("Complex Series Request Acknowledgement", "nyse.arca.options.binarygateway.pillar.v3.15.complexseriesrequestacknowledgement", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.execution_report = ProtoField.new("Execution Report", "nyse.arca.options.binarygateway.pillar.v3.15.executionreport", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.minimum_price_variant_class_reference_data = ProtoField.new("Minimum Price Variant Class Reference Data", "nyse.arca.options.binarygateway.pillar.v3.15.minimumpricevariantclassreferencedata", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.minimum_price_variant_level_reference_data = ProtoField.new("Minimum Price Variant Level Reference Data", "nyse.arca.options.binarygateway.pillar.v3.15.minimumpricevariantlevelreferencedata", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpid_configuration = ProtoField.new("Mpid Configuration", "nyse.arca.options.binarygateway.pillar.v3.15.mpidconfiguration", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.new_bulk_quote = ProtoField.new("New Bulk Quote", "nyse.arca.options.binarygateway.pillar.v3.15.newbulkquote", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.new_complex_series_request = ProtoField.new("New Complex Series Request", "nyse.arca.options.binarygateway.pillar.v3.15.newcomplexseriesrequest", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.new_order_cross = ProtoField.new("New Order Cross", "nyse.arca.options.binarygateway.pillar.v3.15.newordercross", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.options_market_maker_symbol_appointment_reference_data = ProtoField.new("Options Market Maker Symbol Appointment Reference Data", "nyse.arca.options.binarygateway.pillar.v3.15.optionsmarketmakersymbolappointmentreferencedata", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_acknowledgement = ProtoField.new("Order Acknowledgement", "nyse.arca.options.binarygateway.pillar.v3.15.orderacknowledgement", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_cancel_request = ProtoField.new("Order Cancel Request", "nyse.arca.options.binarygateway.pillar.v3.15.ordercancelrequest", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_modify_request = ProtoField.new("Order Modify Request", "nyse.arca.options.binarygateway.pillar.v3.15.ordermodifyrequest", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_priority_update_acknowledgment = ProtoField.new("Order Priority Update Acknowledgment", "nyse.arca.options.binarygateway.pillar.v3.15.orderpriorityupdateacknowledgment", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_request = ProtoField.new("Order Request", "nyse.arca.options.binarygateway.pillar.v3.15.orderrequest", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_request_acknowledgment = ProtoField.new("Order Request Acknowledgment", "nyse.arca.options.binarygateway.pillar.v3.15.orderrequestacknowledgment", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_action_request = ProtoField.new("Risk Action Request", "nyse.arca.options.binarygateway.pillar.v3.15.riskactionrequest", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_control_acknowledgement = ProtoField.new("Risk Control Acknowledgement", "nyse.arca.options.binarygateway.pillar.v3.15.riskcontrolacknowledgement", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_control_alert = ProtoField.new("Risk Control Alert", "nyse.arca.options.binarygateway.pillar.v3.15.riskcontrolalert", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_limit_update_request = ProtoField.new("Risk Limit Update Request", "nyse.arca.options.binarygateway.pillar.v3.15.risklimitupdaterequest", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sequenced_filler = ProtoField.new("Sequenced Filler", "nyse.arca.options.binarygateway.pillar.v3.15.sequencedfiller", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.session_configuration_acknowledgement = ProtoField.new("Session Configuration Acknowledgement", "nyse.arca.options.binarygateway.pillar.v3.15.sessionconfigurationacknowledgement", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.session_configuration_request_message = ProtoField.new("Session Configuration Request Message", "nyse.arca.options.binarygateway.pillar.v3.15.sessionconfigurationrequestmessage", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.trade_bust_or_correct = ProtoField.new("Trade Bust Or Correct", "nyse.arca.options.binarygateway.pillar.v3.15.tradebustorcorrect", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.underlying_symbol_reference_data = ProtoField.new("Underlying Symbol Reference Data", "nyse.arca.options.binarygateway.pillar.v3.15.underlyingsymbolreferencedata", ftypes.STRING)

-- Nyse Arca Options Pillar BinaryGateway 3.15 Session Messages
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.close = ProtoField.new("Close", "nyse.arca.options.binarygateway.pillar.v3.15.close", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.close_response = ProtoField.new("Close Response", "nyse.arca.options.binarygateway.pillar.v3.15.closeresponse", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.arca.options.binarygateway.pillar.v3.15.heartbeat", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.login_message = ProtoField.new("Login Message", "nyse.arca.options.binarygateway.pillar.v3.15.loginmessage", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.login_response = ProtoField.new("Login Response", "nyse.arca.options.binarygateway.pillar.v3.15.loginresponse", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.open = ProtoField.new("Open", "nyse.arca.options.binarygateway.pillar.v3.15.open", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.open_response = ProtoField.new("Open Response", "nyse.arca.options.binarygateway.pillar.v3.15.openresponse", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq_msg = ProtoField.new("Seq Msg", "nyse.arca.options.binarygateway.pillar.v3.15.seqmsg", ftypes.STRING)
omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.stream_avail = ProtoField.new("Stream Avail", "nyse.arca.options.binarygateway.pillar.v3.15.streamavail", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Arca Options BinaryGateway Pillar 3.15 Element Dissection Options
show.application_layer_reject = true
show.bulk_cancel_request = true
show.bulk_quote = true
show.bulk_quote_acknowledgment = true
show.close = true
show.close_response = true
show.complex_leg = true
show.complex_leg_ack = true
show.complex_series_request_acknowledgement = true
show.covered = true
show.execution_report = true
show.exposed = true
show.heartbeat = true
show.login_message = true
show.login_response = true
show.minimum_price_variant_class_reference_data = true
show.minimum_price_variant_level_reference_data = true
show.mpid_configuration = true
show.mpv_level_definition = true
show.msg_header = true
show.new_bulk_quote = true
show.new_complex_series_request = true
show.new_order_cross = true
show.open = true
show.open_response = true
show.optional_order_add_on = true
show.options_market_maker_symbol_appointment_reference_data = true
show.order_acknowledgement = true
show.order_cancel_request = true
show.order_instructions = true
show.order_modify_request = true
show.order_priority_update_acknowledgment = true
show.order_request = true
show.order_request_acknowledgment = true
show.quote_ack = true
show.refseqmsgid = true
show.risk_action_request = true
show.risk_control_acknowledgement = true
show.risk_control_alert = true
show.risk_limit_update_request = true
show.seq_msg = true
show.seq_msg_header = true
show.seqmsgid = true
show.sequenced_filler = true
show.session_configuration_acknowledgement = true
show.session_configuration_request_message = true
show.stream_avail = true
show.stream_id = true
show.sub_msg_header = true
show.trade_bust_or_correct = true
show.underlying_symbol_reference_data = true
show.pillar_stream_message = false
show.sequenced_message = false

-- Register Nyse Arca Options BinaryGateway Pillar 3.15 Show Options
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_application_layer_reject = Pref.bool("Show Application Layer Reject", show.application_layer_reject, "Parse and add Application Layer Reject to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_cancel_request = Pref.bool("Show Bulk Cancel Request", show.bulk_cancel_request, "Parse and add Bulk Cancel Request to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_quote = Pref.bool("Show Bulk Quote", show.bulk_quote, "Parse and add Bulk Quote to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_quote_acknowledgment = Pref.bool("Show Bulk Quote Acknowledgment", show.bulk_quote_acknowledgment, "Parse and add Bulk Quote Acknowledgment to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_close = Pref.bool("Show Close", show.close, "Parse and add Close to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_close_response = Pref.bool("Show Close Response", show.close_response, "Parse and add Close Response to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_leg = Pref.bool("Show Complex Leg", show.complex_leg, "Parse and add Complex Leg to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_leg_ack = Pref.bool("Show Complex Leg Ack", show.complex_leg_ack, "Parse and add Complex Leg Ack to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_series_request_acknowledgement = Pref.bool("Show Complex Series Request Acknowledgement", show.complex_series_request_acknowledgement, "Parse and add Complex Series Request Acknowledgement to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_covered = Pref.bool("Show Covered", show.covered, "Parse and add Covered to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_execution_report = Pref.bool("Show Execution Report", show.execution_report, "Parse and add Execution Report to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_exposed = Pref.bool("Show Exposed", show.exposed, "Parse and add Exposed to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_login_message = Pref.bool("Show Login Message", show.login_message, "Parse and add Login Message to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_minimum_price_variant_class_reference_data = Pref.bool("Show Minimum Price Variant Class Reference Data", show.minimum_price_variant_class_reference_data, "Parse and add Minimum Price Variant Class Reference Data to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_minimum_price_variant_level_reference_data = Pref.bool("Show Minimum Price Variant Level Reference Data", show.minimum_price_variant_level_reference_data, "Parse and add Minimum Price Variant Level Reference Data to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_mpid_configuration = Pref.bool("Show Mpid Configuration", show.mpid_configuration, "Parse and add Mpid Configuration to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_mpv_level_definition = Pref.bool("Show Mpv Level Definition", show.mpv_level_definition, "Parse and add Mpv Level Definition to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_bulk_quote = Pref.bool("Show New Bulk Quote", show.new_bulk_quote, "Parse and add New Bulk Quote to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_complex_series_request = Pref.bool("Show New Complex Series Request", show.new_complex_series_request, "Parse and add New Complex Series Request to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_order_cross = Pref.bool("Show New Order Cross", show.new_order_cross, "Parse and add New Order Cross to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_open = Pref.bool("Show Open", show.open, "Parse and add Open to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_open_response = Pref.bool("Show Open Response", show.open_response, "Parse and add Open Response to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_optional_order_add_on = Pref.bool("Show Optional Order Add On", show.optional_order_add_on, "Parse and add Optional Order Add On to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_options_market_maker_symbol_appointment_reference_data = Pref.bool("Show Options Market Maker Symbol Appointment Reference Data", show.options_market_maker_symbol_appointment_reference_data, "Parse and add Options Market Maker Symbol Appointment Reference Data to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_acknowledgement = Pref.bool("Show Order Acknowledgement", show.order_acknowledgement, "Parse and add Order Acknowledgement to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_cancel_request = Pref.bool("Show Order Cancel Request", show.order_cancel_request, "Parse and add Order Cancel Request to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_instructions = Pref.bool("Show Order Instructions", show.order_instructions, "Parse and add Order Instructions to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_modify_request = Pref.bool("Show Order Modify Request", show.order_modify_request, "Parse and add Order Modify Request to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_priority_update_acknowledgment = Pref.bool("Show Order Priority Update Acknowledgment", show.order_priority_update_acknowledgment, "Parse and add Order Priority Update Acknowledgment to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_request = Pref.bool("Show Order Request", show.order_request, "Parse and add Order Request to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_request_acknowledgment = Pref.bool("Show Order Request Acknowledgment", show.order_request_acknowledgment, "Parse and add Order Request Acknowledgment to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_quote_ack = Pref.bool("Show Quote Ack", show.quote_ack, "Parse and add Quote Ack to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_refseqmsgid = Pref.bool("Show Refseqmsgid", show.refseqmsgid, "Parse and add Refseqmsgid to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_action_request = Pref.bool("Show Risk Action Request", show.risk_action_request, "Parse and add Risk Action Request to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_control_acknowledgement = Pref.bool("Show Risk Control Acknowledgement", show.risk_control_acknowledgement, "Parse and add Risk Control Acknowledgement to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_control_alert = Pref.bool("Show Risk Control Alert", show.risk_control_alert, "Parse and add Risk Control Alert to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_limit_update_request = Pref.bool("Show Risk Limit Update Request", show.risk_limit_update_request, "Parse and add Risk Limit Update Request to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seq_msg = Pref.bool("Show Seq Msg", show.seq_msg, "Parse and add Seq Msg to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seq_msg_header = Pref.bool("Show Seq Msg Header", show.seq_msg_header, "Parse and add Seq Msg Header to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seqmsgid = Pref.bool("Show Seqmsgid", show.seqmsgid, "Parse and add Seqmsgid to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sequenced_filler = Pref.bool("Show Sequenced Filler", show.sequenced_filler, "Parse and add Sequenced Filler to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_session_configuration_acknowledgement = Pref.bool("Show Session Configuration Acknowledgement", show.session_configuration_acknowledgement, "Parse and add Session Configuration Acknowledgement to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_session_configuration_request_message = Pref.bool("Show Session Configuration Request Message", show.session_configuration_request_message, "Parse and add Session Configuration Request Message to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_stream_avail = Pref.bool("Show Stream Avail", show.stream_avail, "Parse and add Stream Avail to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_stream_id = Pref.bool("Show Stream Id", show.stream_id, "Parse and add Stream Id to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sub_msg_header = Pref.bool("Show Sub Msg Header", show.sub_msg_header, "Parse and add Sub Msg Header to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_trade_bust_or_correct = Pref.bool("Show Trade Bust Or Correct", show.trade_bust_or_correct, "Parse and add Trade Bust Or Correct to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_underlying_symbol_reference_data = Pref.bool("Show Underlying Symbol Reference Data", show.underlying_symbol_reference_data, "Parse and add Underlying Symbol Reference Data to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_pillar_stream_message = Pref.bool("Show Pillar Stream Message", show.pillar_stream_message, "Parse and add Pillar Stream Message to protocol tree")
omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")

-- Handle changed preferences
function omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_layer_reject ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_application_layer_reject then
    show.application_layer_reject = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_application_layer_reject
    changed = true
  end
  if show.bulk_cancel_request ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_cancel_request then
    show.bulk_cancel_request = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_cancel_request
    changed = true
  end
  if show.bulk_quote ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_quote then
    show.bulk_quote = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_quote
    changed = true
  end
  if show.bulk_quote_acknowledgment ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_quote_acknowledgment then
    show.bulk_quote_acknowledgment = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_bulk_quote_acknowledgment
    changed = true
  end
  if show.close ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_close then
    show.close = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_close
    changed = true
  end
  if show.close_response ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_close_response then
    show.close_response = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_close_response
    changed = true
  end
  if show.complex_leg ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_leg then
    show.complex_leg = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_leg
    changed = true
  end
  if show.complex_leg_ack ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_leg_ack then
    show.complex_leg_ack = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_leg_ack
    changed = true
  end
  if show.complex_series_request_acknowledgement ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_series_request_acknowledgement then
    show.complex_series_request_acknowledgement = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_complex_series_request_acknowledgement
    changed = true
  end
  if show.covered ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_covered then
    show.covered = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_covered
    changed = true
  end
  if show.execution_report ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_execution_report then
    show.execution_report = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_execution_report
    changed = true
  end
  if show.exposed ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_exposed then
    show.exposed = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_exposed
    changed = true
  end
  if show.heartbeat ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_heartbeat then
    show.heartbeat = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_heartbeat
    changed = true
  end
  if show.login_message ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_login_message then
    show.login_message = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_login_message
    changed = true
  end
  if show.login_response ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_login_response then
    show.login_response = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_login_response
    changed = true
  end
  if show.minimum_price_variant_class_reference_data ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_minimum_price_variant_class_reference_data then
    show.minimum_price_variant_class_reference_data = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_minimum_price_variant_class_reference_data
    changed = true
  end
  if show.minimum_price_variant_level_reference_data ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_minimum_price_variant_level_reference_data then
    show.minimum_price_variant_level_reference_data = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_minimum_price_variant_level_reference_data
    changed = true
  end
  if show.mpid_configuration ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_mpid_configuration then
    show.mpid_configuration = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_mpid_configuration
    changed = true
  end
  if show.mpv_level_definition ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_mpv_level_definition then
    show.mpv_level_definition = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_mpv_level_definition
    changed = true
  end
  if show.msg_header ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_msg_header then
    show.msg_header = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_msg_header
    changed = true
  end
  if show.new_bulk_quote ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_bulk_quote then
    show.new_bulk_quote = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_bulk_quote
    changed = true
  end
  if show.new_complex_series_request ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_complex_series_request then
    show.new_complex_series_request = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_complex_series_request
    changed = true
  end
  if show.new_order_cross ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_order_cross then
    show.new_order_cross = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_new_order_cross
    changed = true
  end
  if show.open ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_open then
    show.open = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_open
    changed = true
  end
  if show.open_response ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_open_response then
    show.open_response = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_open_response
    changed = true
  end
  if show.optional_order_add_on ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_optional_order_add_on then
    show.optional_order_add_on = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_optional_order_add_on
    changed = true
  end
  if show.options_market_maker_symbol_appointment_reference_data ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_options_market_maker_symbol_appointment_reference_data then
    show.options_market_maker_symbol_appointment_reference_data = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_options_market_maker_symbol_appointment_reference_data
    changed = true
  end
  if show.order_acknowledgement ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_acknowledgement then
    show.order_acknowledgement = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_acknowledgement
    changed = true
  end
  if show.order_cancel_request ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_cancel_request then
    show.order_cancel_request = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_cancel_request
    changed = true
  end
  if show.order_instructions ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_instructions then
    show.order_instructions = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_instructions
    changed = true
  end
  if show.order_modify_request ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_modify_request then
    show.order_modify_request = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_modify_request
    changed = true
  end
  if show.order_priority_update_acknowledgment ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_priority_update_acknowledgment then
    show.order_priority_update_acknowledgment = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_priority_update_acknowledgment
    changed = true
  end
  if show.order_request ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_request then
    show.order_request = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_request
    changed = true
  end
  if show.order_request_acknowledgment ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_request_acknowledgment then
    show.order_request_acknowledgment = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_order_request_acknowledgment
    changed = true
  end
  if show.quote_ack ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_quote_ack then
    show.quote_ack = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_quote_ack
    changed = true
  end
  if show.refseqmsgid ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_refseqmsgid then
    show.refseqmsgid = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_refseqmsgid
    changed = true
  end
  if show.risk_action_request ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_action_request then
    show.risk_action_request = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_action_request
    changed = true
  end
  if show.risk_control_acknowledgement ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_control_acknowledgement then
    show.risk_control_acknowledgement = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_control_acknowledgement
    changed = true
  end
  if show.risk_control_alert ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_control_alert then
    show.risk_control_alert = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_control_alert
    changed = true
  end
  if show.risk_limit_update_request ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_limit_update_request then
    show.risk_limit_update_request = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_risk_limit_update_request
    changed = true
  end
  if show.seq_msg ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seq_msg then
    show.seq_msg = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seq_msg
    changed = true
  end
  if show.seq_msg_header ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seq_msg_header then
    show.seq_msg_header = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seq_msg_header
    changed = true
  end
  if show.seqmsgid ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seqmsgid then
    show.seqmsgid = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_seqmsgid
    changed = true
  end
  if show.sequenced_filler ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sequenced_filler then
    show.sequenced_filler = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sequenced_filler
    changed = true
  end
  if show.session_configuration_acknowledgement ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_session_configuration_acknowledgement then
    show.session_configuration_acknowledgement = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_session_configuration_acknowledgement
    changed = true
  end
  if show.session_configuration_request_message ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_session_configuration_request_message then
    show.session_configuration_request_message = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_session_configuration_request_message
    changed = true
  end
  if show.stream_avail ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_stream_avail then
    show.stream_avail = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_stream_avail
    changed = true
  end
  if show.stream_id ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_stream_id then
    show.stream_id = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_stream_id
    changed = true
  end
  if show.sub_msg_header ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sub_msg_header then
    show.sub_msg_header = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sub_msg_header
    changed = true
  end
  if show.trade_bust_or_correct ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_trade_bust_or_correct then
    show.trade_bust_or_correct = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_trade_bust_or_correct
    changed = true
  end
  if show.underlying_symbol_reference_data ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_underlying_symbol_reference_data then
    show.underlying_symbol_reference_data = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_underlying_symbol_reference_data
    changed = true
  end
  if show.pillar_stream_message ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_pillar_stream_message then
    show.pillar_stream_message = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_pillar_stream_message
    changed = true
  end
  if show.sequenced_message ~= omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sequenced_message then
    show.sequenced_message = omi_nyse_arca_options_binarygateway_pillar_v3_15.prefs.show_sequenced_message
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
-- Dissect Nyse Arca Options BinaryGateway Pillar 3.15
-----------------------------------------------------------------------

-- Leg Side
nyse_arca_options_binarygateway_pillar_v3_15.leg_side = {}

-- Size: Leg Side
nyse_arca_options_binarygateway_pillar_v3_15.leg_side.size = 1

-- Display: Leg Side
nyse_arca_options_binarygateway_pillar_v3_15.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nyse_arca_options_binarygateway_pillar_v3_15.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Symbol Id
nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id = {}

-- Size: Leg Symbol Id
nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.size = 4

-- Display: Leg Symbol Id
nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.display = function(value)
  return "Leg Symbol Id: "..value
end

-- Dissect: Leg Symbol Id
nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leg_symbol_id, range, value, display)

  return offset + length, value
end

-- Complex Leg Ack
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack = {}

-- Size: Complex Leg Ack
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack.size =
  nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.leg_side.size

-- Display: Complex Leg Ack
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg Ack
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = nyse_arca_options_binarygateway_pillar_v3_15.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg Ack
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack.dissect = function(buffer, offset, packet, parent)
  if show.complex_leg_ack then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.complex_leg_ack, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack.fields(buffer, offset, packet, parent)
  end
end

-- Repeating Groups
nyse_arca_options_binarygateway_pillar_v3_15.repeating_groups = {}

-- Size: Repeating Groups
nyse_arca_options_binarygateway_pillar_v3_15.repeating_groups.size = 1

-- Display: Repeating Groups
nyse_arca_options_binarygateway_pillar_v3_15.repeating_groups.display = function(value)
  return "Repeating Groups: "..value
end

-- Dissect: Repeating Groups
nyse_arca_options_binarygateway_pillar_v3_15.repeating_groups.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.repeating_groups.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.repeating_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.repeating_groups, range, value, display)

  return offset + length, value
end

-- Side U 81
nyse_arca_options_binarygateway_pillar_v3_15.side_u_81 = {}

-- Size: Side U 81
nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.size = 1

-- Display: Side U 81
nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.display = function(value)
  return "Side U 81: "..value
end

-- Dissect: Side U 81
nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.side_u_81, range, value, display)

  return offset + length, value
end

-- Symbol Id
nyse_arca_options_binarygateway_pillar_v3_15.symbol_id = {}

-- Size: Symbol Id
nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size = 4

-- Display: Symbol Id
nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_arca_options_binarygateway_pillar_v3_15.reason_code = {}

-- Size: Reason Code
nyse_arca_options_binarygateway_pillar_v3_15.reason_code.size = 2

-- Display: Reason Code
nyse_arca_options_binarygateway_pillar_v3_15.reason_code.display = function(value)
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
    return "Reason Code: Reserved For Future Use (202)"
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
    return "Reason Code: Invalid Leg Symbol (232)"
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
    return "Reason Code: Reserved For Future Use (250)"
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
    return "Reason Code: Reserved For Future Use (266)"
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
nyse_arca_options_binarygateway_pillar_v3_15.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id = {}

-- Size: Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size = 8

-- Display: Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Transact Time
nyse_arca_options_binarygateway_pillar_v3_15.transact_time = {}

-- Size: Transact Time
nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size = 8

-- Display: Transact Time
nyse_arca_options_binarygateway_pillar_v3_15.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Seq Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_length = {}

-- Size: Seq Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_length.size = 2

-- Display: Seq Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_length.display = function(value)
  return "Seq Msg Length: "..value
end

-- Dissect: Seq Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq_msg_length, range, value, display)

  return offset + length, value
end

-- Seq Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_type = {}

-- Size: Seq Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_type.size = 2

-- Display: Seq Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_type.display = function(value)
  if value == 0x0220 then
    return "Seq Msg Type: Session Configuration Request Message (0x0220)"
  end
  if value == 0x0282 then
    return "Seq Msg Type: Sequenced Filler (0x0282)"
  end
  if value == 0x0248 then
    return "Seq Msg Type: Order Request (0x0248)"
  end
  if value == 0x0250 then
    return "Seq Msg Type: Order Cancel Request (0x0250)"
  end
  if value == 0x0282 then
    return "Seq Msg Type: Order Modify Request (0x0282)"
  end
  if value == 0x0243 then
    return "Seq Msg Type: New Bulk Quote (0x0243)"
  end
  if value == 0x0222 then
    return "Seq Msg Type: New Order Cross (0x0222)"
  end
  if value == 0x0223 then
    return "Seq Msg Type: Bulk Cancel Request (0x0223)"
  end
  if value == 0x0330 then
    return "Seq Msg Type: Risk Limit Update Request (0x0330)"
  end
  if value == 0x0331 then
    return "Seq Msg Type: Risk Action Request (0x0331)"
  end
  if value == 0x0357 then
    return "Seq Msg Type: New Complex Series Request (0x0357)"
  end
  if value == 0x0233 then
    return "Seq Msg Type: Underlying Symbol Reference Data (0x0233)"
  end
  if value == 0X0234 then
    return "Seq Msg Type: Sequenced Filler (0X0234)"
  end
  if value == 0x0230 then
    return "Seq Msg Type: Minimum Price Variant Class Reference Data (0x0230)"
  end
  if value == 0x0231 then
    return "Seq Msg Type: Minimum Price Variant Level Reference Data (0x0231)"
  end
  if value == 0x0272 then
    return "Seq Msg Type: Mpid Configuration (0x0272)"
  end
  if value == 0x0833 then
    return "Seq Msg Type: Options Market Maker Symbol Appointment Reference Data (0x0833)"
  end
  if value == 0x0221 then
    return "Seq Msg Type: Session Configuration Acknowledgement (0x0221)"
  end
  if value == 0x026 then
    return "Seq Msg Type: Order Acknowledgement (0x026)"
  end
  if value == 0x0294 then
    return "Seq Msg Type: Bulk Quote Acknowledgment (0x0294)"
  end
  if value == 0x0278 then
    return "Seq Msg Type: Order Request Acknowledgment (0x0278)"
  end
  if value == 0x0268 then
    return "Seq Msg Type: Order Priority Update Acknowledgment (0x0268)"
  end
  if value == 0x0295 then
    return "Seq Msg Type: Execution Report (0x0295)"
  end
  if value == 0x0293 then
    return "Seq Msg Type: Trade Bust Or Correct (0x0293)"
  end
  if value == 0x0267 then
    return "Seq Msg Type: Application Layer Reject (0x0267)"
  end
  if value == 0x0332 then
    return "Seq Msg Type: Risk Control Acknowledgement (0x0332)"
  end
  if value == 0x0333 then
    return "Seq Msg Type: Risk Control Alert (0x0333)"
  end
  if value == 0x0358 then
    return "Seq Msg Type: Complex Series Request Acknowledgement (0x0358)"
  end

  return "Seq Msg Type: Unknown("..value..")"
end

-- Dissect: Seq Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq_msg_type, range, value, display)

  return offset + length, value
end

-- Seq Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header = {}

-- Size: Seq Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_length.size

-- Display: Seq Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 28 values
  index, seq_msg_type = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_type.dissect(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.seq_msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq_msg_header, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Complex Series Request Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement = {}

-- Size: Complex Series Request Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Complex Series Request Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Request Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 307 values
  index, reason_code = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Side U 81: 1 Byte Unsigned Fixed Width Integer
  index, side_u_81 = nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.dissect(buffer, index, packet, parent)

  -- Repeating Groups: 1 Byte Unsigned Fixed Width Integer
  index, repeating_groups = nyse_arca_options_binarygateway_pillar_v3_15.repeating_groups.dissect(buffer, index, packet, parent)

  -- Dependency for Complex Leg Ack
  local end_of_payload = repeating_groups

  -- Complex Leg Ack: Struct of 3 fields
  while index < end_of_payload do
    index, complex_leg_ack = nyse_arca_options_binarygateway_pillar_v3_15.complex_leg_ack.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Series Request Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_series_request_acknowledgement then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.complex_series_request_acknowledgement, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.fields(buffer, offset, packet, parent)
end

-- Reserved 200
nyse_arca_options_binarygateway_pillar_v3_15.reserved_200 = {}

-- Size: Reserved 200
nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.size = 200

-- Display: Reserved 200
nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.display = function(value)
  return "Reserved 200: "..value
end

-- Dissect: Reserved 200
nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_200, range, value, display)

  return offset + length, value
end

-- Reinstatement Requiredby Other
nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other = {}

-- Size: Reinstatement Requiredby Other
nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.size = 1

-- Display: Reinstatement Requiredby Other
nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.display = function(value)
  if value == 0 then
    return "Reinstatement Requiredby Other: Not Required (0)"
  end
  if value == 1 then
    return "Reinstatement Requiredby Other: Required (1)"
  end

  return "Reinstatement Requiredby Other: Unknown("..value..")"
end

-- Dissect: Reinstatement Requiredby Other
nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reinstatement_requiredby_other, range, value, display)

  return offset + length, value
end

-- Reinstatement Requiredby Self
nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self = {}

-- Size: Reinstatement Requiredby Self
nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.size = 1

-- Display: Reinstatement Requiredby Self
nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.display = function(value)
  if value == 0 then
    return "Reinstatement Requiredby Self: Not Required (0)"
  end
  if value == 1 then
    return "Reinstatement Requiredby Self: Required (1)"
  end

  return "Reinstatement Requiredby Self: Unknown("..value..")"
end

-- Dissect: Reinstatement Requiredby Self
nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reinstatement_requiredby_self, range, value, display)

  return offset + length, value
end

-- Blocked By Kill Switch Indicator
nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator = {}

-- Size: Blocked By Kill Switch Indicator
nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.size = 1

-- Display: Blocked By Kill Switch Indicator
nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.display = function(value)
  if value == 0 then
    return "Blocked By Kill Switch Indicator: Not Blocked By Kill Switch (0)"
  end
  if value == 1 then
    return "Blocked By Kill Switch Indicator: Blocked By Kill Switch (1)"
  end

  return "Blocked By Kill Switch Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Kill Switch Indicator
nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.blocked_by_kill_switch_indicator, range, value, display)

  return offset + length, value
end

-- Blocked By Breach Indicator
nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator = {}

-- Size: Blocked By Breach Indicator
nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.size = 1

-- Display: Blocked By Breach Indicator
nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.display = function(value)
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
nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.blocked_by_breach_indicator, range, value, display)

  return offset + length, value
end

-- Threshold Breach Level
nyse_arca_options_binarygateway_pillar_v3_15.threshold_breach_level = {}

-- Size: Threshold Breach Level
nyse_arca_options_binarygateway_pillar_v3_15.threshold_breach_level.size = 1

-- Display: Threshold Breach Level
nyse_arca_options_binarygateway_pillar_v3_15.threshold_breach_level.display = function(value)
  if value == 0 then
    return "Threshold Breach Level: No Value"
  end
  if value == 1 then
    return "Threshold Breach Level: Greater Than 50 Percent (1)"
  end
  if value == 2 then
    return "Threshold Breach Level: Greater Than 75 Percent (2)"
  end
  if value == 3 then
    return "Threshold Breach Level: Greater Than 90 Percent (3)"
  end
  if value == 4 then
    return "Threshold Breach Level: Greater Than 100 Percent (4)"
  end

  return "Threshold Breach Level: Unknown("..value..")"
end

-- Dissect: Threshold Breach Level
nyse_arca_options_binarygateway_pillar_v3_15.threshold_breach_level.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.threshold_breach_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.threshold_breach_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.threshold_breach_level, range, value, display)

  return offset + length, value
end

-- Risk Action Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type = {}

-- Size: Risk Action Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.size = 1

-- Display: Risk Action Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.display = function(value)
  if value == 0 then
    return "Risk Action Type: No Value"
  end
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
  if value == 6 then
    return "Risk Action Type: Kill Switch Cancel Gtc Orders (6)"
  end
  if value == 7 then
    return "Risk Action Type: Approve Reinstatement (7)"
  end
  if value == 8 then
    return "Risk Action Type: Risk Entity Reinstated All Necessary Reinstatement Approvals Received Reinstatement Processed (8)"
  end

  return "Risk Action Type: Unknown("..value..")"
end

-- Dissect: Risk Action Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_action_type, range, value, display)

  return offset + length, value
end

-- Count Calculation
nyse_arca_options_binarygateway_pillar_v3_15.count_calculation = {}

-- Size: Count Calculation
nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.size = 4

-- Display: Count Calculation
nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.display = function(value)
  return "Count Calculation: "..value
end

-- Dissect: Count Calculation
nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.count_calculation, range, value, display)

  return offset + length, value
end

-- Usd Calculation 4
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4 = {}

-- Size: Usd Calculation 4
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.size = 8

-- Display: Usd Calculation 4
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.display = function(value)
  return "Usd Calculation 4: "..value
end

-- Dissect: Usd Calculation 4
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_calculation_4, range, value, display)

  return offset + length, value
end

-- Usd Calculation 3
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3 = {}

-- Size: Usd Calculation 3
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.size = 8

-- Display: Usd Calculation 3
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.display = function(value)
  return "Usd Calculation 3: "..value
end

-- Dissect: Usd Calculation 3
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_calculation_3, range, value, display)

  return offset + length, value
end

-- Usd Calculation 2
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2 = {}

-- Size: Usd Calculation 2
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.size = 8

-- Display: Usd Calculation 2
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.display = function(value)
  return "Usd Calculation 2: "..value
end

-- Dissect: Usd Calculation 2
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_calculation_2, range, value, display)

  return offset + length, value
end

-- Usd Calculation 1
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1 = {}

-- Size: Usd Calculation 1
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.size = 8

-- Display: Usd Calculation 1
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.display = function(value)
  return "Usd Calculation 1: "..value
end

-- Dissect: Usd Calculation 1
nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_calculation_1, range, value, display)

  return offset + length, value
end

-- Ioc Attribution
nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution = {}

-- Size: Ioc Attribution
nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.size = 1

-- Display: Ioc Attribution
nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.display = function(value)
  if value == 0 then
    return "Ioc Attribution: No Value"
  end
  if value == 1 then
    return "Ioc Attribution: Include Ioc And Gtx Orders In Activitybased Calculations And Cancellations (1)"
  end
  if value == 2 then
    return "Ioc Attribution: Exclude Ioc And Gtx Orders From Activitybased Calculations And Cancellations (2)"
  end

  return "Ioc Attribution: Unknown("..value..")"
end

-- Dissect: Ioc Attribution
nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ioc_attribution, range, value, display)

  return offset + length, value
end

-- Breach Action Response
nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response = {}

-- Size: Breach Action Response
nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.size = 1

-- Display: Breach Action Response
nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.display = function(value)
  if value == 0 then
    return "Breach Action Response: No Value"
  end
  if value == 1 then
    return "Breach Action Response: Notification (1)"
  end
  if value == 2 then
    return "Breach Action Response: Cancel Non Auction Orders (2)"
  end
  if value == 3 then
    return "Breach Action Response: Block (3)"
  end

  return "Breach Action Response: Unknown("..value..")"
end

-- Dissect: Breach Action Response
nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.breach_action_response, range, value, display)

  return offset + length, value
end

-- Count Limit
nyse_arca_options_binarygateway_pillar_v3_15.count_limit = {}

-- Size: Count Limit
nyse_arca_options_binarygateway_pillar_v3_15.count_limit.size = 4

-- Display: Count Limit
nyse_arca_options_binarygateway_pillar_v3_15.count_limit.display = function(value)
  return "Count Limit: "..value
end

-- Dissect: Count Limit
nyse_arca_options_binarygateway_pillar_v3_15.count_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.count_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.count_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.count_limit, range, value, display)

  return offset + length, value
end

-- Percentage Limit
nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit = {}

-- Size: Percentage Limit
nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.size = 4

-- Display: Percentage Limit
nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.display = function(value)
  return "Percentage Limit: "..value
end

-- Dissect: Percentage Limit
nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.percentage_limit, range, value, display)

  return offset + length, value
end

-- Time Limit
nyse_arca_options_binarygateway_pillar_v3_15.time_limit = {}

-- Size: Time Limit
nyse_arca_options_binarygateway_pillar_v3_15.time_limit.size = 4

-- Display: Time Limit
nyse_arca_options_binarygateway_pillar_v3_15.time_limit.display = function(value)
  return "Time Limit: "..value
end

-- Dissect: Time Limit
nyse_arca_options_binarygateway_pillar_v3_15.time_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.time_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.time_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.time_limit, range, value, display)

  return offset + length, value
end

-- Usd Limit
nyse_arca_options_binarygateway_pillar_v3_15.usd_limit = {}

-- Size: Usd Limit
nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.size = 8

-- Display: Usd Limit
nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.display = function(value)
  return "Usd Limit: "..value
end

-- Dissect: Usd Limit
nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.usd_limit, range, value, display)

  return offset + length, value
end

-- Risk Control Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type = {}

-- Size: Risk Control Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.size = 1

-- Display: Risk Control Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.display = function(value)
  if value == 0 then
    return "Risk Control Type: No Value"
  end
  if value == 1 then
    return "Risk Control Type: Single Order Max Qty (1)"
  end
  if value == 2 then
    return "Risk Control Type: Single Order Max Notional Value (2)"
  end
  if value == 3 then
    return "Risk Control Type: Gross Credit (3)"
  end
  if value == 8 then
    return "Risk Control Type: Activitybased Rolling Transaction (8)"
  end
  if value == 9 then
    return "Risk Control Type: Activitybased Rolling Volume (9)"
  end
  if value == 10 then
    return "Risk Control Type: Activitybased Rolling Percentage (10)"
  end
  if value == 11 then
    return "Risk Control Type: Activitybased Global Risk Mitigation Protection For Transaction Volume Percentage (11)"
  end

  return "Risk Control Type: Unknown("..value..")"
end

-- Dissect: Risk Control Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_control_type, range, value, display)

  return offset + length, value
end

-- Risk User Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type = {}

-- Size: Risk User Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.size = 1

-- Display: Risk User Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.display = function(value)
  if value == "E" then
    return "Risk User Type: Entering Firm (E)"
  end
  if value == "C" then
    return "Risk User Type: Clearing Firm (C)"
  end
  if value == "F" then
    return "Risk User Type: Nyse Floor Broker Firm (F)"
  end
  if value == "O" then
    return "Risk User Type: Options Market Maker Firm (O)"
  end

  return "Risk User Type: Unknown("..value..")"
end

-- Dissect: Risk User Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_user_type, range, value, display)

  return offset + length, value
end

-- Risk User Crd
nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd = {}

-- Size: Risk User Crd
nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.size = 4

-- Display: Risk User Crd
nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.display = function(value)
  return "Risk User Crd: "..value
end

-- Dissect: Risk User Crd
nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_user_crd, range, value, display)

  return offset + length, value
end

-- Clearing Number
nyse_arca_options_binarygateway_pillar_v3_15.clearing_number = {}

-- Size: Clearing Number
nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.size = 5

-- Display: Clearing Number
nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Number: No Value"
  end

  return "Clearing Number: "..value
end

-- Dissect: Clearing Number
nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_number, range, value, display)

  return offset + length, value
end

-- Floor Broker Firm Crd
nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd = {}

-- Size: Floor Broker Firm Crd
nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.size = 4

-- Display: Floor Broker Firm Crd
nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.display = function(value)
  return "Floor Broker Firm Crd: "..value
end

-- Dissect: Floor Broker Firm Crd
nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.floor_broker_firm_crd, range, value, display)

  return offset + length, value
end

-- Mp Sub Id
nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id = {}

-- Size: Mp Sub Id
nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size = 4

-- Display: Mp Sub Id
nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mp Sub Id: No Value"
  end

  return "Mp Sub Id: "..value
end

-- Dissect: Mp Sub Id
nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mp_sub_id, range, value, display)

  return offset + length, value
end

-- Market Maker
nyse_arca_options_binarygateway_pillar_v3_15.market_maker = {}

-- Size: Market Maker
nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size = 10

-- Display: Market Maker
nyse_arca_options_binarygateway_pillar_v3_15.market_maker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Maker: No Value"
  end

  return "Market Maker: "..value
end

-- Dissect: Market Maker
nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.market_maker, range, value, display)

  return offset + length, value
end

-- Mpid
nyse_arca_options_binarygateway_pillar_v3_15.mpid = {}

-- Size: Mpid
nyse_arca_options_binarygateway_pillar_v3_15.mpid.size = 4

-- Display: Mpid
nyse_arca_options_binarygateway_pillar_v3_15.mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid: No Value"
  end

  return "Mpid: "..value
end

-- Dissect: Mpid
nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mpid.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpid, range, value, display)

  return offset + length, value
end

-- Risk Control Alert
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert = {}

-- Size: Risk Control Alert
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.time_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.count_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.threshold_breach_level.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.size

-- Display: Risk Control Alert
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Alert
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: 4 Byte Ascii String
  index, mp_sub_id = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Floor Broker Firm Crd: 4 Byte Unsigned Fixed Width Integer
  index, floor_broker_firm_crd = nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.dissect(buffer, index, packet, parent)

  -- Clearing Number: 5 Byte Ascii String
  index, clearing_number = nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.dissect(buffer, index, packet, parent)

  -- Risk User Crd: 4 Byte Unsigned Fixed Width Integer
  index, risk_user_crd = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: 1 Byte Ascii String Enum with 4 values
  index, risk_user_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, risk_control_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.dissect(buffer, index, packet, parent)

  -- Usd Limit: 8 Byte Signed Fixed Width Integer
  index, usd_limit = nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: 4 Byte Signed Fixed Width Integer
  index, time_limit = nyse_arca_options_binarygateway_pillar_v3_15.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: 4 Byte Signed Fixed Width Integer
  index, percentage_limit = nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: 4 Byte Signed Fixed Width Integer
  index, count_limit = nyse_arca_options_binarygateway_pillar_v3_15.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Response: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, breach_action_response = nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioc_attribution = nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Usd Calculation 1: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_1 = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.dissect(buffer, index, packet, parent)

  -- Usd Calculation 2: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_2 = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.dissect(buffer, index, packet, parent)

  -- Usd Calculation 3: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_3 = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.dissect(buffer, index, packet, parent)

  -- Usd Calculation 4: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_4 = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.dissect(buffer, index, packet, parent)

  -- Count Calculation: 4 Byte Unsigned Fixed Width Integer
  index, count_calculation = nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.dissect(buffer, index, packet, parent)

  -- Risk Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, risk_action_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.dissect(buffer, index, packet, parent)

  -- Threshold Breach Level: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, threshold_breach_level = nyse_arca_options_binarygateway_pillar_v3_15.threshold_breach_level.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, blocked_by_breach_indicator = nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, blocked_by_kill_switch_indicator = nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.dissect(buffer, index, packet, parent)

  -- Reinstatement Requiredby Self: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, reinstatement_requiredby_self = nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.dissect(buffer, index, packet, parent)

  -- Reinstatement Requiredby Other: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, reinstatement_requiredby_other = nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.dissect(buffer, index, packet, parent)

  -- Reserved 200: 200 Byte
  index, reserved_200 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Alert
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.dissect = function(buffer, offset, packet, parent)
  if show.risk_control_alert then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_control_alert, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.fields(buffer, offset, packet, parent)
  end
end

-- Risk Control Activation
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation = {}

-- Size: Risk Control Activation
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.size = 1

-- Display: Risk Control Activation
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.display = function(value)
  if value == 0 then
    return "Risk Control Activation: Risk Control Turned Off (0)"
  end
  if value == 1 then
    return "Risk Control Activation: Risk Control Turned On (1)"
  end

  return "Risk Control Activation: Unknown("..value..")"
end

-- Dissect: Risk Control Activation
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_control_activation, range, value, display)

  return offset + length, value
end

-- Risk Ack Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_ack_type = {}

-- Size: Risk Ack Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_ack_type.size = 1

-- Display: Risk Ack Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_ack_type.display = function(value)
  if value == 0 then
    return "Risk Ack Type: Solicited Ack (0)"
  end
  if value == 1 then
    return "Risk Ack Type: Unsolicited Ack (1)"
  end

  return "Risk Ack Type: Unknown("..value..")"
end

-- Dissect: Risk Ack Type
nyse_arca_options_binarygateway_pillar_v3_15.risk_ack_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.risk_ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_ack_type, range, value, display)

  return offset + length, value
end

-- Risk Control Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement = {}

-- Size: Risk Control Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_ack_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.time_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.count_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.size

-- Display: Risk Control Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: 4 Byte Ascii String
  index, mp_sub_id = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Floor Broker Firm Crd: 4 Byte Unsigned Fixed Width Integer
  index, floor_broker_firm_crd = nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.dissect(buffer, index, packet, parent)

  -- Clearing Number: 5 Byte Ascii String
  index, clearing_number = nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, risk_ack_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_ack_type.dissect(buffer, index, packet, parent)

  -- Risk User Crd: 4 Byte Unsigned Fixed Width Integer
  index, risk_user_crd = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: 1 Byte Ascii String Enum with 4 values
  index, risk_user_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, risk_control_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Control Activation: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, risk_control_activation = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.dissect(buffer, index, packet, parent)

  -- Risk Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, risk_action_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.dissect(buffer, index, packet, parent)

  -- Usd Limit: 8 Byte Signed Fixed Width Integer
  index, usd_limit = nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: 4 Byte Signed Fixed Width Integer
  index, time_limit = nyse_arca_options_binarygateway_pillar_v3_15.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: 4 Byte Signed Fixed Width Integer
  index, percentage_limit = nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: 4 Byte Signed Fixed Width Integer
  index, count_limit = nyse_arca_options_binarygateway_pillar_v3_15.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Response: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, breach_action_response = nyse_arca_options_binarygateway_pillar_v3_15.breach_action_response.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioc_attribution = nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Usd Calculation 1: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_1 = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_1.dissect(buffer, index, packet, parent)

  -- Usd Calculation 2: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_2 = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_2.dissect(buffer, index, packet, parent)

  -- Usd Calculation 3: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_3 = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_3.dissect(buffer, index, packet, parent)

  -- Usd Calculation 4: 8 Byte Signed Fixed Width Integer
  index, usd_calculation_4 = nyse_arca_options_binarygateway_pillar_v3_15.usd_calculation_4.dissect(buffer, index, packet, parent)

  -- Count Calculation: 4 Byte Unsigned Fixed Width Integer
  index, count_calculation = nyse_arca_options_binarygateway_pillar_v3_15.count_calculation.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, blocked_by_breach_indicator = nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, blocked_by_kill_switch_indicator = nyse_arca_options_binarygateway_pillar_v3_15.blocked_by_kill_switch_indicator.dissect(buffer, index, packet, parent)

  -- Reinstatement Requiredby Self: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, reinstatement_requiredby_self = nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_self.dissect(buffer, index, packet, parent)

  -- Reinstatement Requiredby Other: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, reinstatement_requiredby_other = nyse_arca_options_binarygateway_pillar_v3_15.reinstatement_requiredby_other.dissect(buffer, index, packet, parent)

  -- Reserved 200: 200 Byte
  index, reserved_200 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.risk_control_acknowledgement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_control_acknowledgement, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 4
nyse_arca_options_binarygateway_pillar_v3_15.reserved_4 = {}

-- Size: Reserved 4
nyse_arca_options_binarygateway_pillar_v3_15.reserved_4.size = 4

-- Display: Reserved 4
nyse_arca_options_binarygateway_pillar_v3_15.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arca_options_binarygateway_pillar_v3_15.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- User Data
nyse_arca_options_binarygateway_pillar_v3_15.user_data = {}

-- Size: User Data
nyse_arca_options_binarygateway_pillar_v3_15.user_data.size = 10

-- Display: User Data
nyse_arca_options_binarygateway_pillar_v3_15.user_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Data: No Value"
  end

  return "User Data: "..value
end

-- Dissect: User Data
nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.user_data.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.user_data, range, value, display)

  return offset + length, value
end

-- Reject Type
nyse_arca_options_binarygateway_pillar_v3_15.reject_type = {}

-- Size: Reject Type
nyse_arca_options_binarygateway_pillar_v3_15.reject_type.size = 1

-- Display: Reject Type
nyse_arca_options_binarygateway_pillar_v3_15.reject_type.display = function(value)
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
  if value == 5 then
    return "Reject Type: New Bulk Quote Reject (5)"
  end
  if value == 6 then
    return "Reject Type: Manual Action Response Reject (6)"
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
nyse_arca_options_binarygateway_pillar_v3_15.reject_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reject_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reject_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reject_type, range, value, display)

  return offset + length, value
end

-- Application Layer Reject
nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject = {}

-- Size: Application Layer Reject
nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reason_code.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reject_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.user_data.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_4.size

-- Display: Application Layer Reject
nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Layer Reject
nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 307 values
  index, reason_code = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.dissect(buffer, index, packet, parent)

  -- Reject Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, reject_type = nyse_arca_options_binarygateway_pillar_v3_15.reject_type.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Application Layer Reject
nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_layer_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.application_layer_reject, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.fields(buffer, offset, packet, parent)
  end
end

-- Bust Correct Indicator
nyse_arca_options_binarygateway_pillar_v3_15.bust_correct_indicator = {}

-- Size: Bust Correct Indicator
nyse_arca_options_binarygateway_pillar_v3_15.bust_correct_indicator.size = 1

-- Display: Bust Correct Indicator
nyse_arca_options_binarygateway_pillar_v3_15.bust_correct_indicator.display = function(value)
  if value == 0 then
    return "Bust Correct Indicator: Trade Bust (0)"
  end
  if value == 1 then
    return "Bust Correct Indicator: Trade Correction (1)"
  end

  return "Bust Correct Indicator: Unknown("..value..")"
end

-- Dissect: Bust Correct Indicator
nyse_arca_options_binarygateway_pillar_v3_15.bust_correct_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.bust_correct_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.bust_correct_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bust_correct_indicator, range, value, display)

  return offset + length, value
end

-- Last Qty
nyse_arca_options_binarygateway_pillar_v3_15.last_qty = {}

-- Size: Last Qty
nyse_arca_options_binarygateway_pillar_v3_15.last_qty.size = 4

-- Display: Last Qty
nyse_arca_options_binarygateway_pillar_v3_15.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
nyse_arca_options_binarygateway_pillar_v3_15.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Px
nyse_arca_options_binarygateway_pillar_v3_15.last_px = {}

-- Size: Last Px
nyse_arca_options_binarygateway_pillar_v3_15.last_px.size = 8

-- Display: Last Px
nyse_arca_options_binarygateway_pillar_v3_15.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
nyse_arca_options_binarygateway_pillar_v3_15.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
nyse_arca_options_binarygateway_pillar_v3_15.last_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.last_px.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.last_px, range, value, display)

  return offset + length, value
end

-- Deal Id
nyse_arca_options_binarygateway_pillar_v3_15.deal_id = {}

-- Size: Deal Id
nyse_arca_options_binarygateway_pillar_v3_15.deal_id.size = 8

-- Display: Deal Id
nyse_arca_options_binarygateway_pillar_v3_15.deal_id.display = function(value)
  return "Deal Id: "..value
end

-- Dissect: Deal Id
nyse_arca_options_binarygateway_pillar_v3_15.deal_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.deal_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.deal_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.deal_id, range, value, display)

  return offset + length, value
end

-- Seq
nyse_arca_options_binarygateway_pillar_v3_15.seq = {}

-- Size: Seq
nyse_arca_options_binarygateway_pillar_v3_15.seq.size = 8

-- Display: Seq
nyse_arca_options_binarygateway_pillar_v3_15.seq.display = function(value)
  return "Seq: "..value
end

-- Dissect: Seq
nyse_arca_options_binarygateway_pillar_v3_15.seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq, range, value, display)

  return offset + length, value
end

-- User
nyse_arca_options_binarygateway_pillar_v3_15.user = {}

-- Size: User
nyse_arca_options_binarygateway_pillar_v3_15.user.size = 4

-- Display: User
nyse_arca_options_binarygateway_pillar_v3_15.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nyse_arca_options_binarygateway_pillar_v3_15.user.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.user.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.user, range, value, display)

  return offset + length, value
end

-- Sess
nyse_arca_options_binarygateway_pillar_v3_15.sess = {}

-- Size: Sess
nyse_arca_options_binarygateway_pillar_v3_15.sess.size = 4

-- Display: Sess
nyse_arca_options_binarygateway_pillar_v3_15.sess.display = function(value)
  return "Sess: "..value
end

-- Dissect: Sess
nyse_arca_options_binarygateway_pillar_v3_15.sess.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.sess.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.sess.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sess, range, value, display)

  return offset + length, value
end

-- Stream Id
nyse_arca_options_binarygateway_pillar_v3_15.stream_id = {}

-- Size: Stream Id
nyse_arca_options_binarygateway_pillar_v3_15.stream_id.size =
  nyse_arca_options_binarygateway_pillar_v3_15.sess.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.user.size

-- Display: Stream Id
nyse_arca_options_binarygateway_pillar_v3_15.stream_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id
nyse_arca_options_binarygateway_pillar_v3_15.stream_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sess: 4 Byte Unsigned Fixed Width Integer
  index, sess = nyse_arca_options_binarygateway_pillar_v3_15.sess.dissect(buffer, index, packet, parent)

  -- User: 4 Byte Unsigned Fixed Width Integer
  index, user = nyse_arca_options_binarygateway_pillar_v3_15.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id
nyse_arca_options_binarygateway_pillar_v3_15.stream_id.dissect = function(buffer, offset, packet, parent)
  if show.stream_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.stream_id, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.stream_id.fields(buffer, offset, packet, parent)
  end
end

-- Refseqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid = {}

-- Size: Refseqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.size =
  nyse_arca_options_binarygateway_pillar_v3_15.stream_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.seq.size

-- Display: Refseqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refseqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_arca_options_binarygateway_pillar_v3_15.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refseqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.dissect = function(buffer, offset, packet, parent)
  if show.refseqmsgid then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.refseqmsgid, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
nyse_arca_options_binarygateway_pillar_v3_15.order_id = {}

-- Size: Order Id
nyse_arca_options_binarygateway_pillar_v3_15.order_id.size = 8

-- Display: Order Id
nyse_arca_options_binarygateway_pillar_v3_15.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_arca_options_binarygateway_pillar_v3_15.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Bust Or Correct
nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct = {}

-- Size: Trade Bust Or Correct
nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.deal_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.last_px.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.last_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reason_code.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.user_data.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.bust_correct_indicator.size

-- Display: Trade Bust Or Correct
nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Or Correct
nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_binarygateway_pillar_v3_15.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Refseqmsgid: Struct of 2 fields
  index, refseqmsgid = nyse_arca_options_binarygateway_pillar_v3_15.refseqmsgid.dissect(buffer, index, packet, parent)

  -- Deal Id: 8 Byte Unsigned Fixed Width Integer
  index, deal_id = nyse_arca_options_binarygateway_pillar_v3_15.deal_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = nyse_arca_options_binarygateway_pillar_v3_15.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = nyse_arca_options_binarygateway_pillar_v3_15.last_qty.dissect(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 307 values
  index, reason_code = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  -- Bust Correct Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, bust_correct_indicator = nyse_arca_options_binarygateway_pillar_v3_15.bust_correct_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Or Correct
nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.dissect = function(buffer, offset, packet, parent)
  if show.trade_bust_or_correct then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.trade_bust_or_correct, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Account
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account = {}

-- Size: Clearing Account
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account.size = 5

-- Display: Clearing Account
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Optional Data
nyse_arca_options_binarygateway_pillar_v3_15.optional_data = {}

-- Size: Optional Data
nyse_arca_options_binarygateway_pillar_v3_15.optional_data.size = 16

-- Display: Optional Data
nyse_arca_options_binarygateway_pillar_v3_15.optional_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data: No Value"
  end

  return "Optional Data: "..value
end

-- Dissect: Optional Data
nyse_arca_options_binarygateway_pillar_v3_15.optional_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.optional_data.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.optional_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.optional_data, range, value, display)

  return offset + length, value
end

-- Clearing Firm
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm = {}

-- Size: Clearing Firm
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm.size = 5

-- Display: Clearing Firm
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Deliver To Comp Id
nyse_arca_options_binarygateway_pillar_v3_15.deliver_to_comp_id = {}

-- Size: Deliver To Comp Id
nyse_arca_options_binarygateway_pillar_v3_15.deliver_to_comp_id.size = 5

-- Display: Deliver To Comp Id
nyse_arca_options_binarygateway_pillar_v3_15.deliver_to_comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Deliver To Comp Id: No Value"
  end

  return "Deliver To Comp Id: "..value
end

-- Dissect: Deliver To Comp Id
nyse_arca_options_binarygateway_pillar_v3_15.deliver_to_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.deliver_to_comp_id.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.deliver_to_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.deliver_to_comp_id, range, value, display)

  return offset + length, value
end

-- Max Floor
nyse_arca_options_binarygateway_pillar_v3_15.max_floor = {}

-- Size: Max Floor
nyse_arca_options_binarygateway_pillar_v3_15.max_floor.size = 4

-- Display: Max Floor
nyse_arca_options_binarygateway_pillar_v3_15.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nyse_arca_options_binarygateway_pillar_v3_15.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Stop Px
nyse_arca_options_binarygateway_pillar_v3_15.stop_px = {}

-- Size: Stop Px
nyse_arca_options_binarygateway_pillar_v3_15.stop_px.size = 8

-- Display: Stop Px
nyse_arca_options_binarygateway_pillar_v3_15.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
nyse_arca_options_binarygateway_pillar_v3_15.stop_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
nyse_arca_options_binarygateway_pillar_v3_15.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.stop_px.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Sub Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_length = {}

-- Size: Sub Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_length.size = 2

-- Display: Sub Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_length.display = function(value)
  return "Sub Msg Length: "..value
end

-- Dissect: Sub Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_msg_length, range, value, display)

  return offset + length, value
end

-- Sub Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_type = {}

-- Size: Sub Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_type.size = 2

-- Display: Sub Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_type.display = function(value)
  return "Sub Msg Type: "..value
end

-- Dissect: Sub Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_msg_type, range, value, display)

  return offset + length, value
end

-- Sub Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header = {}

-- Size: Sub Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.size =
  nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_length.size

-- Display: Sub Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Type: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_type = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_type.dissect(buffer, index, packet, parent)

  -- Sub Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_length = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.sub_msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_msg_header, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Optional Order Add On
nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on = {}

-- Size: Optional Order Add On
nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.size =
  nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.stop_px.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.max_floor.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.deliver_to_comp_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.optional_data.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.clearing_account.size

-- Display: Optional Order Add On
nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Order Add On
nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index, stop_px = nyse_arca_options_binarygateway_pillar_v3_15.stop_px.dissect(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = nyse_arca_options_binarygateway_pillar_v3_15.max_floor.dissect(buffer, index, packet, parent)

  -- Deliver To Comp Id: 5 Byte Ascii String
  index, deliver_to_comp_id = nyse_arca_options_binarygateway_pillar_v3_15.deliver_to_comp_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: 5 Byte Ascii String
  index, clearing_firm = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm.dissect(buffer, index, packet, parent)

  -- Optional Data: 16 Byte Ascii String
  index, optional_data = nyse_arca_options_binarygateway_pillar_v3_15.optional_data.dissect(buffer, index, packet, parent)

  -- Clearing Account: 5 Byte Ascii String
  index, clearing_account = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Order Add On
nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.dissect = function(buffer, offset, packet, parent)
  if show.optional_order_add_on then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.optional_order_add_on, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.fields(buffer, offset, packet, parent)
  end
end

-- Open Close
nyse_arca_options_binarygateway_pillar_v3_15.open_close = {}

-- Size: Open Close
nyse_arca_options_binarygateway_pillar_v3_15.open_close.size = 1

-- Display: Open Close
nyse_arca_options_binarygateway_pillar_v3_15.open_close.display = function(value)
  if value == 0 then
    return "Open Close: No Value"
  end
  if value == 1 then
    return "Open Close: Open (1)"
  end
  if value == 2 then
    return "Open Close: Close (2)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
nyse_arca_options_binarygateway_pillar_v3_15.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.open_close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.open_close, range, value, display)

  return offset + length, value
end

-- Cross Id
nyse_arca_options_binarygateway_pillar_v3_15.cross_id = {}

-- Size: Cross Id
nyse_arca_options_binarygateway_pillar_v3_15.cross_id.size = 8

-- Display: Cross Id
nyse_arca_options_binarygateway_pillar_v3_15.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_arca_options_binarygateway_pillar_v3_15.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Covered Or Uncovered
nyse_arca_options_binarygateway_pillar_v3_15.covered_or_uncovered = {}

-- Size: Covered Or Uncovered
nyse_arca_options_binarygateway_pillar_v3_15.covered_or_uncovered.size = 1

-- Display: Covered Or Uncovered
nyse_arca_options_binarygateway_pillar_v3_15.covered_or_uncovered.display = function(value)
  if value == 0 then
    return "Covered Or Uncovered: No Value"
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
nyse_arca_options_binarygateway_pillar_v3_15.covered_or_uncovered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.covered_or_uncovered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.covered_or_uncovered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.covered_or_uncovered, range, value, display)

  return offset + length, value
end

-- Contra Covered Or Uncovered
nyse_arca_options_binarygateway_pillar_v3_15.contra_covered_or_uncovered = {}

-- Size: Contra Covered Or Uncovered
nyse_arca_options_binarygateway_pillar_v3_15.contra_covered_or_uncovered.size = 1

-- Display: Contra Covered Or Uncovered
nyse_arca_options_binarygateway_pillar_v3_15.contra_covered_or_uncovered.display = function(value)
  if value == 0 then
    return "Contra Covered Or Uncovered: No Value"
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
nyse_arca_options_binarygateway_pillar_v3_15.contra_covered_or_uncovered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.contra_covered_or_uncovered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.contra_covered_or_uncovered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_covered_or_uncovered, range, value, display)

  return offset + length, value
end

-- Contra Cross Type
nyse_arca_options_binarygateway_pillar_v3_15.contra_cross_type = {}

-- Size: Contra Cross Type
nyse_arca_options_binarygateway_pillar_v3_15.contra_cross_type.size = 2

-- Display: Contra Cross Type
nyse_arca_options_binarygateway_pillar_v3_15.contra_cross_type.display = function(value)
  if value == 0 then
    return "Contra Cross Type: No Value"
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
nyse_arca_options_binarygateway_pillar_v3_15.contra_cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.contra_cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.contra_cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_cross_type, range, value, display)

  return offset + length, value
end

-- Contra Clearing Account
nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_account = {}

-- Size: Contra Clearing Account
nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_account.size = 5

-- Display: Contra Clearing Account
nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Clearing Account: No Value"
  end

  return "Contra Clearing Account: "..value
end

-- Dissect: Contra Clearing Account
nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_account.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_clearing_account, range, value, display)

  return offset + length, value
end

-- Contra Customer Or Firm
nyse_arca_options_binarygateway_pillar_v3_15.contra_customer_or_firm = {}

-- Size: Contra Customer Or Firm
nyse_arca_options_binarygateway_pillar_v3_15.contra_customer_or_firm.size = 1

-- Display: Contra Customer Or Firm
nyse_arca_options_binarygateway_pillar_v3_15.contra_customer_or_firm.display = function(value)
  if value == 0 then
    return "Contra Customer Or Firm: No Value"
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
nyse_arca_options_binarygateway_pillar_v3_15.contra_customer_or_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.contra_customer_or_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.contra_customer_or_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_customer_or_firm, range, value, display)

  return offset + length, value
end

-- Contra Open Close
nyse_arca_options_binarygateway_pillar_v3_15.contra_open_close = {}

-- Size: Contra Open Close
nyse_arca_options_binarygateway_pillar_v3_15.contra_open_close.size = 1

-- Display: Contra Open Close
nyse_arca_options_binarygateway_pillar_v3_15.contra_open_close.display = function(value)
  if value == 0 then
    return "Contra Open Close: No Value"
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
nyse_arca_options_binarygateway_pillar_v3_15.contra_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.contra_open_close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.contra_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_open_close, range, value, display)

  return offset + length, value
end

-- Contra Mpid
nyse_arca_options_binarygateway_pillar_v3_15.contra_mpid = {}

-- Size: Contra Mpid
nyse_arca_options_binarygateway_pillar_v3_15.contra_mpid.size = 4

-- Display: Contra Mpid
nyse_arca_options_binarygateway_pillar_v3_15.contra_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Mpid: No Value"
  end

  return "Contra Mpid: "..value
end

-- Dissect: Contra Mpid
nyse_arca_options_binarygateway_pillar_v3_15.contra_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.contra_mpid.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.contra_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_mpid, range, value, display)

  return offset + length, value
end

-- Contra Clearing Firm
nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_firm = {}

-- Size: Contra Clearing Firm
nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_firm.size = 5

-- Display: Contra Clearing Firm
nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Clearing Firm: No Value"
  end

  return "Contra Clearing Firm: "..value
end

-- Dissect: Contra Clearing Firm
nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_firm.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_clearing_firm, range, value, display)

  return offset + length, value
end

-- Contra Market Maker
nyse_arca_options_binarygateway_pillar_v3_15.contra_market_maker = {}

-- Size: Contra Market Maker
nyse_arca_options_binarygateway_pillar_v3_15.contra_market_maker.size = 10

-- Display: Contra Market Maker
nyse_arca_options_binarygateway_pillar_v3_15.contra_market_maker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Market Maker: No Value"
  end

  return "Contra Market Maker: "..value
end

-- Dissect: Contra Market Maker
nyse_arca_options_binarygateway_pillar_v3_15.contra_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.contra_market_maker.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.contra_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.contra_market_maker, range, value, display)

  return offset + length, value
end

-- Participant Type
nyse_arca_options_binarygateway_pillar_v3_15.participant_type = {}

-- Size: Participant Type
nyse_arca_options_binarygateway_pillar_v3_15.participant_type.size = 1

-- Display: Participant Type
nyse_arca_options_binarygateway_pillar_v3_15.participant_type.display = function(value)
  if value == 0 then
    return "Participant Type: No Value"
  end
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
  if value == 5 then
    return "Participant Type: Nyse Floor Broker Nyse Chicago Ib (5)"
  end

  return "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nyse_arca_options_binarygateway_pillar_v3_15.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.participant_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Locate Reqd
nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd = {}

-- Size: Locate Reqd
nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.size = 1

-- Display: Locate Reqd
nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.display = function(value)
  if value == 0 then
    return "Locate Reqd: No Locate Reqd (0)"
  end
  if value == 1 then
    return "Locate Reqd: Locate Req For Ssh Orders (1)"
  end

  return "Locate Reqd: Unknown("..value..")"
end

-- Dissect: Locate Reqd
nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_arca_options_binarygateway_pillar_v3_15.reserved_2 = {}

-- Size: Reserved 2
nyse_arca_options_binarygateway_pillar_v3_15.reserved_2.size = 2

-- Display: Reserved 2
nyse_arca_options_binarygateway_pillar_v3_15.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_arca_options_binarygateway_pillar_v3_15.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_arca_options_binarygateway_pillar_v3_15.reserved_1 = {}

-- Size: Reserved 1
nyse_arca_options_binarygateway_pillar_v3_15.reserved_1.size = 1

-- Display: Reserved 1
nyse_arca_options_binarygateway_pillar_v3_15.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arca_options_binarygateway_pillar_v3_15.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Multileg Reporting Type
nyse_arca_options_binarygateway_pillar_v3_15.multileg_reporting_type = {}

-- Size: Multileg Reporting Type
nyse_arca_options_binarygateway_pillar_v3_15.multileg_reporting_type.size = 1

-- Display: Multileg Reporting Type
nyse_arca_options_binarygateway_pillar_v3_15.multileg_reporting_type.display = function(value)
  if value == 0 then
    return "Multileg Reporting Type: No Value"
  end
  if value == 1 then
    return "Multileg Reporting Type: Singleleg Security (1)"
  end
  if value == 2 then
    return "Multileg Reporting Type: Individual Leg Of A Multileg Security (2)"
  end
  if value == 3 then
    return "Multileg Reporting Type: Multileg Security (3)"
  end

  return "Multileg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multileg Reporting Type
nyse_arca_options_binarygateway_pillar_v3_15.multileg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.multileg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.multileg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
nyse_arca_options_binarygateway_pillar_v3_15.liquidity_indicator = {}

-- Size: Liquidity Indicator
nyse_arca_options_binarygateway_pillar_v3_15.liquidity_indicator.size = 4

-- Display: Liquidity Indicator
nyse_arca_options_binarygateway_pillar_v3_15.liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
nyse_arca_options_binarygateway_pillar_v3_15.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.liquidity_indicator.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cum Qty
nyse_arca_options_binarygateway_pillar_v3_15.cum_qty = {}

-- Size: Cum Qty
nyse_arca_options_binarygateway_pillar_v3_15.cum_qty.size = 4

-- Display: Cum Qty
nyse_arca_options_binarygateway_pillar_v3_15.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
nyse_arca_options_binarygateway_pillar_v3_15.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty = {}

-- Size: Leaves Qty
nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.size = 4

-- Display: Leaves Qty
nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Execution Report
nyse_arca_options_binarygateway_pillar_v3_15.execution_report = {}

-- Calculate size of: Execution Report
nyse_arca_options_binarygateway_pillar_v3_15.execution_report.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.mpid.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.order_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.deal_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.last_px.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.cum_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.last_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.liquidity_indicator.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.multileg_reporting_type.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.reserved_1.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.reserved_2.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.participant_type.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.reason_code.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.user_data.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.contra_market_maker.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_firm.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.contra_mpid.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.contra_open_close.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.contra_customer_or_firm.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_account.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.contra_cross_type.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.contra_covered_or_uncovered.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.covered_or_uncovered.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.cross_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.open_close.size

  local seq_msg_length = buffer(offset + index - 134, 2):le_uint()

  if seq_msg_length ~= 100 then
    index = index + nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.size

  end

  return index
end

-- Display: Execution Report
nyse_arca_options_binarygateway_pillar_v3_15.execution_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report
nyse_arca_options_binarygateway_pillar_v3_15.execution_report.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_binarygateway_pillar_v3_15.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Deal Id: 8 Byte Unsigned Fixed Width Integer
  index, deal_id = nyse_arca_options_binarygateway_pillar_v3_15.deal_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = nyse_arca_options_binarygateway_pillar_v3_15.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = nyse_arca_options_binarygateway_pillar_v3_15.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = nyse_arca_options_binarygateway_pillar_v3_15.last_qty.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: 4 Byte Ascii String
  index, liquidity_indicator = nyse_arca_options_binarygateway_pillar_v3_15.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Multileg Reporting Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, multileg_reporting_type = nyse_arca_options_binarygateway_pillar_v3_15.multileg_reporting_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_2.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, locate_reqd = nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.dissect(buffer, index, packet, parent)

  -- Participant Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, participant_type = nyse_arca_options_binarygateway_pillar_v3_15.participant_type.dissect(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 307 values
  index, reason_code = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  -- Side U 81: 1 Byte Unsigned Fixed Width Integer
  index, side_u_81 = nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Contra Market Maker: 10 Byte Ascii String
  index, contra_market_maker = nyse_arca_options_binarygateway_pillar_v3_15.contra_market_maker.dissect(buffer, index, packet, parent)

  -- Contra Clearing Firm: 5 Byte Ascii String
  index, contra_clearing_firm = nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_firm.dissect(buffer, index, packet, parent)

  -- Contra Mpid: 4 Byte Ascii String
  index, contra_mpid = nyse_arca_options_binarygateway_pillar_v3_15.contra_mpid.dissect(buffer, index, packet, parent)

  -- Contra Open Close: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, contra_open_close = nyse_arca_options_binarygateway_pillar_v3_15.contra_open_close.dissect(buffer, index, packet, parent)

  -- Contra Customer Or Firm: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, contra_customer_or_firm = nyse_arca_options_binarygateway_pillar_v3_15.contra_customer_or_firm.dissect(buffer, index, packet, parent)

  -- Contra Clearing Account: 5 Byte Ascii String
  index, contra_clearing_account = nyse_arca_options_binarygateway_pillar_v3_15.contra_clearing_account.dissect(buffer, index, packet, parent)

  -- Contra Cross Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, contra_cross_type = nyse_arca_options_binarygateway_pillar_v3_15.contra_cross_type.dissect(buffer, index, packet, parent)

  -- Contra Covered Or Uncovered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, contra_covered_or_uncovered = nyse_arca_options_binarygateway_pillar_v3_15.contra_covered_or_uncovered.dissect(buffer, index, packet, parent)

  -- Covered Or Uncovered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, covered_or_uncovered = nyse_arca_options_binarygateway_pillar_v3_15.covered_or_uncovered.dissect(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_arca_options_binarygateway_pillar_v3_15.cross_id.dissect(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close = nyse_arca_options_binarygateway_pillar_v3_15.open_close.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 134, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report
nyse_arca_options_binarygateway_pillar_v3_15.execution_report.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.execution_report.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.execution_report.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.execution_report, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.execution_report.fields(buffer, offset, packet, parent)
end

-- Ack Type
nyse_arca_options_binarygateway_pillar_v3_15.ack_type = {}

-- Size: Ack Type
nyse_arca_options_binarygateway_pillar_v3_15.ack_type.size = 1

-- Display: Ack Type
nyse_arca_options_binarygateway_pillar_v3_15.ack_type.display = function(value)
  if value == 0 then
    return "Ack Type: None (0)"
  end
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
  if value == 10 then
    return "Ack Type: Eligible For Cross (10)"
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
    return "Ack Type: Billable Cancel Subdollar Adding Liquidity (15)"
  end
  if value == 16 then
    return "Ack Type: Billable Cancel Subdollar Removing Liquidity (16)"
  end
  if value == 17 then
    return "Ack Type: Gtc Renewal Restatement (17)"
  end

  return "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
nyse_arca_options_binarygateway_pillar_v3_15.ack_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Pre Liquidity Indicator
nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator = {}

-- Size: Pre Liquidity Indicator
nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.size = 4

-- Display: Pre Liquidity Indicator
nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.display = function(value)
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
nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.pre_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Working Away From Display
nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display = {}

-- Size: Working Away From Display
nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.size = 1

-- Display: Working Away From Display
nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.display = function(value)
  return "Working Away From Display: "..value
end

-- Dissect: Working Away From Display
nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.working_away_from_display, range, value, display)

  return offset + length, value
end

-- Order Qty
nyse_arca_options_binarygateway_pillar_v3_15.order_qty = {}

-- Size: Order Qty
nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size = 4

-- Display: Order Qty
nyse_arca_options_binarygateway_pillar_v3_15.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_arca_options_binarygateway_pillar_v3_15.working_price = {}

-- Size: Working Price
nyse_arca_options_binarygateway_pillar_v3_15.working_price.size = 8

-- Display: Working Price
nyse_arca_options_binarygateway_pillar_v3_15.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
nyse_arca_options_binarygateway_pillar_v3_15.working_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Working Price
nyse_arca_options_binarygateway_pillar_v3_15.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.working_price.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.working_price, range, value, display)

  return offset + length, value
end

-- Order Priority Update Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment = {}

-- Size: Order Priority Update Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.working_price.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.ack_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.user_data.size

-- Display: Order Priority Update Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_binarygateway_pillar_v3_15.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = nyse_arca_options_binarygateway_pillar_v3_15.working_price.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect(buffer, index, packet, parent)

  -- Working Away From Display: 1 Byte Unsigned Fixed Width Integer
  index, working_away_from_display = nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: 4 Byte Ascii String Enum with 4 values
  index, pre_liquidity_indicator = nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, ack_type = nyse_arca_options_binarygateway_pillar_v3_15.ack_type.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.dissect = function(buffer, offset, packet, parent)
  if show.order_priority_update_acknowledgment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_priority_update_acknowledgment, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Scope
nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope = {}

-- Size: Cancel Scope
nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.size = 1

-- Display: Cancel Scope
nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.display = function(value)
  if value == 0 then
    return "Cancel Scope: Orders Only (0)"
  end
  if value == 1 then
    return "Cancel Scope: Options Mm Quotes Only (1)"
  end
  if value == 2 then
    return "Cancel Scope: Both Orders And Options Mm Quotes (2)"
  end

  return "Cancel Scope: Unknown("..value..")"
end

-- Dissect: Cancel Scope
nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cancel_scope, range, value, display)

  return offset + length, value
end

-- Bulk Action
nyse_arca_options_binarygateway_pillar_v3_15.bulk_action = {}

-- Size: Bulk Action
nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.size = 1

-- Display: Bulk Action
nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.display = function(value)
  if value == 0 then
    return "Bulk Action: No Value"
  end
  if value == 1 then
    return "Bulk Action: Cancel Single Leg Only (1)"
  end
  if value == 2 then
    return "Bulk Action: Cancel Complex Only (2)"
  end
  if value == 3 then
    return "Bulk Action: Cancel Both Single Leg And Complex (3)"
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
nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bulk_action, range, value, display)

  return offset + length, value
end

-- Target Cancel Mpid
nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid = {}

-- Size: Target Cancel Mpid
nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.size = 4

-- Display: Target Cancel Mpid
nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Target Cancel Mpid: No Value"
  end

  return "Target Cancel Mpid: "..value
end

-- Dissect: Target Cancel Mpid
nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.target_cancel_mpid, range, value, display)

  return offset + length, value
end

-- Target Cancel Username
nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username = {}

-- Size: Target Cancel Username
nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.size = 16

-- Display: Target Cancel Username
nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.display = function(value)
  return "Target Cancel Username: "..value
end

-- Dissect: Target Cancel Username
nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.target_cancel_username, range, value, display)

  return offset + length, value
end

-- Group Id
nyse_arca_options_binarygateway_pillar_v3_15.group_id = {}

-- Size: Group Id
nyse_arca_options_binarygateway_pillar_v3_15.group_id.size = 4

-- Display: Group Id
nyse_arca_options_binarygateway_pillar_v3_15.group_id.display = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
nyse_arca_options_binarygateway_pillar_v3_15.group_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.group_id, range, value, display)

  return offset + length, value
end

-- Flow Indicator
nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator = {}

-- Size: Flow Indicator
nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.size = 1

-- Display: Flow Indicator
nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.display = function(value)
  if value == 0 then
    return "Flow Indicator: Inbound Message Was Not Throttled (0)"
  end
  if value == 1 then
    return "Flow Indicator: Inbound Message Was Throttled (1)"
  end

  return "Flow Indicator: Unknown("..value..")"
end

-- Dissect: Flow Indicator
nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.flow_indicator, range, value, display)

  return offset + length, value
end

-- Price Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_price_8 = {}

-- Size: Price Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size = 8

-- Display: Price Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.display = function(value)
  return "Price Price 8: "..value
end

-- Translate: Price Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.price_price_8, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Ref Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.ref_cl_ord_id = {}

-- Size: Ref Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.ref_cl_ord_id.size = 8

-- Display: Ref Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.ref_cl_ord_id.display = function(value)
  return "Ref Cl Ord Id: "..value
end

-- Dissect: Ref Cl Ord Id
nyse_arca_options_binarygateway_pillar_v3_15.ref_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.ref_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.ref_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ref_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Order Request Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment = {}

-- Size: Order Request Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.ref_cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reason_code.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.ack_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.user_data.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.group_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.size

-- Display: Order Request Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Request Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_binarygateway_pillar_v3_15.order_id.dissect(buffer, index, packet, parent)

  -- Ref Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, ref_cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.ref_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price Price 8: 8 Byte Signed Fixed Width Integer
  index, price_price_8 = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.dissect(buffer, index, packet, parent)

  -- Side U 81: 1 Byte Unsigned Fixed Width Integer
  index, side_u_81 = nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, locate_reqd = nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 307 values
  index, reason_code = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, ack_type = nyse_arca_options_binarygateway_pillar_v3_15.ack_type.dissect(buffer, index, packet, parent)

  -- Flow Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, flow_indicator = nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  -- Group Id: 4 Byte Unsigned Fixed Width Integer
  index, group_id = nyse_arca_options_binarygateway_pillar_v3_15.group_id.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Target Cancel Username: 16 Byte Ascii String
  index, target_cancel_username = nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.dissect(buffer, index, packet, parent)

  -- Target Cancel Mpid: 4 Byte Ascii String
  index, target_cancel_mpid = nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.dissect(buffer, index, packet, parent)

  -- Bulk Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, bulk_action = nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.dissect(buffer, index, packet, parent)

  -- Cancel Scope: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cancel_scope = nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Request Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.dissect = function(buffer, offset, packet, parent)
  if show.order_request_acknowledgment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_request_acknowledgment, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
nyse_arca_options_binarygateway_pillar_v3_15.quantity = {}

-- Size: Quantity
nyse_arca_options_binarygateway_pillar_v3_15.quantity.size = 4

-- Display: Quantity
nyse_arca_options_binarygateway_pillar_v3_15.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nyse_arca_options_binarygateway_pillar_v3_15.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.quantity, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_arca_options_binarygateway_pillar_v3_15.series_index = {}

-- Size: Series Index
nyse_arca_options_binarygateway_pillar_v3_15.series_index.size = 4

-- Display: Series Index
nyse_arca_options_binarygateway_pillar_v3_15.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_arca_options_binarygateway_pillar_v3_15.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.series_index, range, value, display)

  return offset + length, value
end

-- Quote Ack
nyse_arca_options_binarygateway_pillar_v3_15.quote_ack = {}

-- Size: Quote Ack
nyse_arca_options_binarygateway_pillar_v3_15.quote_ack.size =
  nyse_arca_options_binarygateway_pillar_v3_15.series_index.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.ack_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.quantity.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reason_code.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.size

-- Display: Quote Ack
nyse_arca_options_binarygateway_pillar_v3_15.quote_ack.display = function(buffer, offset, value, packet, parent)
  return "Quote Ack: "..value
end

-- Dissect Fields: Quote Ack
nyse_arca_options_binarygateway_pillar_v3_15.quote_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_binarygateway_pillar_v3_15.series_index.dissect(buffer, index, packet, parent)

  -- Side U 81: 1 Byte Unsigned Fixed Width Integer
  index, side_u_81 = nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.dissect(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, ack_type = nyse_arca_options_binarygateway_pillar_v3_15.ack_type.dissect(buffer, index, packet, parent)

  -- Price Price 8: 8 Byte Signed Fixed Width Integer
  index, price_price_8 = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nyse_arca_options_binarygateway_pillar_v3_15.quantity.dissect(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 307 values
  index, reason_code = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.dissect(buffer, index, packet, parent)

  -- Working Away From Display: 1 Byte Unsigned Fixed Width Integer
  index, working_away_from_display = nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack
nyse_arca_options_binarygateway_pillar_v3_15.quote_ack.dissect = function(buffer, offset, packet, parent)
  if show.quote_ack then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.quote_ack, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.quote_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.quote_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, value
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.quote_ack.fields(buffer, offset, packet, parent)
  end
end

-- Self Trade Type
nyse_arca_options_binarygateway_pillar_v3_15.self_trade_type = {}

-- Size: Self Trade Type
nyse_arca_options_binarygateway_pillar_v3_15.self_trade_type.size = 1

-- Display: Self Trade Type
nyse_arca_options_binarygateway_pillar_v3_15.self_trade_type.display = function(value)
  if value == 0 then
    return "Self Trade Type: Use Current Session Configuration Stp Setting For The Username (0)"
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
nyse_arca_options_binarygateway_pillar_v3_15.self_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.self_trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.self_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.self_trade_type, range, value, display)

  return offset + length, value
end

-- Sub Id
nyse_arca_options_binarygateway_pillar_v3_15.sub_id = {}

-- Size: Sub Id
nyse_arca_options_binarygateway_pillar_v3_15.sub_id.size = 4

-- Display: Sub Id
nyse_arca_options_binarygateway_pillar_v3_15.sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sub Id: No Value"
  end

  return "Sub Id: "..value
end

-- Dissect: Sub Id
nyse_arca_options_binarygateway_pillar_v3_15.sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.sub_id.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_id, range, value, display)

  return offset + length, value
end

-- Bulk Quote Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment = {}

-- Size: Bulk Quote Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Bulk Quote Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: 4 Byte Ascii String
  index, sub_id = nyse_arca_options_binarygateway_pillar_v3_15.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Flow Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, flow_indicator = nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.dissect(buffer, index, packet, parent)

  -- Self Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, self_trade_type = nyse_arca_options_binarygateway_pillar_v3_15.self_trade_type.dissect(buffer, index, packet, parent)

  -- Group Id: 4 Byte Unsigned Fixed Width Integer
  index, group_id = nyse_arca_options_binarygateway_pillar_v3_15.group_id.dissect(buffer, index, packet, parent)

  -- Repeating Groups: 1 Byte Unsigned Fixed Width Integer
  index, repeating_groups = nyse_arca_options_binarygateway_pillar_v3_15.repeating_groups.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 43, 2):le_uint()

  -- Dependency for Quote Ack
  local end_of_payload = seq_msg_length

  -- Quote Ack: Struct of 7 fields
  while index < end_of_payload do
    index, quote_ack = nyse_arca_options_binarygateway_pillar_v3_15.quote_ack.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Bulk Quote Acknowledgment
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.bulk_quote_acknowledgment then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bulk_quote_acknowledgment, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.fields(buffer, offset, packet, parent)
end

-- Auction Id
nyse_arca_options_binarygateway_pillar_v3_15.auction_id = {}

-- Size: Auction Id
nyse_arca_options_binarygateway_pillar_v3_15.auction_id.size = 8

-- Display: Auction Id
nyse_arca_options_binarygateway_pillar_v3_15.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_arca_options_binarygateway_pillar_v3_15.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Leg Open Close
nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close = {}

-- Size: Leg Open Close
nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.size = 8

-- Display: Leg Open Close
nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.display = function(value)
  if value == 0 then
    return "Leg Open Close: Open (0)"
  end
  if value == 1 then
    return "Leg Open Close: Close (1)"
  end
  if value == 0 then
    return "Leg Open Close: Use Current Session Configuration Stp Setting For The Username (0)"
  end
  if value == 1 then
    return "Leg Open Close: No Self Trade Prevention (1)"
  end
  if value == 2 then
    return "Leg Open Close: Cancel Newest (2)"
  end
  if value == 3 then
    return "Leg Open Close: Cancel Oldest (3)"
  end
  if value == 4 then
    return "Leg Open Close: Cancel Both (4)"
  end
  if value == 5 then
    return "Leg Open Close: Cancel Decrement (5)"
  end

  return "Leg Open Close: Unknown("..value..")"
end

-- Dissect: Leg Open Close
nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.leg_open_close, range, value, display)

  return offset + length, value
end

-- Min Qty
nyse_arca_options_binarygateway_pillar_v3_15.min_qty = {}

-- Size: Min Qty
nyse_arca_options_binarygateway_pillar_v3_15.min_qty.size = 4

-- Display: Min Qty
nyse_arca_options_binarygateway_pillar_v3_15.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nyse_arca_options_binarygateway_pillar_v3_15.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Order Instructions
nyse_arca_options_binarygateway_pillar_v3_15.order_instructions = {}

-- Size: Order Instructions
nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.size = 17

-- Display: Order Instructions
nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.display = function(range, value, packet, parent)
  local display = ""


  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Order Instructions
nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.bits = function(range, value, packet, parent)

  -- Reserved Bits 34: 34 Bit
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_bits_34, range, value)

  -- Security Type: 5 Bit Enum with 3 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.security_type, range, value)

  -- Capacity: 5 Bit
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.capacity, range, value)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.open_close, range, value)

  -- Sub Id Indicator: 5 Bit
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sub_id_indicator, range, value)

  -- Special Ord Type: 5 Bit Enum with 10 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.special_ord_type, range, value)

  -- Locate Reqd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.locate_reqd, range, value)

  -- Retail Indicator: 5 Bit Enum with 2 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.retail_indicator, range, value)

  -- Attributed Quote: 5 Bit Enum with 9 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.attributed_quote, range, value)

  -- Order Capacity: 5 Bit Enum with 5 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_capacity, range, value)

  -- Interest Type: 5 Bit Enum with 5 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.interest_type, range, value)

  -- Trading Session Id: 5 Bit Enum with 6 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.trading_session_id, range, value)

  -- Time In Force: 5 Bit Enum with 7 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.time_in_force, range, value)

  -- Proactive If Locked: 5 Bit Enum with 3 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.proactive_if_locked, range, value)

  -- Self Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.self_trade_type, range, value)

  -- Cancel Instead Of Reprice: 5 Bit Enum with 7 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cancel_instead_of_reprice, range, value)

  -- Routing Inst: 5 Bit Enum with 3 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.routing_inst, range, value)

  -- Extended Exec Inst: 5 Bit Enum with 16 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.extended_exec_inst, range, value)

  -- Exec Inst: 5 Bit Enum with 10 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.exec_inst, range, value)

  -- Ord Type: 5 Bit Enum with 7 values
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ord_type, range, value)

  -- Side Bit 5: 5 Bit
  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.side_bit_5, range, value)
end

-- Dissect: Order Instructions
nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_instructions, range, display)

  if show.order_instructions then
    nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement = {}

-- Calculate size of: Order Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.mpid.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.min_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.user_data.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.order_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.working_price.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.reason_code.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.ack_type.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.auction_id.size

  local seq_msg_length = buffer(offset + index - 139, 2):le_uint()

  if seq_msg_length ~= 100 then
    index = index + nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.size

  end

  return index
end

-- Display: Order Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: 4 Byte Ascii String
  index, mp_sub_id = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 21 fields
  index, order_instructions = nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.dissect(buffer, index, packet, parent)

  -- Price Price 8: 8 Byte Signed Fixed Width Integer
  index, price_price_8 = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = nyse_arca_options_binarygateway_pillar_v3_15.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = nyse_arca_options_binarygateway_pillar_v3_15.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = nyse_arca_options_binarygateway_pillar_v3_15.leaves_qty.dissect(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = nyse_arca_options_binarygateway_pillar_v3_15.working_price.dissect(buffer, index, packet, parent)

  -- Working Away From Display: 1 Byte Unsigned Fixed Width Integer
  index, working_away_from_display = nyse_arca_options_binarygateway_pillar_v3_15.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: 4 Byte Ascii String Enum with 4 values
  index, pre_liquidity_indicator = nyse_arca_options_binarygateway_pillar_v3_15.pre_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: 2 Byte Unsigned Fixed Width Integer Enum with 307 values
  index, reason_code = nyse_arca_options_binarygateway_pillar_v3_15.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, ack_type = nyse_arca_options_binarygateway_pillar_v3_15.ack_type.dissect(buffer, index, packet, parent)

  -- Flow Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, flow_indicator = nyse_arca_options_binarygateway_pillar_v3_15.flow_indicator.dissect(buffer, index, packet, parent)

  -- Leg Open Close: 8 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, leg_open_close = nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = nyse_arca_options_binarygateway_pillar_v3_15.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 139, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_acknowledgement then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_acknowledgement, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.fields(buffer, offset, packet, parent)
end

-- Reserved 49
nyse_arca_options_binarygateway_pillar_v3_15.reserved_49 = {}

-- Size: Reserved 49
nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.size = 49

-- Display: Reserved 49
nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.display = function(value)
  return "Reserved 49: "..value
end

-- Dissect: Reserved 49
nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_49, range, value, display)

  return offset + length, value
end

-- Bold Designation
nyse_arca_options_binarygateway_pillar_v3_15.bold_designation = {}

-- Size: Bold Designation
nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.size = 1

-- Display: Bold Designation
nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.display = function(value)
  return "Bold Designation: "..value
end

-- Dissect: Bold Designation
nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bold_designation, range, value, display)

  return offset + length, value
end

-- Ack Status
nyse_arca_options_binarygateway_pillar_v3_15.ack_status = {}

-- Size: Ack Status
nyse_arca_options_binarygateway_pillar_v3_15.ack_status.size = 1

-- Display: Ack Status
nyse_arca_options_binarygateway_pillar_v3_15.ack_status.display = function(value)
  return "Ack Status: "..value
end

-- Dissect: Ack Status
nyse_arca_options_binarygateway_pillar_v3_15.ack_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.ack_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.ack_status, range, value, display)

  return offset + length, value
end

-- Order Priority Update Ack Subscription
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription = {}

-- Size: Order Priority Update Ack Subscription
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.size = 1

-- Display: Order Priority Update Ack Subscription
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.display = function(value)
  if value == 1 then
    return "Order Priority Update Ack Subscription: Unsolicited Order Priority Update Ack (1)"
  end
  if value == 2 then
    return "Order Priority Update Ack Subscription: Unsolicited Order Priority Update Ack And Unsolicited Repricing Ack (2)"
  end

  return "Order Priority Update Ack Subscription: Unknown("..value..")"
end

-- Dissect: Order Priority Update Ack Subscription
nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_priority_update_ack_subscription, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention
nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention = {}

-- Size: Self Trade Prevention
nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.size = 1

-- Display: Self Trade Prevention
nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.display = function(value)
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
nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Max Order Quantity
nyse_arca_options_binarygateway_pillar_v3_15.max_order_quantity = {}

-- Size: Max Order Quantity
nyse_arca_options_binarygateway_pillar_v3_15.max_order_quantity.size = 4

-- Display: Max Order Quantity
nyse_arca_options_binarygateway_pillar_v3_15.max_order_quantity.display = function(value)
  return "Max Order Quantity: "..value
end

-- Dissect: Max Order Quantity
nyse_arca_options_binarygateway_pillar_v3_15.max_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.max_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.max_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.max_order_quantity, range, value, display)

  return offset + length, value
end

-- Symbol Eligibility
nyse_arca_options_binarygateway_pillar_v3_15.symbol_eligibility = {}

-- Size: Symbol Eligibility
nyse_arca_options_binarygateway_pillar_v3_15.symbol_eligibility.size = 1

-- Display: Symbol Eligibility
nyse_arca_options_binarygateway_pillar_v3_15.symbol_eligibility.display = function(value)
  return "Symbol Eligibility: "..value
end

-- Dissect: Symbol Eligibility
nyse_arca_options_binarygateway_pillar_v3_15.symbol_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.symbol_eligibility.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.symbol_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.symbol_eligibility, range, value, display)

  return offset + length, value
end

-- Throttle Threshold
nyse_arca_options_binarygateway_pillar_v3_15.throttle_threshold = {}

-- Size: Throttle Threshold
nyse_arca_options_binarygateway_pillar_v3_15.throttle_threshold.size = 2

-- Display: Throttle Threshold
nyse_arca_options_binarygateway_pillar_v3_15.throttle_threshold.display = function(value)
  return "Throttle Threshold: "..value
end

-- Dissect: Throttle Threshold
nyse_arca_options_binarygateway_pillar_v3_15.throttle_threshold.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.throttle_threshold.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.throttle_threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.throttle_threshold, range, value, display)

  return offset + length, value
end

-- Throttle Window
nyse_arca_options_binarygateway_pillar_v3_15.throttle_window = {}

-- Size: Throttle Window
nyse_arca_options_binarygateway_pillar_v3_15.throttle_window.size = 2

-- Display: Throttle Window
nyse_arca_options_binarygateway_pillar_v3_15.throttle_window.display = function(value)
  return "Throttle Window: "..value
end

-- Dissect: Throttle Window
nyse_arca_options_binarygateway_pillar_v3_15.throttle_window.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.throttle_window.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.throttle_window.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.throttle_window, range, value, display)

  return offset + length, value
end

-- Throttle Preference
nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference = {}

-- Size: Throttle Preference
nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.size = 1

-- Display: Throttle Preference
nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.display = function(value)
  if value == 0 then
    return "Throttle Preference: Queue Orders When Throttled (0)"
  end
  if value == 1 then
    return "Throttle Preference: Reject Orders When Throttled (1)"
  end

  return "Throttle Preference: Unknown("..value..")"
end

-- Dissect: Throttle Preference
nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.throttle_preference, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect
nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect = {}

-- Size: Cancel On Disconnect
nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.size = 1

-- Display: Cancel On Disconnect
nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.display = function(value)
  if value == 1 then
    return "Cancel On Disconnect: Enable Cancel On Disconnect Day (1)"
  end
  if value == 2 then
    return "Cancel On Disconnect: Enable Cancel On Disconnect All (2)"
  end

  return "Cancel On Disconnect: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect
nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.cancel_on_disconnect, range, value, display)

  return offset + length, value
end

-- Mic
nyse_arca_options_binarygateway_pillar_v3_15.mic = {}

-- Size: Mic
nyse_arca_options_binarygateway_pillar_v3_15.mic.size = 4

-- Display: Mic
nyse_arca_options_binarygateway_pillar_v3_15.mic.display = function(value)
  if value == "AMXO" then
    return "Mic: Nyse American Options (AMXO)"
  end
  if value == "ARCO" then
    return "Mic: Nyse Arca Options (ARCO)"
  end
  if value == "ARCX" then
    return "Mic: Nyse Arca Equities (ARCX)"
  end
  if value == "XASE" then
    return "Mic: Nyse American Equities (XASE)"
  end
  if value == "XCHI" then
    return "Mic: Nyse Chicago Equities Xcis Nyse National Equities (XCHI)"
  end
  if value == "XNYS" then
    return "Mic: Nyse (XNYS)"
  end

  return "Mic: Unknown("..value..")"
end

-- Dissect: Mic
nyse_arca_options_binarygateway_pillar_v3_15.mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arca_options_binarygateway_pillar_v3_15.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mic, range, value, display)

  return offset + length, value
end

-- Username
nyse_arca_options_binarygateway_pillar_v3_15.username = {}

-- Size: Username
nyse_arca_options_binarygateway_pillar_v3_15.username.size = 16

-- Display: Username
nyse_arca_options_binarygateway_pillar_v3_15.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nyse_arca_options_binarygateway_pillar_v3_15.username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arca_options_binarygateway_pillar_v3_15.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.username, range, value, display)

  return offset + length, value
end

-- User Session Status
nyse_arca_options_binarygateway_pillar_v3_15.user_session_status = {}

-- Size: User Session Status
nyse_arca_options_binarygateway_pillar_v3_15.user_session_status.size = 1

-- Display: User Session Status
nyse_arca_options_binarygateway_pillar_v3_15.user_session_status.display = function(value)
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
nyse_arca_options_binarygateway_pillar_v3_15.user_session_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.user_session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.user_session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.user_session_status, range, value, display)

  return offset + length, value
end

-- User Session Type
nyse_arca_options_binarygateway_pillar_v3_15.user_session_type = {}

-- Size: User Session Type
nyse_arca_options_binarygateway_pillar_v3_15.user_session_type.size = 1

-- Display: User Session Type
nyse_arca_options_binarygateway_pillar_v3_15.user_session_type.display = function(value)
  if value == 1 then
    return "User Session Type: All Asset Clases Andor Equities Market Maker (1)"
  end
  if value == 2 then
    return "User Session Type: Service Bureau (2)"
  end
  if value == 3 then
    return "User Session Type: Designated Market Maker (3)"
  end
  if value == 4 then
    return "User Session Type: Options Market Maker (4)"
  end
  if value == 5 then
    return "User Session Type: Third Party Algo Vendor (5)"
  end
  if value == 6 then
    return "User Session Type: Nyse Floor Broker (6)"
  end
  if value == 7 then
    return "User Session Type: Direct To Nyse Floor Broker (7)"
  end
  if value == 12 then
    return "User Session Type: Risk Admin (12)"
  end

  return "User Session Type: Unknown("..value..")"
end

-- Dissect: User Session Type
nyse_arca_options_binarygateway_pillar_v3_15.user_session_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.user_session_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.user_session_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.user_session_type, range, value, display)

  return offset + length, value
end

-- Session Configuration Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement = {}

-- Size: Session Configuration Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.user_session_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.user_session_status.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.username.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mic.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.throttle_window.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.throttle_threshold.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_eligibility.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.max_order_quantity.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.ack_status.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.size

-- Display: Session Configuration Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- User Session Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, user_session_type = nyse_arca_options_binarygateway_pillar_v3_15.user_session_type.dissect(buffer, index, packet, parent)

  -- User Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_session_status = nyse_arca_options_binarygateway_pillar_v3_15.user_session_status.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_arca_options_binarygateway_pillar_v3_15.username.dissect(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String Enum with 6 values
  index, mic = nyse_arca_options_binarygateway_pillar_v3_15.mic.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, cancel_on_disconnect = nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Throttle Preference: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, throttle_preference = nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.dissect(buffer, index, packet, parent)

  -- Throttle Window: 2 Byte Unsigned Fixed Width Integer
  index, throttle_window = nyse_arca_options_binarygateway_pillar_v3_15.throttle_window.dissect(buffer, index, packet, parent)

  -- Throttle Threshold: 2 Byte Unsigned Fixed Width Integer
  index, throttle_threshold = nyse_arca_options_binarygateway_pillar_v3_15.throttle_threshold.dissect(buffer, index, packet, parent)

  -- Symbol Eligibility: 1 Byte Unsigned Fixed Width Integer
  index, symbol_eligibility = nyse_arca_options_binarygateway_pillar_v3_15.symbol_eligibility.dissect(buffer, index, packet, parent)

  -- Max Order Quantity: 4 Byte Unsigned Fixed Width Integer
  index, max_order_quantity = nyse_arca_options_binarygateway_pillar_v3_15.max_order_quantity.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, self_trade_prevention = nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_priority_update_ack_subscription = nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.dissect(buffer, index, packet, parent)

  -- Ack Status: 1 Byte Unsigned Fixed Width Integer
  index, ack_status = nyse_arca_options_binarygateway_pillar_v3_15.ack_status.dissect(buffer, index, packet, parent)

  -- Bold Designation: 1 Byte Ascii String
  index, bold_designation = nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.dissect(buffer, index, packet, parent)

  -- Reserved 49: 49 Byte
  index, reserved_49 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Acknowledgement
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.session_configuration_acknowledgement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.session_configuration_acknowledgement, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 50
nyse_arca_options_binarygateway_pillar_v3_15.reserved_50 = {}

-- Size: Reserved 50
nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.size = 50

-- Display: Reserved 50
nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.display = function(value)
  return "Reserved 50: "..value
end

-- Dissect: Reserved 50
nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_50, range, value, display)

  return offset + length, value
end

-- Appointment Status
nyse_arca_options_binarygateway_pillar_v3_15.appointment_status = {}

-- Size: Appointment Status
nyse_arca_options_binarygateway_pillar_v3_15.appointment_status.size = 1

-- Display: Appointment Status
nyse_arca_options_binarygateway_pillar_v3_15.appointment_status.display = function(value)
  if value == 0 then
    return "Appointment Status: Not Appointed For Underlying Symbol (0)"
  end
  if value == 1 then
    return "Appointment Status: Appointed For Underlying Symbol (1)"
  end

  return "Appointment Status: Unknown("..value..")"
end

-- Dissect: Appointment Status
nyse_arca_options_binarygateway_pillar_v3_15.appointment_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.appointment_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.appointment_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.appointment_status, range, value, display)

  return offset + length, value
end

-- Mm Type
nyse_arca_options_binarygateway_pillar_v3_15.mm_type = {}

-- Size: Mm Type
nyse_arca_options_binarygateway_pillar_v3_15.mm_type.size = 1

-- Display: Mm Type
nyse_arca_options_binarygateway_pillar_v3_15.mm_type.display = function(value)
  if value == 1 then
    return "Mm Type: Nyse American Options Market Maker (1)"
  end
  if value == 2 then
    return "Mm Type: Nyse American Options Specialist (2)"
  end
  if value == 3 then
    return "Mm Type: Nyse American Options E Specialist (3)"
  end
  if value == 4 then
    return "Mm Type: Nyse American Options Domm (4)"
  end
  if value == 5 then
    return "Mm Type: Nyse American Options Specialist And Domm (5)"
  end
  if value == 6 then
    return "Mm Type: Nyse American Options E Specialist And Domm (6)"
  end

  return "Mm Type: Unknown("..value..")"
end

-- Dissect: Mm Type
nyse_arca_options_binarygateway_pillar_v3_15.mm_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mm_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.mm_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mm_type, range, value, display)

  return offset + length, value
end

-- Nyse Symbol
nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol = {}

-- Size: Nyse Symbol
nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.size = 24

-- Display: Nyse Symbol
nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.display = function(value)
  return "Nyse Symbol: "..value
end

-- Dissect: Nyse Symbol
nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.nyse_symbol, range, value, display)

  return offset + length, value
end

-- Options Market Maker Symbol Appointment Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data = {}

-- Size: Options Market Maker Symbol Appointment Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mm_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.appointment_status.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.size

-- Display: Options Market Maker Symbol Appointment Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Market Maker Symbol Appointment Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Nyse Symbol: 24 Byte Ascii String
  index, nyse_symbol = nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Mm Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, mm_type = nyse_arca_options_binarygateway_pillar_v3_15.mm_type.dissect(buffer, index, packet, parent)

  -- Appointment Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appointment_status = nyse_arca_options_binarygateway_pillar_v3_15.appointment_status.dissect(buffer, index, packet, parent)

  -- Reserved 50: 50 Byte
  index, reserved_50 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Market Maker Symbol Appointment Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.dissect = function(buffer, offset, packet, parent)
  if show.options_market_maker_symbol_appointment_reference_data then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.options_market_maker_symbol_appointment_reference_data, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.fields(buffer, offset, packet, parent)
  end
end

-- Mpid Status
nyse_arca_options_binarygateway_pillar_v3_15.mpid_status = {}

-- Size: Mpid Status
nyse_arca_options_binarygateway_pillar_v3_15.mpid_status.size = 1

-- Display: Mpid Status
nyse_arca_options_binarygateway_pillar_v3_15.mpid_status.display = function(value)
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
nyse_arca_options_binarygateway_pillar_v3_15.mpid_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mpid_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.mpid_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpid_status, range, value, display)

  return offset + length, value
end

-- Mpid Configuration
nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration = {}

-- Size: Mpid Configuration
nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid_status.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.username.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.size

-- Display: Mpid Configuration
nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpid Configuration
nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Mpid Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mpid_status = nyse_arca_options_binarygateway_pillar_v3_15.mpid_status.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_arca_options_binarygateway_pillar_v3_15.username.dissect(buffer, index, packet, parent)

  -- Reserved 50: 50 Byte
  index, reserved_50 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpid Configuration
nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.dissect = function(buffer, offset, packet, parent)
  if show.mpid_configuration then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpid_configuration, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.fields(buffer, offset, packet, parent)
  end
end

-- Mpv Class Id
nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id = {}

-- Size: Mpv Class Id
nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.size = 2

-- Display: Mpv Class Id
nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.display = function(value)
  return "Mpv Class Id: "..value
end

-- Dissect: Mpv Class Id
nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpv_class_id, range, value, display)

  return offset + length, value
end

-- Trading Mpv
nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv = {}

-- Size: Trading Mpv
nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.size = 8

-- Display: Trading Mpv
nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.display = function(value)
  return "Trading Mpv: "..value
end

-- Translate: Trading Mpv
nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trading Mpv
nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.trading_mpv, range, value, display)

  return offset + length, value
end

-- Quoting Mpv
nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv = {}

-- Size: Quoting Mpv
nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.size = 8

-- Display: Quoting Mpv
nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.display = function(value)
  return "Quoting Mpv: "..value
end

-- Translate: Quoting Mpv
nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Quoting Mpv
nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.quoting_mpv, range, value, display)

  return offset + length, value
end

-- Price U Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8 = {}

-- Size: Price U Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.size = 8

-- Display: Price U Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.display = function(value)
  return "Price U Price 8: "..value
end

-- Translate: Price U Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price U Price 8
nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.price_u_price_8, range, value, display)

  return offset + length, value
end

-- Mpv Level Name
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_name = {}

-- Size: Mpv Level Name
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_name.size = 24

-- Display: Mpv Level Name
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_name.display = function(value)
  return "Mpv Level Name: "..value
end

-- Dissect: Mpv Level Name
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_name.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpv_level_name, range, value, display)

  return offset + length, value
end

-- Mpv Level Definition
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition = {}

-- Size: Mpv Level Definition
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition.size =
  nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_name.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.size

-- Display: Mpv Level Definition
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpv Level Definition
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mpv Level Name: 24 Byte Ascii String
  index, mpv_level_name = nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_name.dissect(buffer, index, packet, parent)

  -- Price U Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_u_price_8 = nyse_arca_options_binarygateway_pillar_v3_15.price_u_price_8.dissect(buffer, index, packet, parent)

  -- Quoting Mpv: 8 Byte Unsigned Fixed Width Integer
  index, quoting_mpv = nyse_arca_options_binarygateway_pillar_v3_15.quoting_mpv.dissect(buffer, index, packet, parent)

  -- Trading Mpv: 8 Byte Unsigned Fixed Width Integer
  index, trading_mpv = nyse_arca_options_binarygateway_pillar_v3_15.trading_mpv.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: 2 Byte Unsigned Fixed Width Integer
  index, mpv_class_id = nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpv Level Definition
nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition.dissect = function(buffer, offset, packet, parent)
  if show.mpv_level_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpv_level_definition, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Price Variant Level Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data = {}

-- Size: Minimum Price Variant Level Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Minimum Price Variant Level Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Price Variant Level Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 10, 2):le_uint()

  -- Dependency for Mpv Level Definition
  local end_of_payload = seq_msg_length

  -- Mpv Level Definition: Struct of 5 fields
  while index < end_of_payload do
    index, mpv_level_definition = nyse_arca_options_binarygateway_pillar_v3_15.mpv_level_definition.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Minimum Price Variant Level Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.minimum_price_variant_level_reference_data then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.minimum_price_variant_level_reference_data, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.fields(buffer, offset, packet, parent)
end

-- Luldmpv
nyse_arca_options_binarygateway_pillar_v3_15.luldmpv = {}

-- Size: Luldmpv
nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.size = 8

-- Display: Luldmpv
nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.display = function(value)
  return "Luldmpv: "..value
end

-- Translate: Luldmpv
nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Luldmpv
nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.luldmpv, range, value, display)

  return offset + length, value
end

-- Rpimpv
nyse_arca_options_binarygateway_pillar_v3_15.rpimpv = {}

-- Size: Rpimpv
nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.size = 8

-- Display: Rpimpv
nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.display = function(value)
  return "Rpimpv: "..value
end

-- Translate: Rpimpv
nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Rpimpv
nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.rpimpv, range, value, display)

  return offset + length, value
end

-- Mpv Class Name
nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_name = {}

-- Size: Mpv Class Name
nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_name.size = 20

-- Display: Mpv Class Name
nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_name.display = function(value)
  return "Mpv Class Name: "..value
end

-- Dissect: Mpv Class Name
nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_name.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mpv_class_name, range, value, display)

  return offset + length, value
end

-- Minimum Price Variant Class Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data = {}

-- Size: Minimum Price Variant Class Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_name.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.size

-- Display: Minimum Price Variant Class Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Price Variant Class Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Mpv Class Name: 20 Byte Ascii String
  index, mpv_class_name = nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_name.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: 2 Byte Unsigned Fixed Width Integer
  index, mpv_class_id = nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.dissect(buffer, index, packet, parent)

  -- Rpimpv: 8 Byte Unsigned Fixed Width Integer
  index, rpimpv = nyse_arca_options_binarygateway_pillar_v3_15.rpimpv.dissect(buffer, index, packet, parent)

  -- Luldmpv: 8 Byte Unsigned Fixed Width Integer
  index, luldmpv = nyse_arca_options_binarygateway_pillar_v3_15.luldmpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Price Variant Class Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.dissect = function(buffer, offset, packet, parent)
  if show.minimum_price_variant_class_reference_data then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.minimum_price_variant_class_reference_data, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Filler
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler = {}

-- Size: Sequenced Filler
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size

-- Display: Sequenced Filler
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Filler
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Filler
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_filler then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sequenced_filler, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.fields(buffer, offset, packet, parent)
  end
end

-- Legal Width Multiplier
nyse_arca_options_binarygateway_pillar_v3_15.legal_width_multiplier = {}

-- Size: Legal Width Multiplier
nyse_arca_options_binarygateway_pillar_v3_15.legal_width_multiplier.size = 1

-- Display: Legal Width Multiplier
nyse_arca_options_binarygateway_pillar_v3_15.legal_width_multiplier.display = function(value)
  return "Legal Width Multiplier: "..value
end

-- Dissect: Legal Width Multiplier
nyse_arca_options_binarygateway_pillar_v3_15.legal_width_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.legal_width_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.legal_width_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.legal_width_multiplier, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_arca_options_binarygateway_pillar_v3_15.channel_id = {}

-- Size: Channel Id
nyse_arca_options_binarygateway_pillar_v3_15.channel_id.size = 1

-- Display: Channel Id
nyse_arca_options_binarygateway_pillar_v3_15.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arca_options_binarygateway_pillar_v3_15.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Test Symbol Indicator
nyse_arca_options_binarygateway_pillar_v3_15.test_symbol_indicator = {}

-- Size: Test Symbol Indicator
nyse_arca_options_binarygateway_pillar_v3_15.test_symbol_indicator.size = 1

-- Display: Test Symbol Indicator
nyse_arca_options_binarygateway_pillar_v3_15.test_symbol_indicator.display = function(value)
  if value == 0 then
    return "Test Symbol Indicator: Production Symbol (0)"
  end
  if value == 1 then
    return "Test Symbol Indicator: Test Symbol (1)"
  end

  return "Test Symbol Indicator: Unknown("..value..")"
end

-- Dissect: Test Symbol Indicator
nyse_arca_options_binarygateway_pillar_v3_15.test_symbol_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.test_symbol_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.test_symbol_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.test_symbol_indicator, range, value, display)

  return offset + length, value
end

-- Max Order Price
nyse_arca_options_binarygateway_pillar_v3_15.max_order_price = {}

-- Size: Max Order Price
nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.size = 8

-- Display: Max Order Price
nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.display = function(value)
  return "Max Order Price: "..value
end

-- Translate: Max Order Price
nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Max Order Price
nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.translate(raw)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.max_order_price, range, value, display)

  return offset + length, value
end

-- Underlying Type
nyse_arca_options_binarygateway_pillar_v3_15.underlying_type = {}

-- Size: Underlying Type
nyse_arca_options_binarygateway_pillar_v3_15.underlying_type.size = 1

-- Display: Underlying Type
nyse_arca_options_binarygateway_pillar_v3_15.underlying_type.display = function(value)
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
    return "Underlying Type: Misc Others (M)"
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
nyse_arca_options_binarygateway_pillar_v3_15.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.underlying_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Listed Mic
nyse_arca_options_binarygateway_pillar_v3_15.listed_mic = {}

-- Size: Listed Mic
nyse_arca_options_binarygateway_pillar_v3_15.listed_mic.size = 4

-- Display: Listed Mic
nyse_arca_options_binarygateway_pillar_v3_15.listed_mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Listed Mic: No Value"
  end

  return "Listed Mic: "..value
end

-- Dissect: Listed Mic
nyse_arca_options_binarygateway_pillar_v3_15.listed_mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.listed_mic.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.listed_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.listed_mic, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data = {}

-- Size: Underlying Symbol Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.transact_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.listed_mic.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.underlying_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.test_symbol_indicator.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.channel_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.legal_width_multiplier.size

-- Display: Underlying Symbol Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Symbol Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = nyse_arca_options_binarygateway_pillar_v3_15.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Nyse Symbol: 24 Byte Ascii String
  index, nyse_symbol = nyse_arca_options_binarygateway_pillar_v3_15.nyse_symbol.dissect(buffer, index, packet, parent)

  -- Listed Mic: 4 Byte Ascii String
  index, listed_mic = nyse_arca_options_binarygateway_pillar_v3_15.listed_mic.dissect(buffer, index, packet, parent)

  -- Underlying Type: 1 Byte Ascii String Enum with 19 values
  index, underlying_type = nyse_arca_options_binarygateway_pillar_v3_15.underlying_type.dissect(buffer, index, packet, parent)

  -- Max Order Price: 8 Byte Signed Fixed Width Integer
  index, max_order_price = nyse_arca_options_binarygateway_pillar_v3_15.max_order_price.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: 2 Byte Unsigned Fixed Width Integer
  index, mpv_class_id = nyse_arca_options_binarygateway_pillar_v3_15.mpv_class_id.dissect(buffer, index, packet, parent)

  -- Test Symbol Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, test_symbol_indicator = nyse_arca_options_binarygateway_pillar_v3_15.test_symbol_indicator.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_binarygateway_pillar_v3_15.channel_id.dissect(buffer, index, packet, parent)

  -- Legal Width Multiplier: 1 Byte Unsigned Fixed Width Integer
  index, legal_width_multiplier = nyse_arca_options_binarygateway_pillar_v3_15.legal_width_multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Symbol Reference Data
nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.dissect = function(buffer, offset, packet, parent)
  if show.underlying_symbol_reference_data then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.underlying_symbol_reference_data, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.fields(buffer, offset, packet, parent)
  end
end

-- Complex Leg
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg = {}

-- Size: Complex Leg
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg.size =
  nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.leg_side.size

-- Display: Complex Leg
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.leg_symbol_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = nyse_arca_options_binarygateway_pillar_v3_15.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = nyse_arca_options_binarygateway_pillar_v3_15.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
nyse_arca_options_binarygateway_pillar_v3_15.complex_leg.dissect = function(buffer, offset, packet, parent)
  if show.complex_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.complex_leg, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.complex_leg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.complex_leg.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Series Request
nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request = {}

-- Size: New Complex Series Request
nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: New Complex Series Request
nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Series Request
nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 14, 2):le_uint()

  -- Dependency for Complex Leg
  local end_of_payload = seq_msg_length

  -- Complex Leg: Struct of 3 fields
  while index < end_of_payload do
    index, complex_leg = nyse_arca_options_binarygateway_pillar_v3_15.complex_leg.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Complex Series Request
nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_series_request then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.new_complex_series_request, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.fields(buffer, offset, packet, parent)
end

-- Risk Action Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request = {}

-- Size: Risk Action Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.size

-- Display: Risk Action Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Action Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: 4 Byte Ascii String
  index, mp_sub_id = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Floor Broker Firm Crd: 4 Byte Unsigned Fixed Width Integer
  index, floor_broker_firm_crd = nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.dissect(buffer, index, packet, parent)

  -- Clearing Number: 5 Byte Ascii String
  index, clearing_number = nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk User Crd: 4 Byte Unsigned Fixed Width Integer
  index, risk_user_crd = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: 1 Byte Ascii String Enum with 4 values
  index, risk_user_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, risk_control_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, risk_action_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_action_type.dissect(buffer, index, packet, parent)

  -- Reserved 200: 200 Byte
  index, reserved_200 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Action Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.dissect = function(buffer, offset, packet, parent)
  if show.risk_action_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_action_request, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.fields(buffer, offset, packet, parent)
  end
end

-- Breach Action Request
nyse_arca_options_binarygateway_pillar_v3_15.breach_action_request = {}

-- Size: Breach Action Request
nyse_arca_options_binarygateway_pillar_v3_15.breach_action_request.size = 1

-- Display: Breach Action Request
nyse_arca_options_binarygateway_pillar_v3_15.breach_action_request.display = function(value)
  if value == 0 then
    return "Breach Action Request: No Value"
  end
  if value == 1 then
    return "Breach Action Request: Notifications Only (1)"
  end
  if value == 2 then
    return "Breach Action Request: Cancel Non Auction Orders And Block (2)"
  end
  if value == 3 then
    return "Breach Action Request: Block Only (3)"
  end

  return "Breach Action Request: Unknown("..value..")"
end

-- Dissect: Breach Action Request
nyse_arca_options_binarygateway_pillar_v3_15.breach_action_request.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.breach_action_request.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.breach_action_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.breach_action_request, range, value, display)

  return offset + length, value
end

-- Risk Limit Update Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request = {}

-- Size: Risk Limit Update Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.time_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.count_limit.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.breach_action_request.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.size

-- Display: Risk Limit Update Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limit Update Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: 4 Byte Ascii String
  index, mp_sub_id = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Floor Broker Firm Crd: 4 Byte Unsigned Fixed Width Integer
  index, floor_broker_firm_crd = nyse_arca_options_binarygateway_pillar_v3_15.floor_broker_firm_crd.dissect(buffer, index, packet, parent)

  -- Clearing Number: 5 Byte Ascii String
  index, clearing_number = nyse_arca_options_binarygateway_pillar_v3_15.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk User Crd: 4 Byte Unsigned Fixed Width Integer
  index, risk_user_crd = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: 1 Byte Ascii String Enum with 4 values
  index, risk_user_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, risk_control_type = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Control Activation: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, risk_control_activation = nyse_arca_options_binarygateway_pillar_v3_15.risk_control_activation.dissect(buffer, index, packet, parent)

  -- Usd Limit: 8 Byte Signed Fixed Width Integer
  index, usd_limit = nyse_arca_options_binarygateway_pillar_v3_15.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: 4 Byte Signed Fixed Width Integer
  index, time_limit = nyse_arca_options_binarygateway_pillar_v3_15.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: 4 Byte Signed Fixed Width Integer
  index, percentage_limit = nyse_arca_options_binarygateway_pillar_v3_15.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: 4 Byte Signed Fixed Width Integer
  index, count_limit = nyse_arca_options_binarygateway_pillar_v3_15.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Request: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, breach_action_request = nyse_arca_options_binarygateway_pillar_v3_15.breach_action_request.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioc_attribution = nyse_arca_options_binarygateway_pillar_v3_15.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Reserved 200: 200 Byte
  index, reserved_200 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_200.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Limit Update Request
nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.dissect = function(buffer, offset, packet, parent)
  if show.risk_limit_update_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.risk_limit_update_request, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.fields(buffer, offset, packet, parent)
  end
end

-- Mm Sent Time
nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time = {}

-- Size: Mm Sent Time
nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time.size = 8

-- Display: Mm Sent Time
nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Mm Sent Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Mm Sent Time
nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mm_sent_time, range, value, display)

  return offset + length, value
end

-- Bulk Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request = {}

-- Size: Bulk Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.group_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.size

-- Display: Bulk Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Mm Sent Time: 8 Byte Unsigned Fixed Width Integer
  index, mm_sent_time = nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time.dissect(buffer, index, packet, parent)

  -- Side U 81: 1 Byte Unsigned Fixed Width Integer
  index, side_u_81 = nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.dissect(buffer, index, packet, parent)

  -- Group Id: 4 Byte Unsigned Fixed Width Integer
  index, group_id = nyse_arca_options_binarygateway_pillar_v3_15.group_id.dissect(buffer, index, packet, parent)

  -- Target Cancel Username: 16 Byte Ascii String
  index, target_cancel_username = nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_username.dissect(buffer, index, packet, parent)

  -- Bulk Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, bulk_action = nyse_arca_options_binarygateway_pillar_v3_15.bulk_action.dissect(buffer, index, packet, parent)

  -- Cancel Scope: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cancel_scope = nyse_arca_options_binarygateway_pillar_v3_15.cancel_scope.dissect(buffer, index, packet, parent)

  -- Target Cancel Mpid: 4 Byte Ascii String
  index, target_cancel_mpid = nyse_arca_options_binarygateway_pillar_v3_15.target_cancel_mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.bulk_cancel_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bulk_cancel_request, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Covered
nyse_arca_options_binarygateway_pillar_v3_15.covered = {}

-- Calculate size of: Covered
nyse_arca_options_binarygateway_pillar_v3_15.covered.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.mpid.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.min_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.user_data.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.auction_id.size

  local seq_msg_length = buffer(offset + index - 255, 2):le_uint()

  if seq_msg_length ~= 100 then
    index = index + nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.size

  end

  return index
end

-- Display: Covered
nyse_arca_options_binarygateway_pillar_v3_15.covered.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Covered
nyse_arca_options_binarygateway_pillar_v3_15.covered.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: 4 Byte Ascii String
  index, mp_sub_id = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 21 fields
  index, order_instructions = nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.dissect(buffer, index, packet, parent)

  -- Price Price 8: 8 Byte Signed Fixed Width Integer
  index, price_price_8 = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = nyse_arca_options_binarygateway_pillar_v3_15.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: 8 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, leg_open_close = nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = nyse_arca_options_binarygateway_pillar_v3_15.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 151, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Covered
nyse_arca_options_binarygateway_pillar_v3_15.covered.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.covered then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.covered.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.covered.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.covered, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.covered.fields(buffer, offset, packet, parent)
end

-- Exposed
nyse_arca_options_binarygateway_pillar_v3_15.exposed = {}

-- Size: Exposed
nyse_arca_options_binarygateway_pillar_v3_15.exposed.size =
  nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.min_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.user_data.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.auction_id.size

-- Display: Exposed
nyse_arca_options_binarygateway_pillar_v3_15.exposed.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exposed
nyse_arca_options_binarygateway_pillar_v3_15.exposed.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: 4 Byte Ascii String
  index, mp_sub_id = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 21 fields
  index, order_instructions = nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.dissect(buffer, index, packet, parent)

  -- Price Price 8: 8 Byte Signed Fixed Width Integer
  index, price_price_8 = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = nyse_arca_options_binarygateway_pillar_v3_15.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: 8 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, leg_open_close = nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = nyse_arca_options_binarygateway_pillar_v3_15.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exposed
nyse_arca_options_binarygateway_pillar_v3_15.exposed.dissect = function(buffer, offset, packet, parent)
  if show.exposed then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.exposed, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.exposed.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.exposed.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.exposed.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 16
nyse_arca_options_binarygateway_pillar_v3_15.reserved_16 = {}

-- Size: Reserved 16
nyse_arca_options_binarygateway_pillar_v3_15.reserved_16.size = 16

-- Display: Reserved 16
nyse_arca_options_binarygateway_pillar_v3_15.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nyse_arca_options_binarygateway_pillar_v3_15.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_binarygateway_pillar_v3_15.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Clearing Account Covered
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_covered = {}

-- Size: Clearing Account Covered
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_covered.size = 5

-- Display: Clearing Account Covered
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_covered.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account Covered: No Value"
  end

  return "Clearing Account Covered: "..value
end

-- Dissect: Clearing Account Covered
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_covered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_covered.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_covered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_account_covered, range, value, display)

  return offset + length, value
end

-- Clearing Firm Covered
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_covered = {}

-- Size: Clearing Firm Covered
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_covered.size = 5

-- Display: Clearing Firm Covered
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_covered.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Covered: No Value"
  end

  return "Clearing Firm Covered: "..value
end

-- Dissect: Clearing Firm Covered
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_covered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_covered.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_covered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_firm_covered, range, value, display)

  return offset + length, value
end

-- Clearing Account Exposed
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_exposed = {}

-- Size: Clearing Account Exposed
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_exposed.size = 5

-- Display: Clearing Account Exposed
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_exposed.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account Exposed: No Value"
  end

  return "Clearing Account Exposed: "..value
end

-- Dissect: Clearing Account Exposed
nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_exposed.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_exposed.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_exposed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_account_exposed, range, value, display)

  return offset + length, value
end

-- Clearing Firm Exposed
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_exposed = {}

-- Size: Clearing Firm Exposed
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_exposed.size = 5

-- Display: Clearing Firm Exposed
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_exposed.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Exposed: No Value"
  end

  return "Clearing Firm Exposed: "..value
end

-- Dissect: Clearing Firm Exposed
nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_exposed.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_exposed.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_exposed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.clearing_firm_exposed, range, value, display)

  return offset + length, value
end

-- Allocation Pct
nyse_arca_options_binarygateway_pillar_v3_15.allocation_pct = {}

-- Size: Allocation Pct
nyse_arca_options_binarygateway_pillar_v3_15.allocation_pct.size = 1

-- Display: Allocation Pct
nyse_arca_options_binarygateway_pillar_v3_15.allocation_pct.display = function(value)
  return "Allocation Pct: "..value
end

-- Dissect: Allocation Pct
nyse_arca_options_binarygateway_pillar_v3_15.allocation_pct.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.allocation_pct.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.allocation_pct.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.allocation_pct, range, value, display)

  return offset + length, value
end

-- New Order Cross
nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross = {}

-- Calculate size of: New Order Cross
nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.cross_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.allocation_pct.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_exposed.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_exposed.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_covered.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_covered.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.reserved_16.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.exposed.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.covered.size(buffer, offset + index)

  return index
end

-- Display: New Order Cross
nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross
nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index, cross_id = nyse_arca_options_binarygateway_pillar_v3_15.cross_id.dissect(buffer, index, packet, parent)

  -- Allocation Pct: 1 Byte Unsigned Fixed Width Integer
  index, allocation_pct = nyse_arca_options_binarygateway_pillar_v3_15.allocation_pct.dissect(buffer, index, packet, parent)

  -- Clearing Firm Exposed: 5 Byte Ascii String
  index, clearing_firm_exposed = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_exposed.dissect(buffer, index, packet, parent)

  -- Clearing Account Exposed: 5 Byte Ascii String
  index, clearing_account_exposed = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_exposed.dissect(buffer, index, packet, parent)

  -- Clearing Firm Covered: 5 Byte Ascii String
  index, clearing_firm_covered = nyse_arca_options_binarygateway_pillar_v3_15.clearing_firm_covered.dissect(buffer, index, packet, parent)

  -- Clearing Account Covered: 5 Byte Ascii String
  index, clearing_account_covered = nyse_arca_options_binarygateway_pillar_v3_15.clearing_account_covered.dissect(buffer, index, packet, parent)

  -- Reserved 16: 16 Byte
  index, reserved_16 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_16.dissect(buffer, index, packet, parent)

  -- Exposed: Struct of 14 fields
  index, exposed = nyse_arca_options_binarygateway_pillar_v3_15.exposed.dissect(buffer, index, packet, parent)

  -- Covered: Struct of 15 fields
  index, covered = nyse_arca_options_binarygateway_pillar_v3_15.covered.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross
nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_cross then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.new_order_cross, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.fields(buffer, offset, packet, parent)
end

-- Bit Field Quote Inst
nyse_arca_options_binarygateway_pillar_v3_15.bit_field_quote_inst = {}

-- Size: Bit Field Quote Inst
nyse_arca_options_binarygateway_pillar_v3_15.bit_field_quote_inst.size = 1

-- Display: Bit Field Quote Inst
nyse_arca_options_binarygateway_pillar_v3_15.bit_field_quote_inst.display = function(value)
  return "Bit Field Quote Inst: "..value
end

-- Dissect: Bit Field Quote Inst
nyse_arca_options_binarygateway_pillar_v3_15.bit_field_quote_inst.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.bit_field_quote_inst.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.bit_field_quote_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bit_field_quote_inst, range, value, display)

  return offset + length, value
end

-- Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote = {}

-- Size: Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote.size =
  nyse_arca_options_binarygateway_pillar_v3_15.series_index.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.bit_field_quote_inst.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size

-- Display: Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_binarygateway_pillar_v3_15.series_index.dissect(buffer, index, packet, parent)

  -- Bit Field Quote Inst: 1 Byte Unsigned Fixed Width Integer
  index, bit_field_quote_inst = nyse_arca_options_binarygateway_pillar_v3_15.bit_field_quote_inst.dissect(buffer, index, packet, parent)

  -- Price Price 8: 8 Byte Signed Fixed Width Integer
  index, price_price_8 = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote.dissect = function(buffer, offset, packet, parent)
  if show.bulk_quote then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.bulk_quote, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote.fields(buffer, offset, packet, parent)
  end
end

-- New Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote = {}

-- Size: New Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: New Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: 4 Byte Ascii String
  index, sub_id = nyse_arca_options_binarygateway_pillar_v3_15.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Self Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, self_trade_type = nyse_arca_options_binarygateway_pillar_v3_15.self_trade_type.dissect(buffer, index, packet, parent)

  -- Group Id: 4 Byte Unsigned Fixed Width Integer
  index, group_id = nyse_arca_options_binarygateway_pillar_v3_15.group_id.dissect(buffer, index, packet, parent)

  -- Mm Sent Time: 8 Byte Unsigned Fixed Width Integer
  index, mm_sent_time = nyse_arca_options_binarygateway_pillar_v3_15.mm_sent_time.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 41, 2):le_uint()

  -- Dependency for Bulk Quote
  local end_of_payload = seq_msg_length

  -- Bulk Quote: Struct of 4 fields
  while index < end_of_payload do
    index, bulk_quote = nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Bulk Quote
nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_bulk_quote then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.new_bulk_quote, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.fields(buffer, offset, packet, parent)
end

-- Order Modify Request
nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request = {}

-- Size: Order Modify Request
nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.size

-- Display: Order Modify Request
nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Request
nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect(buffer, index, packet, parent)

  -- Side U 81: 1 Byte Unsigned Fixed Width Integer
  index, side_u_81 = nyse_arca_options_binarygateway_pillar_v3_15.side_u_81.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, locate_reqd = nyse_arca_options_binarygateway_pillar_v3_15.locate_reqd.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Request
nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.dissect = function(buffer, offset, packet, parent)
  if show.order_modify_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_modify_request, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request = {}

-- Size: Order Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.mpid.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size

-- Display: Order Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request
nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_cancel_request, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Request
nyse_arca_options_binarygateway_pillar_v3_15.order_request = {}

-- Calculate size of: Order Request
nyse_arca_options_binarygateway_pillar_v3_15.order_request.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.mpid.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.market_maker.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.order_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.min_qty.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.user_data.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.size

  index = index + nyse_arca_options_binarygateway_pillar_v3_15.auction_id.size

  local seq_msg_length = buffer(offset + index - 102, 2):le_uint()

  if seq_msg_length ~= 100 then
    index = index + nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.size

  end

  return index
end

-- Display: Order Request
nyse_arca_options_binarygateway_pillar_v3_15.order_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Request
nyse_arca_options_binarygateway_pillar_v3_15.order_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = nyse_arca_options_binarygateway_pillar_v3_15.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nyse_arca_options_binarygateway_pillar_v3_15.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: 10 Byte Ascii String
  index, market_maker = nyse_arca_options_binarygateway_pillar_v3_15.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: 4 Byte Ascii String
  index, mp_sub_id = nyse_arca_options_binarygateway_pillar_v3_15.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = nyse_arca_options_binarygateway_pillar_v3_15.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 21 fields
  index, order_instructions = nyse_arca_options_binarygateway_pillar_v3_15.order_instructions.dissect(buffer, index, packet, parent)

  -- Price Price 8: 8 Byte Signed Fixed Width Integer
  index, price_price_8 = nyse_arca_options_binarygateway_pillar_v3_15.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = nyse_arca_options_binarygateway_pillar_v3_15.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = nyse_arca_options_binarygateway_pillar_v3_15.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: 10 Byte Ascii String
  index, user_data = nyse_arca_options_binarygateway_pillar_v3_15.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: 8 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, leg_open_close = nyse_arca_options_binarygateway_pillar_v3_15.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = nyse_arca_options_binarygateway_pillar_v3_15.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 102, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arca_options_binarygateway_pillar_v3_15.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Request
nyse_arca_options_binarygateway_pillar_v3_15.order_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_request then
    local length = nyse_arca_options_binarygateway_pillar_v3_15.order_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.order_request.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.order_request, range, display)
  end

  return nyse_arca_options_binarygateway_pillar_v3_15.order_request.fields(buffer, offset, packet, parent)
end

-- Session Configuration Request Message
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message = {}

-- Size: Session Configuration Request Message
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.size =
  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.username.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.size

-- Display: Session Configuration Request Message
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Request Message
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_arca_options_binarygateway_pillar_v3_15.username.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, cancel_on_disconnect = nyse_arca_options_binarygateway_pillar_v3_15.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Throttle Preference: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, throttle_preference = nyse_arca_options_binarygateway_pillar_v3_15.throttle_preference.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, self_trade_prevention = nyse_arca_options_binarygateway_pillar_v3_15.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_priority_update_ack_subscription = nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_ack_subscription.dissect(buffer, index, packet, parent)

  -- Bold Designation: 1 Byte Ascii String
  index, bold_designation = nyse_arca_options_binarygateway_pillar_v3_15.bold_designation.dissect(buffer, index, packet, parent)

  -- Reserved 49: 49 Byte
  index, reserved_49 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_49.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Request Message
nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_configuration_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.session_configuration_request_message, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message = {}

-- Size: Sequenced Message
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.size = function(buffer, offset, seq_msg_type)
  -- Size of Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.size
  end
  -- Size of Sequenced Filler
  if seq_msg_type == 0x0282 then
    return nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.size
  end
  -- Size of Order Request
  if seq_msg_type == 0x0248 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_request.size(buffer, offset)
  end
  -- Size of Order Cancel Request
  if seq_msg_type == 0x0250 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.size
  end
  -- Size of Order Modify Request
  if seq_msg_type == 0x0282 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.size
  end
  -- Size of New Bulk Quote
  if seq_msg_type == 0x0243 then
    return nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.size(buffer, offset)
  end
  -- Size of New Order Cross
  if seq_msg_type == 0x0222 then
    return nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.size(buffer, offset)
  end
  -- Size of Bulk Cancel Request
  if seq_msg_type == 0x0223 then
    return nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.size
  end
  -- Size of Risk Limit Update Request
  if seq_msg_type == 0x0330 then
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.size
  end
  -- Size of Risk Action Request
  if seq_msg_type == 0x0331 then
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.size
  end
  -- Size of New Complex Series Request
  if seq_msg_type == 0x0357 then
    return nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.size(buffer, offset)
  end
  -- Size of Underlying Symbol Reference Data
  if seq_msg_type == 0x0233 then
    return nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.size
  end
  -- Size of Sequenced Filler
  if seq_msg_type == 0X0234 then
    return nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.size
  end
  -- Size of Minimum Price Variant Class Reference Data
  if seq_msg_type == 0x0230 then
    return nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.size
  end
  -- Size of Minimum Price Variant Level Reference Data
  if seq_msg_type == 0x0231 then
    return nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.size(buffer, offset)
  end
  -- Size of Mpid Configuration
  if seq_msg_type == 0x0272 then
    return nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.size
  end
  -- Size of Options Market Maker Symbol Appointment Reference Data
  if seq_msg_type == 0x0833 then
    return nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.size
  end
  -- Size of Session Configuration Acknowledgement
  if seq_msg_type == 0x0221 then
    return nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.size
  end
  -- Size of Order Acknowledgement
  if seq_msg_type == 0x026 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.size(buffer, offset)
  end
  -- Size of Bulk Quote Acknowledgment
  if seq_msg_type == 0x0294 then
    return nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.size(buffer, offset)
  end
  -- Size of Order Request Acknowledgment
  if seq_msg_type == 0x0278 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.size
  end
  -- Size of Order Priority Update Acknowledgment
  if seq_msg_type == 0x0268 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.size
  end
  -- Size of Execution Report
  if seq_msg_type == 0x0295 then
    return nyse_arca_options_binarygateway_pillar_v3_15.execution_report.size(buffer, offset)
  end
  -- Size of Trade Bust Or Correct
  if seq_msg_type == 0x0293 then
    return nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.size
  end
  -- Size of Application Layer Reject
  if seq_msg_type == 0x0267 then
    return nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.size
  end
  -- Size of Risk Control Acknowledgement
  if seq_msg_type == 0x0332 then
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.size
  end
  -- Size of Risk Control Alert
  if seq_msg_type == 0x0333 then
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.size
  end
  -- Size of Complex Series Request Acknowledgement
  if seq_msg_type == 0x0358 then
    return nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.branches = function(buffer, offset, packet, parent, seq_msg_type)
  -- Dissect Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Filler
  if seq_msg_type == 0x0282 then
    return nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Request
  if seq_msg_type == 0x0248 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request
  if seq_msg_type == 0x0250 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_cancel_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Request
  if seq_msg_type == 0x0282 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_modify_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Bulk Quote
  if seq_msg_type == 0x0243 then
    return nyse_arca_options_binarygateway_pillar_v3_15.new_bulk_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross
  if seq_msg_type == 0x0222 then
    return nyse_arca_options_binarygateway_pillar_v3_15.new_order_cross.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Cancel Request
  if seq_msg_type == 0x0223 then
    return nyse_arca_options_binarygateway_pillar_v3_15.bulk_cancel_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Limit Update Request
  if seq_msg_type == 0x0330 then
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_limit_update_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Action Request
  if seq_msg_type == 0x0331 then
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_action_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Series Request
  if seq_msg_type == 0x0357 then
    return nyse_arca_options_binarygateway_pillar_v3_15.new_complex_series_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Symbol Reference Data
  if seq_msg_type == 0x0233 then
    return nyse_arca_options_binarygateway_pillar_v3_15.underlying_symbol_reference_data.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Filler
  if seq_msg_type == 0X0234 then
    return nyse_arca_options_binarygateway_pillar_v3_15.sequenced_filler.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Class Reference Data
  if seq_msg_type == 0x0230 then
    return nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_class_reference_data.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Level Reference Data
  if seq_msg_type == 0x0231 then
    return nyse_arca_options_binarygateway_pillar_v3_15.minimum_price_variant_level_reference_data.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mpid Configuration
  if seq_msg_type == 0x0272 then
    return nyse_arca_options_binarygateway_pillar_v3_15.mpid_configuration.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Market Maker Symbol Appointment Reference Data
  if seq_msg_type == 0x0833 then
    return nyse_arca_options_binarygateway_pillar_v3_15.options_market_maker_symbol_appointment_reference_data.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Configuration Acknowledgement
  if seq_msg_type == 0x0221 then
    return nyse_arca_options_binarygateway_pillar_v3_15.session_configuration_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement
  if seq_msg_type == 0x026 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Acknowledgment
  if seq_msg_type == 0x0294 then
    return nyse_arca_options_binarygateway_pillar_v3_15.bulk_quote_acknowledgment.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Request Acknowledgment
  if seq_msg_type == 0x0278 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_request_acknowledgment.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Acknowledgment
  if seq_msg_type == 0x0268 then
    return nyse_arca_options_binarygateway_pillar_v3_15.order_priority_update_acknowledgment.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report
  if seq_msg_type == 0x0295 then
    return nyse_arca_options_binarygateway_pillar_v3_15.execution_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Or Correct
  if seq_msg_type == 0x0293 then
    return nyse_arca_options_binarygateway_pillar_v3_15.trade_bust_or_correct.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Application Layer Reject
  if seq_msg_type == 0x0267 then
    return nyse_arca_options_binarygateway_pillar_v3_15.application_layer_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Acknowledgement
  if seq_msg_type == 0x0332 then
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_control_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Alert
  if seq_msg_type == 0x0333 then
    return nyse_arca_options_binarygateway_pillar_v3_15.risk_control_alert.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Series Request Acknowledgement
  if seq_msg_type == 0x0358 then
    return nyse_arca_options_binarygateway_pillar_v3_15.complex_series_request_acknowledgement.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.dissect = function(buffer, offset, packet, parent, seq_msg_type)
  if not show.sequenced_message then
    return nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.branches(buffer, offset, packet, parent, seq_msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.size(buffer, offset, seq_msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.sequenced_message, range, display)

  return nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.branches(buffer, offset, packet, parent, seq_msg_type)
end

-- Timestamp
nyse_arca_options_binarygateway_pillar_v3_15.timestamp = {}

-- Size: Timestamp
nyse_arca_options_binarygateway_pillar_v3_15.timestamp.size = 8

-- Display: Timestamp
nyse_arca_options_binarygateway_pillar_v3_15.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_arca_options_binarygateway_pillar_v3_15.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Seqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid = {}

-- Size: Seqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid.size =
  nyse_arca_options_binarygateway_pillar_v3_15.stream_id.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.seq.size

-- Display: Seqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_arca_options_binarygateway_pillar_v3_15.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seqmsgid
nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid.dissect = function(buffer, offset, packet, parent)
  if show.seqmsgid then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seqmsgid, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid.fields(buffer, offset, packet, parent)
  end
end

-- Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.msg_length = {}

-- Size: Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.msg_length.size = 2

-- Display: Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nyse_arca_options_binarygateway_pillar_v3_15.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.msg_type = {}

-- Size: Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.msg_type.size = 2

-- Display: Msg Type
nyse_arca_options_binarygateway_pillar_v3_15.msg_type.display = function(value)
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
nyse_arca_options_binarygateway_pillar_v3_15.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.msg_header = {}

-- Size: Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.msg_header.size =
  nyse_arca_options_binarygateway_pillar_v3_15.msg_type.size + 
  nyse_arca_options_binarygateway_pillar_v3_15.msg_length.size

-- Display: Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = nyse_arca_options_binarygateway_pillar_v3_15.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = nyse_arca_options_binarygateway_pillar_v3_15.msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.msg_header, buffer(offset, 0))
    local index = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_binarygateway_pillar_v3_15.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Seq Msg
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg = {}

-- Read runtime size of: Seq Msg
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Seq Msg
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg.fields = function(buffer, offset, packet, parent, size_of_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  -- Seqmsgid: Struct of 2 fields
  index, seqmsgid = nyse_arca_options_binarygateway_pillar_v3_15.seqmsgid.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_binarygateway_pillar_v3_15.reserved_4.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_arca_options_binarygateway_pillar_v3_15.timestamp.dissect(buffer, index, packet, parent)

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Type
  local seq_msg_type = buffer(index, 2):le_uint()

  -- Sequenced Message: Runtime Type with 28 branches
  index = nyse_arca_options_binarygateway_pillar_v3_15.sequenced_message.dissect(buffer, index, packet, parent, seq_msg_type)

  return index
end

-- Dissect: Seq Msg
nyse_arca_options_binarygateway_pillar_v3_15.seq_msg.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_seq_msg = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.seq_msg then
    local range = buffer(offset, size_of_seq_msg)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.seq_msg.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.seq_msg, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.seq_msg.fields(buffer, offset, packet, parent, size_of_seq_msg)

  return offset + size_of_seq_msg
end

-- Status
nyse_arca_options_binarygateway_pillar_v3_15.status = {}

-- Size: Status
nyse_arca_options_binarygateway_pillar_v3_15.status.size = 1

-- Display: Status
nyse_arca_options_binarygateway_pillar_v3_15.status.display = function(value)
  if value == 0 then
    return "Status: Request Processed Successfully (0)"
  end
  if value == 18 then
    return "Status: Not Logged In (18)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_arca_options_binarygateway_pillar_v3_15.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.status, range, value, display)

  return offset + length, value
end

-- Close Response
nyse_arca_options_binarygateway_pillar_v3_15.close_response = {}

-- Read runtime size of: Close Response
nyse_arca_options_binarygateway_pillar_v3_15.close_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close Response
nyse_arca_options_binarygateway_pillar_v3_15.close_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close Response
nyse_arca_options_binarygateway_pillar_v3_15.close_response.fields = function(buffer, offset, packet, parent, size_of_close_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_arca_options_binarygateway_pillar_v3_15.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Response
nyse_arca_options_binarygateway_pillar_v3_15.close_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close_response = nyse_arca_options_binarygateway_pillar_v3_15.close_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close_response then
    local range = buffer(offset, size_of_close_response)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.close_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.close_response, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.close_response.fields(buffer, offset, packet, parent, size_of_close_response)

  return offset + size_of_close_response
end

-- Close
nyse_arca_options_binarygateway_pillar_v3_15.close = {}

-- Read runtime size of: Close
nyse_arca_options_binarygateway_pillar_v3_15.close.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close
nyse_arca_options_binarygateway_pillar_v3_15.close.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close
nyse_arca_options_binarygateway_pillar_v3_15.close.fields = function(buffer, offset, packet, parent, size_of_close)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close
nyse_arca_options_binarygateway_pillar_v3_15.close.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close = nyse_arca_options_binarygateway_pillar_v3_15.close.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close then
    local range = buffer(offset, size_of_close)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.close.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.close, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.close.fields(buffer, offset, packet, parent, size_of_close)

  return offset + size_of_close
end

-- Access
nyse_arca_options_binarygateway_pillar_v3_15.access = {}

-- Size: Access
nyse_arca_options_binarygateway_pillar_v3_15.access.size = 1

-- Display: Access
nyse_arca_options_binarygateway_pillar_v3_15.access.display = function(value)
  return "Access: "..value
end

-- Dissect: Access
nyse_arca_options_binarygateway_pillar_v3_15.access.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.access.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.access.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.access, range, value, display)

  return offset + length, value
end

-- Open Response
nyse_arca_options_binarygateway_pillar_v3_15.open_response = {}

-- Read runtime size of: Open Response
nyse_arca_options_binarygateway_pillar_v3_15.open_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open Response
nyse_arca_options_binarygateway_pillar_v3_15.open_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Response
nyse_arca_options_binarygateway_pillar_v3_15.open_response.fields = function(buffer, offset, packet, parent, size_of_open_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_arca_options_binarygateway_pillar_v3_15.status.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_arca_options_binarygateway_pillar_v3_15.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Response
nyse_arca_options_binarygateway_pillar_v3_15.open_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open_response = nyse_arca_options_binarygateway_pillar_v3_15.open_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open_response then
    local range = buffer(offset, size_of_open_response)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.open_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.open_response, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.open_response.fields(buffer, offset, packet, parent, size_of_open_response)

  return offset + size_of_open_response
end

-- Mode
nyse_arca_options_binarygateway_pillar_v3_15.mode = {}

-- Size: Mode
nyse_arca_options_binarygateway_pillar_v3_15.mode.size = 1

-- Display: Mode
nyse_arca_options_binarygateway_pillar_v3_15.mode.display = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
nyse_arca_options_binarygateway_pillar_v3_15.mode.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.mode, range, value, display)

  return offset + length, value
end

-- End Seq
nyse_arca_options_binarygateway_pillar_v3_15.end_seq = {}

-- Size: End Seq
nyse_arca_options_binarygateway_pillar_v3_15.end_seq.size = 8

-- Display: End Seq
nyse_arca_options_binarygateway_pillar_v3_15.end_seq.display = function(value)
  return "End Seq: "..value
end

-- Dissect: End Seq
nyse_arca_options_binarygateway_pillar_v3_15.end_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.end_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.end_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.end_seq, range, value, display)

  return offset + length, value
end

-- Start Seq
nyse_arca_options_binarygateway_pillar_v3_15.start_seq = {}

-- Size: Start Seq
nyse_arca_options_binarygateway_pillar_v3_15.start_seq.size = 8

-- Display: Start Seq
nyse_arca_options_binarygateway_pillar_v3_15.start_seq.display = function(value)
  return "Start Seq: "..value
end

-- Dissect: Start Seq
nyse_arca_options_binarygateway_pillar_v3_15.start_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.start_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.start_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.start_seq, range, value, display)

  return offset + length, value
end

-- Open
nyse_arca_options_binarygateway_pillar_v3_15.open = {}

-- Read runtime size of: Open
nyse_arca_options_binarygateway_pillar_v3_15.open.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open
nyse_arca_options_binarygateway_pillar_v3_15.open.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
nyse_arca_options_binarygateway_pillar_v3_15.open.fields = function(buffer, offset, packet, parent, size_of_open)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.dissect(buffer, index, packet, parent)

  -- Start Seq: 8 Byte Unsigned Fixed Width Integer
  index, start_seq = nyse_arca_options_binarygateway_pillar_v3_15.start_seq.dissect(buffer, index, packet, parent)

  -- End Seq: 8 Byte Unsigned Fixed Width Integer
  index, end_seq = nyse_arca_options_binarygateway_pillar_v3_15.end_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_arca_options_binarygateway_pillar_v3_15.access.dissect(buffer, index, packet, parent)

  -- Mode: 1 Byte Unsigned Fixed Width Integer
  index, mode = nyse_arca_options_binarygateway_pillar_v3_15.mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
nyse_arca_options_binarygateway_pillar_v3_15.open.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open = nyse_arca_options_binarygateway_pillar_v3_15.open.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open then
    local range = buffer(offset, size_of_open)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.open.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.open, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.open.fields(buffer, offset, packet, parent, size_of_open)

  return offset + size_of_open
end

-- Heartbeat
nyse_arca_options_binarygateway_pillar_v3_15.heartbeat = {}

-- Read runtime size of: Heartbeat
nyse_arca_options_binarygateway_pillar_v3_15.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat
nyse_arca_options_binarygateway_pillar_v3_15.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nyse_arca_options_binarygateway_pillar_v3_15.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nyse_arca_options_binarygateway_pillar_v3_15.heartbeat.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat = nyse_arca_options_binarygateway_pillar_v3_15.heartbeat.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.heartbeat.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.heartbeat, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Next Seq
nyse_arca_options_binarygateway_pillar_v3_15.next_seq = {}

-- Size: Next Seq
nyse_arca_options_binarygateway_pillar_v3_15.next_seq.size = 8

-- Display: Next Seq
nyse_arca_options_binarygateway_pillar_v3_15.next_seq.display = function(value)
  return "Next Seq: "..value
end

-- Dissect: Next Seq
nyse_arca_options_binarygateway_pillar_v3_15.next_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.next_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_binarygateway_pillar_v3_15.next_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.next_seq, range, value, display)

  return offset + length, value
end

-- Stream Avail
nyse_arca_options_binarygateway_pillar_v3_15.stream_avail = {}

-- Read runtime size of: Stream Avail
nyse_arca_options_binarygateway_pillar_v3_15.stream_avail.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Stream Avail
nyse_arca_options_binarygateway_pillar_v3_15.stream_avail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Avail
nyse_arca_options_binarygateway_pillar_v3_15.stream_avail.fields = function(buffer, offset, packet, parent, size_of_stream_avail)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arca_options_binarygateway_pillar_v3_15.stream_id.dissect(buffer, index, packet, parent)

  -- Next Seq: 8 Byte Unsigned Fixed Width Integer
  index, next_seq = nyse_arca_options_binarygateway_pillar_v3_15.next_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_arca_options_binarygateway_pillar_v3_15.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Avail
nyse_arca_options_binarygateway_pillar_v3_15.stream_avail.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_stream_avail = nyse_arca_options_binarygateway_pillar_v3_15.stream_avail.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.stream_avail then
    local range = buffer(offset, size_of_stream_avail)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.stream_avail.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.stream_avail, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)

  return offset + size_of_stream_avail
end

-- Login Response
nyse_arca_options_binarygateway_pillar_v3_15.login_response = {}

-- Read runtime size of: Login Response
nyse_arca_options_binarygateway_pillar_v3_15.login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Response
nyse_arca_options_binarygateway_pillar_v3_15.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
nyse_arca_options_binarygateway_pillar_v3_15.login_response.fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_arca_options_binarygateway_pillar_v3_15.username.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_arca_options_binarygateway_pillar_v3_15.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
nyse_arca_options_binarygateway_pillar_v3_15.login_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_response = nyse_arca_options_binarygateway_pillar_v3_15.login_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_response then
    local range = buffer(offset, size_of_login_response)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.login_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.login_response, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.login_response.fields(buffer, offset, packet, parent, size_of_login_response)

  return offset + size_of_login_response
end

-- Version
nyse_arca_options_binarygateway_pillar_v3_15.version = {}

-- Size: Version
nyse_arca_options_binarygateway_pillar_v3_15.version.size = 20

-- Display: Version
nyse_arca_options_binarygateway_pillar_v3_15.version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version: No Value"
  end

  return "Version: "..value
end

-- Dissect: Version
nyse_arca_options_binarygateway_pillar_v3_15.version.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.version.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.version, range, value, display)

  return offset + length, value
end

-- Password
nyse_arca_options_binarygateway_pillar_v3_15.password = {}

-- Size: Password
nyse_arca_options_binarygateway_pillar_v3_15.password.size = 32

-- Display: Password
nyse_arca_options_binarygateway_pillar_v3_15.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nyse_arca_options_binarygateway_pillar_v3_15.password.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_binarygateway_pillar_v3_15.password.size
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

  local display = nyse_arca_options_binarygateway_pillar_v3_15.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.password, range, value, display)

  return offset + length, value
end

-- Login Message
nyse_arca_options_binarygateway_pillar_v3_15.login_message = {}

-- Read runtime size of: Login Message
nyse_arca_options_binarygateway_pillar_v3_15.login_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Message
nyse_arca_options_binarygateway_pillar_v3_15.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_arca_options_binarygateway_pillar_v3_15.login_message.fields = function(buffer, offset, packet, parent, size_of_login_message)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arca_options_binarygateway_pillar_v3_15.msg_header.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_arca_options_binarygateway_pillar_v3_15.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = nyse_arca_options_binarygateway_pillar_v3_15.password.dissect(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String Enum with 6 values
  index, mic = nyse_arca_options_binarygateway_pillar_v3_15.mic.dissect(buffer, index, packet, parent)

  -- Version: 20 Byte Ascii String
  index, version = nyse_arca_options_binarygateway_pillar_v3_15.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_arca_options_binarygateway_pillar_v3_15.login_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_message = nyse_arca_options_binarygateway_pillar_v3_15.login_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_message then
    local range = buffer(offset, size_of_login_message)
    local display = nyse_arca_options_binarygateway_pillar_v3_15.login_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15.fields.login_message, range, display)
  end

  nyse_arca_options_binarygateway_pillar_v3_15.login_message.fields(buffer, offset, packet, parent, size_of_login_message)

  return offset + size_of_login_message
end

-- Pillar Stream Message
nyse_arca_options_binarygateway_pillar_v3_15.pillar_stream_message = {}

-- Dissect Pillar Stream Message
nyse_arca_options_binarygateway_pillar_v3_15.pillar_stream_message.dissect = function(buffer, packet, parent)
  local offset = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(0, 2):le_uint()

  -- Dissect Login Message
  if msg_type == 0x0201 then
    return nyse_arca_options_binarygateway_pillar_v3_15.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if msg_type == 0x0202 then
    return nyse_arca_options_binarygateway_pillar_v3_15.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Avail
  if msg_type == 0x0203 then
    return nyse_arca_options_binarygateway_pillar_v3_15.stream_avail.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_arca_options_binarygateway_pillar_v3_15.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open
  if msg_type == 0x0205 then
    return nyse_arca_options_binarygateway_pillar_v3_15.open.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Response
  if msg_type == 0x0206 then
    return nyse_arca_options_binarygateway_pillar_v3_15.open_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close
  if msg_type == 0x0207 then
    return nyse_arca_options_binarygateway_pillar_v3_15.close.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close Response
  if msg_type == 0x0208 then
    return nyse_arca_options_binarygateway_pillar_v3_15.close_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Seq Msg
  if msg_type == 0x0905 then
    return nyse_arca_options_binarygateway_pillar_v3_15.seq_msg.dissect(buffer, offset, packet, parent)
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arca_options_binarygateway_pillar_v3_15.init()
end

-- Dissector for Nyse Arca Options BinaryGateway Pillar 3.15
function omi_nyse_arca_options_binarygateway_pillar_v3_15.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_arca_options_binarygateway_pillar_v3_15.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_arca_options_binarygateway_pillar_v3_15, buffer(), omi_nyse_arca_options_binarygateway_pillar_v3_15.description, "("..buffer:len().." Bytes)")
  return nyse_arca_options_binarygateway_pillar_v3_15.pillar_stream_message.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nyse_arca_options_binarygateway_pillar_v3_15)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_arca_options_binarygateway_pillar_v3_15.pillar_stream_message.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Arca Options BinaryGateway Pillar 3.15
local function omi_nyse_arca_options_binarygateway_pillar_v3_15_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arca_options_binarygateway_pillar_v3_15.pillar_stream_message.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arca_options_binarygateway_pillar_v3_15
  omi_nyse_arca_options_binarygateway_pillar_v3_15.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Arca Options BinaryGateway Pillar 3.15
omi_nyse_arca_options_binarygateway_pillar_v3_15:register_heuristic("tcp", omi_nyse_arca_options_binarygateway_pillar_v3_15_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 3.15
--   Date: Monday, May 8, 2023
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
