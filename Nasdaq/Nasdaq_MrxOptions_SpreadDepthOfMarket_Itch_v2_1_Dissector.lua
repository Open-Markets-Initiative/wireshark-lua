-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1 Protocol
local omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1 = Proto("Omi.Nasdaq.MrxOptions.SpreadDepthOfMarket.Itch.v2.1", "Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1")

-- Protocol table
local nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1 Fields
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.acceptedsession", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.auction_duration = ProtoField.new("Auction Duration", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.auctionduration", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.auctionevent", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.auctionid", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.auctiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.changereason", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.cmta = ProtoField.new("Cmta", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.cmta", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.crossnumber", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.crosstype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.depth_order_capacity = ProtoField.new("Depth Order Capacity", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.depthordercapacity", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.depth_side = ProtoField.new("Depth Side", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.depthside", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.end_of_replay_sequence_number = ProtoField.new("End Of Replay Sequence Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.endofreplaysequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.execflag", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.executed_volume = ProtoField.new("Executed Volume", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.executedvolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.explicitstrikeprice", ftypes.DOUBLE)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.flex_dac_leg_information = ProtoField.new("Flex Dac Leg Information", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.flexdacleginformation", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.giveup = ProtoField.new("Giveup", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.giveup", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.leginformation", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.legratio", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.matchnumber", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.mold_udp_64_packet = ProtoField.new("Mold Udp 64 Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.moldudp64packet", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.neworderreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.number_of_flex_dac_legs = ProtoField.new("Number Of Flex Dac Legs", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.numberofflexdaclegs", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.numberoflegs", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.option_id = ProtoField.new("Option Id", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.optionid", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.ordercapacity", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.order_type = ProtoField.new("Order Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.ordertype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.owner_id = ProtoField.new("Owner Id", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.ownerid", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.packetlength", ftypes.UINT16)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.packettype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.password = ProtoField.new("Password", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.password", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.price_long = ProtoField.new("Price Long", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.pricelong", ftypes.DOUBLE)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.price_short = ProtoField.new("Price Short", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.priceshort", ftypes.DOUBLE)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.requestedsession", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.reserved1", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_3 = ProtoField.new("Reserved 3", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.reserved3", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_4 = ProtoField.new("Reserved 4", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.reserved4", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_8 = ProtoField.new("Reserved 8", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.reserved8", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.response_price = ProtoField.new("Response Price", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.responseprice", ftypes.DOUBLE)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.response_size = ProtoField.new("Response Size", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.responsesize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.scope = ProtoField.new("Scope", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.scope", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.side = ProtoField.new("Side", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.side", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.size = ProtoField.new("Size", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.size", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.soupbintcppacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.strategyid", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.strategy_id_order_reference = ProtoField.new("Strategy Id Order Reference", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.strategyidorderreference", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.strategytype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.tcp_packet = ProtoField.new("Tcp Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.tcppacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.tcppacketheader", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.text = ProtoField.new("Text", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.text", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.tradecondition", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.trade_type = ProtoField.new("Trade Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.tradetype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.udp_packet_header = ProtoField.new("Udp Packet Header", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.udppacketheader", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.udp_sequence_number = ProtoField.new("Udp Sequence Number", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.udpsequencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.udp_session = ProtoField.new("Udp Session", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.udpsession", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.username = ProtoField.new("Username", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.username", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.volumelong", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.volume_short = ProtoField.new("Volume Short", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.volumeshort", ftypes.UINT16)

-- Nasdaq MrxOptions Itch SpreadDepthOfMarket 2.1 Application Messages
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.add_order_long_form_message = ProtoField.new("Add Order Long Form Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.addorderlongformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.add_order_short_form_message = ProtoField.new("Add Order Short Form Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.addordershortformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.complex_strategy_auction_message = ProtoField.new("Complex Strategy Auction Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.complexstrategyauctionmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.complexstrategydirectorymessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.complex_strategy_trade_message = ProtoField.new("Complex Strategy Trade Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.complexstrategytrademessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.end_of_replay_sequence_message = ProtoField.new("End Of Replay Sequence Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.endofreplaysequencemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.singlesidedeletemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.singlesideexecutedmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.singlesideexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_replace_long_form_message = ProtoField.new("Single Side Replace Long Form Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.singlesidereplacelongformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_replace_short_form_message = ProtoField.new("Single Side Replace Short Form Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.singlesidereplaceshortformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.singlesideupdatemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.strategytradingactionmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.systemeventmessage", ftypes.STRING)

-- Nasdaq MrxOptions Itch SpreadDepthOfMarket 2.1 Session Messages
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.debugpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1 generated fields
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.flex_dac_leg_information_index = ProtoField.new("Flex Dac Leg Information Index", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.flexdacleginformationindex", ftypes.UINT16)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.leg_information_index = ProtoField.new("Leg Information Index", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.leginformationindex", ftypes.UINT16)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.mrxoptions.spreaddepthofmarket.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.flex_dac_leg_information = true
show.leg_information = true
show.message = true
show.message_header = true
show.mold_udp_64_packet = true
show.soup_bin_tcp_packet = true
show.tcp_packet = true
show.tcp_packet_header = true
show.udp_packet_header = true
show.leg_information_index = true
show.flex_dac_leg_information_index = true
show.message_index = true

-- Register Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1 Show Options
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_flex_dac_leg_information = Pref.bool("Show Flex Dac Leg Information", show.flex_dac_leg_information, "Parse and add Flex Dac Leg Information to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_mold_udp_64_packet = Pref.bool("Show Mold Udp 64 Packet", show.mold_udp_64_packet, "Parse and add Mold Udp 64 Packet to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_tcp_packet = Pref.bool("Show Tcp Packet", show.tcp_packet, "Parse and add Tcp Packet to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_tcp_packet_header = Pref.bool("Show Tcp Packet Header", show.tcp_packet_header, "Parse and add Tcp Packet Header to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_udp_packet_header = Pref.bool("Show Udp Packet Header", show.udp_packet_header, "Parse and add Udp Packet Header to protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_leg_information_index = Pref.bool("Show Leg Information Index", show.leg_information_index, "Show generated leg information index in protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_flex_dac_leg_information_index = Pref.bool("Show Flex Dac Leg Information Index", show.flex_dac_leg_information_index, "Show generated flex dac leg information index in protocol tree")
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_application_messages
  end
  if show.flex_dac_leg_information ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_flex_dac_leg_information then
    show.flex_dac_leg_information = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_flex_dac_leg_information
  end
  if show.leg_information ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_leg_information then
    show.leg_information = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_leg_information
  end
  if show.message ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message then
    show.message = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message_header
  end
  if show.mold_udp_64_packet ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_mold_udp_64_packet then
    show.mold_udp_64_packet = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_mold_udp_64_packet
  end
  if show.session_messages ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_session_messages
  end
  if show.soup_bin_tcp_packet ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_soup_bin_tcp_packet
  end
  if show.tcp_packet ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_tcp_packet then
    show.tcp_packet = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_tcp_packet
  end
  if show.tcp_packet_header ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_tcp_packet_header then
    show.tcp_packet_header = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_tcp_packet_header
  end
  if show.udp_packet_header ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_udp_packet_header then
    show.udp_packet_header = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_udp_packet_header
  end
  if show.leg_information_index ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_leg_information_index then
    show.leg_information_index = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_leg_information_index
  end
  if show.flex_dac_leg_information_index ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_flex_dac_leg_information_index then
    show.flex_dac_leg_information_index = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_flex_dac_leg_information_index
  end
  if show.message_index ~= omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message_index then
    show.message_index = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.prefs.show_message_index
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
-- Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_session = {}

-- Size: Accepted Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Auction Duration
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_duration = {}

-- Size: Auction Duration
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_duration.size = 4

-- Display: Auction Duration
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_duration.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Auction Duration: No Value"
  end

  return "Auction Duration: "..value
end

-- Dissect: Auction Duration
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_duration.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_duration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.auction_duration, range, value, display)

  return offset + length, value
end

-- Auction Event
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_event = {}

-- Size: Auction Event
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_event.size = 1

-- Display: Auction Event
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_event.display = function(value)
  if value == "S" then
    return "Auction Event: Start (S)"
  end
  if value == "U" then
    return "Auction Event: Auction Update (U)"
  end
  if value == "E" then
    return "Auction Event: End Of Auction (E)"
  end

  return "Auction Event: Unknown("..value..")"
end

-- Dissect: Auction Event
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_event.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id = {}

-- Size: Auction Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.size = 4

-- Display: Auction Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_type = {}

-- Size: Auction Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_type.size = 1

-- Display: Auction Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_type.display = function(value)
  if value == "E" then
    return "Auction Type: Complex Exposure (E)"
  end
  if value == "P" then
    return "Auction Type: Price Improvement Pim Auction (P)"
  end
  if value == "C" then
    return "Auction Type: Facilitation (C)"
  end
  if value == "S" then
    return "Auction Type: Solicitation (S)"
  end
  if value == "X" then
    return "Auction Type: Flex Auction (X)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Change Reason
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.change_reason = {}

-- Size: Change Reason
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.change_reason.size = 1

-- Display: Change Reason
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.change_reason.display = function(value)
  if value == "U" then
    return "Change Reason: User (U)"
  end

  return "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.change_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Cmta
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cmta = {}

-- Size: Cmta
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cmta.size = 6

-- Display: Cmta
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cmta.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Cross Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number = {}

-- Size: Cross Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.size = 4

-- Display: Cross Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.display = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_type = {}

-- Size: Cross Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_type.size = 1

-- Display: Cross Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_type.display = function(value)
  if value == "E" then
    return "Cross Type: Complex Exposure Auction (E)"
  end
  if value == "O" then
    return "Cross Type: Opening Auction (O)"
  end
  if value == "R" then
    return "Cross Type: Reopening Auction (R)"
  end
  if value == "P" then
    return "Cross Type: Price Improvement Pim Auction (P)"
  end
  if value == "C" then
    return "Cross Type: Facilitation (C)"
  end
  if value == "S" then
    return "Cross Type: Solicitation (S)"
  end
  if value == "X" then
    return "Cross Type: Flex Auction (X)"
  end
  if value == "N" then
    return "Cross Type: None (N)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Continuous Trading (T)"
  end
  if value == "I" then
    return "Current Trading State: Pre Open (I)"
  end
  if value == "O" then
    return "Current Trading State: Opening Auction (O)"
  end
  if value == "R" then
    return "Current Trading State: Re Opening (R)"
  end
  if value == "X" then
    return "Current Trading State: Closed (X)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Depth Order Capacity
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity = {}

-- Size: Depth Order Capacity
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.size = 1

-- Display: Depth Order Capacity
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.display = function(value)
  if value == "C" then
    return "Depth Order Capacity: Customer (C)"
  end
  if value == "F" then
    return "Depth Order Capacity: Firm (F)"
  end
  if value == "M" then
    return "Depth Order Capacity: Nasdaq Registered Market Maker (M)"
  end
  if value == "B" then
    return "Depth Order Capacity: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Depth Order Capacity: Professional Order (P)"
  end
  if value == "O" then
    return "Depth Order Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == "J" then
    return "Depth Order Capacity: Jbo Joint Back Office Only Phlx (J)"
  end

  return "Depth Order Capacity: Unknown("..value..")"
end

-- Dissect: Depth Order Capacity
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.depth_order_capacity, range, value, display)

  return offset + length, value
end

-- Depth Side
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side = {}

-- Size: Depth Side
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.size = 1

-- Display: Depth Side
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.display = function(value)
  if value == "B" then
    return "Depth Side: Buy (B)"
  end
  if value == "S" then
    return "Depth Side: Sell (S)"
  end
  if value == "O" then
    return "Depth Side: Buy Market (O)"
  end
  if value == "P" then
    return "Depth Side: Sell Market (P)"
  end

  return "Depth Side: Unknown("..value..")"
end

-- Dissect: Depth Side
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.depth_side, range, value, display)

  return offset + length, value
end

-- End Of Replay Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_number = {}

-- Size: End Of Replay Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_number.size = 20

-- Display: End Of Replay Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_number.display = function(value)
  return "End Of Replay Sequence Number: "..value
end

-- Dissect: End Of Replay Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.end_of_replay_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "N" then
    return "Event Code: Start Of Normal Hours Closing Process (N)"
  end
  if value == "L" then
    return "Event Code: Start Of Late Hours Closing Process (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exec Flag
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.exec_flag = {}

-- Size: Exec Flag
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.exec_flag.size = 1

-- Display: Exec Flag
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.exec_flag.display = function(value)
  if value == "N" then
    return "Exec Flag: None (N)"
  end
  if value == "A" then
    return "Exec Flag: Aon (A)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.exec_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.exec_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.exec_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Executed Volume
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.executed_volume = {}

-- Size: Executed Volume
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.executed_volume.size = 4

-- Display: Executed Volume
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.executed_volume.display = function(value)
  return "Executed Volume: "..value
end

-- Dissect: Executed Volume
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.executed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.executed_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.executed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.executed_volume, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.translate(raw)
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Giveup
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.giveup = {}

-- Size: Giveup
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.giveup.size = 6

-- Display: Giveup
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.giveup.display = function(value)
  return "Giveup: "..value
end

-- Dissect: Giveup
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.giveup.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.giveup.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.giveup.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.giveup, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number = {}

-- Size: Match Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.size = 4

-- Display: Match Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "s" then
    return "Message Type: Complex Strategy Directory Message (s)"
  end
  if value == "H" then
    return "Message Type: Strategy Trading Action Message (H)"
  end
  if value == "r" then
    return "Message Type: Add Order Short Form Message (r)"
  end
  if value == "o" then
    return "Message Type: Add Order Long Form Message (o)"
  end
  if value == "t" then
    return "Message Type: Single Side Executed Message (t)"
  end
  if value == "T" then
    return "Message Type: Single Side Executed With Price Message (T)"
  end
  if value == "i" then
    return "Message Type: Single Side Replace Short Form Message (i)"
  end
  if value == "I" then
    return "Message Type: Single Side Replace Long Form Message (I)"
  end
  if value == "D" then
    return "Message Type: Single Side Delete Message (D)"
  end
  if value == "P" then
    return "Message Type: Single Side Update Message (P)"
  end
  if value == "q" then
    return "Message Type: Complex Strategy Trade Message (q)"
  end
  if value == "a" then
    return "Message Type: Complex Strategy Auction Message (a)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- New Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Number Of Flex Dac Legs
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_flex_dac_legs = {}

-- Size: Number Of Flex Dac Legs
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_flex_dac_legs.size = 1

-- Display: Number Of Flex Dac Legs
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_flex_dac_legs.display = function(value)
  return "Number Of Flex Dac Legs: "..value
end

-- Dissect: Number Of Flex Dac Legs
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_flex_dac_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_flex_dac_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_flex_dac_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.number_of_flex_dac_legs, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_id = {}

-- Size: Option Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_id.size = 4

-- Display: Option Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call Option (C)"
  end
  if value == "P" then
    return "Option Type: Put Option (P)"
  end
  if value == "" then
    return "Option Type: Stock Leg (<whitespace>)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_capacity = {}

-- Size: Order Capacity
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_capacity.display = function(value)
  if value == "C" then
    return "Order Capacity: Customer Order (C)"
  end
  if value == "F" then
    return "Order Capacity: Firm Order (F)"
  end
  if value == "M" then
    return "Order Capacity: Nasdaq Registered Market Maker (M)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer Oder (B)"
  end
  if value == "P" then
    return "Order Capacity: Professional Order (P)"
  end
  if value == "O" then
    return "Order Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == "J" then
    return "Order Capacity: Jbo Joint Back Office Only Phlx (J)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type = {}

-- Size: Order Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.size = 1

-- Display: Order Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.display = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Owner Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.owner_id = {}

-- Size: Owner Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.owner_id.size = 6

-- Display: Owner Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.owner_id.display = function(value)
  return "Owner Id: "..value
end

-- Dissect: Owner Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.owner_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.owner_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.owner_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.owner_id, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_length = {}

-- Size: Packet Length
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_type = {}

-- Size: Packet Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_type.size = 1

-- Display: Packet Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.password = {}

-- Size: Password
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.password.size = 10

-- Display: Password
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long = {}

-- Size: Price Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.size = 4

-- Display: Price Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.translate(raw)
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short = {}

-- Size: Price Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.size = 2

-- Display: Price Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.translate(raw)
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.price_short, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_session = {}

-- Size: Requested Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1 = {}

-- Size: Reserved 1
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 3
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3 = {}

-- Size: Reserved 3
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.size = 3

-- Display: Reserved 3
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 4
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4 = {}

-- Size: Reserved 4
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.size = 4

-- Display: Reserved 4
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_8 = {}

-- Size: Reserved 8
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_8.size = 8

-- Display: Reserved 8
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Response Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price = {}

-- Size: Response Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.size = 4

-- Display: Response Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.display = function(value)
  return "Response Price: "..value
end

-- Translate: Response Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Response Price
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.translate(raw)
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.response_price, range, value, display)

  return offset + length, value
end

-- Response Size
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_size = {}

-- Size: Response Size
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_size.size = 4

-- Display: Response Size
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_size.display = function(value)
  return "Response Size: "..value
end

-- Dissect: Response Size
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.response_size, range, value, display)

  return offset + length, value
end

-- Scope
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope = {}

-- Size: Scope
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.size = 1

-- Display: Scope
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.display = function(value)
  if value == "L" then
    return "Scope: Local (L)"
  end
  if value == "N" then
    return "Scope: National (N)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.scope, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "s" then
    return "Sequenced Message Type: Complex Strategy Directory Message (s)"
  end
  if value == "H" then
    return "Sequenced Message Type: Strategy Trading Action Message (H)"
  end
  if value == "r" then
    return "Sequenced Message Type: Add Order Short Form Message (r)"
  end
  if value == "o" then
    return "Sequenced Message Type: Add Order Long Form Message (o)"
  end
  if value == "t" then
    return "Sequenced Message Type: Single Side Executed Message (t)"
  end
  if value == "T" then
    return "Sequenced Message Type: Single Side Executed With Price Message (T)"
  end
  if value == "i" then
    return "Sequenced Message Type: Single Side Replace Short Form Message (i)"
  end
  if value == "I" then
    return "Sequenced Message Type: Single Side Replace Long Form Message (I)"
  end
  if value == "D" then
    return "Sequenced Message Type: Single Side Delete Message (D)"
  end
  if value == "P" then
    return "Sequenced Message Type: Single Side Update Message (P)"
  end
  if value == "q" then
    return "Sequenced Message Type: Complex Strategy Trade Message (q)"
  end
  if value == "a" then
    return "Sequenced Message Type: Complex Strategy Auction Message (a)"
  end
  if value == "M" then
    return "Sequenced Message Type: End Of Replay Sequence Message (M)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side = {}

-- Size: Side
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.size = 1

-- Display: Side
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.size = {}

-- Size: Size
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.size.size = 4

-- Display: Size
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.size, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id = {}

-- Size: Strategy Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strategy Id Order Reference
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id_order_reference = {}

-- Size: Strategy Id Order Reference
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id_order_reference.size = 4

-- Display: Strategy Id Order Reference
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id_order_reference.display = function(value)
  return "Strategy Id Order Reference: "..value
end

-- Dissect: Strategy Id Order Reference
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id_order_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id_order_reference.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id_order_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.strategy_id_order_reference, range, value, display)

  return offset + length, value
end

-- Strategy Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_type = {}

-- Size: Strategy Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_type.size = 1

-- Display: Strategy Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_type.display = function(value)
  if value == "V" then
    return "Strategy Type: Vertical Spread (V)"
  end
  if value == "T" then
    return "Strategy Type: Time Spread (T)"
  end
  if value == "D" then
    return "Strategy Type: Diagonal Spread (D)"
  end
  if value == "S" then
    return "Strategy Type: Straddle (S)"
  end
  if value == "G" then
    return "Strategy Type: Strangle (G)"
  end
  if value == "C" then
    return "Strategy Type: Combo (C)"
  end
  if value == "R" then
    return "Strategy Type: Risk Reversal (R)"
  end
  if value == "A" then
    return "Strategy Type: Ratio Spread (A)"
  end
  if value == "B" then
    return "Strategy Type: Box Spread (B)"
  end
  if value == "F" then
    return "Strategy Type: Butterfly Spread (F)"
  end
  if value == "U" then
    return "Strategy Type: Custom (U)"
  end

  return "Strategy Type: Unknown("..value..")"
end

-- Dissect: Strategy Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.text = {}

-- Size: Text
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.text.size = 1

-- Display: Text
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trade Condition
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition = {}

-- Size: Trade Condition
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.size = 1

-- Display: Trade Condition
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_type = {}

-- Size: Trade Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_type.size = 1

-- Display: Trade Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_type.display = function(value)
  if value == "E" then
    return "Trade Type: Electronic Trade (E)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Udp Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_sequence_number = {}

-- Size: Udp Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_sequence_number.size = 8

-- Display: Udp Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_sequence_number.display = function(value)
  return "Udp Sequence Number: "..value
end

-- Dissect: Udp Sequence Number
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.udp_sequence_number, range, value, display)

  return offset + length, value
end

-- Udp Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_session = {}

-- Size: Udp Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_session.size = 10

-- Display: Udp Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Udp Session: No Value"
  end

  return "Udp Session: "..value
end

-- Dissect: Udp Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_session.size
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

  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.udp_session, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.username = {}

-- Size: Username
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.username.size = 6

-- Display: Username
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.username, range, value, display)

  return offset + length, value
end

-- Volume Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long = {}

-- Size: Volume Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.size = 4

-- Display: Volume Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short = {}

-- Size: Volume Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.size = 2

-- Display: Volume Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.volume_short, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1
-----------------------------------------------------------------------

-- Flex Dac Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information = {}

-- Size: Flex Dac Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_8.size

-- Display: Flex Dac Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Dac Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information.fields = function(buffer, offset, packet, parent, flex_dac_leg_information_index)
  local index = offset

  -- Implicit Flex Dac Leg Information Index
  if flex_dac_leg_information_index ~= nil and show.flex_dac_leg_information_index then
    local iteration = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.flex_dac_leg_information_index, flex_dac_leg_information_index)
    iteration:set_generated()
  end

  -- Reserved 8: Alpha
  index, reserved_8 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Dac Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information.dissect = function(buffer, offset, packet, parent, flex_dac_leg_information_index)
  if show.flex_dac_leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.flex_dac_leg_information, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information.fields(buffer, offset, packet, parent, flex_dac_leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information.fields(buffer, offset, packet, parent, flex_dac_leg_information_index)
  end
end

-- Complex Strategy Auction Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message = {}

-- Calculate size of: Complex Strategy Auction Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_type.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_duration.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_event.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.size.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.exec_flag.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_capacity.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.owner_id.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.giveup.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cmta.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_size.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_flex_dac_legs.size

  -- Calculate field size from count
  local flex_dac_leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + flex_dac_leg_information_count * 8

  return index
end

-- Display: Complex Strategy Auction Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Auction Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Duration: Integer
  index, auction_duration = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_duration.dissect(buffer, index, packet, parent)

  -- Auction Event: Alpha
  index, auction_event = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_event.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.size.dissect(buffer, index, packet, parent)

  -- Exec Flag: Alpha
  index, exec_flag = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.exec_flag.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Owner Id: Alpha
  index, owner_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: Alpha
  index, giveup = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: Alpha
  index, cmta = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cmta.dissect(buffer, index, packet, parent)

  -- Response Price: Integer
  index, response_price = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_price.dissect(buffer, index, packet, parent)

  -- Response Size: Integer
  index, response_size = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.response_size.dissect(buffer, index, packet, parent)

  -- Reserved 4: Integer
  index, reserved_4 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.dissect(buffer, index, packet, parent)

  -- Number Of Flex Dac Legs: Integer
  index, number_of_flex_dac_legs = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_flex_dac_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Flex Dac Leg Information
  for flex_dac_leg_information_index = 1, number_of_flex_dac_legs do
    index, flex_dac_leg_information = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.flex_dac_leg_information.dissect(buffer, index, packet, parent, flex_dac_leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Auction Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.complex_strategy_auction_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Strategy Trade Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message = {}

-- Size: Complex Strategy Trade Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_type.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_type.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.size

-- Display: Complex Strategy Trade Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Trade Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  -- Reserved 4: Integer
  index, reserved_4 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_4.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_type.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Trade Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.complex_strategy_trade_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message = {}

-- Size: Single Side Update Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.change_reason.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.size

-- Display: Single Side Update Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Change Reason: Alpha
  index, change_reason = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.change_reason.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_update_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Delete Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message = {}

-- Size: Single Side Delete Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id_order_reference.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.size

-- Display: Single Side Delete Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id Order Reference: Integer
  index, strategy_id_order_reference = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id_order_reference.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message = {}

-- Size: Single Side Replace Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.size

-- Display: Single Side Replace Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message = {}

-- Size: Single Side Replace Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.size

-- Display: Single Side Replace Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_replace_short_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed With Price Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message = {}

-- Size: Single Side Executed With Price Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.size

-- Display: Single Side Executed With Price Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_1.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message = {}

-- Size: Single Side Executed Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.executed_volume.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.size

-- Display: Single Side Executed Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Volume: Integer
  index, executed_volume = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.executed_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message = {}

-- Size: Add Order Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.size

-- Display: Add Order Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Depth Side: Alpha
  index, depth_side = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.dissect(buffer, index, packet, parent)

  -- Depth Order Capacity: Alpha
  index, depth_order_capacity = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.add_order_long_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message = {}

-- Size: Add Order Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.size

-- Display: Add Order Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Depth Side: Alpha
  index, depth_side = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_side.dissect(buffer, index, packet, parent)

  -- Depth Order Capacity: Alpha
  index, depth_order_capacity = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.depth_order_capacity.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.volume_short.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Form Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.add_order_short_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trading Action Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message = {}

-- Size: Strategy Trading Action Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.current_trading_state.size

-- Display: Strategy Trading Action Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphabetic
  index, current_trading_state = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information = {}

-- Size: Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_id.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.security_symbol.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_year.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_month.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_day.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_type.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_ratio.size

-- Display: Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information.fields = function(buffer, offset, packet, parent, leg_information_index)
  local index = offset

  -- Implicit Leg Information Index
  if leg_information_index ~= nil and show.leg_information_index then
    local iteration = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.leg_information_index, leg_information_index)
    iteration:set_generated()
  end

  -- Option Id: Integer
  index, option_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information.dissect = function(buffer, offset, packet, parent, leg_information_index)
  if show.leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
  end
end

-- Complex Strategy Directory Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message = {}

-- Calculate size of: Complex Strategy Directory Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_type.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.underlying_symbol.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.size

  index = index + nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_legs.size

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 25

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Strategy Type: Alphanumeric
  index, strategy_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Information
  for leg_information_index = 1, number_of_legs do
    index, leg_information = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.leg_information.dissect(buffer, index, packet, parent, leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.complex_strategy_directory_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Payload
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_payload = {}

-- Dissect: Udp Payload
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if message_type == "s" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Form Message
  if message_type == "r" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Form Message
  if message_type == "o" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if message_type == "t" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if message_type == "T" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Short Form Message
  if message_type == "i" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Long Form Message
  if message_type == "I" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if message_type == "D" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if message_type == "P" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Trade Message
  if message_type == "q" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Auction Message
  if message_type == "a" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_length.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Udp Payload: Runtime Type with 13 branches
  index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_session = {}

-- Display: End Of Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.heartbeat = {}

-- Display: Heartbeat
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Udp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header = {}

-- Size: Udp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_session.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_sequence_number.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_count.size

-- Display: Udp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Udp Session: 10 Byte Ascii String
  index, udp_session = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_session.dissect(buffer, index, packet, parent)

  -- Udp Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, udp_sequence_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Udp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.udp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.udp_packet_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mold Udp 64 Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.mold_udp_64_packet = {}

-- Verify required size of Udp packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.mold_udp_64_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.size
end

-- Dissect Mold Udp 64 Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.mold_udp_64_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Udp Packet Header: Struct of 3 fields
  index, udp_packet_header = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.udp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- Unsequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message
  index, unsequenced_message = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.username.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.password.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_session.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- End Of Replay Sequence Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message = {}

-- Size: End Of Replay Sequence Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_number.size

-- Display: End Of Replay Sequence Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Replay Sequence Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- End Of Replay Sequence Number: Alphanumeric
  index, end_of_replay_sequence_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Replay Sequence Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.end_of_replay_sequence_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if sequenced_message_type == "s" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.strategy_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Form Message
  if sequenced_message_type == "r" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Form Message
  if sequenced_message_type == "o" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.add_order_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if sequenced_message_type == "t" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if sequenced_message_type == "T" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Short Form Message
  if sequenced_message_type == "i" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Long Form Message
  if sequenced_message_type == "I" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if sequenced_message_type == "D" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if sequenced_message_type == "P" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.single_side_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Trade Message
  if sequenced_message_type == "q" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Auction Message
  if sequenced_message_type == "a" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.complex_strategy_auction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Replay Sequence Message
  if sequenced_message_type == "M" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.end_of_replay_sequence_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 14 values
  index, sequenced_message_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 14 branches
  index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_session.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.text.size

-- Display: Debug Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Payload
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_payload = {}

-- Dissect: Tcp Payload
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tcp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header = {}

-- Size: Tcp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.size =
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_length.size + 
  nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_type.size

-- Display: Tcp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcp Packet Header
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.tcp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Tcp Packet Header: Struct of 2 fields
  index, tcp_packet_header = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Tcp Payload: Runtime Type with 6 branches
  index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Tcp Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet = {}

-- Verify required size of Tcp packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet_header.size
end

-- Dissect Tcp Packet
nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.init()
end

-- Dissector for Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1
function omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1, buffer(), omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.mold_udp_64_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1 (Tcp)
local function omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1
  omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1 (Udp)
local function omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.mold_udp_64_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1
  omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Nasdaq MrxOptions SpreadDepthOfMarket Itch 2.1
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1:register_heuristic("tcp", omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1_tcp_heuristic)
omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1:register_heuristic("udp", omi_nasdaq_mrxoptions_spreaddepthofmarket_itch_v2_1_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Monday, September 15, 2025
--   Specification: Options_Spread_Feed_2.1.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
