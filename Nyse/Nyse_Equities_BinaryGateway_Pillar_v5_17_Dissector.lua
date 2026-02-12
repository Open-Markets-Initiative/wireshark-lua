-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities BinaryGateway Pillar 5.17 Protocol
local omi_nyse_equities_binarygateway_pillar_v5_17 = Proto("Nyse.Equities.BinaryGateway.Pillar.v5.17.Lua", "Nyse Equities BinaryGateway Pillar 5.17")

-- Protocol table
local nyse_equities_binarygateway_pillar_v5_17 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities BinaryGateway Pillar 5.17 Fields
omi_nyse_equities_binarygateway_pillar_v5_17.fields.access = ProtoField.new("Access", "nyse.equities.binarygateway.pillar.v5.17.access", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ack_status = ProtoField.new("Ack Status", "nyse.equities.binarygateway.pillar.v5.17.ackstatus", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ack_type = ProtoField.new("Ack Type", "nyse.equities.binarygateway.pillar.v5.17.acktype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.adv_risk_range_id = ProtoField.new("Adv Risk Range Id", "nyse.equities.binarygateway.pillar.v5.17.advriskrangeid", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.attributed_quote = ProtoField.new("Attributed Quote", "nyse.equities.binarygateway.pillar.v5.17.attributedquote", ftypes.UINT64, [0]="Not Attributed", [1]="Market Data Feeds", [2]="Broker Volume", [3]="Market Data Feeds And Broker Volume", base.DEC, 0x0000000000380000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.auction_type = ProtoField.new("Auction Type", "nyse.equities.binarygateway.pillar.v5.17.auctiontype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.bitfield_flow_indicator = ProtoField.new("Bitfield Flow Indicator", "nyse.equities.binarygateway.pillar.v5.17.bitfieldflowindicator", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.bitfield_order_instructions = ProtoField.new("Bitfield Order Instructions", "nyse.equities.binarygateway.pillar.v5.17.bitfieldorderinstructions", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.blocked_by_breach_indicator = ProtoField.new("Blocked By Breach Indicator", "nyse.equities.binarygateway.pillar.v5.17.blockedbybreachindicator", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.blocked_by_kill_switch_indicator = ProtoField.new("Blocked By Kill Switch Indicator", "nyse.equities.binarygateway.pillar.v5.17.blockedbykillswitchindicator", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.bold_designation = ProtoField.new("Bold Designation", "nyse.equities.binarygateway.pillar.v5.17.bolddesignation", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.book = ProtoField.new("Book", "nyse.equities.binarygateway.pillar.v5.17.book", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.breach_action_request = ProtoField.new("Breach Action Request", "nyse.equities.binarygateway.pillar.v5.17.breachactionrequest", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.breach_action_response = ProtoField.new("Breach Action Response", "nyse.equities.binarygateway.pillar.v5.17.breachactionresponse", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.bulk_cancel_type = ProtoField.new("Bulk Cancel Type", "nyse.equities.binarygateway.pillar.v5.17.bulkcanceltype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.buy_dmm_available_qty = ProtoField.new("Buy Dmm Available Qty", "nyse.equities.binarygateway.pillar.v5.17.buydmmavailableqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.cancel_instead_of_reprice = ProtoField.new("Cancel Instead Of Reprice", "nyse.equities.binarygateway.pillar.v5.17.cancelinsteadofreprice", ftypes.UINT64, [0]="Not Applicable", [1]="Cancel Instead Of Repricing Luld Only", [3]="Cancel Instead Of Repricing Any Reason", base.DEC, 0x0000000000000F00)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.cancel_on_disconnect = ProtoField.new("Cancel On Disconnect", "nyse.equities.binarygateway.pillar.v5.17.cancelondisconnect", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "nyse.equities.binarygateway.pillar.v5.17.clordid", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.clearing_number = ProtoField.new("Clearing Number", "nyse.equities.binarygateway.pillar.v5.17.clearingnumber", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.close_on_trade_max_qty = ProtoField.new("Close On Trade Max Qty", "nyse.equities.binarygateway.pillar.v5.17.closeontrademaxqty", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.count_calculation = ProtoField.new("Count Calculation", "nyse.equities.binarygateway.pillar.v5.17.countcalculation", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.count_limit = ProtoField.new("Count Limit", "nyse.equities.binarygateway.pillar.v5.17.countlimit", ftypes.INT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.cum_qty = ProtoField.new("Cum Qty", "nyse.equities.binarygateway.pillar.v5.17.cumqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.deal_id = ProtoField.new("Deal Id", "nyse.equities.binarygateway.pillar.v5.17.dealid", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.deliver_to_comp_id = ProtoField.new("Deliver To Comp Id", "nyse.equities.binarygateway.pillar.v5.17.delivertocompid", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.displayed_liquidity_indicator = ProtoField.new("Displayed Liquidity Indicator", "nyse.equities.binarygateway.pillar.v5.17.displayedliquidityindicator", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_allocated_qty = ProtoField.new("Dmm Allocated Qty", "nyse.equities.binarygateway.pillar.v5.17.dmmallocatedqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_available_qty = ProtoField.new("Dmm Available Qty", "nyse.equities.binarygateway.pillar.v5.17.dmmavailableqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_reject_reason = ProtoField.new("Dmm Reject Reason", "nyse.equities.binarygateway.pillar.v5.17.dmmrejectreason", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_requested_qty = ProtoField.new("Dmm Requested Qty", "nyse.equities.binarygateway.pillar.v5.17.dmmrequestedqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_unit_num = ProtoField.new("Dmm Unit Num", "nyse.equities.binarygateway.pillar.v5.17.dmmunitnum", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.effective_time = ProtoField.new("Effective Time", "nyse.equities.binarygateway.pillar.v5.17.effectivetime", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.end_seq = ProtoField.new("End Seq", "nyse.equities.binarygateway.pillar.v5.17.endseq", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.exec_inst = ProtoField.new("Exec Inst", "nyse.equities.binarygateway.pillar.v5.17.execinst", ftypes.UINT64, [0]="None", [1]="Reserved 1", [2]="Reserved 2", [3]="Tracking", [4]="Iso", [5]="Primary Peg", [6]="Market Peg", [7]="Midpoint", [8]="Non Displayed", [9]="Trade At Iso", [10]="Last Sale Peg", base.DEC, 0x0000000000F00000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.extended_exec_inst = ProtoField.new("Extended Exec Inst", "nyse.equities.binarygateway.pillar.v5.17.extendedexecinst", ftypes.UINT64, [0]="None", [1]="Alo", [3]="No Ioi Route", [5]="Retail Type 1", [6]="Retail Type 2", [7]="Retail Provider", [8]="Imbalance Offset", [9]="Discretionary Peg", [10]="Dark Primary Peg", [14]="Ido", base.DEC, 0x00000000000F0000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.equities.binarygateway.pillar.v5.17.imbalanceside", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nyse.equities.binarygateway.pillar.v5.17.imbalancevolume", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.interest_type = ProtoField.new("Interest Type", "nyse.equities.binarygateway.pillar.v5.17.interesttype", ftypes.UINT64, [0]="No Interest Type", [5]="Cco", [6]="Cco Partial Fill Contraside", base.DEC, 0x000000000E000000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.intraday_sell_short_qty = ProtoField.new("Intraday Sell Short Qty", "nyse.equities.binarygateway.pillar.v5.17.intradaysellshortqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.introducing_badge_id = ProtoField.new("Introducing Badge Id", "nyse.equities.binarygateway.pillar.v5.17.introducingbadgeid", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ioc_attribution = ProtoField.new("Ioc Attribution", "nyse.equities.binarygateway.pillar.v5.17.iocattribution", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.last_px = ProtoField.new("Last Px", "nyse.equities.binarygateway.pillar.v5.17.lastpx", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.last_qty = ProtoField.new("Last Qty", "nyse.equities.binarygateway.pillar.v5.17.lastqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.leaves_qty = ProtoField.new("Leaves Qty", "nyse.equities.binarygateway.pillar.v5.17.leavesqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "nyse.equities.binarygateway.pillar.v5.17.liquidityindicator", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.listed_mic = ProtoField.new("Listed Mic", "nyse.equities.binarygateway.pillar.v5.17.listedmic", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.lmocp = ProtoField.new("Lmocp", "nyse.equities.binarygateway.pillar.v5.17.lmocp", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.locate_broker = ProtoField.new("Locate Broker", "nyse.equities.binarygateway.pillar.v5.17.locatebroker", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.locate_reqd = ProtoField.new("Locate Reqd", "nyse.equities.binarygateway.pillar.v5.17.locatereqd", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000020000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.locate_reqd_u_81 = ProtoField.new("Locate Reqd U 81", "nyse.equities.binarygateway.pillar.v5.17.locatereqdu81", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.luldmpv = ProtoField.new("Luldmpv", "nyse.equities.binarygateway.pillar.v5.17.luldmpv", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_action_id = ProtoField.new("Manual Action Id", "nyse.equities.binarygateway.pillar.v5.17.manualactionid", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_action_type = ProtoField.new("Manual Action Type", "nyse.equities.binarygateway.pillar.v5.17.manualactiontype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_override = ProtoField.new("Manual Override", "nyse.equities.binarygateway.pillar.v5.17.manualoverride", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_override_reason = ProtoField.new("Manual Override Reason", "nyse.equities.binarygateway.pillar.v5.17.manualoverridereason", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_response_type = ProtoField.new("Manual Response Type", "nyse.equities.binarygateway.pillar.v5.17.manualresponsetype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.market_maker_char_1010 = ProtoField.new("Market Maker Char 1010", "nyse.equities.binarygateway.pillar.v5.17.marketmakerchar1010", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.market_maker_zchar_1010 = ProtoField.new("Market Maker Zchar 1010", "nyse.equities.binarygateway.pillar.v5.17.marketmakerzchar1010", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.max_floor = ProtoField.new("Max Floor", "nyse.equities.binarygateway.pillar.v5.17.maxfloor", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.max_order_quantity = ProtoField.new("Max Order Quantity", "nyse.equities.binarygateway.pillar.v5.17.maxorderquantity", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.median_volume = ProtoField.new("Median Volume", "nyse.equities.binarygateway.pillar.v5.17.medianvolume", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mic = ProtoField.new("Mic", "nyse.equities.binarygateway.pillar.v5.17.mic", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.min_qty = ProtoField.new("Min Qty", "nyse.equities.binarygateway.pillar.v5.17.minqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mmid = ProtoField.new("Mmid", "nyse.equities.binarygateway.pillar.v5.17.mmid", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mode = ProtoField.new("Mode", "nyse.equities.binarygateway.pillar.v5.17.mode", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mp_sub_id_char_1 = ProtoField.new("Mp Sub Id Char 1", "nyse.equities.binarygateway.pillar.v5.17.mpsubidchar1", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mp_sub_id_zchar_44 = ProtoField.new("Mp Sub Id Zchar 44", "nyse.equities.binarygateway.pillar.v5.17.mpsubidzchar44", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpid = ProtoField.new("Mpid", "nyse.equities.binarygateway.pillar.v5.17.mpid", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpid_status = ProtoField.new("Mpid Status", "nyse.equities.binarygateway.pillar.v5.17.mpidstatus", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpv_class_id = ProtoField.new("Mpv Class Id", "nyse.equities.binarygateway.pillar.v5.17.mpvclassid", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpv_class_name = ProtoField.new("Mpv Class Name", "nyse.equities.binarygateway.pillar.v5.17.mpvclassname", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpv_level_definition = ProtoField.new("Mpv Level Definition", "nyse.equities.binarygateway.pillar.v5.17.mpvleveldefinition", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpv_level_name = ProtoField.new("Mpv Level Name", "nyse.equities.binarygateway.pillar.v5.17.mpvlevelname", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.msg_header = ProtoField.new("Msg Header", "nyse.equities.binarygateway.pillar.v5.17.msgheader", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.msg_length = ProtoField.new("Msg Length", "nyse.equities.binarygateway.pillar.v5.17.msglength", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.msg_type = ProtoField.new("Msg Type", "nyse.equities.binarygateway.pillar.v5.17.msgtype", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.next_seq = ProtoField.new("Next Seq", "nyse.equities.binarygateway.pillar.v5.17.nextseq", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.nyse_symbol = ProtoField.new("Nyse Symbol", "nyse.equities.binarygateway.pillar.v5.17.nysesymbol", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.offset_price = ProtoField.new("Offset Price", "nyse.equities.binarygateway.pillar.v5.17.offsetprice", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.open_on_trade_max_qty = ProtoField.new("Open On Trade Max Qty", "nyse.equities.binarygateway.pillar.v5.17.openontrademaxqty", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.optional_order_add_on = ProtoField.new("Optional Order Add On", "nyse.equities.binarygateway.pillar.v5.17.optionalorderaddon", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.optional_settlement_type_add_on = ProtoField.new("Optional Settlement Type Add On", "nyse.equities.binarygateway.pillar.v5.17.optionalsettlementtypeaddon", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ord_type = ProtoField.new("Ord Type", "nyse.equities.binarygateway.pillar.v5.17.ordtype", ftypes.UINT64, [1]="Market", [2]="Limit", [3]="Inside Limit", [4]="Pegged", base.DEC, 0x000000000F000000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_capacity = ProtoField.new("Order Capacity", "nyse.equities.binarygateway.pillar.v5.17.ordercapacity", ftypes.UINT64, [1]="Agency", [2]="Principal", [3]="Riskless Principal", [4]="Error Account", base.DEC, 0x0000000001C00000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_id = ProtoField.new("Order Id", "nyse.equities.binarygateway.pillar.v5.17.orderid", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_priority_update_ack_subscription = ProtoField.new("Order Priority Update Ack Subscription", "nyse.equities.binarygateway.pillar.v5.17.orderpriorityupdateacksubscription", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_qty = ProtoField.new("Order Qty", "nyse.equities.binarygateway.pillar.v5.17.orderqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "nyse.equities.binarygateway.pillar.v5.17.origclordid", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.equities.binarygateway.pillar.v5.17.pairedqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.participant_type = ProtoField.new("Participant Type", "nyse.equities.binarygateway.pillar.v5.17.participanttype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.password = ProtoField.new("Password", "nyse.equities.binarygateway.pillar.v5.17.password", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.percentage_limit = ProtoField.new("Percentage Limit", "nyse.equities.binarygateway.pillar.v5.17.percentagelimit", ftypes.INT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.pillar_stream_message = ProtoField.new("Pillar Stream Message", "nyse.equities.binarygateway.pillar.v5.17.pillarstreammessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.post = ProtoField.new("Post", "nyse.equities.binarygateway.pillar.v5.17.post", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ppp_1 = ProtoField.new("Ppp 1", "nyse.equities.binarygateway.pillar.v5.17.ppp1", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ppp_2 = ProtoField.new("Ppp 2", "nyse.equities.binarygateway.pillar.v5.17.ppp2", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ppp_3 = ProtoField.new("Ppp 3", "nyse.equities.binarygateway.pillar.v5.17.ppp3", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.pre_liquidity_indicator = ProtoField.new("Pre Liquidity Indicator", "nyse.equities.binarygateway.pillar.v5.17.preliquidityindicator", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.price = ProtoField.new("Price", "nyse.equities.binarygateway.pillar.v5.17.price", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.price_scale = ProtoField.new("Price Scale", "nyse.equities.binarygateway.pillar.v5.17.pricescale", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.proactive_if_locked = ProtoField.new("Proactive If Locked", "nyse.equities.binarygateway.pillar.v5.17.proactiveiflocked", ftypes.UINT64, [0]="No Proactive If Locked", [1]="Proactive Route", [2]="Proactive Trade Non Display", base.DEC, 0x000000000000001C)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.quoting_mpv = ProtoField.new("Quoting Mpv", "nyse.equities.binarygateway.pillar.v5.17.quotingmpv", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.rd_seq = ProtoField.new("Rd Seq", "nyse.equities.binarygateway.pillar.v5.17.rdseq", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reason_code = ProtoField.new("Reason Code", "nyse.equities.binarygateway.pillar.v5.17.reasoncode", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ref_cl_ord_id = ProtoField.new("Ref Cl Ord Id", "nyse.equities.binarygateway.pillar.v5.17.refclordid", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ref_seq_msg_id = ProtoField.new("Ref Seq Msg Id", "nyse.equities.binarygateway.pillar.v5.17.refseqmsgid", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reinstatement_required_by_other = ProtoField.new("Reinstatement Required By Other", "nyse.equities.binarygateway.pillar.v5.17.reinstatementrequiredbyother", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reinstatement_required_by_self = ProtoField.new("Reinstatement Required By Self", "nyse.equities.binarygateway.pillar.v5.17.reinstatementrequiredbyself", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reject_type = ProtoField.new("Reject Type", "nyse.equities.binarygateway.pillar.v5.17.rejecttype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_100 = ProtoField.new("Reserved 100", "nyse.equities.binarygateway.pillar.v5.17.reserved100", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_12 = ProtoField.new("Reserved 12", "nyse.equities.binarygateway.pillar.v5.17.reserved12", ftypes.UINT64, nil, base.DEC, 0x0000000000000FFF)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_190 = ProtoField.new("Reserved 190", "nyse.equities.binarygateway.pillar.v5.17.reserved190", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_199 = ProtoField.new("Reserved 199", "nyse.equities.binarygateway.pillar.v5.17.reserved199", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_200 = ProtoField.new("Reserved 200", "nyse.equities.binarygateway.pillar.v5.17.reserved200", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.equities.binarygateway.pillar.v5.17.reserved4", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_49 = ProtoField.new("Reserved 49", "nyse.equities.binarygateway.pillar.v5.17.reserved49", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_50 = ProtoField.new("Reserved 50", "nyse.equities.binarygateway.pillar.v5.17.reserved50", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_7 = ProtoField.new("Reserved 7", "nyse.equities.binarygateway.pillar.v5.17.reserved7", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_8 = ProtoField.new("Reserved 8", "nyse.equities.binarygateway.pillar.v5.17.reserved8", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.retail_indicator = ProtoField.new("Retail Indicator", "nyse.equities.binarygateway.pillar.v5.17.retailindicator", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000040000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ridge_price = ProtoField.new("Ridge Price", "nyse.equities.binarygateway.pillar.v5.17.ridgeprice", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_ack_type = ProtoField.new("Risk Ack Type", "nyse.equities.binarygateway.pillar.v5.17.riskacktype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_action_type = ProtoField.new("Risk Action Type", "nyse.equities.binarygateway.pillar.v5.17.riskactiontype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_control_activation = ProtoField.new("Risk Control Activation", "nyse.equities.binarygateway.pillar.v5.17.riskcontrolactivation", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_control_type = ProtoField.new("Risk Control Type", "nyse.equities.binarygateway.pillar.v5.17.riskcontroltype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_minimum_value = ProtoField.new("Risk Minimum Value", "nyse.equities.binarygateway.pillar.v5.17.riskminimumvalue", ftypes.INT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_range_id = ProtoField.new("Risk Range Id", "nyse.equities.binarygateway.pillar.v5.17.riskrangeid", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_user_crd = ProtoField.new("Risk User Crd", "nyse.equities.binarygateway.pillar.v5.17.riskusercrd", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_user_type = ProtoField.new("Risk User Type", "nyse.equities.binarygateway.pillar.v5.17.riskusertype", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.round_lot_size = ProtoField.new("Round Lot Size", "nyse.equities.binarygateway.pillar.v5.17.roundlotsize", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.routing_inst = ProtoField.new("Routing Inst", "nyse.equities.binarygateway.pillar.v5.17.routinginst", ftypes.UINT64, [0]="None", [1]="Non Routable", [2]="Routable", [3]="Directed Primary", [4]="Directed Routable", [5]="Primary Until 0945", [6]="Primary After 1555", [7]="Primary Time Windows", [8]="Minimum Fill", [10]="Route To Ats", base.DEC, 0x000000000000F000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.rpimpv = ProtoField.new("Rpimpv", "nyse.equities.binarygateway.pillar.v5.17.rpimpv", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "nyse.equities.binarygateway.pillar.v5.17.selftradeprevention", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.self_trade_type = ProtoField.new("Self Trade Type", "nyse.equities.binarygateway.pillar.v5.17.selftradetype", ftypes.UINT64, [0]="Default Cancel Newest", [1]="No Self Trade Prevention", [2]="Cancel Newest", [3]="Cancel Oldest", [4]="Cancel Both", [5]="Cancel Decrement", base.DEC, 0x00000000000000E0)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.self_trade_type_u_81 = ProtoField.new("Self Trade Type U 81", "nyse.equities.binarygateway.pillar.v5.17.selftradetypeu81", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.sell_dmm_available_qty = ProtoField.new("Sell Dmm Available Qty", "nyse.equities.binarygateway.pillar.v5.17.selldmmavailableqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.sell_indicator = ProtoField.new("Sell Indicator", "nyse.equities.binarygateway.pillar.v5.17.sellindicator", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq = ProtoField.new("Seq", "nyse.equities.binarygateway.pillar.v5.17.seq", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg_header = ProtoField.new("Seq Msg Header", "nyse.equities.binarygateway.pillar.v5.17.seqmsgheader", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg_id = ProtoField.new("Seq Msg Id", "nyse.equities.binarygateway.pillar.v5.17.seqmsgid", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg_length = ProtoField.new("Seq Msg Length", "nyse.equities.binarygateway.pillar.v5.17.seqmsglength", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg_type = ProtoField.new("Seq Msg Type", "nyse.equities.binarygateway.pillar.v5.17.seqmsgtype", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.sequenced_message = ProtoField.new("Sequenced Message", "nyse.equities.binarygateway.pillar.v5.17.sequencedmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.sess = ProtoField.new("Sess", "nyse.equities.binarygateway.pillar.v5.17.sess", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.settlement_type = ProtoField.new("Settlement Type", "nyse.equities.binarygateway.pillar.v5.17.settlementtype", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.side_4 = ProtoField.new("Side 4", "nyse.equities.binarygateway.pillar.v5.17.side4", ftypes.UINT64, nil, base.DEC, 0x00000000F0000000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.side_of_unpaired_qty = ProtoField.new("Side Of Unpaired Qty", "nyse.equities.binarygateway.pillar.v5.17.sideofunpairedqty", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.side_u_81 = ProtoField.new("Side U 81", "nyse.equities.binarygateway.pillar.v5.17.sideu81", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.special_ord_type = ProtoField.new("Special Ord Type", "nyse.equities.binarygateway.pillar.v5.17.specialordtype", ftypes.UINT64, [0]="No Special Ord Type", [1]="Dmm Auction Aoc", [2]="Dmm Preauction", [3]="Dmm Afterauction", [4]="Qct", [8]="Reserved", base.DEC, 0x000000000001E000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.equities.binarygateway.pillar.v5.17.ssrfilingprice", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.start_seq = ProtoField.new("Start Seq", "nyse.equities.binarygateway.pillar.v5.17.startseq", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.status = ProtoField.new("Status", "nyse.equities.binarygateway.pillar.v5.17.status", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.stop_px = ProtoField.new("Stop Px", "nyse.equities.binarygateway.pillar.v5.17.stoppx", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.stream_id = ProtoField.new("Stream Id", "nyse.equities.binarygateway.pillar.v5.17.streamid", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.sub_id_indicator = ProtoField.new("Sub Id Indicator", "nyse.equities.binarygateway.pillar.v5.17.subidindicator", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000001000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.sub_msg_header = ProtoField.new("Sub Msg Header", "nyse.equities.binarygateway.pillar.v5.17.submsgheader", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.sub_msg_length = ProtoField.new("Sub Msg Length", "nyse.equities.binarygateway.pillar.v5.17.submsglength", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.sub_msg_type = ProtoField.new("Sub Msg Type", "nyse.equities.binarygateway.pillar.v5.17.submsgtype", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.subscription_status = ProtoField.new("Subscription Status", "nyse.equities.binarygateway.pillar.v5.17.subscriptionstatus", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.symbol_eligibility = ProtoField.new("Symbol Eligibility", "nyse.equities.binarygateway.pillar.v5.17.symboleligibility", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.symbol_id = ProtoField.new("Symbol Id", "nyse.equities.binarygateway.pillar.v5.17.symbolid", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.test_symbol_indicator = ProtoField.new("Test Symbol Indicator", "nyse.equities.binarygateway.pillar.v5.17.testsymbolindicator", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.threshold_breach_level = ProtoField.new("Threshold Breach Level", "nyse.equities.binarygateway.pillar.v5.17.thresholdbreachlevel", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.throttle_preference = ProtoField.new("Throttle Preference", "nyse.equities.binarygateway.pillar.v5.17.throttlepreference", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.throttle_threshold = ProtoField.new("Throttle Threshold", "nyse.equities.binarygateway.pillar.v5.17.throttlethreshold", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.throttle_window = ProtoField.new("Throttle Window", "nyse.equities.binarygateway.pillar.v5.17.throttlewindow", ftypes.UINT16)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.throttled = ProtoField.new("Throttled", "nyse.equities.binarygateway.pillar.v5.17.throttled", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x00000000000001)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.time_in_force = ProtoField.new("Time In Force", "nyse.equities.binarygateway.pillar.v5.17.timeinforce", ftypes.UINT64, [1]="Day", [2]="Ioc", [3]="At The Opening", [4]="On Close", base.DEC, 0x0000000080000000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.time_limit = ProtoField.new("Time Limit", "nyse.equities.binarygateway.pillar.v5.17.timelimit", ftypes.INT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.binarygateway.pillar.v5.17.timestamp", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.trading_mpv = ProtoField.new("Trading Mpv", "nyse.equities.binarygateway.pillar.v5.17.tradingmpv", ftypes.DOUBLE)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.trading_session_id = ProtoField.new("Trading Session Id", "nyse.equities.binarygateway.pillar.v5.17.tradingsessionid", ftypes.UINT64, [1]="Early Trading Session", [2]="Core Trading Session", [3]="Late Trading Session", [4]="Early And Core Trading Sessions", [5]="Core And Late Trading Sessions", [6]="Early Core And Late Trading Sessions", base.DEC, 0x0000000070000000)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.transact_time = ProtoField.new("Transact Time", "nyse.equities.binarygateway.pillar.v5.17.transacttime", ftypes.UINT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.unpaired_qty = ProtoField.new("Unpaired Qty", "nyse.equities.binarygateway.pillar.v5.17.unpairedqty", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_calculation_1 = ProtoField.new("Usd Calculation 1", "nyse.equities.binarygateway.pillar.v5.17.usdcalculation1", ftypes.INT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_calculation_2 = ProtoField.new("Usd Calculation 2", "nyse.equities.binarygateway.pillar.v5.17.usdcalculation2", ftypes.INT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_calculation_3 = ProtoField.new("Usd Calculation 3", "nyse.equities.binarygateway.pillar.v5.17.usdcalculation3", ftypes.INT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_calculation_4 = ProtoField.new("Usd Calculation 4", "nyse.equities.binarygateway.pillar.v5.17.usdcalculation4", ftypes.INT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_limit = ProtoField.new("Usd Limit", "nyse.equities.binarygateway.pillar.v5.17.usdlimit", ftypes.INT64)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.user = ProtoField.new("User", "nyse.equities.binarygateway.pillar.v5.17.user", ftypes.UINT32)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.user_data = ProtoField.new("User Data", "nyse.equities.binarygateway.pillar.v5.17.userdata", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.user_session_status = ProtoField.new("User Session Status", "nyse.equities.binarygateway.pillar.v5.17.usersessionstatus", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.user_session_type = ProtoField.new("User Session Type", "nyse.equities.binarygateway.pillar.v5.17.usersessiontype", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.username = ProtoField.new("Username", "nyse.equities.binarygateway.pillar.v5.17.username", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.version = ProtoField.new("Version", "nyse.equities.binarygateway.pillar.v5.17.version", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.working_away_from_display = ProtoField.new("Working Away From Display", "nyse.equities.binarygateway.pillar.v5.17.workingawayfromdisplay", ftypes.UINT8)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.working_price = ProtoField.new("Working Price", "nyse.equities.binarygateway.pillar.v5.17.workingprice", ftypes.DOUBLE)

-- Nyse Equities Pillar BinaryGateway 5.17 Application Messages
omi_nyse_equities_binarygateway_pillar_v5_17.fields.application_layer_reject_message = ProtoField.new("Application Layer Reject Message", "nyse.equities.binarygateway.pillar.v5.17.applicationlayerrejectmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.auction_price_data_message = ProtoField.new("Auction Price Data Message", "nyse.equities.binarygateway.pillar.v5.17.auctionpricedatamessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.auction_request_message = ProtoField.new("Auction Request Message", "nyse.equities.binarygateway.pillar.v5.17.auctionrequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.bulk_cancel_request_message = ProtoField.new("Bulk Cancel Request Message", "nyse.equities.binarygateway.pillar.v5.17.bulkcancelrequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_symbol_reference_data_message = ProtoField.new("Dmm Symbol Reference Data Message", "nyse.equities.binarygateway.pillar.v5.17.dmmsymbolreferencedatamessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.equities_symbol_reference_data_message = ProtoField.new("Equities Symbol Reference Data Message", "nyse.equities.binarygateway.pillar.v5.17.equitiessymbolreferencedatamessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.execution_report_message = ProtoField.new("Execution Report Message", "nyse.equities.binarygateway.pillar.v5.17.executionreportmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.gt_begin_message = ProtoField.new("Gt Begin Message", "nyse.equities.binarygateway.pillar.v5.17.gtbeginmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.gt_end_message = ProtoField.new("Gt End Message", "nyse.equities.binarygateway.pillar.v5.17.gtendmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_action_request_message = ProtoField.new("Manual Action Request Message", "nyse.equities.binarygateway.pillar.v5.17.manualactionrequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_action_response_message = ProtoField.new("Manual Action Response Message", "nyse.equities.binarygateway.pillar.v5.17.manualactionresponsemessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.minimum_price_variant_class_reference_data_message = ProtoField.new("Minimum Price Variant Class Reference Data Message", "nyse.equities.binarygateway.pillar.v5.17.minimumpricevariantclassreferencedatamessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.minimum_price_variant_level_reference_data_message = ProtoField.new("Minimum Price Variant Level Reference Data Message", "nyse.equities.binarygateway.pillar.v5.17.minimumpricevariantlevelreferencedatamessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mmid_configuration_message = ProtoField.new("Mmid Configuration Message", "nyse.equities.binarygateway.pillar.v5.17.mmidconfigurationmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpid_configuration_message = ProtoField.new("Mpid Configuration Message", "nyse.equities.binarygateway.pillar.v5.17.mpidconfigurationmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.new_order_single_and_cancel_replace_request_message = ProtoField.new("New Order Single And Cancel Replace Request Message", "nyse.equities.binarygateway.pillar.v5.17.newordersingleandcancelreplacerequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_and_cancel_replace_acknowledgement_message = ProtoField.new("Order And Cancel Replace Acknowledgement Message", "nyse.equities.binarygateway.pillar.v5.17.orderandcancelreplaceacknowledgementmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "nyse.equities.binarygateway.pillar.v5.17.ordercancelrequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_modify_cancel_request_acknowledgment_and_urout_message = ProtoField.new("Order Modify Cancel Request Acknowledgment And Urout Message", "nyse.equities.binarygateway.pillar.v5.17.ordermodifycancelrequestacknowledgmentanduroutmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_modify_request_message = ProtoField.new("Order Modify Request Message", "nyse.equities.binarygateway.pillar.v5.17.ordermodifyrequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_priority_update_acknowledgment_message = ProtoField.new("Order Priority Update Acknowledgment Message", "nyse.equities.binarygateway.pillar.v5.17.orderpriorityupdateacknowledgmentmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_action_request_message = ProtoField.new("Risk Action Request Message", "nyse.equities.binarygateway.pillar.v5.17.riskactionrequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_control_acknowledgement_message = ProtoField.new("Risk Control Acknowledgement Message", "nyse.equities.binarygateway.pillar.v5.17.riskcontrolacknowledgementmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_control_alert_message = ProtoField.new("Risk Control Alert Message", "nyse.equities.binarygateway.pillar.v5.17.riskcontrolalertmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_limit_update_request_message = ProtoField.new("Risk Limit Update Request Message", "nyse.equities.binarygateway.pillar.v5.17.risklimitupdaterequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.session_configuration_acknowledgement_message = ProtoField.new("Session Configuration Acknowledgement Message", "nyse.equities.binarygateway.pillar.v5.17.sessionconfigurationacknowledgementmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.session_configuration_request_message = ProtoField.new("Session Configuration Request Message", "nyse.equities.binarygateway.pillar.v5.17.sessionconfigurationrequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.symbol_subscription_acknowledgement_message = ProtoField.new("Symbol Subscription Acknowledgement Message", "nyse.equities.binarygateway.pillar.v5.17.symbolsubscriptionacknowledgementmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.symbol_subscription_request_message = ProtoField.new("Symbol Subscription Request Message", "nyse.equities.binarygateway.pillar.v5.17.symbolsubscriptionrequestmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.trade_bust_correct_message = ProtoField.new("Trade Bust Correct Message", "nyse.equities.binarygateway.pillar.v5.17.tradebustcorrectmessage", ftypes.STRING)

-- Nyse Equities Pillar BinaryGateway 5.17 Session Messages
omi_nyse_equities_binarygateway_pillar_v5_17.fields.close = ProtoField.new("Close", "nyse.equities.binarygateway.pillar.v5.17.close", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.close_response = ProtoField.new("Close Response", "nyse.equities.binarygateway.pillar.v5.17.closeresponse", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.equities.binarygateway.pillar.v5.17.heartbeat", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.login_message = ProtoField.new("Login Message", "nyse.equities.binarygateway.pillar.v5.17.loginmessage", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.login_response = ProtoField.new("Login Response", "nyse.equities.binarygateway.pillar.v5.17.loginresponse", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.open = ProtoField.new("Open", "nyse.equities.binarygateway.pillar.v5.17.open", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.open_response = ProtoField.new("Open Response", "nyse.equities.binarygateway.pillar.v5.17.openresponse", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg = ProtoField.new("Seq Msg", "nyse.equities.binarygateway.pillar.v5.17.seqmsg", ftypes.STRING)
omi_nyse_equities_binarygateway_pillar_v5_17.fields.stream_avail = ProtoField.new("Stream Avail", "nyse.equities.binarygateway.pillar.v5.17.streamavail", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Equities BinaryGateway Pillar 5.17 Element Dissection Options
show.application_layer_reject_message = true
show.auction_price_data_message = true
show.auction_request_message = true
show.bitfield_flow_indicator = true
show.bitfield_order_instructions = true
show.bulk_cancel_request_message = true
show.close = true
show.close_response = true
show.dmm_symbol_reference_data_message = true
show.equities_symbol_reference_data_message = true
show.execution_report_message = true
show.gt_begin_message = true
show.gt_end_message = true
show.heartbeat = true
show.login_message = true
show.login_response = true
show.manual_action_id = true
show.manual_action_request_message = true
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
show.order_modify_cancel_request_acknowledgment_and_urout_message = true
show.order_modify_request_message = true
show.order_priority_update_acknowledgment_message = true
show.ref_seq_msg_id = true
show.risk_action_request_message = true
show.risk_control_acknowledgement_message = true
show.risk_control_alert_message = true
show.risk_limit_update_request_message = true
show.seq_msg = true
show.seq_msg_header = true
show.seq_msg_id = true
show.session_configuration_acknowledgement_message = true
show.session_configuration_request_message = true
show.stream_avail = true
show.stream_id = true
show.sub_msg_header = true
show.symbol_subscription_acknowledgement_message = true
show.symbol_subscription_request_message = true
show.trade_bust_correct_message = true
show.pillar_stream_message = false
show.sequenced_message = false

-- Register Nyse Equities BinaryGateway Pillar 5.17 Show Options
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_application_layer_reject_message = Pref.bool("Show Application Layer Reject Message", show.application_layer_reject_message, "Parse and add Application Layer Reject Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_auction_price_data_message = Pref.bool("Show Auction Price Data Message", show.auction_price_data_message, "Parse and add Auction Price Data Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_auction_request_message = Pref.bool("Show Auction Request Message", show.auction_request_message, "Parse and add Auction Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bitfield_flow_indicator = Pref.bool("Show Bitfield Flow Indicator", show.bitfield_flow_indicator, "Parse and add Bitfield Flow Indicator to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bitfield_order_instructions = Pref.bool("Show Bitfield Order Instructions", show.bitfield_order_instructions, "Parse and add Bitfield Order Instructions to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bulk_cancel_request_message = Pref.bool("Show Bulk Cancel Request Message", show.bulk_cancel_request_message, "Parse and add Bulk Cancel Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_close = Pref.bool("Show Close", show.close, "Parse and add Close to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_close_response = Pref.bool("Show Close Response", show.close_response, "Parse and add Close Response to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_dmm_symbol_reference_data_message = Pref.bool("Show Dmm Symbol Reference Data Message", show.dmm_symbol_reference_data_message, "Parse and add Dmm Symbol Reference Data Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_equities_symbol_reference_data_message = Pref.bool("Show Equities Symbol Reference Data Message", show.equities_symbol_reference_data_message, "Parse and add Equities Symbol Reference Data Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_execution_report_message = Pref.bool("Show Execution Report Message", show.execution_report_message, "Parse and add Execution Report Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_gt_begin_message = Pref.bool("Show Gt Begin Message", show.gt_begin_message, "Parse and add Gt Begin Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_gt_end_message = Pref.bool("Show Gt End Message", show.gt_end_message, "Parse and add Gt End Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_login_message = Pref.bool("Show Login Message", show.login_message, "Parse and add Login Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_id = Pref.bool("Show Manual Action Id", show.manual_action_id, "Parse and add Manual Action Id to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_request_message = Pref.bool("Show Manual Action Request Message", show.manual_action_request_message, "Parse and add Manual Action Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_response_message = Pref.bool("Show Manual Action Response Message", show.manual_action_response_message, "Parse and add Manual Action Response Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_minimum_price_variant_class_reference_data_message = Pref.bool("Show Minimum Price Variant Class Reference Data Message", show.minimum_price_variant_class_reference_data_message, "Parse and add Minimum Price Variant Class Reference Data Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_minimum_price_variant_level_reference_data_message = Pref.bool("Show Minimum Price Variant Level Reference Data Message", show.minimum_price_variant_level_reference_data_message, "Parse and add Minimum Price Variant Level Reference Data Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mmid_configuration_message = Pref.bool("Show Mmid Configuration Message", show.mmid_configuration_message, "Parse and add Mmid Configuration Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mpid_configuration_message = Pref.bool("Show Mpid Configuration Message", show.mpid_configuration_message, "Parse and add Mpid Configuration Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mpv_level_definition = Pref.bool("Show Mpv Level Definition", show.mpv_level_definition, "Parse and add Mpv Level Definition to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_new_order_single_and_cancel_replace_request_message = Pref.bool("Show New Order Single And Cancel Replace Request Message", show.new_order_single_and_cancel_replace_request_message, "Parse and add New Order Single And Cancel Replace Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_open = Pref.bool("Show Open", show.open, "Parse and add Open to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_open_response = Pref.bool("Show Open Response", show.open_response, "Parse and add Open Response to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_optional_order_add_on = Pref.bool("Show Optional Order Add On", show.optional_order_add_on, "Parse and add Optional Order Add On to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_optional_settlement_type_add_on = Pref.bool("Show Optional Settlement Type Add On", show.optional_settlement_type_add_on, "Parse and add Optional Settlement Type Add On to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_and_cancel_replace_acknowledgement_message = Pref.bool("Show Order And Cancel Replace Acknowledgement Message", show.order_and_cancel_replace_acknowledgement_message, "Parse and add Order And Cancel Replace Acknowledgement Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_modify_cancel_request_acknowledgment_and_urout_message = Pref.bool("Show Order Modify Cancel Request Acknowledgment And Urout Message", show.order_modify_cancel_request_acknowledgment_and_urout_message, "Parse and add Order Modify Cancel Request Acknowledgment And Urout Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_modify_request_message = Pref.bool("Show Order Modify Request Message", show.order_modify_request_message, "Parse and add Order Modify Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_priority_update_acknowledgment_message = Pref.bool("Show Order Priority Update Acknowledgment Message", show.order_priority_update_acknowledgment_message, "Parse and add Order Priority Update Acknowledgment Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_ref_seq_msg_id = Pref.bool("Show Ref Seq Msg Id", show.ref_seq_msg_id, "Parse and add Ref Seq Msg Id to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_action_request_message = Pref.bool("Show Risk Action Request Message", show.risk_action_request_message, "Parse and add Risk Action Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_control_acknowledgement_message = Pref.bool("Show Risk Control Acknowledgement Message", show.risk_control_acknowledgement_message, "Parse and add Risk Control Acknowledgement Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_control_alert_message = Pref.bool("Show Risk Control Alert Message", show.risk_control_alert_message, "Parse and add Risk Control Alert Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_limit_update_request_message = Pref.bool("Show Risk Limit Update Request Message", show.risk_limit_update_request_message, "Parse and add Risk Limit Update Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg = Pref.bool("Show Seq Msg", show.seq_msg, "Parse and add Seq Msg to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg_header = Pref.bool("Show Seq Msg Header", show.seq_msg_header, "Parse and add Seq Msg Header to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg_id = Pref.bool("Show Seq Msg Id", show.seq_msg_id, "Parse and add Seq Msg Id to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_session_configuration_acknowledgement_message = Pref.bool("Show Session Configuration Acknowledgement Message", show.session_configuration_acknowledgement_message, "Parse and add Session Configuration Acknowledgement Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_session_configuration_request_message = Pref.bool("Show Session Configuration Request Message", show.session_configuration_request_message, "Parse and add Session Configuration Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_stream_avail = Pref.bool("Show Stream Avail", show.stream_avail, "Parse and add Stream Avail to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_stream_id = Pref.bool("Show Stream Id", show.stream_id, "Parse and add Stream Id to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_sub_msg_header = Pref.bool("Show Sub Msg Header", show.sub_msg_header, "Parse and add Sub Msg Header to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_symbol_subscription_acknowledgement_message = Pref.bool("Show Symbol Subscription Acknowledgement Message", show.symbol_subscription_acknowledgement_message, "Parse and add Symbol Subscription Acknowledgement Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_symbol_subscription_request_message = Pref.bool("Show Symbol Subscription Request Message", show.symbol_subscription_request_message, "Parse and add Symbol Subscription Request Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_trade_bust_correct_message = Pref.bool("Show Trade Bust Correct Message", show.trade_bust_correct_message, "Parse and add Trade Bust Correct Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_pillar_stream_message = Pref.bool("Show Pillar Stream Message", show.pillar_stream_message, "Parse and add Pillar Stream Message to protocol tree")
omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")

-- Handle changed preferences
function omi_nyse_equities_binarygateway_pillar_v5_17.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_layer_reject_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_application_layer_reject_message then
    show.application_layer_reject_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_application_layer_reject_message
    changed = true
  end
  if show.auction_price_data_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_auction_price_data_message then
    show.auction_price_data_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_auction_price_data_message
    changed = true
  end
  if show.auction_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_auction_request_message then
    show.auction_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_auction_request_message
    changed = true
  end
  if show.bitfield_flow_indicator ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bitfield_flow_indicator then
    show.bitfield_flow_indicator = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bitfield_flow_indicator
    changed = true
  end
  if show.bitfield_order_instructions ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bitfield_order_instructions then
    show.bitfield_order_instructions = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bitfield_order_instructions
    changed = true
  end
  if show.bulk_cancel_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bulk_cancel_request_message then
    show.bulk_cancel_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_bulk_cancel_request_message
    changed = true
  end
  if show.close ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_close then
    show.close = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_close
    changed = true
  end
  if show.close_response ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_close_response then
    show.close_response = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_close_response
    changed = true
  end
  if show.dmm_symbol_reference_data_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_dmm_symbol_reference_data_message then
    show.dmm_symbol_reference_data_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_dmm_symbol_reference_data_message
    changed = true
  end
  if show.equities_symbol_reference_data_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_equities_symbol_reference_data_message then
    show.equities_symbol_reference_data_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_equities_symbol_reference_data_message
    changed = true
  end
  if show.execution_report_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_execution_report_message then
    show.execution_report_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_execution_report_message
    changed = true
  end
  if show.gt_begin_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_gt_begin_message then
    show.gt_begin_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_gt_begin_message
    changed = true
  end
  if show.gt_end_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_gt_end_message then
    show.gt_end_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_gt_end_message
    changed = true
  end
  if show.heartbeat ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_heartbeat then
    show.heartbeat = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_heartbeat
    changed = true
  end
  if show.login_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_login_message then
    show.login_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_login_message
    changed = true
  end
  if show.login_response ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_login_response then
    show.login_response = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_login_response
    changed = true
  end
  if show.manual_action_id ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_id then
    show.manual_action_id = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_id
    changed = true
  end
  if show.manual_action_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_request_message then
    show.manual_action_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_request_message
    changed = true
  end
  if show.manual_action_response_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_response_message then
    show.manual_action_response_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_manual_action_response_message
    changed = true
  end
  if show.minimum_price_variant_class_reference_data_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_minimum_price_variant_class_reference_data_message then
    show.minimum_price_variant_class_reference_data_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_minimum_price_variant_class_reference_data_message
    changed = true
  end
  if show.minimum_price_variant_level_reference_data_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_minimum_price_variant_level_reference_data_message then
    show.minimum_price_variant_level_reference_data_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_minimum_price_variant_level_reference_data_message
    changed = true
  end
  if show.mmid_configuration_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mmid_configuration_message then
    show.mmid_configuration_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mmid_configuration_message
    changed = true
  end
  if show.mpid_configuration_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mpid_configuration_message then
    show.mpid_configuration_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mpid_configuration_message
    changed = true
  end
  if show.mpv_level_definition ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mpv_level_definition then
    show.mpv_level_definition = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_mpv_level_definition
    changed = true
  end
  if show.msg_header ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_msg_header then
    show.msg_header = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_msg_header
    changed = true
  end
  if show.new_order_single_and_cancel_replace_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_new_order_single_and_cancel_replace_request_message then
    show.new_order_single_and_cancel_replace_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_new_order_single_and_cancel_replace_request_message
    changed = true
  end
  if show.open ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_open then
    show.open = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_open
    changed = true
  end
  if show.open_response ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_open_response then
    show.open_response = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_open_response
    changed = true
  end
  if show.optional_order_add_on ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_optional_order_add_on then
    show.optional_order_add_on = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_optional_order_add_on
    changed = true
  end
  if show.optional_settlement_type_add_on ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_optional_settlement_type_add_on then
    show.optional_settlement_type_add_on = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_optional_settlement_type_add_on
    changed = true
  end
  if show.order_and_cancel_replace_acknowledgement_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_and_cancel_replace_acknowledgement_message then
    show.order_and_cancel_replace_acknowledgement_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_and_cancel_replace_acknowledgement_message
    changed = true
  end
  if show.order_cancel_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.order_modify_cancel_request_acknowledgment_and_urout_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_modify_cancel_request_acknowledgment_and_urout_message then
    show.order_modify_cancel_request_acknowledgment_and_urout_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_modify_cancel_request_acknowledgment_and_urout_message
    changed = true
  end
  if show.order_modify_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_modify_request_message then
    show.order_modify_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_modify_request_message
    changed = true
  end
  if show.order_priority_update_acknowledgment_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_priority_update_acknowledgment_message then
    show.order_priority_update_acknowledgment_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_order_priority_update_acknowledgment_message
    changed = true
  end
  if show.ref_seq_msg_id ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_ref_seq_msg_id then
    show.ref_seq_msg_id = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_ref_seq_msg_id
    changed = true
  end
  if show.risk_action_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_action_request_message then
    show.risk_action_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_action_request_message
    changed = true
  end
  if show.risk_control_acknowledgement_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_control_acknowledgement_message then
    show.risk_control_acknowledgement_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_control_acknowledgement_message
    changed = true
  end
  if show.risk_control_alert_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_control_alert_message then
    show.risk_control_alert_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_control_alert_message
    changed = true
  end
  if show.risk_limit_update_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_limit_update_request_message then
    show.risk_limit_update_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_risk_limit_update_request_message
    changed = true
  end
  if show.seq_msg ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg then
    show.seq_msg = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg
    changed = true
  end
  if show.seq_msg_header ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg_header then
    show.seq_msg_header = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg_header
    changed = true
  end
  if show.seq_msg_id ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg_id then
    show.seq_msg_id = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_seq_msg_id
    changed = true
  end
  if show.session_configuration_acknowledgement_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_session_configuration_acknowledgement_message then
    show.session_configuration_acknowledgement_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_session_configuration_acknowledgement_message
    changed = true
  end
  if show.session_configuration_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_session_configuration_request_message then
    show.session_configuration_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_session_configuration_request_message
    changed = true
  end
  if show.stream_avail ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_stream_avail then
    show.stream_avail = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_stream_avail
    changed = true
  end
  if show.stream_id ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_stream_id then
    show.stream_id = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_stream_id
    changed = true
  end
  if show.sub_msg_header ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_sub_msg_header then
    show.sub_msg_header = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_sub_msg_header
    changed = true
  end
  if show.symbol_subscription_acknowledgement_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_symbol_subscription_acknowledgement_message then
    show.symbol_subscription_acknowledgement_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_symbol_subscription_acknowledgement_message
    changed = true
  end
  if show.symbol_subscription_request_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_symbol_subscription_request_message then
    show.symbol_subscription_request_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_symbol_subscription_request_message
    changed = true
  end
  if show.trade_bust_correct_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_trade_bust_correct_message then
    show.trade_bust_correct_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_trade_bust_correct_message
    changed = true
  end
  if show.pillar_stream_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_pillar_stream_message then
    show.pillar_stream_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_pillar_stream_message
    changed = true
  end
  if show.sequenced_message ~= omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_sequenced_message then
    show.sequenced_message = omi_nyse_equities_binarygateway_pillar_v5_17.prefs.show_sequenced_message
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
-- Dissect Nyse Equities BinaryGateway Pillar 5.17
-----------------------------------------------------------------------

-- Reserved 200
nyse_equities_binarygateway_pillar_v5_17.reserved_200 = {}

-- Size: Reserved 200
nyse_equities_binarygateway_pillar_v5_17.reserved_200.size = 200

-- Display: Reserved 200
nyse_equities_binarygateway_pillar_v5_17.reserved_200.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved 200: No Value"
  end

  return "Reserved 200: "..value
end

-- Dissect: Reserved 200
nyse_equities_binarygateway_pillar_v5_17.reserved_200.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_200.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_200.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_200, range, value, display)

  return offset + length, value
end

-- Reinstatement Required By Other
nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_other = {}

-- Size: Reinstatement Required By Other
nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_other.size = 1

-- Display: Reinstatement Required By Other
nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_other.display = function(value)
  if value == 0 then
    return "Reinstatement Required By Other: Not Required (0)"
  end
  if value == 1 then
    return "Reinstatement Required By Other: Required (1)"
  end

  return "Reinstatement Required By Other: Unknown("..value..")"
end

-- Dissect: Reinstatement Required By Other
nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_other.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_other.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_other.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reinstatement_required_by_other, range, value, display)

  return offset + length, value
end

-- Reinstatement Required By Self
nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_self = {}

-- Size: Reinstatement Required By Self
nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_self.size = 1

-- Display: Reinstatement Required By Self
nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_self.display = function(value)
  if value == 0 then
    return "Reinstatement Required By Self: Not Required (0)"
  end
  if value == 1 then
    return "Reinstatement Required By Self: Required (1)"
  end

  return "Reinstatement Required By Self: Unknown("..value..")"
end

-- Dissect: Reinstatement Required By Self
nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_self.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_self.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_self.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reinstatement_required_by_self, range, value, display)

  return offset + length, value
end

-- Blocked By Kill Switch Indicator
nyse_equities_binarygateway_pillar_v5_17.blocked_by_kill_switch_indicator = {}

-- Size: Blocked By Kill Switch Indicator
nyse_equities_binarygateway_pillar_v5_17.blocked_by_kill_switch_indicator.size = 1

-- Display: Blocked By Kill Switch Indicator
nyse_equities_binarygateway_pillar_v5_17.blocked_by_kill_switch_indicator.display = function(value)
  if value == 0 then
    return "Blocked By Kill Switch Indicator: Not Blocked (0)"
  end
  if value == 1 then
    return "Blocked By Kill Switch Indicator: Blocked (1)"
  end

  return "Blocked By Kill Switch Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Kill Switch Indicator
nyse_equities_binarygateway_pillar_v5_17.blocked_by_kill_switch_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.blocked_by_kill_switch_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.blocked_by_kill_switch_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.blocked_by_kill_switch_indicator, range, value, display)

  return offset + length, value
end

-- Blocked By Breach Indicator
nyse_equities_binarygateway_pillar_v5_17.blocked_by_breach_indicator = {}

-- Size: Blocked By Breach Indicator
nyse_equities_binarygateway_pillar_v5_17.blocked_by_breach_indicator.size = 1

-- Display: Blocked By Breach Indicator
nyse_equities_binarygateway_pillar_v5_17.blocked_by_breach_indicator.display = function(value)
  if value == 0 then
    return "Blocked By Breach Indicator: Not Blocked (0)"
  end
  if value == 1 then
    return "Blocked By Breach Indicator: Blocked By Breach (1)"
  end
  if value == 2 then
    return "Blocked By Breach Indicator: Blocked By Arb Check (2)"
  end
  if value == 3 then
    return "Blocked By Breach Indicator: Blocked By Intrinsic (3)"
  end

  return "Blocked By Breach Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Breach Indicator
nyse_equities_binarygateway_pillar_v5_17.blocked_by_breach_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.blocked_by_breach_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.blocked_by_breach_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.blocked_by_breach_indicator, range, value, display)

  return offset + length, value
end

-- Threshold Breach Level
nyse_equities_binarygateway_pillar_v5_17.threshold_breach_level = {}

-- Size: Threshold Breach Level
nyse_equities_binarygateway_pillar_v5_17.threshold_breach_level.size = 1

-- Display: Threshold Breach Level
nyse_equities_binarygateway_pillar_v5_17.threshold_breach_level.display = function(value)
  if value == 0 then
    return "Threshold Breach Level: Not Applicable (0)"
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
nyse_equities_binarygateway_pillar_v5_17.threshold_breach_level.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.threshold_breach_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.threshold_breach_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.threshold_breach_level, range, value, display)

  return offset + length, value
end

-- Risk Action Type
nyse_equities_binarygateway_pillar_v5_17.risk_action_type = {}

-- Size: Risk Action Type
nyse_equities_binarygateway_pillar_v5_17.risk_action_type.size = 1

-- Display: Risk Action Type
nyse_equities_binarygateway_pillar_v5_17.risk_action_type.display = function(value)
  if value == 0 then
    return "Risk Action Type: Not Applicable (0)"
  end
  if value == 1 then
    return "Risk Action Type: Query Risk Entity (1)"
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
  if value == 9 then
    return "Risk Action Type: Add Symbol Level Risk Entity (9)"
  end
  if value == 10 then
    return "Risk Action Type: Remove Symbol Level Risk Entity (10)"
  end

  return "Risk Action Type: Unknown("..value..")"
end

-- Dissect: Risk Action Type
nyse_equities_binarygateway_pillar_v5_17.risk_action_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.risk_action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.risk_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_action_type, range, value, display)

  return offset + length, value
end

-- Count Calculation
nyse_equities_binarygateway_pillar_v5_17.count_calculation = {}

-- Size: Count Calculation
nyse_equities_binarygateway_pillar_v5_17.count_calculation.size = 4

-- Display: Count Calculation
nyse_equities_binarygateway_pillar_v5_17.count_calculation.display = function(value)
  return "Count Calculation: "..value
end

-- Dissect: Count Calculation
nyse_equities_binarygateway_pillar_v5_17.count_calculation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.count_calculation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.count_calculation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.count_calculation, range, value, display)

  return offset + length, value
end

-- Usd Calculation 4
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_4 = {}

-- Size: Usd Calculation 4
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_4.size = 8

-- Display: Usd Calculation 4
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_4.display = function(value)
  return "Usd Calculation 4: "..value
end

-- Dissect: Usd Calculation 4
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_4.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_calculation_4, range, value, display)

  return offset + length, value
end

-- Usd Calculation 3
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_3 = {}

-- Size: Usd Calculation 3
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_3.size = 8

-- Display: Usd Calculation 3
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_3.display = function(value)
  return "Usd Calculation 3: "..value
end

-- Dissect: Usd Calculation 3
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_3.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_calculation_3, range, value, display)

  return offset + length, value
end

-- Usd Calculation 2
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_2 = {}

-- Size: Usd Calculation 2
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_2.size = 8

-- Display: Usd Calculation 2
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_2.display = function(value)
  return "Usd Calculation 2: "..value
end

-- Dissect: Usd Calculation 2
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_2.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_calculation_2, range, value, display)

  return offset + length, value
end

-- Usd Calculation 1
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_1 = {}

-- Size: Usd Calculation 1
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_1.size = 8

-- Display: Usd Calculation 1
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_1.display = function(value)
  return "Usd Calculation 1: "..value
end

-- Dissect: Usd Calculation 1
nyse_equities_binarygateway_pillar_v5_17.usd_calculation_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_1.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_calculation_1, range, value, display)

  return offset + length, value
end

-- Ioc Attribution
nyse_equities_binarygateway_pillar_v5_17.ioc_attribution = {}

-- Size: Ioc Attribution
nyse_equities_binarygateway_pillar_v5_17.ioc_attribution.size = 1

-- Display: Ioc Attribution
nyse_equities_binarygateway_pillar_v5_17.ioc_attribution.display = function(value)
  if value == 0 then
    return "Ioc Attribution: Not Applicable (0)"
  end
  if value == 1 then
    return "Ioc Attribution: Include Ioc Orders (1)"
  end
  if value == 2 then
    return "Ioc Attribution: Exclude Ioc Orders (2)"
  end

  return "Ioc Attribution: Unknown("..value..")"
end

-- Dissect: Ioc Attribution
nyse_equities_binarygateway_pillar_v5_17.ioc_attribution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ioc_attribution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.ioc_attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ioc_attribution, range, value, display)

  return offset + length, value
end

-- Breach Action Response
nyse_equities_binarygateway_pillar_v5_17.breach_action_response = {}

-- Size: Breach Action Response
nyse_equities_binarygateway_pillar_v5_17.breach_action_response.size = 1

-- Display: Breach Action Response
nyse_equities_binarygateway_pillar_v5_17.breach_action_response.display = function(value)
  if value == 0 then
    return "Breach Action Response: Not Applicable (0)"
  end
  if value == 1 then
    return "Breach Action Response: Notify Only (1)"
  end
  if value == 2 then
    return "Breach Action Response: Cancel And Block (2)"
  end
  if value == 3 then
    return "Breach Action Response: Block (3)"
  end

  return "Breach Action Response: Unknown("..value..")"
end

-- Dissect: Breach Action Response
nyse_equities_binarygateway_pillar_v5_17.breach_action_response.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.breach_action_response.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.breach_action_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.breach_action_response, range, value, display)

  return offset + length, value
end

-- Count Limit
nyse_equities_binarygateway_pillar_v5_17.count_limit = {}

-- Size: Count Limit
nyse_equities_binarygateway_pillar_v5_17.count_limit.size = 4

-- Display: Count Limit
nyse_equities_binarygateway_pillar_v5_17.count_limit.display = function(value)
  return "Count Limit: "..value
end

-- Dissect: Count Limit
nyse_equities_binarygateway_pillar_v5_17.count_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.count_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_equities_binarygateway_pillar_v5_17.count_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.count_limit, range, value, display)

  return offset + length, value
end

-- Percentage Limit
nyse_equities_binarygateway_pillar_v5_17.percentage_limit = {}

-- Size: Percentage Limit
nyse_equities_binarygateway_pillar_v5_17.percentage_limit.size = 4

-- Display: Percentage Limit
nyse_equities_binarygateway_pillar_v5_17.percentage_limit.display = function(value)
  return "Percentage Limit: "..value
end

-- Dissect: Percentage Limit
nyse_equities_binarygateway_pillar_v5_17.percentage_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.percentage_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_equities_binarygateway_pillar_v5_17.percentage_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.percentage_limit, range, value, display)

  return offset + length, value
end

-- Time Limit
nyse_equities_binarygateway_pillar_v5_17.time_limit = {}

-- Size: Time Limit
nyse_equities_binarygateway_pillar_v5_17.time_limit.size = 4

-- Display: Time Limit
nyse_equities_binarygateway_pillar_v5_17.time_limit.display = function(value)
  return "Time Limit: "..value
end

-- Dissect: Time Limit
nyse_equities_binarygateway_pillar_v5_17.time_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.time_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_equities_binarygateway_pillar_v5_17.time_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.time_limit, range, value, display)

  return offset + length, value
end

-- Usd Limit
nyse_equities_binarygateway_pillar_v5_17.usd_limit = {}

-- Size: Usd Limit
nyse_equities_binarygateway_pillar_v5_17.usd_limit.size = 8

-- Display: Usd Limit
nyse_equities_binarygateway_pillar_v5_17.usd_limit.display = function(value)
  return "Usd Limit: "..value
end

-- Dissect: Usd Limit
nyse_equities_binarygateway_pillar_v5_17.usd_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.usd_limit.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_17.usd_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.usd_limit, range, value, display)

  return offset + length, value
end

-- Risk Control Type
nyse_equities_binarygateway_pillar_v5_17.risk_control_type = {}

-- Size: Risk Control Type
nyse_equities_binarygateway_pillar_v5_17.risk_control_type.size = 1

-- Display: Risk Control Type
nyse_equities_binarygateway_pillar_v5_17.risk_control_type.display = function(value)
  if value == 0 then
    return "Risk Control Type: Not Applicable (0)"
  end
  if value == 1 then
    return "Risk Control Type: Single Order Max Qty (1)"
  end
  if value == 2 then
    return "Risk Control Type: Single Order Max Notional Value (2)"
  end
  if value == 3 then
    return "Risk Control Type: Gross Credit Executed (3)"
  end
  if value == 4 then
    return "Risk Control Type: Gross Credit Open (4)"
  end
  if value == 5 then
    return "Risk Control Type: Gross Credit Open Plus Executed (5)"
  end
  if value == 6 then
    return "Risk Control Type: Maximum Duplicative Orders (6)"
  end
  if value == 7 then
    return "Risk Control Type: Reserved (7)"
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
    return "Risk Control Type: Activity Global Risk Mitigation (11)"
  end
  if value == 12 then
    return "Risk Control Type: Reserved 2 (12)"
  end
  if value == 13 then
    return "Risk Control Type: Reject Market Orders (13)"
  end
  if value == 14 then
    return "Risk Control Type: Reject Moo And Moc (14)"
  end
  if value == 15 then
    return "Risk Control Type: Not Available 15 (15)"
  end
  if value == 16 then
    return "Risk Control Type: Not Available 16 (16)"
  end
  if value == 17 then
    return "Risk Control Type: Reject Early Trading Session (17)"
  end
  if value == 18 then
    return "Risk Control Type: Reject Late Trading Session (18)"
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
    return "Risk Control Type: Single Order Max Qty Pct Adv (22)"
  end
  if value == 23 then
    return "Risk Control Type: Lopp Equities Custom Limits (23)"
  end
  if value == 24 then
    return "Risk Control Type: Lopp Equities Early Late Multiplier (24)"
  end
  if value == 25 then
    return "Risk Control Type: Lopp Equities Closing Only Multiplier (25)"
  end
  if value == 26 then
    return "Risk Control Type: Lopp Options Single Leg Custom Limits (26)"
  end
  if value == 27 then
    return "Risk Control Type: Lopp Options Complex Custom Limits (27)"
  end
  if value == 28 then
    return "Risk Control Type: Require Locate Broker (28)"
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
nyse_equities_binarygateway_pillar_v5_17.risk_control_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.risk_control_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.risk_control_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_control_type, range, value, display)

  return offset + length, value
end

-- Risk User Type
nyse_equities_binarygateway_pillar_v5_17.risk_user_type = {}

-- Size: Risk User Type
nyse_equities_binarygateway_pillar_v5_17.risk_user_type.size = 1

-- Display: Risk User Type
nyse_equities_binarygateway_pillar_v5_17.risk_user_type.display = function(value)
  if value == "E" then
    return "Risk User Type: Entering Firm (E)"
  end
  if value == "C" then
    return "Risk User Type: Clearing Firm (C)"
  end

  return "Risk User Type: Unknown("..value..")"
end

-- Dissect: Risk User Type
nyse_equities_binarygateway_pillar_v5_17.risk_user_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.risk_user_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_binarygateway_pillar_v5_17.risk_user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_user_type, range, value, display)

  return offset + length, value
end

-- Risk User Crd
nyse_equities_binarygateway_pillar_v5_17.risk_user_crd = {}

-- Size: Risk User Crd
nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.size = 4

-- Display: Risk User Crd
nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.display = function(value)
  return "Risk User Crd: "..value
end

-- Dissect: Risk User Crd
nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_user_crd, range, value, display)

  return offset + length, value
end

-- Clearing Number
nyse_equities_binarygateway_pillar_v5_17.clearing_number = {}

-- Size: Clearing Number
nyse_equities_binarygateway_pillar_v5_17.clearing_number.size = 5

-- Display: Clearing Number
nyse_equities_binarygateway_pillar_v5_17.clearing_number.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Number: No Value"
  end

  return "Clearing Number: "..value
end

-- Dissect: Clearing Number
nyse_equities_binarygateway_pillar_v5_17.clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.clearing_number.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.clearing_number, range, value, display)

  return offset + length, value
end

-- Mp Sub Id Zchar 44
nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44 = {}

-- Size: Mp Sub Id Zchar 44
nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.size = 4

-- Display: Mp Sub Id Zchar 44
nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mp Sub Id Zchar 44: No Value"
  end

  return "Mp Sub Id Zchar 44: "..value
end

-- Dissect: Mp Sub Id Zchar 44
nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mp_sub_id_zchar_44, range, value, display)

  return offset + length, value
end

-- Market Maker Zchar 1010
nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010 = {}

-- Size: Market Maker Zchar 1010
nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.size = 10

-- Display: Market Maker Zchar 1010
nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Maker Zchar 1010: No Value"
  end

  return "Market Maker Zchar 1010: "..value
end

-- Dissect: Market Maker Zchar 1010
nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.market_maker_zchar_1010, range, value, display)

  return offset + length, value
end

-- Mpid
nyse_equities_binarygateway_pillar_v5_17.mpid = {}

-- Size: Mpid
nyse_equities_binarygateway_pillar_v5_17.mpid.size = 4

-- Display: Mpid
nyse_equities_binarygateway_pillar_v5_17.mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid: No Value"
  end

  return "Mpid: "..value
end

-- Dissect: Mpid
nyse_equities_binarygateway_pillar_v5_17.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mpid.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpid, range, value, display)

  return offset + length, value
end

-- Symbol Id
nyse_equities_binarygateway_pillar_v5_17.symbol_id = {}

-- Size: Symbol Id
nyse_equities_binarygateway_pillar_v5_17.symbol_id.size = 4

-- Display: Symbol Id
nyse_equities_binarygateway_pillar_v5_17.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Risk Control Alert Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message = {}

-- Read runtime size of: Risk Control Alert Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Control Alert Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Alert Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.fields = function(buffer, offset, packet, parent, size_of_risk_control_alert_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker Zchar 1010: zchar(10)
  index, market_maker_zchar_1010 = nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.dissect(buffer, index, packet, parent)

  -- Mp Sub Id Zchar 44: zchar(4)
  index, mp_sub_id_zchar_44 = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_equities_binarygateway_pillar_v5_17.clearing_number.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_equities_binarygateway_pillar_v5_17.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_17.risk_control_type.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_equities_binarygateway_pillar_v5_17.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_equities_binarygateway_pillar_v5_17.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_equities_binarygateway_pillar_v5_17.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_equities_binarygateway_pillar_v5_17.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Response: u8
  index, breach_action_response = nyse_equities_binarygateway_pillar_v5_17.breach_action_response.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_equities_binarygateway_pillar_v5_17.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Usd Calculation 1: i64
  index, usd_calculation_1 = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_1.dissect(buffer, index, packet, parent)

  -- Usd Calculation 2: i64
  index, usd_calculation_2 = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_2.dissect(buffer, index, packet, parent)

  -- Usd Calculation 3: i64
  index, usd_calculation_3 = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_3.dissect(buffer, index, packet, parent)

  -- Usd Calculation 4: i64
  index, usd_calculation_4 = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_4.dissect(buffer, index, packet, parent)

  -- Count Calculation: u32
  index, count_calculation = nyse_equities_binarygateway_pillar_v5_17.count_calculation.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_equities_binarygateway_pillar_v5_17.risk_action_type.dissect(buffer, index, packet, parent)

  -- Threshold Breach Level: u8
  index, threshold_breach_level = nyse_equities_binarygateway_pillar_v5_17.threshold_breach_level.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: u8
  index, blocked_by_breach_indicator = nyse_equities_binarygateway_pillar_v5_17.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: u8
  index, blocked_by_kill_switch_indicator = nyse_equities_binarygateway_pillar_v5_17.blocked_by_kill_switch_indicator.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Self: u8
  index, reinstatement_required_by_self = nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_self.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Other: u8
  index, reinstatement_required_by_other = nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_other.dissect(buffer, index, packet, parent)

  -- Reserved 200: zchar(200)
  index, reserved_200 = nyse_equities_binarygateway_pillar_v5_17.reserved_200.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Alert Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_control_alert_message = nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_control_alert_message then
    local range = buffer(offset, size_of_risk_control_alert_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_control_alert_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.fields(buffer, offset, packet, parent, size_of_risk_control_alert_message)

  return offset + size_of_risk_control_alert_message
end

-- Reserved 190
nyse_equities_binarygateway_pillar_v5_17.reserved_190 = {}

-- Size: Reserved 190
nyse_equities_binarygateway_pillar_v5_17.reserved_190.size = 190

-- Display: Reserved 190
nyse_equities_binarygateway_pillar_v5_17.reserved_190.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved 190: No Value"
  end

  return "Reserved 190: "..value
end

-- Dissect: Reserved 190
nyse_equities_binarygateway_pillar_v5_17.reserved_190.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_190.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_190.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_190, range, value, display)

  return offset + length, value
end

-- Price Scale
nyse_equities_binarygateway_pillar_v5_17.price_scale = {}

-- Size: Price Scale
nyse_equities_binarygateway_pillar_v5_17.price_scale.size = 1

-- Display: Price Scale
nyse_equities_binarygateway_pillar_v5_17.price_scale.display = function(value)
  if value == 0 then
    return "Price Scale: No Decimals (0)"
  end
  if value == 2 then
    return "Price Scale: Two Decimals (2)"
  end

  return "Price Scale: Unknown("..value..")"
end

-- Dissect: Price Scale
nyse_equities_binarygateway_pillar_v5_17.price_scale.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.price_scale.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.price_scale.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.price_scale, range, value, display)

  return offset + length, value
end

-- Risk Minimum Value
nyse_equities_binarygateway_pillar_v5_17.risk_minimum_value = {}

-- Size: Risk Minimum Value
nyse_equities_binarygateway_pillar_v5_17.risk_minimum_value.size = 8

-- Display: Risk Minimum Value
nyse_equities_binarygateway_pillar_v5_17.risk_minimum_value.display = function(value)
  return "Risk Minimum Value: "..value
end

-- Dissect: Risk Minimum Value
nyse_equities_binarygateway_pillar_v5_17.risk_minimum_value.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.risk_minimum_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_equities_binarygateway_pillar_v5_17.risk_minimum_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_minimum_value, range, value, display)

  return offset + length, value
end

-- Risk Range Id
nyse_equities_binarygateway_pillar_v5_17.risk_range_id = {}

-- Size: Risk Range Id
nyse_equities_binarygateway_pillar_v5_17.risk_range_id.size = 1

-- Display: Risk Range Id
nyse_equities_binarygateway_pillar_v5_17.risk_range_id.display = function(value)
  return "Risk Range Id: "..value
end

-- Dissect: Risk Range Id
nyse_equities_binarygateway_pillar_v5_17.risk_range_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.risk_range_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.risk_range_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_range_id, range, value, display)

  return offset + length, value
end

-- Risk Control Activation
nyse_equities_binarygateway_pillar_v5_17.risk_control_activation = {}

-- Size: Risk Control Activation
nyse_equities_binarygateway_pillar_v5_17.risk_control_activation.size = 1

-- Display: Risk Control Activation
nyse_equities_binarygateway_pillar_v5_17.risk_control_activation.display = function(value)
  if value == 0 then
    return "Risk Control Activation: Risk Control Turned Off (0)"
  end
  if value == 1 then
    return "Risk Control Activation: Risk Control Turned On (1)"
  end

  return "Risk Control Activation: Unknown("..value..")"
end

-- Dissect: Risk Control Activation
nyse_equities_binarygateway_pillar_v5_17.risk_control_activation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.risk_control_activation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.risk_control_activation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_control_activation, range, value, display)

  return offset + length, value
end

-- Risk Ack Type
nyse_equities_binarygateway_pillar_v5_17.risk_ack_type = {}

-- Size: Risk Ack Type
nyse_equities_binarygateway_pillar_v5_17.risk_ack_type.size = 1

-- Display: Risk Ack Type
nyse_equities_binarygateway_pillar_v5_17.risk_ack_type.display = function(value)
  if value == 0 then
    return "Risk Ack Type: Solicited (0)"
  end
  if value == 1 then
    return "Risk Ack Type: Unsolicited (1)"
  end

  return "Risk Ack Type: Unknown("..value..")"
end

-- Dissect: Risk Ack Type
nyse_equities_binarygateway_pillar_v5_17.risk_ack_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.risk_ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.risk_ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_ack_type, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.cl_ord_id = {}

-- Size: Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.size = 8

-- Display: Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_equities_binarygateway_pillar_v5_17.reserved_4 = {}

-- Size: Reserved 4
nyse_equities_binarygateway_pillar_v5_17.reserved_4.size = 4

-- Display: Reserved 4
nyse_equities_binarygateway_pillar_v5_17.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_equities_binarygateway_pillar_v5_17.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Risk Control Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message = {}

-- Read runtime size of: Risk Control Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Control Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_risk_control_acknowledgement_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker Zchar 1010: zchar(10)
  index, market_maker_zchar_1010 = nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.dissect(buffer, index, packet, parent)

  -- Mp Sub Id Zchar 44: zchar(4)
  index, mp_sub_id_zchar_44 = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_17.reserved_4.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_equities_binarygateway_pillar_v5_17.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk Ack Type: u8
  index, risk_ack_type = nyse_equities_binarygateway_pillar_v5_17.risk_ack_type.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_equities_binarygateway_pillar_v5_17.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_17.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Control Activation: u8
  index, risk_control_activation = nyse_equities_binarygateway_pillar_v5_17.risk_control_activation.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_equities_binarygateway_pillar_v5_17.risk_action_type.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_equities_binarygateway_pillar_v5_17.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_equities_binarygateway_pillar_v5_17.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_equities_binarygateway_pillar_v5_17.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_equities_binarygateway_pillar_v5_17.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Response: u8
  index, breach_action_response = nyse_equities_binarygateway_pillar_v5_17.breach_action_response.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_equities_binarygateway_pillar_v5_17.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Usd Calculation 1: i64
  index, usd_calculation_1 = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_1.dissect(buffer, index, packet, parent)

  -- Usd Calculation 2: i64
  index, usd_calculation_2 = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_2.dissect(buffer, index, packet, parent)

  -- Usd Calculation 3: i64
  index, usd_calculation_3 = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_3.dissect(buffer, index, packet, parent)

  -- Usd Calculation 4: i64
  index, usd_calculation_4 = nyse_equities_binarygateway_pillar_v5_17.usd_calculation_4.dissect(buffer, index, packet, parent)

  -- Count Calculation: u32
  index, count_calculation = nyse_equities_binarygateway_pillar_v5_17.count_calculation.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: u8
  index, blocked_by_breach_indicator = nyse_equities_binarygateway_pillar_v5_17.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: u8
  index, blocked_by_kill_switch_indicator = nyse_equities_binarygateway_pillar_v5_17.blocked_by_kill_switch_indicator.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Self: u8
  index, reinstatement_required_by_self = nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_self.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Other: u8
  index, reinstatement_required_by_other = nyse_equities_binarygateway_pillar_v5_17.reinstatement_required_by_other.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_equities_binarygateway_pillar_v5_17.risk_range_id.dissect(buffer, index, packet, parent)

  -- Risk Minimum Value: i64
  index, risk_minimum_value = nyse_equities_binarygateway_pillar_v5_17.risk_minimum_value.dissect(buffer, index, packet, parent)

  -- Price Scale: u8
  index, price_scale = nyse_equities_binarygateway_pillar_v5_17.price_scale.dissect(buffer, index, packet, parent)

  -- Reserved 190: zchar(190)
  index, reserved_190 = nyse_equities_binarygateway_pillar_v5_17.reserved_190.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_control_acknowledgement_message = nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_control_acknowledgement_message then
    local range = buffer(offset, size_of_risk_control_acknowledgement_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_control_acknowledgement_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_risk_control_acknowledgement_message)

  return offset + size_of_risk_control_acknowledgement_message
end

-- Manual Action Type
nyse_equities_binarygateway_pillar_v5_17.manual_action_type = {}

-- Size: Manual Action Type
nyse_equities_binarygateway_pillar_v5_17.manual_action_type.size = 1

-- Display: Manual Action Type
nyse_equities_binarygateway_pillar_v5_17.manual_action_type.display = function(value)
  if value == 1 then
    return "Manual Action Type: New Manual Dmm Order (1)"
  end
  if value == 2 then
    return "Manual Action Type: Reduce Manual Dmm Qty (2)"
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
    return "Manual Action Type: Manual Cross (6)"
  end
  if value == 7 then
    return "Manual Action Type: Cancel All Manual Orders (7)"
  end

  return "Manual Action Type: Unknown("..value..")"
end

-- Dissect: Manual Action Type
nyse_equities_binarygateway_pillar_v5_17.manual_action_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.manual_action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.manual_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_action_type, range, value, display)

  return offset + length, value
end

-- Manual Override Reason
nyse_equities_binarygateway_pillar_v5_17.manual_override_reason = {}

-- Size: Manual Override Reason
nyse_equities_binarygateway_pillar_v5_17.manual_override_reason.size = 20

-- Display: Manual Override Reason
nyse_equities_binarygateway_pillar_v5_17.manual_override_reason.display = function(value)
  return "Manual Override Reason: "..value
end

-- Dissect: Manual Override Reason
nyse_equities_binarygateway_pillar_v5_17.manual_override_reason.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.manual_override_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.manual_override_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_override_reason, range, value, display)

  return offset + length, value
end

-- Manual Override
nyse_equities_binarygateway_pillar_v5_17.manual_override = {}

-- Size: Manual Override
nyse_equities_binarygateway_pillar_v5_17.manual_override.size = 1

-- Display: Manual Override
nyse_equities_binarygateway_pillar_v5_17.manual_override.display = function(value)
  if value == 0 then
    return "Manual Override: Not Applicable (0)"
  end
  if value == 1 then
    return "Manual Override: Alert (1)"
  end
  if value == 2 then
    return "Manual Override: Position Marking (2)"
  end

  return "Manual Override: Unknown("..value..")"
end

-- Dissect: Manual Override
nyse_equities_binarygateway_pillar_v5_17.manual_override.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.manual_override.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.manual_override.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_override, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price = {}

-- Size: Ssr Filing Price
nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.size = 8

-- Display: Ssr Filing Price
nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Translate: Ssr Filing Price
nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ssr Filing Price
nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Dmm Allocated Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_allocated_qty = {}

-- Size: Dmm Allocated Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_allocated_qty.size = 4

-- Display: Dmm Allocated Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_allocated_qty.display = function(value)
  return "Dmm Allocated Qty: "..value
end

-- Dissect: Dmm Allocated Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_allocated_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.dmm_allocated_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.dmm_allocated_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_allocated_qty, range, value, display)

  return offset + length, value
end

-- Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_available_qty = {}

-- Size: Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_available_qty.size = 4

-- Display: Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_available_qty.display = function(value)
  return "Dmm Available Qty: "..value
end

-- Dissect: Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_available_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.dmm_available_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.dmm_available_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_available_qty, range, value, display)

  return offset + length, value
end

-- Dmm Requested Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_requested_qty = {}

-- Size: Dmm Requested Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_requested_qty.size = 4

-- Display: Dmm Requested Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_requested_qty.display = function(value)
  return "Dmm Requested Qty: "..value
end

-- Dissect: Dmm Requested Qty
nyse_equities_binarygateway_pillar_v5_17.dmm_requested_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.dmm_requested_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.dmm_requested_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_requested_qty, range, value, display)

  return offset + length, value
end

-- Price
nyse_equities_binarygateway_pillar_v5_17.price = {}

-- Size: Price
nyse_equities_binarygateway_pillar_v5_17.price.size = 8

-- Display: Price
nyse_equities_binarygateway_pillar_v5_17.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nyse_equities_binarygateway_pillar_v5_17.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
nyse_equities_binarygateway_pillar_v5_17.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.price.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.price, range, value, display)

  return offset + length, value
end

-- Side U 81
nyse_equities_binarygateway_pillar_v5_17.side_u_81 = {}

-- Size: Side U 81
nyse_equities_binarygateway_pillar_v5_17.side_u_81.size = 1

-- Display: Side U 81
nyse_equities_binarygateway_pillar_v5_17.side_u_81.display = function(value)
  return "Side U 81: "..value
end

-- Dissect: Side U 81
nyse_equities_binarygateway_pillar_v5_17.side_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.side_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.side_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.side_u_81, range, value, display)

  return offset + length, value
end

-- Seq
nyse_equities_binarygateway_pillar_v5_17.seq = {}

-- Size: Seq
nyse_equities_binarygateway_pillar_v5_17.seq.size = 8

-- Display: Seq
nyse_equities_binarygateway_pillar_v5_17.seq.display = function(value)
  return "Seq: "..value
end

-- Dissect: Seq
nyse_equities_binarygateway_pillar_v5_17.seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq, range, value, display)

  return offset + length, value
end

-- User
nyse_equities_binarygateway_pillar_v5_17.user = {}

-- Size: User
nyse_equities_binarygateway_pillar_v5_17.user.size = 4

-- Display: User
nyse_equities_binarygateway_pillar_v5_17.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nyse_equities_binarygateway_pillar_v5_17.user.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.user.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.user, range, value, display)

  return offset + length, value
end

-- Sess
nyse_equities_binarygateway_pillar_v5_17.sess = {}

-- Size: Sess
nyse_equities_binarygateway_pillar_v5_17.sess.size = 4

-- Display: Sess
nyse_equities_binarygateway_pillar_v5_17.sess.display = function(value)
  return "Sess: "..value
end

-- Dissect: Sess
nyse_equities_binarygateway_pillar_v5_17.sess.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.sess.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.sess.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.sess, range, value, display)

  return offset + length, value
end

-- Stream Id
nyse_equities_binarygateway_pillar_v5_17.stream_id = {}

-- Size: Stream Id
nyse_equities_binarygateway_pillar_v5_17.stream_id.size =
  nyse_equities_binarygateway_pillar_v5_17.sess.size + 
  nyse_equities_binarygateway_pillar_v5_17.user.size

-- Display: Stream Id
nyse_equities_binarygateway_pillar_v5_17.stream_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id
nyse_equities_binarygateway_pillar_v5_17.stream_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sess: 4 Byte Unsigned Fixed Width Integer
  index, sess = nyse_equities_binarygateway_pillar_v5_17.sess.dissect(buffer, index, packet, parent)

  -- User: 4 Byte Unsigned Fixed Width Integer
  index, user = nyse_equities_binarygateway_pillar_v5_17.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id
nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect = function(buffer, offset, packet, parent)
  if show.stream_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.stream_id, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.stream_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.stream_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.stream_id.fields(buffer, offset, packet, parent)
  end
end

-- Manual Action Id
nyse_equities_binarygateway_pillar_v5_17.manual_action_id = {}

-- Size: Manual Action Id
nyse_equities_binarygateway_pillar_v5_17.manual_action_id.size =
  nyse_equities_binarygateway_pillar_v5_17.stream_id.size + 
  nyse_equities_binarygateway_pillar_v5_17.seq.size

-- Display: Manual Action Id
nyse_equities_binarygateway_pillar_v5_17.manual_action_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Action Id
nyse_equities_binarygateway_pillar_v5_17.manual_action_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: u64
  index, seq = nyse_equities_binarygateway_pillar_v5_17.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Action Id
nyse_equities_binarygateway_pillar_v5_17.manual_action_id.dissect = function(buffer, offset, packet, parent)
  if show.manual_action_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_action_id, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.manual_action_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.manual_action_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.manual_action_id.fields(buffer, offset, packet, parent)
  end
end

-- Mmid
nyse_equities_binarygateway_pillar_v5_17.mmid = {}

-- Size: Mmid
nyse_equities_binarygateway_pillar_v5_17.mmid.size = 4

-- Display: Mmid
nyse_equities_binarygateway_pillar_v5_17.mmid.display = function(value)
  return "Mmid: "..value
end

-- Dissect: Mmid
nyse_equities_binarygateway_pillar_v5_17.mmid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mmid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.mmid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mmid, range, value, display)

  return offset + length, value
end

-- Introducing Badge Id
nyse_equities_binarygateway_pillar_v5_17.introducing_badge_id = {}

-- Size: Introducing Badge Id
nyse_equities_binarygateway_pillar_v5_17.introducing_badge_id.size = 4

-- Display: Introducing Badge Id
nyse_equities_binarygateway_pillar_v5_17.introducing_badge_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Introducing Badge Id: No Value"
  end

  return "Introducing Badge Id: "..value
end

-- Dissect: Introducing Badge Id
nyse_equities_binarygateway_pillar_v5_17.introducing_badge_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.introducing_badge_id.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.introducing_badge_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.introducing_badge_id, range, value, display)

  return offset + length, value
end

-- Transact Time
nyse_equities_binarygateway_pillar_v5_17.transact_time = {}

-- Size: Transact Time
nyse_equities_binarygateway_pillar_v5_17.transact_time.size = 8

-- Display: Transact Time
nyse_equities_binarygateway_pillar_v5_17.transact_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Manual Action Request Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message = {}

-- Read runtime size of: Manual Action Request Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Manual Action Request Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Action Request Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.fields = function(buffer, offset, packet, parent, size_of_manual_action_request_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Introducing Badge Id: zchar(4)
  index, introducing_badge_id = nyse_equities_binarygateway_pillar_v5_17.introducing_badge_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Mmid: u32
  index, mmid = nyse_equities_binarygateway_pillar_v5_17.mmid.dissect(buffer, index, packet, parent)

  -- Manual Action Id: Struct of 2 fields
  index, manual_action_id = nyse_equities_binarygateway_pillar_v5_17.manual_action_id.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_equities_binarygateway_pillar_v5_17.side_u_81.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_equities_binarygateway_pillar_v5_17.price.dissect(buffer, index, packet, parent)

  -- Dmm Requested Qty: u32
  index, dmm_requested_qty = nyse_equities_binarygateway_pillar_v5_17.dmm_requested_qty.dissect(buffer, index, packet, parent)

  -- Dmm Available Qty: u32
  index, dmm_available_qty = nyse_equities_binarygateway_pillar_v5_17.dmm_available_qty.dissect(buffer, index, packet, parent)

  -- Dmm Allocated Qty: u32
  index, dmm_allocated_qty = nyse_equities_binarygateway_pillar_v5_17.dmm_allocated_qty.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: Price
  index, ssr_filing_price = nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.dissect(buffer, index, packet, parent)

  -- Manual Override: u8
  index, manual_override = nyse_equities_binarygateway_pillar_v5_17.manual_override.dissect(buffer, index, packet, parent)

  -- Manual Override Reason: char(20)
  index, manual_override_reason = nyse_equities_binarygateway_pillar_v5_17.manual_override_reason.dissect(buffer, index, packet, parent)

  -- Manual Action Type: u8
  index, manual_action_type = nyse_equities_binarygateway_pillar_v5_17.manual_action_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Action Request Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_manual_action_request_message = nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.manual_action_request_message then
    local range = buffer(offset, size_of_manual_action_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_action_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.fields(buffer, offset, packet, parent, size_of_manual_action_request_message)

  return offset + size_of_manual_action_request_message
end

-- Auction Type
nyse_equities_binarygateway_pillar_v5_17.auction_type = {}

-- Size: Auction Type
nyse_equities_binarygateway_pillar_v5_17.auction_type.size = 1

-- Display: Auction Type
nyse_equities_binarygateway_pillar_v5_17.auction_type.display = function(value)
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
nyse_equities_binarygateway_pillar_v5_17.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.auction_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Auction Request Message
nyse_equities_binarygateway_pillar_v5_17.auction_request_message = {}

-- Read runtime size of: Auction Request Message
nyse_equities_binarygateway_pillar_v5_17.auction_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Auction Request Message
nyse_equities_binarygateway_pillar_v5_17.auction_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Request Message
nyse_equities_binarygateway_pillar_v5_17.auction_request_message.fields = function(buffer, offset, packet, parent, size_of_auction_request_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Auction Type: u8
  index, auction_type = nyse_equities_binarygateway_pillar_v5_17.auction_type.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: Price
  index, ssr_filing_price = nyse_equities_binarygateway_pillar_v5_17.ssr_filing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Request Message
nyse_equities_binarygateway_pillar_v5_17.auction_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_auction_request_message = nyse_equities_binarygateway_pillar_v5_17.auction_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.auction_request_message then
    local range = buffer(offset, size_of_auction_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.auction_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.auction_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.auction_request_message.fields(buffer, offset, packet, parent, size_of_auction_request_message)

  return offset + size_of_auction_request_message
end

-- Sell Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.sell_dmm_available_qty = {}

-- Size: Sell Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.sell_dmm_available_qty.size = 4

-- Display: Sell Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.sell_dmm_available_qty.display = function(value)
  return "Sell Dmm Available Qty: "..value
end

-- Dissect: Sell Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.sell_dmm_available_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.sell_dmm_available_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.sell_dmm_available_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.sell_dmm_available_qty, range, value, display)

  return offset + length, value
end

-- Buy Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.buy_dmm_available_qty = {}

-- Size: Buy Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.buy_dmm_available_qty.size = 4

-- Display: Buy Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.buy_dmm_available_qty.display = function(value)
  return "Buy Dmm Available Qty: "..value
end

-- Dissect: Buy Dmm Available Qty
nyse_equities_binarygateway_pillar_v5_17.buy_dmm_available_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.buy_dmm_available_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.buy_dmm_available_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.buy_dmm_available_qty, range, value, display)

  return offset + length, value
end

-- Unpaired Qty
nyse_equities_binarygateway_pillar_v5_17.unpaired_qty = {}

-- Size: Unpaired Qty
nyse_equities_binarygateway_pillar_v5_17.unpaired_qty.size = 4

-- Display: Unpaired Qty
nyse_equities_binarygateway_pillar_v5_17.unpaired_qty.display = function(value)
  return "Unpaired Qty: "..value
end

-- Dissect: Unpaired Qty
nyse_equities_binarygateway_pillar_v5_17.unpaired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.unpaired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.unpaired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.unpaired_qty, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_equities_binarygateway_pillar_v5_17.paired_qty = {}

-- Size: Paired Qty
nyse_equities_binarygateway_pillar_v5_17.paired_qty.size = 4

-- Display: Paired Qty
nyse_equities_binarygateway_pillar_v5_17.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_equities_binarygateway_pillar_v5_17.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nyse_equities_binarygateway_pillar_v5_17.imbalance_volume = {}

-- Size: Imbalance Volume
nyse_equities_binarygateway_pillar_v5_17.imbalance_volume.size = 4

-- Display: Imbalance Volume
nyse_equities_binarygateway_pillar_v5_17.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nyse_equities_binarygateway_pillar_v5_17.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Side Of Unpaired Qty
nyse_equities_binarygateway_pillar_v5_17.side_of_unpaired_qty = {}

-- Size: Side Of Unpaired Qty
nyse_equities_binarygateway_pillar_v5_17.side_of_unpaired_qty.size = 1

-- Display: Side Of Unpaired Qty
nyse_equities_binarygateway_pillar_v5_17.side_of_unpaired_qty.display = function(value)
  if value == 0 then
    return "Side Of Unpaired Qty: Paired (0)"
  end
  if value == 1 then
    return "Side Of Unpaired Qty: Buy Not Paired (1)"
  end
  if value == 2 then
    return "Side Of Unpaired Qty: Sell Not Paired (2)"
  end

  return "Side Of Unpaired Qty: Unknown("..value..")"
end

-- Dissect: Side Of Unpaired Qty
nyse_equities_binarygateway_pillar_v5_17.side_of_unpaired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.side_of_unpaired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.side_of_unpaired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.side_of_unpaired_qty, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_equities_binarygateway_pillar_v5_17.imbalance_side = {}

-- Size: Imbalance Side
nyse_equities_binarygateway_pillar_v5_17.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_equities_binarygateway_pillar_v5_17.imbalance_side.display = function(value)
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
nyse_equities_binarygateway_pillar_v5_17.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Auction Price Data Message
nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message = {}

-- Read runtime size of: Auction Price Data Message
nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Auction Price Data Message
nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Price Data Message
nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.fields = function(buffer, offset, packet, parent, size_of_auction_price_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Imbalance Side: u8
  index, imbalance_side = nyse_equities_binarygateway_pillar_v5_17.imbalance_side.dissect(buffer, index, packet, parent)

  -- Side Of Unpaired Qty: u8
  index, side_of_unpaired_qty = nyse_equities_binarygateway_pillar_v5_17.side_of_unpaired_qty.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: u32
  index, imbalance_volume = nyse_equities_binarygateway_pillar_v5_17.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_equities_binarygateway_pillar_v5_17.price.dissect(buffer, index, packet, parent)

  -- Paired Qty: u32
  index, paired_qty = nyse_equities_binarygateway_pillar_v5_17.paired_qty.dissect(buffer, index, packet, parent)

  -- Unpaired Qty: u32
  index, unpaired_qty = nyse_equities_binarygateway_pillar_v5_17.unpaired_qty.dissect(buffer, index, packet, parent)

  -- Buy Dmm Available Qty: u32
  index, buy_dmm_available_qty = nyse_equities_binarygateway_pillar_v5_17.buy_dmm_available_qty.dissect(buffer, index, packet, parent)

  -- Sell Dmm Available Qty: u32
  index, sell_dmm_available_qty = nyse_equities_binarygateway_pillar_v5_17.sell_dmm_available_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Price Data Message
nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_auction_price_data_message = nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.auction_price_data_message then
    local range = buffer(offset, size_of_auction_price_data_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.auction_price_data_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.fields(buffer, offset, packet, parent, size_of_auction_price_data_message)

  return offset + size_of_auction_price_data_message
end

-- Gt End Message
nyse_equities_binarygateway_pillar_v5_17.gt_end_message = {}

-- Read runtime size of: Gt End Message
nyse_equities_binarygateway_pillar_v5_17.gt_end_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Gt End Message
nyse_equities_binarygateway_pillar_v5_17.gt_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gt End Message
nyse_equities_binarygateway_pillar_v5_17.gt_end_message.fields = function(buffer, offset, packet, parent, size_of_gt_end_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gt End Message
nyse_equities_binarygateway_pillar_v5_17.gt_end_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_gt_end_message = nyse_equities_binarygateway_pillar_v5_17.gt_end_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.gt_end_message then
    local range = buffer(offset, size_of_gt_end_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.gt_end_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.gt_end_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.gt_end_message.fields(buffer, offset, packet, parent, size_of_gt_end_message)

  return offset + size_of_gt_end_message
end

-- Gt Begin Message
nyse_equities_binarygateway_pillar_v5_17.gt_begin_message = {}

-- Read runtime size of: Gt Begin Message
nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Gt Begin Message
nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gt Begin Message
nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.fields = function(buffer, offset, packet, parent, size_of_gt_begin_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gt Begin Message
nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_gt_begin_message = nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.gt_begin_message then
    local range = buffer(offset, size_of_gt_begin_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.gt_begin_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.fields(buffer, offset, packet, parent, size_of_gt_begin_message)

  return offset + size_of_gt_begin_message
end

-- Subscription Status
nyse_equities_binarygateway_pillar_v5_17.subscription_status = {}

-- Size: Subscription Status
nyse_equities_binarygateway_pillar_v5_17.subscription_status.size = 1

-- Display: Subscription Status
nyse_equities_binarygateway_pillar_v5_17.subscription_status.display = function(value)
  if value == 1 then
    return "Subscription Status: Subscribed (1)"
  end
  if value == 2 then
    return "Subscription Status: Not Subscribed (2)"
  end

  return "Subscription Status: Unknown("..value..")"
end

-- Dissect: Subscription Status
nyse_equities_binarygateway_pillar_v5_17.subscription_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.subscription_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.subscription_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.subscription_status, range, value, display)

  return offset + length, value
end

-- Username
nyse_equities_binarygateway_pillar_v5_17.username = {}

-- Size: Username
nyse_equities_binarygateway_pillar_v5_17.username.size = 16

-- Display: Username
nyse_equities_binarygateway_pillar_v5_17.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nyse_equities_binarygateway_pillar_v5_17.username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.username, range, value, display)

  return offset + length, value
end

-- Symbol Subscription Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message = {}

-- Read runtime size of: Symbol Subscription Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Symbol Subscription Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Subscription Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_symbol_subscription_acknowledgement_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_equities_binarygateway_pillar_v5_17.username.dissect(buffer, index, packet, parent)

  -- Subscription Status: u8
  index, subscription_status = nyse_equities_binarygateway_pillar_v5_17.subscription_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Subscription Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_symbol_subscription_acknowledgement_message = nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.symbol_subscription_acknowledgement_message then
    local range = buffer(offset, size_of_symbol_subscription_acknowledgement_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.symbol_subscription_acknowledgement_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_symbol_subscription_acknowledgement_message)

  return offset + size_of_symbol_subscription_acknowledgement_message
end

-- User Data
nyse_equities_binarygateway_pillar_v5_17.user_data = {}

-- Size: User Data
nyse_equities_binarygateway_pillar_v5_17.user_data.size = 8

-- Display: User Data
nyse_equities_binarygateway_pillar_v5_17.user_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Data: No Value"
  end

  return "User Data: "..value
end

-- Dissect: User Data
nyse_equities_binarygateway_pillar_v5_17.user_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.user_data.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.user_data, range, value, display)

  return offset + length, value
end

-- Reject Type
nyse_equities_binarygateway_pillar_v5_17.reject_type = {}

-- Size: Reject Type
nyse_equities_binarygateway_pillar_v5_17.reject_type.size = 1

-- Display: Reject Type
nyse_equities_binarygateway_pillar_v5_17.reject_type.display = function(value)
  if value == 1 then
    return "Reject Type: Order Cancel Replace (1)"
  end
  if value == 2 then
    return "Reject Type: Modify Request (2)"
  end
  if value == 3 then
    return "Reject Type: Cancel Request (3)"
  end
  if value == 4 then
    return "Reject Type: Bulk Cancel Request (4)"
  end
  if value == 5 then
    return "Reject Type: Reserved (5)"
  end
  if value == 6 then
    return "Reject Type: Manual Action Response (6)"
  end
  if value == 7 then
    return "Reject Type: Risk Limit Update Request (7)"
  end
  if value == 8 then
    return "Reject Type: Not Applicable Equities (8)"
  end
  if value == 9 then
    return "Reject Type: Reserved Future (9)"
  end
  if value == 10 then
    return "Reject Type: Not Applicable Equities Alt (10)"
  end
  if value == 11 then
    return "Reject Type: Risk Action Request (11)"
  end

  return "Reject Type: Unknown("..value..")"
end

-- Dissect: Reject Type
nyse_equities_binarygateway_pillar_v5_17.reject_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reject_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.reject_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reject_type, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_equities_binarygateway_pillar_v5_17.reason_code = {}

-- Size: Reason Code
nyse_equities_binarygateway_pillar_v5_17.reason_code.size = 2

-- Display: Reason Code
nyse_equities_binarygateway_pillar_v5_17.reason_code.display = function(value)
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
nyse_equities_binarygateway_pillar_v5_17.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Application Layer Reject Message
nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message = {}

-- Read runtime size of: Application Layer Reject Message
nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Application Layer Reject Message
nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Layer Reject Message
nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.fields = function(buffer, offset, packet, parent, size_of_application_layer_reject_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_equities_binarygateway_pillar_v5_17.reason_code.dissect(buffer, index, packet, parent)

  -- Reject Type: u8
  index, reject_type = nyse_equities_binarygateway_pillar_v5_17.reject_type.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_equities_binarygateway_pillar_v5_17.user_data.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_17.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Application Layer Reject Message
nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_layer_reject_message = nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_layer_reject_message then
    local range = buffer(offset, size_of_application_layer_reject_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.application_layer_reject_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.fields(buffer, offset, packet, parent, size_of_application_layer_reject_message)

  return offset + size_of_application_layer_reject_message
end

-- Last Qty
nyse_equities_binarygateway_pillar_v5_17.last_qty = {}

-- Size: Last Qty
nyse_equities_binarygateway_pillar_v5_17.last_qty.size = 4

-- Display: Last Qty
nyse_equities_binarygateway_pillar_v5_17.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
nyse_equities_binarygateway_pillar_v5_17.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Px
nyse_equities_binarygateway_pillar_v5_17.last_px = {}

-- Size: Last Px
nyse_equities_binarygateway_pillar_v5_17.last_px.size = 8

-- Display: Last Px
nyse_equities_binarygateway_pillar_v5_17.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
nyse_equities_binarygateway_pillar_v5_17.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
nyse_equities_binarygateway_pillar_v5_17.last_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.last_px.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.last_px, range, value, display)

  return offset + length, value
end

-- Deal Id
nyse_equities_binarygateway_pillar_v5_17.deal_id = {}

-- Size: Deal Id
nyse_equities_binarygateway_pillar_v5_17.deal_id.size = 8

-- Display: Deal Id
nyse_equities_binarygateway_pillar_v5_17.deal_id.display = function(value)
  return "Deal Id: "..value
end

-- Dissect: Deal Id
nyse_equities_binarygateway_pillar_v5_17.deal_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.deal_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.deal_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.deal_id, range, value, display)

  return offset + length, value
end

-- Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id = {}

-- Size: Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id.size =
  nyse_equities_binarygateway_pillar_v5_17.stream_id.size + 
  nyse_equities_binarygateway_pillar_v5_17.seq.size

-- Display: Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: u64
  index, seq = nyse_equities_binarygateway_pillar_v5_17.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ref Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id.dissect = function(buffer, offset, packet, parent)
  if show.ref_seq_msg_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ref_seq_msg_id, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
nyse_equities_binarygateway_pillar_v5_17.order_id = {}

-- Size: Order Id
nyse_equities_binarygateway_pillar_v5_17.order_id.size = 8

-- Display: Order Id
nyse_equities_binarygateway_pillar_v5_17.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_equities_binarygateway_pillar_v5_17.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Bust Correct Message
nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message = {}

-- Read runtime size of: Trade Bust Correct Message
nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Trade Bust Correct Message
nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Correct Message
nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.fields = function(buffer, offset, packet, parent, size_of_trade_bust_correct_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_equities_binarygateway_pillar_v5_17.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Ref Seq Msg Id: Struct of 2 fields
  index, ref_seq_msg_id = nyse_equities_binarygateway_pillar_v5_17.ref_seq_msg_id.dissect(buffer, index, packet, parent)

  -- Deal Id: u64
  index, deal_id = nyse_equities_binarygateway_pillar_v5_17.deal_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = nyse_equities_binarygateway_pillar_v5_17.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: u32
  index, last_qty = nyse_equities_binarygateway_pillar_v5_17.last_qty.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_equities_binarygateway_pillar_v5_17.reason_code.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_equities_binarygateway_pillar_v5_17.user_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Correct Message
nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_bust_correct_message = nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_bust_correct_message then
    local range = buffer(offset, size_of_trade_bust_correct_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.trade_bust_correct_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.fields(buffer, offset, packet, parent, size_of_trade_bust_correct_message)

  return offset + size_of_trade_bust_correct_message
end

-- Settlement Type
nyse_equities_binarygateway_pillar_v5_17.settlement_type = {}

-- Size: Settlement Type
nyse_equities_binarygateway_pillar_v5_17.settlement_type.size = 1

-- Display: Settlement Type
nyse_equities_binarygateway_pillar_v5_17.settlement_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Settlement Type: No Value"
  end

  if value == "0" then
    return "Settlement Type: Regular Way (0)"
  end
  if value == "1" then
    return "Settlement Type: Cash (1)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
nyse_equities_binarygateway_pillar_v5_17.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.settlement_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_equities_binarygateway_pillar_v5_17.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Sub Msg Length
nyse_equities_binarygateway_pillar_v5_17.sub_msg_length = {}

-- Size: Sub Msg Length
nyse_equities_binarygateway_pillar_v5_17.sub_msg_length.size = 2

-- Display: Sub Msg Length
nyse_equities_binarygateway_pillar_v5_17.sub_msg_length.display = function(value)
  return "Sub Msg Length: "..value
end

-- Dissect: Sub Msg Length
nyse_equities_binarygateway_pillar_v5_17.sub_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.sub_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.sub_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.sub_msg_length, range, value, display)

  return offset + length, value
end

-- Sub Msg Type
nyse_equities_binarygateway_pillar_v5_17.sub_msg_type = {}

-- Size: Sub Msg Type
nyse_equities_binarygateway_pillar_v5_17.sub_msg_type.size = 2

-- Display: Sub Msg Type
nyse_equities_binarygateway_pillar_v5_17.sub_msg_type.display = function(value)
  return "Sub Msg Type: "..value
end

-- Dissect: Sub Msg Type
nyse_equities_binarygateway_pillar_v5_17.sub_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.sub_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.sub_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.sub_msg_type, range, value, display)

  return offset + length, value
end

-- Sub Msg Header
nyse_equities_binarygateway_pillar_v5_17.sub_msg_header = {}

-- Size: Sub Msg Header
nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.size =
  nyse_equities_binarygateway_pillar_v5_17.sub_msg_type.size + 
  nyse_equities_binarygateway_pillar_v5_17.sub_msg_length.size

-- Display: Sub Msg Header
nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Msg Header
nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Type: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_type = nyse_equities_binarygateway_pillar_v5_17.sub_msg_type.dissect(buffer, index, packet, parent)

  -- Sub Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_length = nyse_equities_binarygateway_pillar_v5_17.sub_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Msg Header
nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.sub_msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.sub_msg_header, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on = {}

-- Size: Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on.size =
  nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.size + 
  nyse_equities_binarygateway_pillar_v5_17.settlement_type.size

-- Display: Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Settlement Type: zchar(1)
  index, settlement_type = nyse_equities_binarygateway_pillar_v5_17.settlement_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Settlement Type Add On
nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on.dissect = function(buffer, offset, packet, parent)
  if show.optional_settlement_type_add_on then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.optional_settlement_type_add_on, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on.fields(buffer, offset, packet, parent)
  end
end

-- Participant Type
nyse_equities_binarygateway_pillar_v5_17.participant_type = {}

-- Size: Participant Type
nyse_equities_binarygateway_pillar_v5_17.participant_type.size = 1

-- Display: Participant Type
nyse_equities_binarygateway_pillar_v5_17.participant_type.display = function(value)
  if value == 1 then
    return "Participant Type: Customer (1)"
  end
  if value == 2 then
    return "Participant Type: Market Maker (2)"
  end
  if value == 3 then
    return "Participant Type: Dmm (3)"
  end
  if value == 4 then
    return "Participant Type: Slp (4)"
  end
  if value == 5 then
    return "Participant Type: Floor Broker (5)"
  end

  return "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nyse_equities_binarygateway_pillar_v5_17.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.participant_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Locate Reqd U 81
nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81 = {}

-- Size: Locate Reqd U 81
nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.size = 1

-- Display: Locate Reqd U 81
nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.display = function(value)
  return "Locate Reqd U 81: "..value
end

-- Dissect: Locate Reqd U 81
nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.locate_reqd_u_81, range, value, display)

  return offset + length, value
end

-- Displayed Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.displayed_liquidity_indicator = {}

-- Size: Displayed Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.displayed_liquidity_indicator.size = 4

-- Display: Displayed Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.displayed_liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Displayed Liquidity Indicator: No Value"
  end

  return "Displayed Liquidity Indicator: "..value
end

-- Dissect: Displayed Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.displayed_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.displayed_liquidity_indicator.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.displayed_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.displayed_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.liquidity_indicator = {}

-- Size: Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.liquidity_indicator.size = 4

-- Display: Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.liquidity_indicator.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cum Qty
nyse_equities_binarygateway_pillar_v5_17.cum_qty = {}

-- Size: Cum Qty
nyse_equities_binarygateway_pillar_v5_17.cum_qty.size = 4

-- Display: Cum Qty
nyse_equities_binarygateway_pillar_v5_17.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
nyse_equities_binarygateway_pillar_v5_17.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
nyse_equities_binarygateway_pillar_v5_17.leaves_qty = {}

-- Size: Leaves Qty
nyse_equities_binarygateway_pillar_v5_17.leaves_qty.size = 4

-- Display: Leaves Qty
nyse_equities_binarygateway_pillar_v5_17.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
nyse_equities_binarygateway_pillar_v5_17.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Execution Report Message
nyse_equities_binarygateway_pillar_v5_17.execution_report_message = {}

-- Read runtime size of: Execution Report Message
nyse_equities_binarygateway_pillar_v5_17.execution_report_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Execution Report Message
nyse_equities_binarygateway_pillar_v5_17.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
nyse_equities_binarygateway_pillar_v5_17.execution_report_message.fields = function(buffer, offset, packet, parent, size_of_execution_report_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_equities_binarygateway_pillar_v5_17.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Deal Id: u64
  index, deal_id = nyse_equities_binarygateway_pillar_v5_17.deal_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = nyse_equities_binarygateway_pillar_v5_17.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_equities_binarygateway_pillar_v5_17.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: u32
  index, cum_qty = nyse_equities_binarygateway_pillar_v5_17.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: u32
  index, last_qty = nyse_equities_binarygateway_pillar_v5_17.last_qty.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: zchar(4)
  index, liquidity_indicator = nyse_equities_binarygateway_pillar_v5_17.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Displayed Liquidity Indicator: zchar(4)
  index, displayed_liquidity_indicator = nyse_equities_binarygateway_pillar_v5_17.displayed_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Locate Reqd U 81: u8
  index, locate_reqd_u_81 = nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.dissect(buffer, index, packet, parent)

  -- Participant Type: u8
  index, participant_type = nyse_equities_binarygateway_pillar_v5_17.participant_type.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_equities_binarygateway_pillar_v5_17.reason_code.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_equities_binarygateway_pillar_v5_17.user_data.dissect(buffer, index, packet, parent)

  -- Optional Settlement Type Add On: Struct of 2 fields
  index, optional_settlement_type_add_on = nyse_equities_binarygateway_pillar_v5_17.optional_settlement_type_add_on.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Message
nyse_equities_binarygateway_pillar_v5_17.execution_report_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_execution_report_message = nyse_equities_binarygateway_pillar_v5_17.execution_report_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.execution_report_message then
    local range = buffer(offset, size_of_execution_report_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.execution_report_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.execution_report_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.execution_report_message.fields(buffer, offset, packet, parent, size_of_execution_report_message)

  return offset + size_of_execution_report_message
end

-- Ack Type
nyse_equities_binarygateway_pillar_v5_17.ack_type = {}

-- Size: Ack Type
nyse_equities_binarygateway_pillar_v5_17.ack_type.size = 1

-- Display: Ack Type
nyse_equities_binarygateway_pillar_v5_17.ack_type.display = function(value)
  if value == 1 then
    return "Ack Type: New Interest (1)"
  end
  if value == 2 then
    return "Ack Type: Order Priority Update New Id (2)"
  end
  if value == 3 then
    return "Ack Type: Order Priority Update Same Id (3)"
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
    return "Ack Type: Billable Cancel Add Liquidity (13)"
  end
  if value == 14 then
    return "Ack Type: Billable Cancel Remove Liquidity (14)"
  end
  if value == 15 then
    return "Ack Type: Billable Cancel Sub Dollar Add (15)"
  end
  if value == 16 then
    return "Ack Type: Billable Cancel Sub Dollar Remove (16)"
  end

  return "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
nyse_equities_binarygateway_pillar_v5_17.ack_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Pre Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.pre_liquidity_indicator = {}

-- Size: Pre Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.pre_liquidity_indicator.size = 4

-- Display: Pre Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.pre_liquidity_indicator.display = function(value)
  if value == "0" then
    return "Pre Liquidity Indicator: None (0)"
  end
  if value == "1" then
    return "Pre Liquidity Indicator: Candidate For Display (1)"
  end

  return "Pre Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Pre Liquidity Indicator
nyse_equities_binarygateway_pillar_v5_17.pre_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.pre_liquidity_indicator.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.pre_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.pre_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Working Away From Display
nyse_equities_binarygateway_pillar_v5_17.working_away_from_display = {}

-- Size: Working Away From Display
nyse_equities_binarygateway_pillar_v5_17.working_away_from_display.size = 1

-- Display: Working Away From Display
nyse_equities_binarygateway_pillar_v5_17.working_away_from_display.display = function(value)
  if value == 0 then
    return "Working Away From Display: Same As Display (0)"
  end
  if value == 1 then
    return "Working Away From Display: Different From Display (1)"
  end

  return "Working Away From Display: Unknown("..value..")"
end

-- Dissect: Working Away From Display
nyse_equities_binarygateway_pillar_v5_17.working_away_from_display.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.working_away_from_display.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.working_away_from_display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.working_away_from_display, range, value, display)

  return offset + length, value
end

-- Order Qty
nyse_equities_binarygateway_pillar_v5_17.order_qty = {}

-- Size: Order Qty
nyse_equities_binarygateway_pillar_v5_17.order_qty.size = 4

-- Display: Order Qty
nyse_equities_binarygateway_pillar_v5_17.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
nyse_equities_binarygateway_pillar_v5_17.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_equities_binarygateway_pillar_v5_17.working_price = {}

-- Size: Working Price
nyse_equities_binarygateway_pillar_v5_17.working_price.size = 8

-- Display: Working Price
nyse_equities_binarygateway_pillar_v5_17.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
nyse_equities_binarygateway_pillar_v5_17.working_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Working Price
nyse_equities_binarygateway_pillar_v5_17.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.working_price.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.working_price, range, value, display)

  return offset + length, value
end

-- Order Priority Update Acknowledgment Message
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message = {}

-- Read runtime size of: Order Priority Update Acknowledgment Message
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Priority Update Acknowledgment Message
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Acknowledgment Message
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_order_priority_update_acknowledgment_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_equities_binarygateway_pillar_v5_17.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Working Price: Price
  index, working_price = nyse_equities_binarygateway_pillar_v5_17.working_price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_equities_binarygateway_pillar_v5_17.order_qty.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_equities_binarygateway_pillar_v5_17.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: zchar(4)
  index, pre_liquidity_indicator = nyse_equities_binarygateway_pillar_v5_17.pre_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_equities_binarygateway_pillar_v5_17.ack_type.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_equities_binarygateway_pillar_v5_17.user_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Acknowledgment Message
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_priority_update_acknowledgment_message = nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_priority_update_acknowledgment_message then
    local range = buffer(offset, size_of_order_priority_update_acknowledgment_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_priority_update_acknowledgment_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_priority_update_acknowledgment_message)

  return offset + size_of_order_priority_update_acknowledgment_message
end

-- Reserved 7
nyse_equities_binarygateway_pillar_v5_17.reserved_7 = {}

-- Size: Reserved 7
nyse_equities_binarygateway_pillar_v5_17.reserved_7.size = 7

-- Display: Reserved 7
nyse_equities_binarygateway_pillar_v5_17.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
nyse_equities_binarygateway_pillar_v5_17.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_7.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_7, range, value, display)

  return offset + length, value
end

-- Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator = {}

-- Size: Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.size = 7

-- Display: Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Throttled flag set?
  if bit.band(value, 0x00000000000001) ~= 0 then
    flags[#flags + 1] = "Throttled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.bits = function(range, value, packet, parent)

  -- Throttled: 1 Bit Enum with 2 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.throttled, range, value)

  -- Reserved 7: char(7)
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_7, range, value)
end

-- Dissect: Bitfield Flow Indicator
nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.bitfield_flow_indicator, range, display)

  if show.bitfield_flow_indicator then
    nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Orig Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Ref Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.ref_cl_ord_id = {}

-- Size: Ref Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.ref_cl_ord_id.size = 8

-- Display: Ref Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.ref_cl_ord_id.display = function(value)
  return "Ref Cl Ord Id: "..value
end

-- Dissect: Ref Cl Ord Id
nyse_equities_binarygateway_pillar_v5_17.ref_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ref_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.ref_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ref_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Order Modify Cancel Request Acknowledgment And Urout Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message = {}

-- Read runtime size of: Order Modify Cancel Request Acknowledgment And Urout Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Modify Cancel Request Acknowledgment And Urout Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Cancel Request Acknowledgment And Urout Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.fields = function(buffer, offset, packet, parent, size_of_order_modify_cancel_request_acknowledgment_and_urout_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_equities_binarygateway_pillar_v5_17.order_id.dissect(buffer, index, packet, parent)

  -- Ref Cl Ord Id: u64
  index, ref_cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.ref_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_equities_binarygateway_pillar_v5_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_equities_binarygateway_pillar_v5_17.order_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_equities_binarygateway_pillar_v5_17.leaves_qty.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_equities_binarygateway_pillar_v5_17.side_u_81.dissect(buffer, index, packet, parent)

  -- Locate Reqd U 81: u8
  index, locate_reqd_u_81 = nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_equities_binarygateway_pillar_v5_17.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_equities_binarygateway_pillar_v5_17.ack_type.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_equities_binarygateway_pillar_v5_17.user_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Cancel Request Acknowledgment And Urout Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_modify_cancel_request_acknowledgment_and_urout_message = nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_modify_cancel_request_acknowledgment_and_urout_message then
    local range = buffer(offset, size_of_order_modify_cancel_request_acknowledgment_and_urout_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_modify_cancel_request_acknowledgment_and_urout_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.fields(buffer, offset, packet, parent, size_of_order_modify_cancel_request_acknowledgment_and_urout_message)

  return offset + size_of_order_modify_cancel_request_acknowledgment_and_urout_message
end

-- Effective Time
nyse_equities_binarygateway_pillar_v5_17.effective_time = {}

-- Size: Effective Time
nyse_equities_binarygateway_pillar_v5_17.effective_time.size = 8

-- Display: Effective Time
nyse_equities_binarygateway_pillar_v5_17.effective_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Effective Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Effective Time
nyse_equities_binarygateway_pillar_v5_17.effective_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.effective_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.effective_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.effective_time, range, value, display)

  return offset + length, value
end

-- Offset Price
nyse_equities_binarygateway_pillar_v5_17.offset_price = {}

-- Size: Offset Price
nyse_equities_binarygateway_pillar_v5_17.offset_price.size = 8

-- Display: Offset Price
nyse_equities_binarygateway_pillar_v5_17.offset_price.display = function(value)
  return "Offset Price: "..value
end

-- Translate: Offset Price
nyse_equities_binarygateway_pillar_v5_17.offset_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offset Price
nyse_equities_binarygateway_pillar_v5_17.offset_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.offset_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.offset_price.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.offset_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.offset_price, range, value, display)

  return offset + length, value
end

-- Reserved 8
nyse_equities_binarygateway_pillar_v5_17.reserved_8 = {}

-- Size: Reserved 8
nyse_equities_binarygateway_pillar_v5_17.reserved_8.size = 8

-- Display: Reserved 8
nyse_equities_binarygateway_pillar_v5_17.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nyse_equities_binarygateway_pillar_v5_17.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Locate Broker
nyse_equities_binarygateway_pillar_v5_17.locate_broker = {}

-- Size: Locate Broker
nyse_equities_binarygateway_pillar_v5_17.locate_broker.size = 4

-- Display: Locate Broker
nyse_equities_binarygateway_pillar_v5_17.locate_broker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Broker: No Value"
  end

  return "Locate Broker: "..value
end

-- Dissect: Locate Broker
nyse_equities_binarygateway_pillar_v5_17.locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.locate_broker.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.locate_broker, range, value, display)

  return offset + length, value
end

-- Max Floor
nyse_equities_binarygateway_pillar_v5_17.max_floor = {}

-- Size: Max Floor
nyse_equities_binarygateway_pillar_v5_17.max_floor.size = 4

-- Display: Max Floor
nyse_equities_binarygateway_pillar_v5_17.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nyse_equities_binarygateway_pillar_v5_17.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Deliver To Comp Id
nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id = {}

-- Size: Deliver To Comp Id
nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id.size = 5

-- Display: Deliver To Comp Id
nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Deliver To Comp Id: No Value"
  end

  return "Deliver To Comp Id: "..value
end

-- Dissect: Deliver To Comp Id
nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.deliver_to_comp_id, range, value, display)

  return offset + length, value
end

-- Stop Px
nyse_equities_binarygateway_pillar_v5_17.stop_px = {}

-- Size: Stop Px
nyse_equities_binarygateway_pillar_v5_17.stop_px.size = 8

-- Display: Stop Px
nyse_equities_binarygateway_pillar_v5_17.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
nyse_equities_binarygateway_pillar_v5_17.stop_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
nyse_equities_binarygateway_pillar_v5_17.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.stop_px.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Optional Order Add On
nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on = {}

-- Size: Optional Order Add On
nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.size =
  nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.size + 
  nyse_equities_binarygateway_pillar_v5_17.stop_px.size + 
  nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id.size + 
  nyse_equities_binarygateway_pillar_v5_17.max_floor.size + 
  nyse_equities_binarygateway_pillar_v5_17.locate_broker.size + 
  nyse_equities_binarygateway_pillar_v5_17.reserved_8.size + 
  nyse_equities_binarygateway_pillar_v5_17.offset_price.size + 
  nyse_equities_binarygateway_pillar_v5_17.effective_time.size

-- Display: Optional Order Add On
nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Order Add On
nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_equities_binarygateway_pillar_v5_17.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Stop Px: Price
  index, stop_px = nyse_equities_binarygateway_pillar_v5_17.stop_px.dissect(buffer, index, packet, parent)

  -- Deliver To Comp Id: zchar(5)
  index, deliver_to_comp_id = nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id.dissect(buffer, index, packet, parent)

  -- Max Floor: u32
  index, max_floor = nyse_equities_binarygateway_pillar_v5_17.max_floor.dissect(buffer, index, packet, parent)

  -- Locate Broker: zchar(4)
  index, locate_broker = nyse_equities_binarygateway_pillar_v5_17.locate_broker.dissect(buffer, index, packet, parent)

  -- Reserved 8: char(8)
  index, reserved_8 = nyse_equities_binarygateway_pillar_v5_17.reserved_8.dissect(buffer, index, packet, parent)

  -- Offset Price: Price
  index, offset_price = nyse_equities_binarygateway_pillar_v5_17.offset_price.dissect(buffer, index, packet, parent)

  -- Effective Time: Timestamp
  index, effective_time = nyse_equities_binarygateway_pillar_v5_17.effective_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Order Add On
nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.dissect = function(buffer, offset, packet, parent)
  if show.optional_order_add_on then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.optional_order_add_on, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.fields(buffer, offset, packet, parent)
  end
end

-- Min Qty
nyse_equities_binarygateway_pillar_v5_17.min_qty = {}

-- Size: Min Qty
nyse_equities_binarygateway_pillar_v5_17.min_qty.size = 4

-- Display: Min Qty
nyse_equities_binarygateway_pillar_v5_17.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nyse_equities_binarygateway_pillar_v5_17.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Bitfield Order Instructions
nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions = {}

-- Size: Bitfield Order Instructions
nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.size = 8

-- Display: Bitfield Order Instructions
nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sub Id Indicator flag set?
  if bit.band(value, 0x0000000000001000) ~= 0 then
    flags[#flags + 1] = "Sub Id Indicator"
  end
  -- Is Locate Reqd flag set?
  if bit.band(value, 0x0000000000020000) ~= 0 then
    flags[#flags + 1] = "Locate Reqd"
  end
  -- Is Retail Indicator flag set?
  if bit.band(value, 0x0000000000040000) ~= 0 then
    flags[#flags + 1] = "Retail Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bitfield Order Instructions
nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.bits = function(range, value, packet, parent)

  -- Reserved 12: 12 Bit
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_12, range, value)

  -- Sub Id Indicator: 1 Bit Enum with 2 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.sub_id_indicator, range, value)

  -- Special Ord Type: 4 Bit Unsigned Fixed Width Integer Enum with 6 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.special_ord_type, range, value)

  -- Locate Reqd: 1 Bit Enum with 2 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.locate_reqd, range, value)

  -- Retail Indicator: 1 Bit Enum with 2 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.retail_indicator, range, value)

  -- Attributed Quote: 3 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.attributed_quote, range, value)

  -- Order Capacity: 3 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_capacity, range, value)

  -- Interest Type: 3 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.interest_type, range, value)

  -- Trading Session Id: 3 Bit Unsigned Fixed Width Integer Enum with 6 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.trading_session_id, range, value)

  -- Time In Force: 3 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.time_in_force, range, value)

  -- Proactive If Locked: 3 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.proactive_if_locked, range, value)

  -- Self Trade Type: 3 Bit Unsigned Fixed Width Integer Enum with 6 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.self_trade_type, range, value)

  -- Cancel Instead Of Reprice: 4 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.cancel_instead_of_reprice, range, value)

  -- Routing Inst: 4 Bit Unsigned Fixed Width Integer Enum with 10 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.routing_inst, range, value)

  -- Extended Exec Inst: 4 Bit Unsigned Fixed Width Integer Enum with 10 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.extended_exec_inst, range, value)

  -- Exec Inst: 4 Bit Unsigned Fixed Width Integer Enum with 11 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.exec_inst, range, value)

  -- Ord Type: 4 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ord_type, range, value)

  -- Side 4: 4 Bit Unsigned Fixed Width Integer
  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.side_4, range, value)
end

-- Dissect: Bitfield Order Instructions
nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.bitfield_order_instructions, range, display)

  if show.bitfield_order_instructions then
    nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mp Sub Id Char 1
nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1 = {}

-- Size: Mp Sub Id Char 1
nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1.size = 1

-- Display: Mp Sub Id Char 1
nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1.display = function(value)
  return "Mp Sub Id Char 1: "..value
end

-- Dissect: Mp Sub Id Char 1
nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mp_sub_id_char_1, range, value, display)

  return offset + length, value
end

-- Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message = {}

-- Read runtime size of: Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_order_and_cancel_replace_acknowledgement_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Mmid: u32
  index, mmid = nyse_equities_binarygateway_pillar_v5_17.mmid.dissect(buffer, index, packet, parent)

  -- Mp Sub Id Char 1: char
  index, mp_sub_id_char_1 = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: Struct of 18 fields
  index, bitfield_order_instructions = nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_equities_binarygateway_pillar_v5_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_equities_binarygateway_pillar_v5_17.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_equities_binarygateway_pillar_v5_17.min_qty.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_equities_binarygateway_pillar_v5_17.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_equities_binarygateway_pillar_v5_17.leaves_qty.dissect(buffer, index, packet, parent)

  -- Working Price: Price
  index, working_price = nyse_equities_binarygateway_pillar_v5_17.working_price.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_equities_binarygateway_pillar_v5_17.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: zchar(4)
  index, pre_liquidity_indicator = nyse_equities_binarygateway_pillar_v5_17.pre_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_equities_binarygateway_pillar_v5_17.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_equities_binarygateway_pillar_v5_17.ack_type.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_equities_binarygateway_pillar_v5_17.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_equities_binarygateway_pillar_v5_17.user_data.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length > 61

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order And Cancel Replace Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_and_cancel_replace_acknowledgement_message = nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_and_cancel_replace_acknowledgement_message then
    local range = buffer(offset, size_of_order_and_cancel_replace_acknowledgement_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_and_cancel_replace_acknowledgement_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_order_and_cancel_replace_acknowledgement_message)

  return offset + size_of_order_and_cancel_replace_acknowledgement_message
end

-- Reserved 49
nyse_equities_binarygateway_pillar_v5_17.reserved_49 = {}

-- Size: Reserved 49
nyse_equities_binarygateway_pillar_v5_17.reserved_49.size = 49

-- Display: Reserved 49
nyse_equities_binarygateway_pillar_v5_17.reserved_49.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved 49: No Value"
  end

  return "Reserved 49: "..value
end

-- Dissect: Reserved 49
nyse_equities_binarygateway_pillar_v5_17.reserved_49.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_49.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_49.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_49, range, value, display)

  return offset + length, value
end

-- Bold Designation
nyse_equities_binarygateway_pillar_v5_17.bold_designation = {}

-- Size: Bold Designation
nyse_equities_binarygateway_pillar_v5_17.bold_designation.size = 1

-- Display: Bold Designation
nyse_equities_binarygateway_pillar_v5_17.bold_designation.display = function(value)
  return "Bold Designation: "..value
end

-- Dissect: Bold Designation
nyse_equities_binarygateway_pillar_v5_17.bold_designation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.bold_designation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.bold_designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.bold_designation, range, value, display)

  return offset + length, value
end

-- Ack Status
nyse_equities_binarygateway_pillar_v5_17.ack_status = {}

-- Size: Ack Status
nyse_equities_binarygateway_pillar_v5_17.ack_status.size = 1

-- Display: Ack Status
nyse_equities_binarygateway_pillar_v5_17.ack_status.display = function(value)
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
nyse_equities_binarygateway_pillar_v5_17.ack_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ack_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ack_status, range, value, display)

  return offset + length, value
end

-- Order Priority Update Ack Subscription
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_ack_subscription = {}

-- Size: Order Priority Update Ack Subscription
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_ack_subscription.size = 1

-- Display: Order Priority Update Ack Subscription
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_ack_subscription.display = function(value)
  if value == 0 then
    return "Order Priority Update Ack Subscription: Not Subscribed (0)"
  end
  if value == 1 then
    return "Order Priority Update Ack Subscription: Receive Unsolicited Ack (1)"
  end

  return "Order Priority Update Ack Subscription: Unknown("..value..")"
end

-- Dissect: Order Priority Update Ack Subscription
nyse_equities_binarygateway_pillar_v5_17.order_priority_update_ack_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.order_priority_update_ack_subscription.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.order_priority_update_ack_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_priority_update_ack_subscription, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention
nyse_equities_binarygateway_pillar_v5_17.self_trade_prevention = {}

-- Size: Self Trade Prevention
nyse_equities_binarygateway_pillar_v5_17.self_trade_prevention.size = 1

-- Display: Self Trade Prevention
nyse_equities_binarygateway_pillar_v5_17.self_trade_prevention.display = function(value)
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
nyse_equities_binarygateway_pillar_v5_17.self_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.self_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.self_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Max Order Quantity
nyse_equities_binarygateway_pillar_v5_17.max_order_quantity = {}

-- Size: Max Order Quantity
nyse_equities_binarygateway_pillar_v5_17.max_order_quantity.size = 4

-- Display: Max Order Quantity
nyse_equities_binarygateway_pillar_v5_17.max_order_quantity.display = function(value)
  return "Max Order Quantity: "..value
end

-- Dissect: Max Order Quantity
nyse_equities_binarygateway_pillar_v5_17.max_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.max_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.max_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.max_order_quantity, range, value, display)

  return offset + length, value
end

-- Symbol Eligibility
nyse_equities_binarygateway_pillar_v5_17.symbol_eligibility = {}

-- Size: Symbol Eligibility
nyse_equities_binarygateway_pillar_v5_17.symbol_eligibility.size = 1

-- Display: Symbol Eligibility
nyse_equities_binarygateway_pillar_v5_17.symbol_eligibility.display = function(value)
  if value == 1 then
    return "Symbol Eligibility: All Symbols (1)"
  end
  if value == 2 then
    return "Symbol Eligibility: Test Symbols Only (2)"
  end

  return "Symbol Eligibility: Unknown("..value..")"
end

-- Dissect: Symbol Eligibility
nyse_equities_binarygateway_pillar_v5_17.symbol_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.symbol_eligibility.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.symbol_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.symbol_eligibility, range, value, display)

  return offset + length, value
end

-- Throttle Threshold
nyse_equities_binarygateway_pillar_v5_17.throttle_threshold = {}

-- Size: Throttle Threshold
nyse_equities_binarygateway_pillar_v5_17.throttle_threshold.size = 2

-- Display: Throttle Threshold
nyse_equities_binarygateway_pillar_v5_17.throttle_threshold.display = function(value)
  return "Throttle Threshold: "..value
end

-- Dissect: Throttle Threshold
nyse_equities_binarygateway_pillar_v5_17.throttle_threshold.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.throttle_threshold.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.throttle_threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.throttle_threshold, range, value, display)

  return offset + length, value
end

-- Throttle Window
nyse_equities_binarygateway_pillar_v5_17.throttle_window = {}

-- Size: Throttle Window
nyse_equities_binarygateway_pillar_v5_17.throttle_window.size = 2

-- Display: Throttle Window
nyse_equities_binarygateway_pillar_v5_17.throttle_window.display = function(value)
  return "Throttle Window: "..value
end

-- Dissect: Throttle Window
nyse_equities_binarygateway_pillar_v5_17.throttle_window.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.throttle_window.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.throttle_window.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.throttle_window, range, value, display)

  return offset + length, value
end

-- Throttle Preference
nyse_equities_binarygateway_pillar_v5_17.throttle_preference = {}

-- Size: Throttle Preference
nyse_equities_binarygateway_pillar_v5_17.throttle_preference.size = 1

-- Display: Throttle Preference
nyse_equities_binarygateway_pillar_v5_17.throttle_preference.display = function(value)
  if value == 0 then
    return "Throttle Preference: Queue Orders (0)"
  end
  if value == 1 then
    return "Throttle Preference: Reject Orders (1)"
  end

  return "Throttle Preference: Unknown("..value..")"
end

-- Dissect: Throttle Preference
nyse_equities_binarygateway_pillar_v5_17.throttle_preference.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.throttle_preference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.throttle_preference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.throttle_preference, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect
nyse_equities_binarygateway_pillar_v5_17.cancel_on_disconnect = {}

-- Size: Cancel On Disconnect
nyse_equities_binarygateway_pillar_v5_17.cancel_on_disconnect.size = 1

-- Display: Cancel On Disconnect
nyse_equities_binarygateway_pillar_v5_17.cancel_on_disconnect.display = function(value)
  if value == 0 then
    return "Cancel On Disconnect: Disabled (0)"
  end
  if value == 1 then
    return "Cancel On Disconnect: Enable Day (1)"
  end
  if value == 2 then
    return "Cancel On Disconnect: Enable All (2)"
  end

  return "Cancel On Disconnect: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect
nyse_equities_binarygateway_pillar_v5_17.cancel_on_disconnect.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.cancel_on_disconnect.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.cancel_on_disconnect.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.cancel_on_disconnect, range, value, display)

  return offset + length, value
end

-- Mic
nyse_equities_binarygateway_pillar_v5_17.mic = {}

-- Size: Mic
nyse_equities_binarygateway_pillar_v5_17.mic.size = 4

-- Display: Mic
nyse_equities_binarygateway_pillar_v5_17.mic.display = function(value)
  if value == "ARCX" then
    return "Mic: Nyse Arca Equities (ARCX)"
  end
  if value == "XASE" then
    return "Mic: Nyse American Equities (XASE)"
  end
  if value == "XCHI" then
    return "Mic: Nyse Texas Equities (XCHI)"
  end
  if value == "XCIS" then
    return "Mic: Nyse National Equities (XCIS)"
  end
  if value == "XNYS" then
    return "Mic: Nyse Equities (XNYS)"
  end

  return "Mic: Unknown("..value..")"
end

-- Dissect: Mic
nyse_equities_binarygateway_pillar_v5_17.mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mic, range, value, display)

  return offset + length, value
end

-- User Session Status
nyse_equities_binarygateway_pillar_v5_17.user_session_status = {}

-- Size: User Session Status
nyse_equities_binarygateway_pillar_v5_17.user_session_status.size = 1

-- Display: User Session Status
nyse_equities_binarygateway_pillar_v5_17.user_session_status.display = function(value)
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
nyse_equities_binarygateway_pillar_v5_17.user_session_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.user_session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.user_session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.user_session_status, range, value, display)

  return offset + length, value
end

-- User Session Type
nyse_equities_binarygateway_pillar_v5_17.user_session_type = {}

-- Size: User Session Type
nyse_equities_binarygateway_pillar_v5_17.user_session_type.size = 1

-- Display: User Session Type
nyse_equities_binarygateway_pillar_v5_17.user_session_type.display = function(value)
  if value == 1 then
    return "User Session Type: Customer (1)"
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
  if value == 12 then
    return "User Session Type: Risk Admin (12)"
  end

  return "User Session Type: Unknown("..value..")"
end

-- Dissect: User Session Type
nyse_equities_binarygateway_pillar_v5_17.user_session_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.user_session_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.user_session_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.user_session_type, range, value, display)

  return offset + length, value
end

-- Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message = {}

-- Read runtime size of: Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_session_configuration_acknowledgement_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- User Session Type: u8
  index, user_session_type = nyse_equities_binarygateway_pillar_v5_17.user_session_type.dissect(buffer, index, packet, parent)

  -- User Session Status: u8
  index, user_session_status = nyse_equities_binarygateway_pillar_v5_17.user_session_status.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_equities_binarygateway_pillar_v5_17.username.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = nyse_equities_binarygateway_pillar_v5_17.mic.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: u8
  index, cancel_on_disconnect = nyse_equities_binarygateway_pillar_v5_17.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Throttle Preference: u8
  index, throttle_preference = nyse_equities_binarygateway_pillar_v5_17.throttle_preference.dissect(buffer, index, packet, parent)

  -- Throttle Window: u16
  index, throttle_window = nyse_equities_binarygateway_pillar_v5_17.throttle_window.dissect(buffer, index, packet, parent)

  -- Throttle Threshold: u16
  index, throttle_threshold = nyse_equities_binarygateway_pillar_v5_17.throttle_threshold.dissect(buffer, index, packet, parent)

  -- Symbol Eligibility: u8
  index, symbol_eligibility = nyse_equities_binarygateway_pillar_v5_17.symbol_eligibility.dissect(buffer, index, packet, parent)

  -- Max Order Quantity: u32
  index, max_order_quantity = nyse_equities_binarygateway_pillar_v5_17.max_order_quantity.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: u8
  index, self_trade_prevention = nyse_equities_binarygateway_pillar_v5_17.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: u8
  index, order_priority_update_ack_subscription = nyse_equities_binarygateway_pillar_v5_17.order_priority_update_ack_subscription.dissect(buffer, index, packet, parent)

  -- Ack Status: u8
  index, ack_status = nyse_equities_binarygateway_pillar_v5_17.ack_status.dissect(buffer, index, packet, parent)

  -- Bold Designation: u8
  index, bold_designation = nyse_equities_binarygateway_pillar_v5_17.bold_designation.dissect(buffer, index, packet, parent)

  -- Reserved 49: zchar(49)
  index, reserved_49 = nyse_equities_binarygateway_pillar_v5_17.reserved_49.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Acknowledgement Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_configuration_acknowledgement_message = nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_configuration_acknowledgement_message then
    local range = buffer(offset, size_of_session_configuration_acknowledgement_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.session_configuration_acknowledgement_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_session_configuration_acknowledgement_message)

  return offset + size_of_session_configuration_acknowledgement_message
end

-- Reserved 100
nyse_equities_binarygateway_pillar_v5_17.reserved_100 = {}

-- Size: Reserved 100
nyse_equities_binarygateway_pillar_v5_17.reserved_100.size = 100

-- Display: Reserved 100
nyse_equities_binarygateway_pillar_v5_17.reserved_100.display = function(value)
  return "Reserved 100: "..value
end

-- Dissect: Reserved 100
nyse_equities_binarygateway_pillar_v5_17.reserved_100.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_100.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_100.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_100, range, value, display)

  return offset + length, value
end

-- Market Maker Char 1010
nyse_equities_binarygateway_pillar_v5_17.market_maker_char_1010 = {}

-- Size: Market Maker Char 1010
nyse_equities_binarygateway_pillar_v5_17.market_maker_char_1010.size = 10

-- Display: Market Maker Char 1010
nyse_equities_binarygateway_pillar_v5_17.market_maker_char_1010.display = function(value)
  return "Market Maker Char 1010: "..value
end

-- Dissect: Market Maker Char 1010
nyse_equities_binarygateway_pillar_v5_17.market_maker_char_1010.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.market_maker_char_1010.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.market_maker_char_1010.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.market_maker_char_1010, range, value, display)

  return offset + length, value
end

-- Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message = {}

-- Read runtime size of: Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.fields = function(buffer, offset, packet, parent, size_of_mmid_configuration_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Market Maker Char 1010: char(10)
  index, market_maker_char_1010 = nyse_equities_binarygateway_pillar_v5_17.market_maker_char_1010.dissect(buffer, index, packet, parent)

  -- Mmid: u32
  index, mmid = nyse_equities_binarygateway_pillar_v5_17.mmid.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_equities_binarygateway_pillar_v5_17.username.dissect(buffer, index, packet, parent)

  -- Reserved 100: char(100)
  index, reserved_100 = nyse_equities_binarygateway_pillar_v5_17.reserved_100.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mmid_configuration_message = nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mmid_configuration_message then
    local range = buffer(offset, size_of_mmid_configuration_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mmid_configuration_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.fields(buffer, offset, packet, parent, size_of_mmid_configuration_message)

  return offset + size_of_mmid_configuration_message
end

-- Reserved 50
nyse_equities_binarygateway_pillar_v5_17.reserved_50 = {}

-- Size: Reserved 50
nyse_equities_binarygateway_pillar_v5_17.reserved_50.size = 50

-- Display: Reserved 50
nyse_equities_binarygateway_pillar_v5_17.reserved_50.display = function(value)
  return "Reserved 50: "..value
end

-- Dissect: Reserved 50
nyse_equities_binarygateway_pillar_v5_17.reserved_50.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_50.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_50, range, value, display)

  return offset + length, value
end

-- Mpid Status
nyse_equities_binarygateway_pillar_v5_17.mpid_status = {}

-- Size: Mpid Status
nyse_equities_binarygateway_pillar_v5_17.mpid_status.size = 1

-- Display: Mpid Status
nyse_equities_binarygateway_pillar_v5_17.mpid_status.display = function(value)
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
nyse_equities_binarygateway_pillar_v5_17.mpid_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mpid_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.mpid_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpid_status, range, value, display)

  return offset + length, value
end

-- Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message = {}

-- Read runtime size of: Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.fields = function(buffer, offset, packet, parent, size_of_mpid_configuration_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Mpid Status: u8
  index, mpid_status = nyse_equities_binarygateway_pillar_v5_17.mpid_status.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_equities_binarygateway_pillar_v5_17.username.dissect(buffer, index, packet, parent)

  -- Reserved 50: char(50)
  index, reserved_50 = nyse_equities_binarygateway_pillar_v5_17.reserved_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpid Configuration Message
nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mpid_configuration_message = nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mpid_configuration_message then
    local range = buffer(offset, size_of_mpid_configuration_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpid_configuration_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.fields(buffer, offset, packet, parent, size_of_mpid_configuration_message)

  return offset + size_of_mpid_configuration_message
end

-- Mpv Class Id
nyse_equities_binarygateway_pillar_v5_17.mpv_class_id = {}

-- Size: Mpv Class Id
nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.size = 2

-- Display: Mpv Class Id
nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.display = function(value)
  return "Mpv Class Id: "..value
end

-- Dissect: Mpv Class Id
nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpv_class_id, range, value, display)

  return offset + length, value
end

-- Trading Mpv
nyse_equities_binarygateway_pillar_v5_17.trading_mpv = {}

-- Size: Trading Mpv
nyse_equities_binarygateway_pillar_v5_17.trading_mpv.size = 8

-- Display: Trading Mpv
nyse_equities_binarygateway_pillar_v5_17.trading_mpv.display = function(value)
  return "Trading Mpv: "..value
end

-- Translate: Trading Mpv
nyse_equities_binarygateway_pillar_v5_17.trading_mpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trading Mpv
nyse_equities_binarygateway_pillar_v5_17.trading_mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.trading_mpv.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.trading_mpv.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.trading_mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.trading_mpv, range, value, display)

  return offset + length, value
end

-- Quoting Mpv
nyse_equities_binarygateway_pillar_v5_17.quoting_mpv = {}

-- Size: Quoting Mpv
nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.size = 8

-- Display: Quoting Mpv
nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.display = function(value)
  return "Quoting Mpv: "..value
end

-- Translate: Quoting Mpv
nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Quoting Mpv
nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.quoting_mpv, range, value, display)

  return offset + length, value
end

-- Mpv Level Name
nyse_equities_binarygateway_pillar_v5_17.mpv_level_name = {}

-- Size: Mpv Level Name
nyse_equities_binarygateway_pillar_v5_17.mpv_level_name.size = 24

-- Display: Mpv Level Name
nyse_equities_binarygateway_pillar_v5_17.mpv_level_name.display = function(value)
  return "Mpv Level Name: "..value
end

-- Dissect: Mpv Level Name
nyse_equities_binarygateway_pillar_v5_17.mpv_level_name.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mpv_level_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.mpv_level_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpv_level_name, range, value, display)

  return offset + length, value
end

-- Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition = {}

-- Size: Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition.size =
  nyse_equities_binarygateway_pillar_v5_17.mpv_level_name.size + 
  nyse_equities_binarygateway_pillar_v5_17.price.size + 
  nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.size + 
  nyse_equities_binarygateway_pillar_v5_17.trading_mpv.size + 
  nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.size

-- Display: Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mpv Level Name: char(24)
  index, mpv_level_name = nyse_equities_binarygateway_pillar_v5_17.mpv_level_name.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_equities_binarygateway_pillar_v5_17.price.dissect(buffer, index, packet, parent)

  -- Quoting Mpv: Price
  index, quoting_mpv = nyse_equities_binarygateway_pillar_v5_17.quoting_mpv.dissect(buffer, index, packet, parent)

  -- Trading Mpv: Price
  index, trading_mpv = nyse_equities_binarygateway_pillar_v5_17.trading_mpv.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpv Level Definition
nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition.dissect = function(buffer, offset, packet, parent)
  if show.mpv_level_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpv_level_definition, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message = {}

-- Read runtime size of: Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_minimum_price_variant_level_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Dependency for Mpv Level Definition
  local end_of_payload = buffer:len()

  -- Mpv Level Definition: Struct of 5 fields
  while index < end_of_payload do
    index, mpv_level_definition = nyse_equities_binarygateway_pillar_v5_17.mpv_level_definition.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Minimum Price Variant Level Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_minimum_price_variant_level_reference_data_message = nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.minimum_price_variant_level_reference_data_message then
    local range = buffer(offset, size_of_minimum_price_variant_level_reference_data_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.minimum_price_variant_level_reference_data_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.fields(buffer, offset, packet, parent, size_of_minimum_price_variant_level_reference_data_message)

  return offset + size_of_minimum_price_variant_level_reference_data_message
end

-- Luldmpv
nyse_equities_binarygateway_pillar_v5_17.luldmpv = {}

-- Size: Luldmpv
nyse_equities_binarygateway_pillar_v5_17.luldmpv.size = 8

-- Display: Luldmpv
nyse_equities_binarygateway_pillar_v5_17.luldmpv.display = function(value)
  return "Luldmpv: "..value
end

-- Translate: Luldmpv
nyse_equities_binarygateway_pillar_v5_17.luldmpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Luldmpv
nyse_equities_binarygateway_pillar_v5_17.luldmpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.luldmpv.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.luldmpv.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.luldmpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.luldmpv, range, value, display)

  return offset + length, value
end

-- Rpimpv
nyse_equities_binarygateway_pillar_v5_17.rpimpv = {}

-- Size: Rpimpv
nyse_equities_binarygateway_pillar_v5_17.rpimpv.size = 8

-- Display: Rpimpv
nyse_equities_binarygateway_pillar_v5_17.rpimpv.display = function(value)
  return "Rpimpv: "..value
end

-- Translate: Rpimpv
nyse_equities_binarygateway_pillar_v5_17.rpimpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Rpimpv
nyse_equities_binarygateway_pillar_v5_17.rpimpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.rpimpv.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.rpimpv.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.rpimpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.rpimpv, range, value, display)

  return offset + length, value
end

-- Mpv Class Name
nyse_equities_binarygateway_pillar_v5_17.mpv_class_name = {}

-- Size: Mpv Class Name
nyse_equities_binarygateway_pillar_v5_17.mpv_class_name.size = 20

-- Display: Mpv Class Name
nyse_equities_binarygateway_pillar_v5_17.mpv_class_name.display = function(value)
  return "Mpv Class Name: "..value
end

-- Dissect: Mpv Class Name
nyse_equities_binarygateway_pillar_v5_17.mpv_class_name.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mpv_class_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.mpv_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mpv_class_name, range, value, display)

  return offset + length, value
end

-- Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message = {}

-- Read runtime size of: Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_minimum_price_variant_class_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Mpv Class Name: char(20)
  index, mpv_class_name = nyse_equities_binarygateway_pillar_v5_17.mpv_class_name.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.dissect(buffer, index, packet, parent)

  -- Rpimpv: Price
  index, rpimpv = nyse_equities_binarygateway_pillar_v5_17.rpimpv.dissect(buffer, index, packet, parent)

  -- Luldmpv: Price
  index, luldmpv = nyse_equities_binarygateway_pillar_v5_17.luldmpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Price Variant Class Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_minimum_price_variant_class_reference_data_message = nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.minimum_price_variant_class_reference_data_message then
    local range = buffer(offset, size_of_minimum_price_variant_class_reference_data_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.minimum_price_variant_class_reference_data_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.fields(buffer, offset, packet, parent, size_of_minimum_price_variant_class_reference_data_message)

  return offset + size_of_minimum_price_variant_class_reference_data_message
end

-- Lmocp
nyse_equities_binarygateway_pillar_v5_17.lmocp = {}

-- Size: Lmocp
nyse_equities_binarygateway_pillar_v5_17.lmocp.size = 8

-- Display: Lmocp
nyse_equities_binarygateway_pillar_v5_17.lmocp.display = function(value)
  return "Lmocp: "..value
end

-- Translate: Lmocp
nyse_equities_binarygateway_pillar_v5_17.lmocp.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lmocp
nyse_equities_binarygateway_pillar_v5_17.lmocp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.lmocp.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.lmocp.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.lmocp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.lmocp, range, value, display)

  return offset + length, value
end

-- Close On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_17.close_on_trade_max_qty = {}

-- Size: Close On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_17.close_on_trade_max_qty.size = 8

-- Display: Close On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_17.close_on_trade_max_qty.display = function(value)
  return "Close On Trade Max Qty: "..value
end

-- Dissect: Close On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_17.close_on_trade_max_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.close_on_trade_max_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.close_on_trade_max_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.close_on_trade_max_qty, range, value, display)

  return offset + length, value
end

-- Open On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_17.open_on_trade_max_qty = {}

-- Size: Open On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_17.open_on_trade_max_qty.size = 8

-- Display: Open On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_17.open_on_trade_max_qty.display = function(value)
  return "Open On Trade Max Qty: "..value
end

-- Dissect: Open On Trade Max Qty
nyse_equities_binarygateway_pillar_v5_17.open_on_trade_max_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.open_on_trade_max_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.open_on_trade_max_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.open_on_trade_max_qty, range, value, display)

  return offset + length, value
end

-- Ppp 3
nyse_equities_binarygateway_pillar_v5_17.ppp_3 = {}

-- Size: Ppp 3
nyse_equities_binarygateway_pillar_v5_17.ppp_3.size = 8

-- Display: Ppp 3
nyse_equities_binarygateway_pillar_v5_17.ppp_3.display = function(value)
  return "Ppp 3: "..value
end

-- Translate: Ppp 3
nyse_equities_binarygateway_pillar_v5_17.ppp_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ppp 3
nyse_equities_binarygateway_pillar_v5_17.ppp_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ppp_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.ppp_3.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.ppp_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ppp_3, range, value, display)

  return offset + length, value
end

-- Ppp 2
nyse_equities_binarygateway_pillar_v5_17.ppp_2 = {}

-- Size: Ppp 2
nyse_equities_binarygateway_pillar_v5_17.ppp_2.size = 8

-- Display: Ppp 2
nyse_equities_binarygateway_pillar_v5_17.ppp_2.display = function(value)
  return "Ppp 2: "..value
end

-- Translate: Ppp 2
nyse_equities_binarygateway_pillar_v5_17.ppp_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ppp 2
nyse_equities_binarygateway_pillar_v5_17.ppp_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ppp_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.ppp_2.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.ppp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ppp_2, range, value, display)

  return offset + length, value
end

-- Ppp 1
nyse_equities_binarygateway_pillar_v5_17.ppp_1 = {}

-- Size: Ppp 1
nyse_equities_binarygateway_pillar_v5_17.ppp_1.size = 8

-- Display: Ppp 1
nyse_equities_binarygateway_pillar_v5_17.ppp_1.display = function(value)
  return "Ppp 1: "..value
end

-- Translate: Ppp 1
nyse_equities_binarygateway_pillar_v5_17.ppp_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ppp 1
nyse_equities_binarygateway_pillar_v5_17.ppp_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ppp_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.ppp_1.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.ppp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ppp_1, range, value, display)

  return offset + length, value
end

-- Ridge Price
nyse_equities_binarygateway_pillar_v5_17.ridge_price = {}

-- Size: Ridge Price
nyse_equities_binarygateway_pillar_v5_17.ridge_price.size = 8

-- Display: Ridge Price
nyse_equities_binarygateway_pillar_v5_17.ridge_price.display = function(value)
  return "Ridge Price: "..value
end

-- Translate: Ridge Price
nyse_equities_binarygateway_pillar_v5_17.ridge_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ridge Price
nyse_equities_binarygateway_pillar_v5_17.ridge_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.ridge_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_equities_binarygateway_pillar_v5_17.ridge_price.translate(raw)
  local display = nyse_equities_binarygateway_pillar_v5_17.ridge_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.ridge_price, range, value, display)

  return offset + length, value
end

-- Rd Seq
nyse_equities_binarygateway_pillar_v5_17.rd_seq = {}

-- Size: Rd Seq
nyse_equities_binarygateway_pillar_v5_17.rd_seq.size = 8

-- Display: Rd Seq
nyse_equities_binarygateway_pillar_v5_17.rd_seq.display = function(value)
  return "Rd Seq: "..value
end

-- Dissect: Rd Seq
nyse_equities_binarygateway_pillar_v5_17.rd_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.rd_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.rd_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.rd_seq, range, value, display)

  return offset + length, value
end

-- Median Volume
nyse_equities_binarygateway_pillar_v5_17.median_volume = {}

-- Size: Median Volume
nyse_equities_binarygateway_pillar_v5_17.median_volume.size = 8

-- Display: Median Volume
nyse_equities_binarygateway_pillar_v5_17.median_volume.display = function(value)
  return "Median Volume: "..value
end

-- Dissect: Median Volume
nyse_equities_binarygateway_pillar_v5_17.median_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.median_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.median_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.median_volume, range, value, display)

  return offset + length, value
end

-- Post
nyse_equities_binarygateway_pillar_v5_17.post = {}

-- Size: Post
nyse_equities_binarygateway_pillar_v5_17.post.size = 2

-- Display: Post
nyse_equities_binarygateway_pillar_v5_17.post.display = function(value)
  return "Post: "..value
end

-- Dissect: Post
nyse_equities_binarygateway_pillar_v5_17.post.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.post.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.post.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.post, range, value, display)

  return offset + length, value
end

-- Dmm Unit Num
nyse_equities_binarygateway_pillar_v5_17.dmm_unit_num = {}

-- Size: Dmm Unit Num
nyse_equities_binarygateway_pillar_v5_17.dmm_unit_num.size = 3

-- Display: Dmm Unit Num
nyse_equities_binarygateway_pillar_v5_17.dmm_unit_num.display = function(value)
  return "Dmm Unit Num: "..value
end

-- Dissect: Dmm Unit Num
nyse_equities_binarygateway_pillar_v5_17.dmm_unit_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.dmm_unit_num.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.dmm_unit_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_unit_num, range, value, display)

  return offset + length, value
end

-- Book
nyse_equities_binarygateway_pillar_v5_17.book = {}

-- Size: Book
nyse_equities_binarygateway_pillar_v5_17.book.size = 8

-- Display: Book
nyse_equities_binarygateway_pillar_v5_17.book.display = function(value)
  return "Book: "..value
end

-- Dissect: Book
nyse_equities_binarygateway_pillar_v5_17.book.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.book.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.book, range, value, display)

  return offset + length, value
end

-- Nyse Symbol
nyse_equities_binarygateway_pillar_v5_17.nyse_symbol = {}

-- Size: Nyse Symbol
nyse_equities_binarygateway_pillar_v5_17.nyse_symbol.size = 24

-- Display: Nyse Symbol
nyse_equities_binarygateway_pillar_v5_17.nyse_symbol.display = function(value)
  return "Nyse Symbol: "..value
end

-- Dissect: Nyse Symbol
nyse_equities_binarygateway_pillar_v5_17.nyse_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.nyse_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.nyse_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.nyse_symbol, range, value, display)

  return offset + length, value
end

-- Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message = {}

-- Read runtime size of: Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_dmm_symbol_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Nyse Symbol: char(24)
  index, nyse_symbol = nyse_equities_binarygateway_pillar_v5_17.nyse_symbol.dissect(buffer, index, packet, parent)

  -- Book: char(8)
  index, book = nyse_equities_binarygateway_pillar_v5_17.book.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Dmm Unit Num: char(3)
  index, dmm_unit_num = nyse_equities_binarygateway_pillar_v5_17.dmm_unit_num.dissect(buffer, index, packet, parent)

  -- Post: char(2)
  index, post = nyse_equities_binarygateway_pillar_v5_17.post.dissect(buffer, index, packet, parent)

  -- Median Volume: u64
  index, median_volume = nyse_equities_binarygateway_pillar_v5_17.median_volume.dissect(buffer, index, packet, parent)

  -- Rd Seq: u64
  index, rd_seq = nyse_equities_binarygateway_pillar_v5_17.rd_seq.dissect(buffer, index, packet, parent)

  -- Ridge Price: Price
  index, ridge_price = nyse_equities_binarygateway_pillar_v5_17.ridge_price.dissect(buffer, index, packet, parent)

  -- Ppp 1: Price
  index, ppp_1 = nyse_equities_binarygateway_pillar_v5_17.ppp_1.dissect(buffer, index, packet, parent)

  -- Ppp 2: Price
  index, ppp_2 = nyse_equities_binarygateway_pillar_v5_17.ppp_2.dissect(buffer, index, packet, parent)

  -- Ppp 3: Price
  index, ppp_3 = nyse_equities_binarygateway_pillar_v5_17.ppp_3.dissect(buffer, index, packet, parent)

  -- Open On Trade Max Qty: u64
  index, open_on_trade_max_qty = nyse_equities_binarygateway_pillar_v5_17.open_on_trade_max_qty.dissect(buffer, index, packet, parent)

  -- Close On Trade Max Qty: u64
  index, close_on_trade_max_qty = nyse_equities_binarygateway_pillar_v5_17.close_on_trade_max_qty.dissect(buffer, index, packet, parent)

  -- Lmocp: Price
  index, lmocp = nyse_equities_binarygateway_pillar_v5_17.lmocp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dmm Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_dmm_symbol_reference_data_message = nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.dmm_symbol_reference_data_message then
    local range = buffer(offset, size_of_dmm_symbol_reference_data_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_symbol_reference_data_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.fields(buffer, offset, packet, parent, size_of_dmm_symbol_reference_data_message)

  return offset + size_of_dmm_symbol_reference_data_message
end

-- Test Symbol Indicator
nyse_equities_binarygateway_pillar_v5_17.test_symbol_indicator = {}

-- Size: Test Symbol Indicator
nyse_equities_binarygateway_pillar_v5_17.test_symbol_indicator.size = 1

-- Display: Test Symbol Indicator
nyse_equities_binarygateway_pillar_v5_17.test_symbol_indicator.display = function(value)
  if value == 0 then
    return "Test Symbol Indicator: Production Symbol (0)"
  end
  if value == 1 then
    return "Test Symbol Indicator: Test Symbol (1)"
  end

  return "Test Symbol Indicator: Unknown("..value..")"
end

-- Dissect: Test Symbol Indicator
nyse_equities_binarygateway_pillar_v5_17.test_symbol_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.test_symbol_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.test_symbol_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.test_symbol_indicator, range, value, display)

  return offset + length, value
end

-- Adv Risk Range Id
nyse_equities_binarygateway_pillar_v5_17.adv_risk_range_id = {}

-- Size: Adv Risk Range Id
nyse_equities_binarygateway_pillar_v5_17.adv_risk_range_id.size = 1

-- Display: Adv Risk Range Id
nyse_equities_binarygateway_pillar_v5_17.adv_risk_range_id.display = function(value)
  return "Adv Risk Range Id: "..value
end

-- Dissect: Adv Risk Range Id
nyse_equities_binarygateway_pillar_v5_17.adv_risk_range_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.adv_risk_range_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.adv_risk_range_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.adv_risk_range_id, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nyse_equities_binarygateway_pillar_v5_17.round_lot_size = {}

-- Size: Round Lot Size
nyse_equities_binarygateway_pillar_v5_17.round_lot_size.size = 1

-- Display: Round Lot Size
nyse_equities_binarygateway_pillar_v5_17.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nyse_equities_binarygateway_pillar_v5_17.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Listed Mic
nyse_equities_binarygateway_pillar_v5_17.listed_mic = {}

-- Size: Listed Mic
nyse_equities_binarygateway_pillar_v5_17.listed_mic.size = 4

-- Display: Listed Mic
nyse_equities_binarygateway_pillar_v5_17.listed_mic.display = function(value)
  return "Listed Mic: "..value
end

-- Dissect: Listed Mic
nyse_equities_binarygateway_pillar_v5_17.listed_mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.listed_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.listed_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.listed_mic, range, value, display)

  return offset + length, value
end

-- Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message = {}

-- Read runtime size of: Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_equities_symbol_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_equities_binarygateway_pillar_v5_17.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Nyse Symbol: char(24)
  index, nyse_symbol = nyse_equities_binarygateway_pillar_v5_17.nyse_symbol.dissect(buffer, index, packet, parent)

  -- Listed Mic: char(4)
  index, listed_mic = nyse_equities_binarygateway_pillar_v5_17.listed_mic.dissect(buffer, index, packet, parent)

  -- Round Lot Size: u8
  index, round_lot_size = nyse_equities_binarygateway_pillar_v5_17.round_lot_size.dissect(buffer, index, packet, parent)

  -- Adv Risk Range Id: u8
  index, adv_risk_range_id = nyse_equities_binarygateway_pillar_v5_17.adv_risk_range_id.dissect(buffer, index, packet, parent)

  -- Reserved 7: char(7)
  index, reserved_7 = nyse_equities_binarygateway_pillar_v5_17.reserved_7.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_equities_binarygateway_pillar_v5_17.mpv_class_id.dissect(buffer, index, packet, parent)

  -- Test Symbol Indicator: u8
  index, test_symbol_indicator = nyse_equities_binarygateway_pillar_v5_17.test_symbol_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equities Symbol Reference Data Message
nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_equities_symbol_reference_data_message = nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.equities_symbol_reference_data_message then
    local range = buffer(offset, size_of_equities_symbol_reference_data_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.equities_symbol_reference_data_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.fields(buffer, offset, packet, parent, size_of_equities_symbol_reference_data_message)

  return offset + size_of_equities_symbol_reference_data_message
end

-- Reserved 199
nyse_equities_binarygateway_pillar_v5_17.reserved_199 = {}

-- Size: Reserved 199
nyse_equities_binarygateway_pillar_v5_17.reserved_199.size = 199

-- Display: Reserved 199
nyse_equities_binarygateway_pillar_v5_17.reserved_199.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved 199: No Value"
  end

  return "Reserved 199: "..value
end

-- Dissect: Reserved 199
nyse_equities_binarygateway_pillar_v5_17.reserved_199.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.reserved_199.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.reserved_199.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.reserved_199, range, value, display)

  return offset + length, value
end

-- Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message = {}

-- Read runtime size of: Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.fields = function(buffer, offset, packet, parent, size_of_risk_action_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker Zchar 1010: zchar(10)
  index, market_maker_zchar_1010 = nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.dissect(buffer, index, packet, parent)

  -- Mp Sub Id Zchar 44: zchar(4)
  index, mp_sub_id_zchar_44 = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_17.reserved_4.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_equities_binarygateway_pillar_v5_17.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_equities_binarygateway_pillar_v5_17.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_17.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_equities_binarygateway_pillar_v5_17.risk_action_type.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_equities_binarygateway_pillar_v5_17.risk_range_id.dissect(buffer, index, packet, parent)

  -- Reserved 199: zchar(199)
  index, reserved_199 = nyse_equities_binarygateway_pillar_v5_17.reserved_199.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Action Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_action_request_message = nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_action_request_message then
    local range = buffer(offset, size_of_risk_action_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_action_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.fields(buffer, offset, packet, parent, size_of_risk_action_request_message)

  return offset + size_of_risk_action_request_message
end

-- Breach Action Request
nyse_equities_binarygateway_pillar_v5_17.breach_action_request = {}

-- Size: Breach Action Request
nyse_equities_binarygateway_pillar_v5_17.breach_action_request.size = 1

-- Display: Breach Action Request
nyse_equities_binarygateway_pillar_v5_17.breach_action_request.display = function(value)
  if value == 0 then
    return "Breach Action Request: Not Applicable (0)"
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
nyse_equities_binarygateway_pillar_v5_17.breach_action_request.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.breach_action_request.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.breach_action_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.breach_action_request, range, value, display)

  return offset + length, value
end

-- Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message = {}

-- Read runtime size of: Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.fields = function(buffer, offset, packet, parent, size_of_risk_limit_update_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker Zchar 1010: zchar(10)
  index, market_maker_zchar_1010 = nyse_equities_binarygateway_pillar_v5_17.market_maker_zchar_1010.dissect(buffer, index, packet, parent)

  -- Mp Sub Id Zchar 44: zchar(4)
  index, mp_sub_id_zchar_44 = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_zchar_44.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_17.reserved_4.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_equities_binarygateway_pillar_v5_17.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_equities_binarygateway_pillar_v5_17.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_equities_binarygateway_pillar_v5_17.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_equities_binarygateway_pillar_v5_17.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Control Activation: u8
  index, risk_control_activation = nyse_equities_binarygateway_pillar_v5_17.risk_control_activation.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_equities_binarygateway_pillar_v5_17.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_equities_binarygateway_pillar_v5_17.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_equities_binarygateway_pillar_v5_17.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_equities_binarygateway_pillar_v5_17.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Request: u8
  index, breach_action_request = nyse_equities_binarygateway_pillar_v5_17.breach_action_request.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_equities_binarygateway_pillar_v5_17.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_equities_binarygateway_pillar_v5_17.risk_range_id.dissect(buffer, index, packet, parent)

  -- Risk Minimum Value: i64
  index, risk_minimum_value = nyse_equities_binarygateway_pillar_v5_17.risk_minimum_value.dissect(buffer, index, packet, parent)

  -- Price Scale: u8
  index, price_scale = nyse_equities_binarygateway_pillar_v5_17.price_scale.dissect(buffer, index, packet, parent)

  -- Reserved 190: zchar(190)
  index, reserved_190 = nyse_equities_binarygateway_pillar_v5_17.reserved_190.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Limit Update Request Message
nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_limit_update_request_message = nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_limit_update_request_message then
    local range = buffer(offset, size_of_risk_limit_update_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.risk_limit_update_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.fields(buffer, offset, packet, parent, size_of_risk_limit_update_request_message)

  return offset + size_of_risk_limit_update_request_message
end

-- Dmm Reject Reason
nyse_equities_binarygateway_pillar_v5_17.dmm_reject_reason = {}

-- Size: Dmm Reject Reason
nyse_equities_binarygateway_pillar_v5_17.dmm_reject_reason.size = 20

-- Display: Dmm Reject Reason
nyse_equities_binarygateway_pillar_v5_17.dmm_reject_reason.display = function(value)
  return "Dmm Reject Reason: "..value
end

-- Dissect: Dmm Reject Reason
nyse_equities_binarygateway_pillar_v5_17.dmm_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.dmm_reject_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_equities_binarygateway_pillar_v5_17.dmm_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.dmm_reject_reason, range, value, display)

  return offset + length, value
end

-- Manual Response Type
nyse_equities_binarygateway_pillar_v5_17.manual_response_type = {}

-- Size: Manual Response Type
nyse_equities_binarygateway_pillar_v5_17.manual_response_type.size = 1

-- Display: Manual Response Type
nyse_equities_binarygateway_pillar_v5_17.manual_response_type.display = function(value)
  if value == 1 then
    return "Manual Response Type: Approve Manual Action Request (1)"
  end
  if value == 2 then
    return "Manual Response Type: Reject Manual Action Request (2)"
  end

  return "Manual Response Type: Unknown("..value..")"
end

-- Dissect: Manual Response Type
nyse_equities_binarygateway_pillar_v5_17.manual_response_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.manual_response_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.manual_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_response_type, range, value, display)

  return offset + length, value
end

-- Self Trade Type U 81
nyse_equities_binarygateway_pillar_v5_17.self_trade_type_u_81 = {}

-- Size: Self Trade Type U 81
nyse_equities_binarygateway_pillar_v5_17.self_trade_type_u_81.size = 1

-- Display: Self Trade Type U 81
nyse_equities_binarygateway_pillar_v5_17.self_trade_type_u_81.display = function(value)
  return "Self Trade Type U 81: "..value
end

-- Dissect: Self Trade Type U 81
nyse_equities_binarygateway_pillar_v5_17.self_trade_type_u_81.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.self_trade_type_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.self_trade_type_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.self_trade_type_u_81, range, value, display)

  return offset + length, value
end

-- Intraday Sell Short Qty
nyse_equities_binarygateway_pillar_v5_17.intraday_sell_short_qty = {}

-- Size: Intraday Sell Short Qty
nyse_equities_binarygateway_pillar_v5_17.intraday_sell_short_qty.size = 4

-- Display: Intraday Sell Short Qty
nyse_equities_binarygateway_pillar_v5_17.intraday_sell_short_qty.display = function(value)
  return "Intraday Sell Short Qty: "..value
end

-- Dissect: Intraday Sell Short Qty
nyse_equities_binarygateway_pillar_v5_17.intraday_sell_short_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.intraday_sell_short_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.intraday_sell_short_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.intraday_sell_short_qty, range, value, display)

  return offset + length, value
end

-- Sell Indicator
nyse_equities_binarygateway_pillar_v5_17.sell_indicator = {}

-- Size: Sell Indicator
nyse_equities_binarygateway_pillar_v5_17.sell_indicator.size = 1

-- Display: Sell Indicator
nyse_equities_binarygateway_pillar_v5_17.sell_indicator.display = function(value)
  return "Sell Indicator: "..value
end

-- Dissect: Sell Indicator
nyse_equities_binarygateway_pillar_v5_17.sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.sell_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.sell_indicator, range, value, display)

  return offset + length, value
end

-- Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message = {}

-- Read runtime size of: Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.fields = function(buffer, offset, packet, parent, size_of_manual_action_response_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Manual Action Id: Struct of 2 fields
  index, manual_action_id = nyse_equities_binarygateway_pillar_v5_17.manual_action_id.dissect(buffer, index, packet, parent)

  -- Sell Indicator: u8
  index, sell_indicator = nyse_equities_binarygateway_pillar_v5_17.sell_indicator.dissect(buffer, index, packet, parent)

  -- Intraday Sell Short Qty: u32
  index, intraday_sell_short_qty = nyse_equities_binarygateway_pillar_v5_17.intraday_sell_short_qty.dissect(buffer, index, packet, parent)

  -- Mp Sub Id Char 1: char
  index, mp_sub_id_char_1 = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1.dissect(buffer, index, packet, parent)

  -- Locate Reqd U 81: u8
  index, locate_reqd_u_81 = nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.dissect(buffer, index, packet, parent)

  -- Self Trade Type U 81: u8
  index, self_trade_type_u_81 = nyse_equities_binarygateway_pillar_v5_17.self_trade_type_u_81.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_equities_binarygateway_pillar_v5_17.user_data.dissect(buffer, index, packet, parent)

  -- Manual Response Type: u8
  index, manual_response_type = nyse_equities_binarygateway_pillar_v5_17.manual_response_type.dissect(buffer, index, packet, parent)

  -- Dmm Reject Reason: char(20)
  index, dmm_reject_reason = nyse_equities_binarygateway_pillar_v5_17.dmm_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Action Response Message
nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_manual_action_response_message = nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.manual_action_response_message then
    local range = buffer(offset, size_of_manual_action_response_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.manual_action_response_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.fields(buffer, offset, packet, parent, size_of_manual_action_response_message)

  return offset + size_of_manual_action_response_message
end

-- Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message = {}

-- Read runtime size of: Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.fields = function(buffer, offset, packet, parent, size_of_symbol_subscription_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_equities_binarygateway_pillar_v5_17.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Subscription Request Message
nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_symbol_subscription_request_message = nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.symbol_subscription_request_message then
    local range = buffer(offset, size_of_symbol_subscription_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.symbol_subscription_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.fields(buffer, offset, packet, parent, size_of_symbol_subscription_request_message)

  return offset + size_of_symbol_subscription_request_message
end

-- Bulk Cancel Type
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_type = {}

-- Size: Bulk Cancel Type
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_type.size = 1

-- Display: Bulk Cancel Type
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_type.display = function(value)
  if value == 1 then
    return "Bulk Cancel Type: Session Day Directed (1)"
  end
  if value == 2 then
    return "Bulk Cancel Type: Session All Orders (2)"
  end
  if value == 3 then
    return "Bulk Cancel Type: Session Opening Day Directed (3)"
  end
  if value == 4 then
    return "Bulk Cancel Type: Mpid Opening Day Directed (4)"
  end
  if value == 5 then
    return "Bulk Cancel Type: Mpid Day Directed (5)"
  end
  if value == 6 then
    return "Bulk Cancel Type: Mpid Gtc (6)"
  end
  if value == 7 then
    return "Bulk Cancel Type: Mpid Opening Close (7)"
  end
  if value == 8 then
    return "Bulk Cancel Type: Mpid Day Orders (8)"
  end
  if value == 9 then
    return "Bulk Cancel Type: Mpid Cancel Block New (9)"
  end
  if value == 10 then
    return "Bulk Cancel Type: Mpid Block New (10)"
  end
  if value == 11 then
    return "Bulk Cancel Type: Mpid Unblock New (11)"
  end
  if value == 12 then
    return "Bulk Cancel Type: Mpid Directed Orders (12)"
  end
  if value == 13 then
    return "Bulk Cancel Type: Mpid Capital Commitment (13)"
  end

  return "Bulk Cancel Type: Unknown("..value..")"
end

-- Dissect: Bulk Cancel Type
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.bulk_cancel_type, range, value, display)

  return offset + length, value
end

-- Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message = {}

-- Read runtime size of: Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.fields = function(buffer, offset, packet, parent, size_of_bulk_cancel_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Mmid: u32
  index, mmid = nyse_equities_binarygateway_pillar_v5_17.mmid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Deliver To Comp Id: zchar(5)
  index, deliver_to_comp_id = nyse_equities_binarygateway_pillar_v5_17.deliver_to_comp_id.dissect(buffer, index, packet, parent)

  -- Bulk Cancel Type: u8
  index, bulk_cancel_type = nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_type.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_equities_binarygateway_pillar_v5_17.side_u_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_bulk_cancel_request_message = nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.bulk_cancel_request_message then
    local range = buffer(offset, size_of_bulk_cancel_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.bulk_cancel_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.fields(buffer, offset, packet, parent, size_of_bulk_cancel_request_message)

  return offset + size_of_bulk_cancel_request_message
end

-- Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message = {}

-- Read runtime size of: Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.fields = function(buffer, offset, packet, parent, size_of_order_modify_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_equities_binarygateway_pillar_v5_17.order_qty.dissect(buffer, index, packet, parent)

  -- Side U 81: u8
  index, side_u_81 = nyse_equities_binarygateway_pillar_v5_17.side_u_81.dissect(buffer, index, packet, parent)

  -- Locate Reqd U 81: u8
  index, locate_reqd_u_81 = nyse_equities_binarygateway_pillar_v5_17.locate_reqd_u_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Request Message
nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_modify_request_message = nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_modify_request_message then
    local range = buffer(offset, size_of_order_modify_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_modify_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.fields(buffer, offset, packet, parent, size_of_order_modify_request_message)

  return offset + size_of_order_modify_request_message
end

-- Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message = {}

-- Read runtime size of: Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.fields = function(buffer, offset, packet, parent, size_of_order_cancel_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_cancel_request_message = nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_cancel_request_message then
    local range = buffer(offset, size_of_order_cancel_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.order_cancel_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.fields(buffer, offset, packet, parent, size_of_order_cancel_request_message)

  return offset + size_of_order_cancel_request_message
end

-- New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message = {}

-- Read runtime size of: New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.fields = function(buffer, offset, packet, parent, size_of_new_order_single_and_cancel_replace_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_equities_binarygateway_pillar_v5_17.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_equities_binarygateway_pillar_v5_17.mpid.dissect(buffer, index, packet, parent)

  -- Mmid: u32
  index, mmid = nyse_equities_binarygateway_pillar_v5_17.mmid.dissect(buffer, index, packet, parent)

  -- Mp Sub Id Char 1: char
  index, mp_sub_id_char_1 = nyse_equities_binarygateway_pillar_v5_17.mp_sub_id_char_1.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_equities_binarygateway_pillar_v5_17.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: Struct of 18 fields
  index, bitfield_order_instructions = nyse_equities_binarygateway_pillar_v5_17.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_equities_binarygateway_pillar_v5_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_equities_binarygateway_pillar_v5_17.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_equities_binarygateway_pillar_v5_17.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_equities_binarygateway_pillar_v5_17.user_data.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length > 61

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_equities_binarygateway_pillar_v5_17.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Single And Cancel Replace Request Message
nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_order_single_and_cancel_replace_request_message = nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_order_single_and_cancel_replace_request_message then
    local range = buffer(offset, size_of_new_order_single_and_cancel_replace_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.new_order_single_and_cancel_replace_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.fields(buffer, offset, packet, parent, size_of_new_order_single_and_cancel_replace_request_message)

  return offset + size_of_new_order_single_and_cancel_replace_request_message
end

-- Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message = {}

-- Read runtime size of: Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.fields = function(buffer, offset, packet, parent, size_of_session_configuration_request_message)
  local index = offset

  -- Username: char(16)
  index, username = nyse_equities_binarygateway_pillar_v5_17.username.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: u8
  index, cancel_on_disconnect = nyse_equities_binarygateway_pillar_v5_17.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Throttle Preference: u8
  index, throttle_preference = nyse_equities_binarygateway_pillar_v5_17.throttle_preference.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: u8
  index, self_trade_prevention = nyse_equities_binarygateway_pillar_v5_17.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: u8
  index, order_priority_update_ack_subscription = nyse_equities_binarygateway_pillar_v5_17.order_priority_update_ack_subscription.dissect(buffer, index, packet, parent)

  -- Bold Designation: u8
  index, bold_designation = nyse_equities_binarygateway_pillar_v5_17.bold_designation.dissect(buffer, index, packet, parent)

  -- Reserved 49: zchar(49)
  index, reserved_49 = nyse_equities_binarygateway_pillar_v5_17.reserved_49.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Request Message
nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_configuration_request_message = nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_configuration_request_message then
    local range = buffer(offset, size_of_session_configuration_request_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.session_configuration_request_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.fields(buffer, offset, packet, parent, size_of_session_configuration_request_message)

  return offset + size_of_session_configuration_request_message
end

-- Sequenced Message
nyse_equities_binarygateway_pillar_v5_17.sequenced_message = {}

-- Size: Sequenced Message
nyse_equities_binarygateway_pillar_v5_17.sequenced_message.size = function(buffer, offset, seq_msg_type)
  -- Size of Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.size(buffer, offset)
  end
  -- Size of Sequenced Filler Message
  if seq_msg_type == 0x0282 then
    return 0
  end
  -- Size of New Order Single And Cancel Replace Request Message
  if seq_msg_type == 0x0240 then
    return nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.size(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if seq_msg_type == 0x0280 then
    return nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.size(buffer, offset)
  end
  -- Size of Order Modify Request Message
  if seq_msg_type == 0x0270 then
    return nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.size(buffer, offset)
  end
  -- Size of Bulk Cancel Request Message
  if seq_msg_type == 0x0281 then
    return nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.size(buffer, offset)
  end
  -- Size of Symbol Subscription Request Message
  if seq_msg_type == 0x0346 then
    return nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.size(buffer, offset)
  end
  -- Size of Tg Begin Message
  if seq_msg_type == 0x0343 then
    return 0
  end
  -- Size of Tg End Message
  if seq_msg_type == 0x0344 then
    return 0
  end
  -- Size of Manual Action Response Message
  if seq_msg_type == 0x0354 then
    return nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.size(buffer, offset)
  end
  -- Size of Risk Limit Update Request Message
  if seq_msg_type == 0x0330 then
    return nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.size(buffer, offset)
  end
  -- Size of Risk Action Request Message
  if seq_msg_type == 0x0331 then
    return nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.size(buffer, offset)
  end
  -- Size of Equities Symbol Reference Data Message
  if seq_msg_type == 0x0232 then
    return nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.size(buffer, offset)
  end
  -- Size of Dmm Symbol Reference Data Message
  if seq_msg_type == 0x0832 then
    return nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.size(buffer, offset)
  end
  -- Size of Minimum Price Variant Class Reference Data Message
  if seq_msg_type == 0x0230 then
    return nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.size(buffer, offset)
  end
  -- Size of Minimum Price Variant Level Reference Data Message
  if seq_msg_type == 0x0231 then
    return nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.size(buffer, offset)
  end
  -- Size of Mpid Configuration Message
  if seq_msg_type == 0x0272 then
    return nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.size(buffer, offset)
  end
  -- Size of Mmid Configuration Message
  if seq_msg_type == 0x0273 then
    return nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.size(buffer, offset)
  end
  -- Size of Session Configuration Acknowledgement Message
  if seq_msg_type == 0x0221 then
    return nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Order And Cancel Replace Acknowledgement Message
  if seq_msg_type == 0x0260 then
    return nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Order Modify Cancel Request Acknowledgment And Urout Message
  if seq_msg_type == 0x0271 then
    return nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.size(buffer, offset)
  end
  -- Size of Order Priority Update Acknowledgment Message
  if seq_msg_type == 0x0262 then
    return nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.size(buffer, offset)
  end
  -- Size of Execution Report Message
  if seq_msg_type == 0x0290 then
    return nyse_equities_binarygateway_pillar_v5_17.execution_report_message.size(buffer, offset)
  end
  -- Size of Trade Bust Correct Message
  if seq_msg_type == 0x0292 then
    return nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.size(buffer, offset)
  end
  -- Size of Application Layer Reject Message
  if seq_msg_type == 0x0263 then
    return nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.size(buffer, offset)
  end
  -- Size of Symbol Subscription Acknowledgement Message
  if seq_msg_type == 0x0347 then
    return nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Gt Begin Message
  if seq_msg_type == 0x0349 then
    return nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.size(buffer, offset)
  end
  -- Size of Gt End Message
  if seq_msg_type == 0x0350 then
    return nyse_equities_binarygateway_pillar_v5_17.gt_end_message.size(buffer, offset)
  end
  -- Size of Auction Price Data Message
  if seq_msg_type == 0x0352 then
    return nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.size(buffer, offset)
  end
  -- Size of Auction Request Message
  if seq_msg_type == 0x0348 then
    return nyse_equities_binarygateway_pillar_v5_17.auction_request_message.size(buffer, offset)
  end
  -- Size of Manual Action Request Message
  if seq_msg_type == 0x0353 then
    return nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.size(buffer, offset)
  end
  -- Size of Risk Control Acknowledgement Message
  if seq_msg_type == 0x0332 then
    return nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Risk Control Alert Message
  if seq_msg_type == 0x0333 then
    return nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
nyse_equities_binarygateway_pillar_v5_17.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
nyse_equities_binarygateway_pillar_v5_17.sequenced_message.branches = function(buffer, offset, packet, parent, seq_msg_type)
  -- Dissect Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_equities_binarygateway_pillar_v5_17.session_configuration_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Filler Message
  if seq_msg_type == 0x0282 then
  end
  -- Dissect New Order Single And Cancel Replace Request Message
  if seq_msg_type == 0x0240 then
    return nyse_equities_binarygateway_pillar_v5_17.new_order_single_and_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if seq_msg_type == 0x0280 then
    return nyse_equities_binarygateway_pillar_v5_17.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Request Message
  if seq_msg_type == 0x0270 then
    return nyse_equities_binarygateway_pillar_v5_17.order_modify_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Cancel Request Message
  if seq_msg_type == 0x0281 then
    return nyse_equities_binarygateway_pillar_v5_17.bulk_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Subscription Request Message
  if seq_msg_type == 0x0346 then
    return nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tg Begin Message
  if seq_msg_type == 0x0343 then
  end
  -- Dissect Tg End Message
  if seq_msg_type == 0x0344 then
  end
  -- Dissect Manual Action Response Message
  if seq_msg_type == 0x0354 then
    return nyse_equities_binarygateway_pillar_v5_17.manual_action_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Limit Update Request Message
  if seq_msg_type == 0x0330 then
    return nyse_equities_binarygateway_pillar_v5_17.risk_limit_update_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Action Request Message
  if seq_msg_type == 0x0331 then
    return nyse_equities_binarygateway_pillar_v5_17.risk_action_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equities Symbol Reference Data Message
  if seq_msg_type == 0x0232 then
    return nyse_equities_binarygateway_pillar_v5_17.equities_symbol_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dmm Symbol Reference Data Message
  if seq_msg_type == 0x0832 then
    return nyse_equities_binarygateway_pillar_v5_17.dmm_symbol_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Class Reference Data Message
  if seq_msg_type == 0x0230 then
    return nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_class_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Level Reference Data Message
  if seq_msg_type == 0x0231 then
    return nyse_equities_binarygateway_pillar_v5_17.minimum_price_variant_level_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mpid Configuration Message
  if seq_msg_type == 0x0272 then
    return nyse_equities_binarygateway_pillar_v5_17.mpid_configuration_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mmid Configuration Message
  if seq_msg_type == 0x0273 then
    return nyse_equities_binarygateway_pillar_v5_17.mmid_configuration_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Configuration Acknowledgement Message
  if seq_msg_type == 0x0221 then
    return nyse_equities_binarygateway_pillar_v5_17.session_configuration_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order And Cancel Replace Acknowledgement Message
  if seq_msg_type == 0x0260 then
    return nyse_equities_binarygateway_pillar_v5_17.order_and_cancel_replace_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Cancel Request Acknowledgment And Urout Message
  if seq_msg_type == 0x0271 then
    return nyse_equities_binarygateway_pillar_v5_17.order_modify_cancel_request_acknowledgment_and_urout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Acknowledgment Message
  if seq_msg_type == 0x0262 then
    return nyse_equities_binarygateway_pillar_v5_17.order_priority_update_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Message
  if seq_msg_type == 0x0290 then
    return nyse_equities_binarygateway_pillar_v5_17.execution_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Correct Message
  if seq_msg_type == 0x0292 then
    return nyse_equities_binarygateway_pillar_v5_17.trade_bust_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Application Layer Reject Message
  if seq_msg_type == 0x0263 then
    return nyse_equities_binarygateway_pillar_v5_17.application_layer_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Subscription Acknowledgement Message
  if seq_msg_type == 0x0347 then
    return nyse_equities_binarygateway_pillar_v5_17.symbol_subscription_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gt Begin Message
  if seq_msg_type == 0x0349 then
    return nyse_equities_binarygateway_pillar_v5_17.gt_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gt End Message
  if seq_msg_type == 0x0350 then
    return nyse_equities_binarygateway_pillar_v5_17.gt_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Price Data Message
  if seq_msg_type == 0x0352 then
    return nyse_equities_binarygateway_pillar_v5_17.auction_price_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Request Message
  if seq_msg_type == 0x0348 then
    return nyse_equities_binarygateway_pillar_v5_17.auction_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Action Request Message
  if seq_msg_type == 0x0353 then
    return nyse_equities_binarygateway_pillar_v5_17.manual_action_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Acknowledgement Message
  if seq_msg_type == 0x0332 then
    return nyse_equities_binarygateway_pillar_v5_17.risk_control_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Alert Message
  if seq_msg_type == 0x0333 then
    return nyse_equities_binarygateway_pillar_v5_17.risk_control_alert_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
nyse_equities_binarygateway_pillar_v5_17.sequenced_message.dissect = function(buffer, offset, packet, parent, seq_msg_type)
  if not show.sequenced_message then
    return nyse_equities_binarygateway_pillar_v5_17.sequenced_message.branches(buffer, offset, packet, parent, seq_msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_equities_binarygateway_pillar_v5_17.sequenced_message.size(buffer, offset, seq_msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_equities_binarygateway_pillar_v5_17.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.sequenced_message, range, display)

  return nyse_equities_binarygateway_pillar_v5_17.sequenced_message.branches(buffer, offset, packet, parent, seq_msg_type)
end

-- Seq Msg Length
nyse_equities_binarygateway_pillar_v5_17.seq_msg_length = {}

-- Size: Seq Msg Length
nyse_equities_binarygateway_pillar_v5_17.seq_msg_length.size = 2

-- Display: Seq Msg Length
nyse_equities_binarygateway_pillar_v5_17.seq_msg_length.display = function(value)
  return "Seq Msg Length: "..value
end

-- Dissect: Seq Msg Length
nyse_equities_binarygateway_pillar_v5_17.seq_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.seq_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.seq_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg_length, range, value, display)

  return offset + length, value
end

-- Seq Msg Type
nyse_equities_binarygateway_pillar_v5_17.seq_msg_type = {}

-- Size: Seq Msg Type
nyse_equities_binarygateway_pillar_v5_17.seq_msg_type.size = 2

-- Display: Seq Msg Type
nyse_equities_binarygateway_pillar_v5_17.seq_msg_type.display = function(value)
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
    return "Seq Msg Type: Order Modify Cancel Request Acknowledgment And Urout Message (0x0271)"
  end
  if value == 0x0262 then
    return "Seq Msg Type: Order Priority Update Acknowledgment Message (0x0262)"
  end
  if value == 0x0290 then
    return "Seq Msg Type: Execution Report Message (0x0290)"
  end
  if value == 0x0292 then
    return "Seq Msg Type: Trade Bust Correct Message (0x0292)"
  end
  if value == 0x0263 then
    return "Seq Msg Type: Application Layer Reject Message (0x0263)"
  end
  if value == 0x0347 then
    return "Seq Msg Type: Symbol Subscription Acknowledgement Message (0x0347)"
  end
  if value == 0x0349 then
    return "Seq Msg Type: Gt Begin Message (0x0349)"
  end
  if value == 0x0350 then
    return "Seq Msg Type: Gt End Message (0x0350)"
  end
  if value == 0x0352 then
    return "Seq Msg Type: Auction Price Data Message (0x0352)"
  end
  if value == 0x0348 then
    return "Seq Msg Type: Auction Request Message (0x0348)"
  end
  if value == 0x0353 then
    return "Seq Msg Type: Manual Action Request Message (0x0353)"
  end
  if value == 0x0332 then
    return "Seq Msg Type: Risk Control Acknowledgement Message (0x0332)"
  end
  if value == 0x0333 then
    return "Seq Msg Type: Risk Control Alert Message (0x0333)"
  end

  return "Seq Msg Type: Unknown("..value..")"
end

-- Dissect: Seq Msg Type
nyse_equities_binarygateway_pillar_v5_17.seq_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.seq_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.seq_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg_type, range, value, display)

  return offset + length, value
end

-- Seq Msg Header
nyse_equities_binarygateway_pillar_v5_17.seq_msg_header = {}

-- Size: Seq Msg Header
nyse_equities_binarygateway_pillar_v5_17.seq_msg_header.size =
  nyse_equities_binarygateway_pillar_v5_17.seq_msg_type.size + 
  nyse_equities_binarygateway_pillar_v5_17.seq_msg_length.size

-- Display: Seq Msg Header
nyse_equities_binarygateway_pillar_v5_17.seq_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Header
nyse_equities_binarygateway_pillar_v5_17.seq_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 33 values
  index, seq_msg_type = nyse_equities_binarygateway_pillar_v5_17.seq_msg_type.dissect(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_equities_binarygateway_pillar_v5_17.seq_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Header
nyse_equities_binarygateway_pillar_v5_17.seq_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.seq_msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg_header, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.seq_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.seq_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.seq_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp
nyse_equities_binarygateway_pillar_v5_17.timestamp = {}

-- Size: Timestamp
nyse_equities_binarygateway_pillar_v5_17.timestamp.size = 8

-- Display: Timestamp
nyse_equities_binarygateway_pillar_v5_17.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_binarygateway_pillar_v5_17.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.seq_msg_id = {}

-- Size: Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.seq_msg_id.size =
  nyse_equities_binarygateway_pillar_v5_17.stream_id.size + 
  nyse_equities_binarygateway_pillar_v5_17.seq.size

-- Display: Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.seq_msg_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.seq_msg_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: u64
  index, seq = nyse_equities_binarygateway_pillar_v5_17.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Id
nyse_equities_binarygateway_pillar_v5_17.seq_msg_id.dissect = function(buffer, offset, packet, parent)
  if show.seq_msg_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg_id, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.seq_msg_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.seq_msg_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.seq_msg_id.fields(buffer, offset, packet, parent)
  end
end

-- Msg Length
nyse_equities_binarygateway_pillar_v5_17.msg_length = {}

-- Size: Msg Length
nyse_equities_binarygateway_pillar_v5_17.msg_length.size = 2

-- Display: Msg Length
nyse_equities_binarygateway_pillar_v5_17.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nyse_equities_binarygateway_pillar_v5_17.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_equities_binarygateway_pillar_v5_17.msg_type = {}

-- Size: Msg Type
nyse_equities_binarygateway_pillar_v5_17.msg_type.size = 2

-- Display: Msg Type
nyse_equities_binarygateway_pillar_v5_17.msg_type.display = function(value)
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
nyse_equities_binarygateway_pillar_v5_17.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Header
nyse_equities_binarygateway_pillar_v5_17.msg_header = {}

-- Size: Msg Header
nyse_equities_binarygateway_pillar_v5_17.msg_header.size =
  nyse_equities_binarygateway_pillar_v5_17.msg_type.size + 
  nyse_equities_binarygateway_pillar_v5_17.msg_length.size

-- Display: Msg Header
nyse_equities_binarygateway_pillar_v5_17.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
nyse_equities_binarygateway_pillar_v5_17.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = nyse_equities_binarygateway_pillar_v5_17.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = nyse_equities_binarygateway_pillar_v5_17.msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.msg_header, buffer(offset, 0))
    local index = nyse_equities_binarygateway_pillar_v5_17.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_binarygateway_pillar_v5_17.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_binarygateway_pillar_v5_17.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Seq Msg
nyse_equities_binarygateway_pillar_v5_17.seq_msg = {}

-- Read runtime size of: Seq Msg
nyse_equities_binarygateway_pillar_v5_17.seq_msg.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Seq Msg
nyse_equities_binarygateway_pillar_v5_17.seq_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg
nyse_equities_binarygateway_pillar_v5_17.seq_msg.fields = function(buffer, offset, packet, parent, size_of_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  -- Seq Msg Id: Struct of 2 fields
  index, seq_msg_id = nyse_equities_binarygateway_pillar_v5_17.seq_msg_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_equities_binarygateway_pillar_v5_17.reserved_4.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_binarygateway_pillar_v5_17.timestamp.dissect(buffer, index, packet, parent)

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_equities_binarygateway_pillar_v5_17.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Type
  local seq_msg_type = buffer(index - 4, 2):le_uint()

  -- Sequenced Message: Runtime Type with 33 branches
  index = nyse_equities_binarygateway_pillar_v5_17.sequenced_message.dissect(buffer, index, packet, parent, seq_msg_type)

  return index
end

-- Dissect: Seq Msg
nyse_equities_binarygateway_pillar_v5_17.seq_msg.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_seq_msg = nyse_equities_binarygateway_pillar_v5_17.seq_msg.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.seq_msg then
    local range = buffer(offset, size_of_seq_msg)
    local display = nyse_equities_binarygateway_pillar_v5_17.seq_msg.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.seq_msg, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.seq_msg.fields(buffer, offset, packet, parent, size_of_seq_msg)

  return offset + size_of_seq_msg
end

-- Status
nyse_equities_binarygateway_pillar_v5_17.status = {}

-- Size: Status
nyse_equities_binarygateway_pillar_v5_17.status.size = 1

-- Display: Status
nyse_equities_binarygateway_pillar_v5_17.status.display = function(value)
  if value == 0 then
    return "Status: Request Processed Successfully (0)"
  end
  if value == 18 then
    return "Status: Not Logged In (18)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_equities_binarygateway_pillar_v5_17.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.status, range, value, display)

  return offset + length, value
end

-- Close Response
nyse_equities_binarygateway_pillar_v5_17.close_response = {}

-- Read runtime size of: Close Response
nyse_equities_binarygateway_pillar_v5_17.close_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close Response
nyse_equities_binarygateway_pillar_v5_17.close_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close Response
nyse_equities_binarygateway_pillar_v5_17.close_response.fields = function(buffer, offset, packet, parent, size_of_close_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_equities_binarygateway_pillar_v5_17.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Response
nyse_equities_binarygateway_pillar_v5_17.close_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close_response = nyse_equities_binarygateway_pillar_v5_17.close_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close_response then
    local range = buffer(offset, size_of_close_response)
    local display = nyse_equities_binarygateway_pillar_v5_17.close_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.close_response, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.close_response.fields(buffer, offset, packet, parent, size_of_close_response)

  return offset + size_of_close_response
end

-- Close
nyse_equities_binarygateway_pillar_v5_17.close = {}

-- Read runtime size of: Close
nyse_equities_binarygateway_pillar_v5_17.close.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close
nyse_equities_binarygateway_pillar_v5_17.close.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close
nyse_equities_binarygateway_pillar_v5_17.close.fields = function(buffer, offset, packet, parent, size_of_close)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close
nyse_equities_binarygateway_pillar_v5_17.close.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close = nyse_equities_binarygateway_pillar_v5_17.close.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close then
    local range = buffer(offset, size_of_close)
    local display = nyse_equities_binarygateway_pillar_v5_17.close.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.close, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.close.fields(buffer, offset, packet, parent, size_of_close)

  return offset + size_of_close
end

-- Access
nyse_equities_binarygateway_pillar_v5_17.access = {}

-- Size: Access
nyse_equities_binarygateway_pillar_v5_17.access.size = 1

-- Display: Access
nyse_equities_binarygateway_pillar_v5_17.access.display = function(value)
  return "Access: "..value
end

-- Dissect: Access
nyse_equities_binarygateway_pillar_v5_17.access.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.access.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.access.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.access, range, value, display)

  return offset + length, value
end

-- Open Response
nyse_equities_binarygateway_pillar_v5_17.open_response = {}

-- Read runtime size of: Open Response
nyse_equities_binarygateway_pillar_v5_17.open_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open Response
nyse_equities_binarygateway_pillar_v5_17.open_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Response
nyse_equities_binarygateway_pillar_v5_17.open_response.fields = function(buffer, offset, packet, parent, size_of_open_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_equities_binarygateway_pillar_v5_17.status.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_equities_binarygateway_pillar_v5_17.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Response
nyse_equities_binarygateway_pillar_v5_17.open_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open_response = nyse_equities_binarygateway_pillar_v5_17.open_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open_response then
    local range = buffer(offset, size_of_open_response)
    local display = nyse_equities_binarygateway_pillar_v5_17.open_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.open_response, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.open_response.fields(buffer, offset, packet, parent, size_of_open_response)

  return offset + size_of_open_response
end

-- Mode
nyse_equities_binarygateway_pillar_v5_17.mode = {}

-- Size: Mode
nyse_equities_binarygateway_pillar_v5_17.mode.size = 1

-- Display: Mode
nyse_equities_binarygateway_pillar_v5_17.mode.display = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
nyse_equities_binarygateway_pillar_v5_17.mode.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_equities_binarygateway_pillar_v5_17.mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.mode, range, value, display)

  return offset + length, value
end

-- End Seq
nyse_equities_binarygateway_pillar_v5_17.end_seq = {}

-- Size: End Seq
nyse_equities_binarygateway_pillar_v5_17.end_seq.size = 8

-- Display: End Seq
nyse_equities_binarygateway_pillar_v5_17.end_seq.display = function(value)
  return "End Seq: "..value
end

-- Dissect: End Seq
nyse_equities_binarygateway_pillar_v5_17.end_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.end_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.end_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.end_seq, range, value, display)

  return offset + length, value
end

-- Start Seq
nyse_equities_binarygateway_pillar_v5_17.start_seq = {}

-- Size: Start Seq
nyse_equities_binarygateway_pillar_v5_17.start_seq.size = 8

-- Display: Start Seq
nyse_equities_binarygateway_pillar_v5_17.start_seq.display = function(value)
  return "Start Seq: "..value
end

-- Dissect: Start Seq
nyse_equities_binarygateway_pillar_v5_17.start_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.start_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.start_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.start_seq, range, value, display)

  return offset + length, value
end

-- Open
nyse_equities_binarygateway_pillar_v5_17.open = {}

-- Read runtime size of: Open
nyse_equities_binarygateway_pillar_v5_17.open.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open
nyse_equities_binarygateway_pillar_v5_17.open.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
nyse_equities_binarygateway_pillar_v5_17.open.fields = function(buffer, offset, packet, parent, size_of_open)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect(buffer, index, packet, parent)

  -- Start Seq: 8 Byte Unsigned Fixed Width Integer
  index, start_seq = nyse_equities_binarygateway_pillar_v5_17.start_seq.dissect(buffer, index, packet, parent)

  -- End Seq: 8 Byte Unsigned Fixed Width Integer
  index, end_seq = nyse_equities_binarygateway_pillar_v5_17.end_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_equities_binarygateway_pillar_v5_17.access.dissect(buffer, index, packet, parent)

  -- Mode: 1 Byte Unsigned Fixed Width Integer
  index, mode = nyse_equities_binarygateway_pillar_v5_17.mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
nyse_equities_binarygateway_pillar_v5_17.open.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open = nyse_equities_binarygateway_pillar_v5_17.open.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open then
    local range = buffer(offset, size_of_open)
    local display = nyse_equities_binarygateway_pillar_v5_17.open.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.open, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.open.fields(buffer, offset, packet, parent, size_of_open)

  return offset + size_of_open
end

-- Heartbeat
nyse_equities_binarygateway_pillar_v5_17.heartbeat = {}

-- Read runtime size of: Heartbeat
nyse_equities_binarygateway_pillar_v5_17.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat
nyse_equities_binarygateway_pillar_v5_17.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nyse_equities_binarygateway_pillar_v5_17.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nyse_equities_binarygateway_pillar_v5_17.heartbeat.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat = nyse_equities_binarygateway_pillar_v5_17.heartbeat.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = nyse_equities_binarygateway_pillar_v5_17.heartbeat.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.heartbeat, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Next Seq
nyse_equities_binarygateway_pillar_v5_17.next_seq = {}

-- Size: Next Seq
nyse_equities_binarygateway_pillar_v5_17.next_seq.size = 8

-- Display: Next Seq
nyse_equities_binarygateway_pillar_v5_17.next_seq.display = function(value)
  return "Next Seq: "..value
end

-- Dissect: Next Seq
nyse_equities_binarygateway_pillar_v5_17.next_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.next_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_binarygateway_pillar_v5_17.next_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.next_seq, range, value, display)

  return offset + length, value
end

-- Stream Avail
nyse_equities_binarygateway_pillar_v5_17.stream_avail = {}

-- Read runtime size of: Stream Avail
nyse_equities_binarygateway_pillar_v5_17.stream_avail.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Stream Avail
nyse_equities_binarygateway_pillar_v5_17.stream_avail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Avail
nyse_equities_binarygateway_pillar_v5_17.stream_avail.fields = function(buffer, offset, packet, parent, size_of_stream_avail)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_equities_binarygateway_pillar_v5_17.stream_id.dissect(buffer, index, packet, parent)

  -- Next Seq: 8 Byte Unsigned Fixed Width Integer
  index, next_seq = nyse_equities_binarygateway_pillar_v5_17.next_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_equities_binarygateway_pillar_v5_17.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Avail
nyse_equities_binarygateway_pillar_v5_17.stream_avail.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_stream_avail = nyse_equities_binarygateway_pillar_v5_17.stream_avail.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.stream_avail then
    local range = buffer(offset, size_of_stream_avail)
    local display = nyse_equities_binarygateway_pillar_v5_17.stream_avail.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.stream_avail, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)

  return offset + size_of_stream_avail
end

-- Login Response
nyse_equities_binarygateway_pillar_v5_17.login_response = {}

-- Read runtime size of: Login Response
nyse_equities_binarygateway_pillar_v5_17.login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Response
nyse_equities_binarygateway_pillar_v5_17.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
nyse_equities_binarygateway_pillar_v5_17.login_response.fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_equities_binarygateway_pillar_v5_17.username.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_equities_binarygateway_pillar_v5_17.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
nyse_equities_binarygateway_pillar_v5_17.login_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_response = nyse_equities_binarygateway_pillar_v5_17.login_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_response then
    local range = buffer(offset, size_of_login_response)
    local display = nyse_equities_binarygateway_pillar_v5_17.login_response.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.login_response, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.login_response.fields(buffer, offset, packet, parent, size_of_login_response)

  return offset + size_of_login_response
end

-- Version
nyse_equities_binarygateway_pillar_v5_17.version = {}

-- Size: Version
nyse_equities_binarygateway_pillar_v5_17.version.size = 20

-- Display: Version
nyse_equities_binarygateway_pillar_v5_17.version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version: No Value"
  end

  return "Version: "..value
end

-- Dissect: Version
nyse_equities_binarygateway_pillar_v5_17.version.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.version.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.version, range, value, display)

  return offset + length, value
end

-- Password
nyse_equities_binarygateway_pillar_v5_17.password = {}

-- Size: Password
nyse_equities_binarygateway_pillar_v5_17.password.size = 32

-- Display: Password
nyse_equities_binarygateway_pillar_v5_17.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nyse_equities_binarygateway_pillar_v5_17.password.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_binarygateway_pillar_v5_17.password.size
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

  local display = nyse_equities_binarygateway_pillar_v5_17.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.password, range, value, display)

  return offset + length, value
end

-- Login Message
nyse_equities_binarygateway_pillar_v5_17.login_message = {}

-- Read runtime size of: Login Message
nyse_equities_binarygateway_pillar_v5_17.login_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Message
nyse_equities_binarygateway_pillar_v5_17.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_equities_binarygateway_pillar_v5_17.login_message.fields = function(buffer, offset, packet, parent, size_of_login_message)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_equities_binarygateway_pillar_v5_17.msg_header.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_equities_binarygateway_pillar_v5_17.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = nyse_equities_binarygateway_pillar_v5_17.password.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = nyse_equities_binarygateway_pillar_v5_17.mic.dissect(buffer, index, packet, parent)

  -- Version: 20 Byte Ascii String
  index, version = nyse_equities_binarygateway_pillar_v5_17.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_equities_binarygateway_pillar_v5_17.login_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_message = nyse_equities_binarygateway_pillar_v5_17.login_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_message then
    local range = buffer(offset, size_of_login_message)
    local display = nyse_equities_binarygateway_pillar_v5_17.login_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17.fields.login_message, range, display)
  end

  nyse_equities_binarygateway_pillar_v5_17.login_message.fields(buffer, offset, packet, parent, size_of_login_message)

  return offset + size_of_login_message
end

-- Pillar Stream Message
nyse_equities_binarygateway_pillar_v5_17.pillar_stream_message = {}

-- Dissect Pillar Stream Message
nyse_equities_binarygateway_pillar_v5_17.pillar_stream_message.dissect = function(buffer, packet, parent)
  local offset = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(0, 2):le_uint()

  -- Dissect Login Message
  if msg_type == 0x0201 then
    return nyse_equities_binarygateway_pillar_v5_17.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if msg_type == 0x0202 then
    return nyse_equities_binarygateway_pillar_v5_17.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Avail
  if msg_type == 0x0203 then
    return nyse_equities_binarygateway_pillar_v5_17.stream_avail.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_equities_binarygateway_pillar_v5_17.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open
  if msg_type == 0x0205 then
    return nyse_equities_binarygateway_pillar_v5_17.open.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Response
  if msg_type == 0x0206 then
    return nyse_equities_binarygateway_pillar_v5_17.open_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close
  if msg_type == 0x0207 then
    return nyse_equities_binarygateway_pillar_v5_17.close.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close Response
  if msg_type == 0x0208 then
    return nyse_equities_binarygateway_pillar_v5_17.close_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Seq Msg
  if msg_type == 0x0905 then
    return nyse_equities_binarygateway_pillar_v5_17.seq_msg.dissect(buffer, offset, packet, parent)
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_equities_binarygateway_pillar_v5_17.init()
end

-- Dissector for Nyse Equities BinaryGateway Pillar 5.17
function omi_nyse_equities_binarygateway_pillar_v5_17.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_equities_binarygateway_pillar_v5_17.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_equities_binarygateway_pillar_v5_17, buffer(), omi_nyse_equities_binarygateway_pillar_v5_17.description, "("..buffer:len().." Bytes)")
  return nyse_equities_binarygateway_pillar_v5_17.pillar_stream_message.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nyse_equities_binarygateway_pillar_v5_17)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_equities_binarygateway_pillar_v5_17.pillar_stream_message.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities BinaryGateway Pillar 5.17
local function omi_nyse_equities_binarygateway_pillar_v5_17_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_equities_binarygateway_pillar_v5_17.pillar_stream_message.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_equities_binarygateway_pillar_v5_17
  omi_nyse_equities_binarygateway_pillar_v5_17.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities BinaryGateway Pillar 5.17
omi_nyse_equities_binarygateway_pillar_v5_17:register_heuristic("tcp", omi_nyse_equities_binarygateway_pillar_v5_17_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 5.17
--   Date: Friday, October 17, 2025
--   Specification: NYSE_Pillar_Gateway_Binary_Protocol_Specification.pdf
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
