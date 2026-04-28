-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq IseOptions SpreadFeed Itch 2.1 Protocol
local omi_nasdaq_iseoptions_spreadfeed_itch_v2_1 = Proto("Nasdaq.IseOptions.SpreadFeed.Itch.v2.1.Lua", "Nasdaq IseOptions SpreadFeed Itch 2.1")

-- Protocol table
local nasdaq_iseoptions_spreadfeed_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq IseOptions SpreadFeed Itch 2.1 Fields
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_cust_size = ProtoField.new("Ask Cust Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.askcustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_dntt_market_size = ProtoField.new("Ask Dntt Market Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.askdnttmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_dntt_size = ProtoField.new("Ask Dntt Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.askdnttsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_market_size = ProtoField.new("Ask Market Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.askmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.iseoptions.spreadfeed.itch.v2.1.askprice", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_pro_cust_size = ProtoField.new("Ask Pro Cust Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.askprocustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.asksize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.auction_duration = ProtoField.new("Auction Duration", "nasdaq.iseoptions.spreadfeed.itch.v2.1.auctionduration", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.iseoptions.spreadfeed.itch.v2.1.auctionevent", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.iseoptions.spreadfeed.itch.v2.1.auctionid", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.iseoptions.spreadfeed.itch.v2.1.auctiontype", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_cust_size = ProtoField.new("Bid Cust Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.bidcustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_dntt_market_size = ProtoField.new("Bid Dntt Market Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.biddnttmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_dntt_size = ProtoField.new("Bid Dntt Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.biddnttsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_market_size = ProtoField.new("Bid Market Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.bidmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.iseoptions.spreadfeed.itch.v2.1.bidprice", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_pro_cust_size = ProtoField.new("Bid Pro Cust Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.bidprocustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.bidsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.iseoptions.spreadfeed.itch.v2.1.changereason", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cmta = ProtoField.new("Cmta", "nasdaq.iseoptions.spreadfeed.itch.v2.1.cmta", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.iseoptions.spreadfeed.itch.v2.1.crossid", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.iseoptions.spreadfeed.itch.v2.1.crossnumber", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.iseoptions.spreadfeed.itch.v2.1.crosstype", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.iseoptions.spreadfeed.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cust_size = ProtoField.new("Cust Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.custsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.depth_order_capacity = ProtoField.new("Depth Order Capacity", "nasdaq.iseoptions.spreadfeed.itch.v2.1.depthordercapacity", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.depth_side = ProtoField.new("Depth Side", "nasdaq.iseoptions.spreadfeed.itch.v2.1.depthside", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.dntt_market_size = ProtoField.new("Dntt Market Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.dnttmarketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.dntt_size = ProtoField.new("Dntt Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.dnttsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.iseoptions.spreadfeed.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.iseoptions.spreadfeed.itch.v2.1.execflag", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.executable_order_volume = ProtoField.new("Executable Order Volume", "nasdaq.iseoptions.spreadfeed.itch.v2.1.executableordervolume", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.executed_volume = ProtoField.new("Executed Volume", "nasdaq.iseoptions.spreadfeed.itch.v2.1.executedvolume", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.iseoptions.spreadfeed.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.iseoptions.spreadfeed.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.iseoptions.spreadfeed.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.iseoptions.spreadfeed.itch.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.flex_dac_leg_information = ProtoField.new("Flex Dac Leg Information", "nasdaq.iseoptions.spreadfeed.itch.v2.1.flexdacleginformation", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.giveup = ProtoField.new("Giveup", "nasdaq.iseoptions.spreadfeed.itch.v2.1.giveup", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.iseoptions.spreadfeed.itch.v2.1.leginformation", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.iseoptions.spreadfeed.itch.v2.1.legratio", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.limit_price = ProtoField.new("Limit Price", "nasdaq.iseoptions.spreadfeed.itch.v2.1.limitprice", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.market_size = ProtoField.new("Market Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.marketsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.iseoptions.spreadfeed.itch.v2.1.matchnumber", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.iseoptions.spreadfeed.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.iseoptions.spreadfeed.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.iseoptions.spreadfeed.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.iseoptions.spreadfeed.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.iseoptions.spreadfeed.itch.v2.1.neworderreferencenumber", ftypes.UINT64)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.number_of_flex_dac_legs = ProtoField.new("Number Of Flex Dac Legs", "nasdaq.iseoptions.spreadfeed.itch.v2.1.numberofflexdaclegs", ftypes.UINT8)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.iseoptions.spreadfeed.itch.v2.1.numberoflegs", ftypes.UINT8)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.option_id = ProtoField.new("Option Id", "nasdaq.iseoptions.spreadfeed.itch.v2.1.optionid", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.iseoptions.spreadfeed.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.iseoptions.spreadfeed.itch.v2.1.ordercapacity", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.iseoptions.spreadfeed.itch.v2.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.order_status = ProtoField.new("Order Status", "nasdaq.iseoptions.spreadfeed.itch.v2.1.orderstatus", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.order_type = ProtoField.new("Order Type", "nasdaq.iseoptions.spreadfeed.itch.v2.1.ordertype", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.iseoptions.spreadfeed.itch.v2.1.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.original_order_volume = ProtoField.new("Original Order Volume", "nasdaq.iseoptions.spreadfeed.itch.v2.1.originalordervolume", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.owner_id = ProtoField.new("Owner Id", "nasdaq.iseoptions.spreadfeed.itch.v2.1.ownerid", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.iseoptions.spreadfeed.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.iseoptions.spreadfeed.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.price_long = ProtoField.new("Price Long", "nasdaq.iseoptions.spreadfeed.itch.v2.1.pricelong", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.price_short = ProtoField.new("Price Short", "nasdaq.iseoptions.spreadfeed.itch.v2.1.priceshort", ftypes.UINT16)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.pro_cust_size = ProtoField.new("Pro Cust Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.procustsize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.iseoptions.spreadfeed.itch.v2.1.quotecondition", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.iseoptions.spreadfeed.itch.v2.1.reserved1", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.iseoptions.spreadfeed.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_3 = ProtoField.new("Reserved 3", "nasdaq.iseoptions.spreadfeed.itch.v2.1.reserved3", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_4 = ProtoField.new("Reserved 4", "nasdaq.iseoptions.spreadfeed.itch.v2.1.reserved4", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_8 = ProtoField.new("Reserved 8", "nasdaq.iseoptions.spreadfeed.itch.v2.1.reserved8", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.response_price = ProtoField.new("Response Price", "nasdaq.iseoptions.spreadfeed.itch.v2.1.responseprice", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.response_size = ProtoField.new("Response Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.responsesize", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.scope = ProtoField.new("Scope", "nasdaq.iseoptions.spreadfeed.itch.v2.1.scope", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.iseoptions.spreadfeed.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.iseoptions.spreadfeed.itch.v2.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.iseoptions.spreadfeed.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.side = ProtoField.new("Side", "nasdaq.iseoptions.spreadfeed.itch.v2.1.side", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.size = ProtoField.new("Size", "nasdaq.iseoptions.spreadfeed.itch.v2.1.size", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.iseoptions.spreadfeed.itch.v2.1.strategyid", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_id_order_reference = ProtoField.new("Strategy Id Order Reference", "nasdaq.iseoptions.spreadfeed.itch.v2.1.strategyidorderreference", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.iseoptions.spreadfeed.itch.v2.1.strategytype", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.iseoptions.spreadfeed.itch.v2.1.timeinforce", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.iseoptions.spreadfeed.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.iseoptions.spreadfeed.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.iseoptions.spreadfeed.itch.v2.1.tradecondition", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.trade_condition_numeric = ProtoField.new("Trade Condition Numeric", "nasdaq.iseoptions.spreadfeed.itch.v2.1.tradeconditionnumeric", ftypes.UINT8)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.trade_type = ProtoField.new("Trade Type", "nasdaq.iseoptions.spreadfeed.itch.v2.1.tradetype", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.iseoptions.spreadfeed.itch.v2.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.iseoptions.spreadfeed.itch.v2.1.volumelong", ftypes.UINT32)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.volume_short = ProtoField.new("Volume Short", "nasdaq.iseoptions.spreadfeed.itch.v2.1.volumeshort", ftypes.UINT16)

-- Nasdaq IseOptions Itch SpreadFeed 2.1 Application Messages
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.add_order_long_form_message = ProtoField.new("Add Order Long Form Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.addorderlongformmessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.add_order_short_form_message = ProtoField.new("Add Order Short Form Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.addordershortformmessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_add_order_message = ProtoField.new("Complex Add Order Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.complexaddordermessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_strategy_auction_message = ProtoField.new("Complex Strategy Auction Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.complexstrategyauctionmessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.complexstrategydirectorymessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_strategy_trade_message = ProtoField.new("Complex Strategy Trade Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.complexstrategytrademessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_strategy_trade_report_message = ProtoField.new("Complex Strategy Trade Report Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.complexstrategytradereportmessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.singlesidedeletemessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.singlesideexecutedmessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.singlesideexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_replace_long_form_message = ProtoField.new("Single Side Replace Long Form Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.singlesidereplacelongformmessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_replace_short_form_message = ProtoField.new("Single Side Replace Short Form Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.singlesidereplaceshortformmessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.singlesideupdatemessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_best_ask_update_message = ProtoField.new("Strategy Best Ask Update Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.strategybestaskupdatemessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_best_bid_and_ask_update_message = ProtoField.new("Strategy Best Bid And Ask Update Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.strategybestbidandaskupdatemessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_best_bid_update_message = ProtoField.new("Strategy Best Bid Update Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.strategybestbidupdatemessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.strategytradingactionmessage", ftypes.STRING)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.iseoptions.spreadfeed.itch.v2.1.systemeventmessage", ftypes.STRING)

-- Nasdaq IseOptions SpreadFeed Itch 2.1 generated fields
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.flex_dac_leg_information_index = ProtoField.new("Flex Dac Leg Information Index", "nasdaq.iseoptions.spreadfeed.itch.v2.1.flexdacleginformationindex", ftypes.UINT16)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.leg_information_index = ProtoField.new("Leg Information Index", "nasdaq.iseoptions.spreadfeed.itch.v2.1.leginformationindex", ftypes.UINT16)
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.iseoptions.spreadfeed.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq IseOptions SpreadFeed Itch 2.1 Element Dissection Options
show.application_messages = true
show.flex_dac_leg_information = true
show.leg_information = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.leg_information_index = true
show.flex_dac_leg_information_index = true

-- Register Nasdaq IseOptions SpreadFeed Itch 2.1 Show Options
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_flex_dac_leg_information = Pref.bool("Show Flex Dac Leg Information", show.flex_dac_leg_information, "Parse and add Flex Dac Leg Information to protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_leg_information_index = Pref.bool("Show Leg Information Index", show.leg_information_index, "Show generated leg information index in protocol tree")
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_flex_dac_leg_information_index = Pref.bool("Show Flex Dac Leg Information Index", show.flex_dac_leg_information_index, "Show generated flex dac leg information index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_application_messages
  end
  if show.flex_dac_leg_information ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_flex_dac_leg_information then
    show.flex_dac_leg_information = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_flex_dac_leg_information
  end
  if show.leg_information ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_leg_information then
    show.leg_information = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_leg_information
  end
  if show.message ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message then
    show.message = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message_index then
    show.message_index = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_message_index
  end
  if show.leg_information_index ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_leg_information_index then
    show.leg_information_index = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_leg_information_index
  end
  if show.flex_dac_leg_information_index ~= omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_flex_dac_leg_information_index then
    show.flex_dac_leg_information_index = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.prefs.show_flex_dac_leg_information_index
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
-- Nasdaq IseOptions SpreadFeed Itch 2.1 Fields
-----------------------------------------------------------------------

-- Ask Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_cust_size = {}

-- Size: Ask Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_cust_size.size = 4

-- Display: Ask Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_cust_size.display = function(value)
  return "Ask Cust Size: "..value
end

-- Dissect: Ask Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_cust_size, range, value, display)

  return offset + length, value
end

-- Ask Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_market_size = {}

-- Size: Ask Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_market_size.size = 4

-- Display: Ask Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_market_size.display = function(value)
  return "Ask Dntt Market Size: "..value
end

-- Dissect: Ask Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_dntt_market_size, range, value, display)

  return offset + length, value
end

-- Ask Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_size = {}

-- Size: Ask Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_size.size = 4

-- Display: Ask Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_size.display = function(value)
  return "Ask Dntt Size: "..value
end

-- Dissect: Ask Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_dntt_size, range, value, display)

  return offset + length, value
end

-- Ask Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_market_size = {}

-- Size: Ask Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_market_size.size = 4

-- Display: Ask Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_market_size.display = function(value)
  return "Ask Market Size: "..value
end

-- Dissect: Ask Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_market_size, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_price = {}

-- Size: Ask Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_price.size = 4

-- Display: Ask Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_pro_cust_size = {}

-- Size: Ask Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_pro_cust_size.size = 4

-- Display: Ask Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_pro_cust_size.display = function(value)
  return "Ask Pro Cust Size: "..value
end

-- Dissect: Ask Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_pro_cust_size, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_size = {}

-- Size: Ask Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_size.size = 4

-- Display: Ask Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Auction Duration
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_duration = {}

-- Size: Auction Duration
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_duration.size = 4

-- Display: Auction Duration
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_duration.display = function(value)
  return "Auction Duration: "..value
end

-- Dissect: Auction Duration
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_duration.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_duration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.auction_duration, range, value, display)

  return offset + length, value
end

-- Auction Event
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_event = {}

-- Size: Auction Event
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_event.size = 1

-- Display: Auction Event
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_event.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_event.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id = {}

-- Size: Auction Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.size = 4

-- Display: Auction Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_type = {}

-- Size: Auction Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_type.size = 1

-- Display: Auction Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_type.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_cust_size = {}

-- Size: Bid Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_cust_size.size = 4

-- Display: Bid Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_cust_size.display = function(value)
  return "Bid Cust Size: "..value
end

-- Dissect: Bid Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_cust_size, range, value, display)

  return offset + length, value
end

-- Bid Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_market_size = {}

-- Size: Bid Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_market_size.size = 4

-- Display: Bid Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_market_size.display = function(value)
  return "Bid Dntt Market Size: "..value
end

-- Dissect: Bid Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_dntt_market_size, range, value, display)

  return offset + length, value
end

-- Bid Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_size = {}

-- Size: Bid Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_size.size = 4

-- Display: Bid Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_size.display = function(value)
  return "Bid Dntt Size: "..value
end

-- Dissect: Bid Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_dntt_size, range, value, display)

  return offset + length, value
end

-- Bid Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_market_size = {}

-- Size: Bid Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_market_size.size = 4

-- Display: Bid Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_market_size.display = function(value)
  return "Bid Market Size: "..value
end

-- Dissect: Bid Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_market_size, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_price = {}

-- Size: Bid Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_price.size = 4

-- Display: Bid Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_pro_cust_size = {}

-- Size: Bid Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_pro_cust_size.size = 4

-- Display: Bid Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_pro_cust_size.display = function(value)
  return "Bid Pro Cust Size: "..value
end

-- Dissect: Bid Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_pro_cust_size, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_size = {}

-- Size: Bid Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_size.size = 4

-- Display: Bid Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Change Reason
nasdaq_iseoptions_spreadfeed_itch_v2_1.change_reason = {}

-- Size: Change Reason
nasdaq_iseoptions_spreadfeed_itch_v2_1.change_reason.size = 1

-- Display: Change Reason
nasdaq_iseoptions_spreadfeed_itch_v2_1.change_reason.display = function(value)
  if value == "U" then
    return "Change Reason: User (U)"
  end

  return "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
nasdaq_iseoptions_spreadfeed_itch_v2_1.change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.change_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Cmta
nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta = {}

-- Size: Cmta
nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.size = 6

-- Display: Cmta
nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Cross Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_id = {}

-- Size: Cross Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_id.size = 4

-- Display: Cross Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number = {}

-- Size: Cross Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.size = 4

-- Display: Cross Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.display = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_type = {}

-- Size: Cross Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_type.size = 1

-- Display: Cross Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_type.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_iseoptions_spreadfeed_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_iseoptions_spreadfeed_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_iseoptions_spreadfeed_itch_v2_1.current_trading_state.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size = {}

-- Size: Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.size = 4

-- Display: Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.display = function(value)
  return "Cust Size: "..value
end

-- Dissect: Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.cust_size, range, value, display)

  return offset + length, value
end

-- Depth Order Capacity
nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity = {}

-- Size: Depth Order Capacity
nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.size = 1

-- Display: Depth Order Capacity
nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.depth_order_capacity, range, value, display)

  return offset + length, value
end

-- Depth Side
nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side = {}

-- Size: Depth Side
nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.size = 1

-- Display: Depth Side
nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.depth_side, range, value, display)

  return offset + length, value
end

-- Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size = {}

-- Size: Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.size = 4

-- Display: Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.display = function(value)
  return "Dntt Market Size: "..value
end

-- Dissect: Dntt Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.dntt_market_size, range, value, display)

  return offset + length, value
end

-- Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size = {}

-- Size: Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.size = 4

-- Display: Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.display = function(value)
  return "Dntt Size: "..value
end

-- Dissect: Dntt Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.dntt_size, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_iseoptions_spreadfeed_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_iseoptions_spreadfeed_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_iseoptions_spreadfeed_itch_v2_1.event_code.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exec Flag
nasdaq_iseoptions_spreadfeed_itch_v2_1.exec_flag = {}

-- Size: Exec Flag
nasdaq_iseoptions_spreadfeed_itch_v2_1.exec_flag.size = 1

-- Display: Exec Flag
nasdaq_iseoptions_spreadfeed_itch_v2_1.exec_flag.display = function(value)
  if value == "N" then
    return "Exec Flag: None (N)"
  end
  if value == "A" then
    return "Exec Flag: Aon (A)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_iseoptions_spreadfeed_itch_v2_1.exec_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.exec_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.exec_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Executable Order Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.executable_order_volume = {}

-- Size: Executable Order Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.executable_order_volume.size = 4

-- Display: Executable Order Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.executable_order_volume.display = function(value)
  return "Executable Order Volume: "..value
end

-- Dissect: Executable Order Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.executable_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.executable_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.executable_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.executable_order_volume, range, value, display)

  return offset + length, value
end

-- Executed Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.executed_volume = {}

-- Size: Executed Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.executed_volume.size = 4

-- Display: Executed Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.executed_volume.display = function(value)
  return "Executed Volume: "..value
end

-- Dissect: Executed Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.executed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.executed_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.executed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.executed_volume, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Giveup
nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup = {}

-- Size: Giveup
nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.size = 6

-- Display: Giveup
nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.display = function(value)
  return "Giveup: "..value
end

-- Dissect: Giveup
nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.giveup, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Limit Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.limit_price = {}

-- Size: Limit Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.limit_price.size = 4

-- Display: Limit Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Dissect: Limit Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.limit_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size = {}

-- Size: Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.size = 4

-- Display: Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.display = function(value)
  return "Market Size: "..value
end

-- Dissect: Market Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.market_size, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number = {}

-- Size: Match Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.size = 4

-- Display: Match Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "s" then
    return "Message Type: Complex Strategy Directory Message (s)"
  end
  if value == "H" then
    return "Message Type: Strategy Trading Action Message (H)"
  end
  if value == "C" then
    return "Message Type: Complex Add Order Message (C)"
  end
  if value == "a" then
    return "Message Type: Complex Strategy Auction Message (a)"
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
  if value == "E" then
    return "Message Type: Strategy Best Bid And Ask Update Message (E)"
  end
  if value == "c" then
    return "Message Type: Strategy Best Bid Update Message (c)"
  end
  if value == "d" then
    return "Message Type: Strategy Best Ask Update Message (d)"
  end
  if value == "R" then
    return "Message Type: Complex Strategy Trade Report Message (R)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- New Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Number Of Flex Dac Legs
nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_flex_dac_legs = {}

-- Size: Number Of Flex Dac Legs
nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_flex_dac_legs.size = 1

-- Display: Number Of Flex Dac Legs
nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_flex_dac_legs.display = function(value)
  return "Number Of Flex Dac Legs: "..value
end

-- Dissect: Number Of Flex Dac Legs
nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_flex_dac_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_flex_dac_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_flex_dac_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.number_of_flex_dac_legs, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.option_id = {}

-- Size: Option Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.option_id.size = 4

-- Display: Option Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.option_type.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity = {}

-- Size: Order Capacity
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Status
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_status = {}

-- Size: Order Status
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_status.size = 1

-- Display: Order Status
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_status.display = function(value)
  if value == "O" then
    return "Order Status: Open (O)"
  end
  if value == "F" then
    return "Order Status: Filled (F)"
  end
  if value == "C" then
    return "Order Status: Cancelled (C)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type = {}

-- Size: Order Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.size = 1

-- Display: Order Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.display = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_volume = {}

-- Size: Original Order Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_volume.size = 4

-- Display: Original Order Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_volume.display = function(value)
  return "Original Order Volume: "..value
end

-- Dissect: Original Order Volume
nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.original_order_volume, range, value, display)

  return offset + length, value
end

-- Owner Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id = {}

-- Size: Owner Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.size = 6

-- Display: Owner Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.display = function(value)
  return "Owner Id: "..value
end

-- Dissect: Owner Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.owner_id, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long = {}

-- Size: Price Long
nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size = 4

-- Display: Price Long
nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short = {}

-- Size: Price Short
nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.size = 2

-- Display: Price Short
nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.display = function(value)
  return "Price Short: "..value
end

-- Dissect: Price Short
nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.price_short, range, value, display)

  return offset + length, value
end

-- Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size = {}

-- Size: Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.size = 4

-- Display: Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.display = function(value)
  return "Pro Cust Size: "..value
end

-- Dissect: Pro Cust Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.pro_cust_size, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition = {}

-- Size: Quote Condition
nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.display = function(value)
  return "Quote Condition: "..value
end

-- Dissect: Quote Condition
nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1 = {}

-- Size: Reserved 1
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 3
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3 = {}

-- Size: Reserved 3
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.size = 3

-- Display: Reserved 3
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 4
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4 = {}

-- Size: Reserved 4
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.size = 4

-- Display: Reserved 4
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_8 = {}

-- Size: Reserved 8
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_8.size = 8

-- Display: Reserved 8
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Response Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.response_price = {}

-- Size: Response Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.response_price.size = 4

-- Display: Response Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.response_price.display = function(value)
  return "Response Price: "..value
end

-- Dissect: Response Price
nasdaq_iseoptions_spreadfeed_itch_v2_1.response_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.response_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.response_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.response_price, range, value, display)

  return offset + length, value
end

-- Response Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.response_size = {}

-- Size: Response Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.response_size.size = 4

-- Display: Response Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.response_size.display = function(value)
  return "Response Size: "..value
end

-- Dissect: Response Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.response_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.response_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.response_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.response_size, range, value, display)

  return offset + length, value
end

-- Scope
nasdaq_iseoptions_spreadfeed_itch_v2_1.scope = {}

-- Size: Scope
nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.size = 1

-- Display: Scope
nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.display = function(value)
  if value == "L" then
    return "Scope: Local (L)"
  end
  if value == "N" then
    return "Scope: National (N)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.scope, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_iseoptions_spreadfeed_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_iseoptions_spreadfeed_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_iseoptions_spreadfeed_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_iseoptions_spreadfeed_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_iseoptions_spreadfeed_itch_v2_1.session = {}

-- Size: Session
nasdaq_iseoptions_spreadfeed_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_iseoptions_spreadfeed_itch_v2_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_iseoptions_spreadfeed_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.session.size
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

  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_iseoptions_spreadfeed_itch_v2_1.side = {}

-- Size: Side
nasdaq_iseoptions_spreadfeed_itch_v2_1.side.size = 1

-- Display: Side
nasdaq_iseoptions_spreadfeed_itch_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_iseoptions_spreadfeed_itch_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.size = {}

-- Size: Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.size.size = 4

-- Display: Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_iseoptions_spreadfeed_itch_v2_1.size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.size, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id = {}

-- Size: Strategy Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strategy Id Order Reference
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id_order_reference = {}

-- Size: Strategy Id Order Reference
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id_order_reference.size = 4

-- Display: Strategy Id Order Reference
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id_order_reference.display = function(value)
  return "Strategy Id Order Reference: "..value
end

-- Dissect: Strategy Id Order Reference
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id_order_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id_order_reference.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id_order_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_id_order_reference, range, value, display)

  return offset + length, value
end

-- Strategy Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_type = {}

-- Size: Strategy Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_type.size = 1

-- Display: Strategy Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_type.display = function(value)
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
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_iseoptions_spreadfeed_itch_v2_1.time_in_force = {}

-- Size: Time In Force
nasdaq_iseoptions_spreadfeed_itch_v2_1.time_in_force.size = 1

-- Display: Time In Force
nasdaq_iseoptions_spreadfeed_itch_v2_1.time_in_force.display = function(value)
  if value == "D" then
    return "Time In Force: Day Order (D)"
  end
  if value == "G" then
    return "Time In Force: Good Till Cancelled (G)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_iseoptions_spreadfeed_itch_v2_1.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trade Condition
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition = {}

-- Size: Trade Condition
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.size = 1

-- Display: Trade Condition
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Condition Numeric
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition_numeric = {}

-- Size: Trade Condition Numeric
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition_numeric.size = 1

-- Display: Trade Condition Numeric
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition_numeric.display = function(value)
  return "Trade Condition Numeric: "..value
end

-- Dissect: Trade Condition Numeric
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition_numeric.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition_numeric.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition_numeric.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.trade_condition_numeric, range, value, display)

  return offset + length, value
end

-- Trade Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_type = {}

-- Size: Trade Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_type.size = 1

-- Display: Trade Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_type.display = function(value)
  if value == "E" then
    return "Trade Type: Electronic Trade (E)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_iseoptions_spreadfeed_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_iseoptions_spreadfeed_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_iseoptions_spreadfeed_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_iseoptions_spreadfeed_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Volume Long
nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long = {}

-- Size: Volume Long
nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.size = 4

-- Display: Volume Long
nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Short
nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short = {}

-- Size: Volume Short
nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.size = 2

-- Display: Volume Short
nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.volume_short, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq IseOptions SpreadFeed Itch 2.1
-----------------------------------------------------------------------

-- Complex Strategy Trade Report Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message = {}

-- Size: Complex Strategy Trade Report Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition_numeric.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.size

-- Display: Complex Strategy Trade Report Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Trade Report Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_id.dissect(buffer, index, packet, parent)

  -- Trade Condition Numeric: Integer
  index, trade_condition_numeric = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition_numeric.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Trade Report Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_strategy_trade_report_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Best Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message = {}

-- Size: Strategy Best Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.size

-- Display: Strategy Best Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Size: Integer
  index, market_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_iseoptions_spreadfeed_itch_v2_1.size.dissect(buffer, index, packet, parent)

  -- Cust Size: Integer
  index, cust_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.dissect(buffer, index, packet, parent)

  -- Pro Cust Size: Integer
  index, pro_cust_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.dissect(buffer, index, packet, parent)

  -- Dntt Size: Integer
  index, dntt_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.dissect(buffer, index, packet, parent)

  -- Dntt Market Size: Integer
  index, dntt_market_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_best_ask_update_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Best Bid Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message = {}

-- Size: Strategy Best Bid Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.size

-- Display: Strategy Best Bid Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Bid Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Size: Integer
  index, market_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.market_size.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_iseoptions_spreadfeed_itch_v2_1.size.dissect(buffer, index, packet, parent)

  -- Cust Size: Integer
  index, cust_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.cust_size.dissect(buffer, index, packet, parent)

  -- Pro Cust Size: Integer
  index, pro_cust_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.pro_cust_size.dissect(buffer, index, packet, parent)

  -- Dntt Size: Integer
  index, dntt_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_size.dissect(buffer, index, packet, parent)

  -- Dntt Market Size: Integer
  index, dntt_market_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.dntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Bid Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_best_bid_update_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Best Bid And Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message = {}

-- Size: Strategy Best Bid And Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_market_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_price.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_cust_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_pro_cust_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_market_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_market_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_price.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_cust_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_pro_cust_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_size.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_market_size.size

-- Display: Strategy Best Bid And Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Best Bid And Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_iseoptions_spreadfeed_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Market Size: Integer
  index, bid_market_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_market_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Integer
  index, bid_price = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Cust Size: Integer
  index, bid_cust_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_cust_size.dissect(buffer, index, packet, parent)

  -- Bid Pro Cust Size: Integer
  index, bid_pro_cust_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_pro_cust_size.dissect(buffer, index, packet, parent)

  -- Bid Dntt Size: Integer
  index, bid_dntt_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_size.dissect(buffer, index, packet, parent)

  -- Bid Dntt Market Size: Integer
  index, bid_dntt_market_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.bid_dntt_market_size.dissect(buffer, index, packet, parent)

  -- Ask Market Size: Integer
  index, ask_market_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_market_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Integer
  index, ask_price = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Cust Size: Integer
  index, ask_cust_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_cust_size.dissect(buffer, index, packet, parent)

  -- Ask Pro Cust Size: Integer
  index, ask_pro_cust_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_pro_cust_size.dissect(buffer, index, packet, parent)

  -- Ask Dntt Size: Integer
  index, ask_dntt_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_size.dissect(buffer, index, packet, parent)

  -- Ask Dntt Market Size: Integer
  index, ask_dntt_market_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.ask_dntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Best Bid And Ask Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_best_bid_and_ask_update_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Strategy Trade Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message = {}

-- Size: Complex Strategy Trade Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_type.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_type.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.size

-- Display: Complex Strategy Trade Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Trade Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_type.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Trade Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_strategy_trade_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message = {}

-- Size: Single Side Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.change_reason.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.size

-- Display: Single Side Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Change Reason: Alpha
  index, change_reason = nasdaq_iseoptions_spreadfeed_itch_v2_1.change_reason.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_update_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Delete Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message = {}

-- Size: Single Side Delete Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id_order_reference.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size

-- Display: Single Side Delete Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id Order Reference: Integer
  index, strategy_id_order_reference = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id_order_reference.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message = {}

-- Size: Single Side Replace Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.size

-- Display: Single Side Replace Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message = {}

-- Size: Single Side Replace Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.size

-- Display: Single Side Replace Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_replace_short_form_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed With Price Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message = {}

-- Size: Single Side Executed With Price Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.size

-- Display: Single Side Executed With Price Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_1.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message = {}

-- Size: Single Side Executed Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.executed_volume.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.size

-- Display: Single Side Executed Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Volume: Integer
  index, executed_volume = nasdaq_iseoptions_spreadfeed_itch_v2_1.executed_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_iseoptions_spreadfeed_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message = {}

-- Size: Add Order Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.size

-- Display: Add Order Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Depth Side: Alpha
  index, depth_side = nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.dissect(buffer, index, packet, parent)

  -- Depth Order Capacity: Alpha
  index, depth_order_capacity = nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.add_order_long_form_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message = {}

-- Size: Add Order Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.size

-- Display: Add Order Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Depth Side: Alpha
  index, depth_side = nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_side.dissect(buffer, index, packet, parent)

  -- Depth Order Capacity: Alpha
  index, depth_order_capacity = nasdaq_iseoptions_spreadfeed_itch_v2_1.depth_order_capacity.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_iseoptions_spreadfeed_itch_v2_1.volume_short.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Form Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.add_order_short_form_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Flex Dac Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information = {}

-- Size: Flex Dac Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_8.size

-- Display: Flex Dac Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Dac Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information.fields = function(buffer, offset, packet, parent, flex_dac_leg_information_index)
  local index = offset

  -- Implicit Flex Dac Leg Information Index
  if flex_dac_leg_information_index ~= nil and show.flex_dac_leg_information_index then
    local iteration = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.flex_dac_leg_information_index, flex_dac_leg_information_index)
    iteration:set_generated()
  end

  -- Reserved 8: Alpha
  index, reserved_8 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Dac Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information.dissect = function(buffer, offset, packet, parent, flex_dac_leg_information_index)
  if show.flex_dac_leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.flex_dac_leg_information, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information.fields(buffer, offset, packet, parent, flex_dac_leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information.fields(buffer, offset, packet, parent, flex_dac_leg_information_index)
  end
end

-- Complex Strategy Auction Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message = {}

-- Calculate size of: Complex Strategy Auction Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_type.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_duration.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_event.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.side.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.size.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.exec_flag.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.response_price.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.response_size.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_flex_dac_legs.size

  -- Calculate field size from count
  local flex_dac_leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + flex_dac_leg_information_count * 8

  return index
end

-- Display: Complex Strategy Auction Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Auction Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Duration: Integer
  index, auction_duration = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_duration.dissect(buffer, index, packet, parent)

  -- Auction Event: Alpha
  index, auction_event = nasdaq_iseoptions_spreadfeed_itch_v2_1.auction_event.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_spreadfeed_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_iseoptions_spreadfeed_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_iseoptions_spreadfeed_itch_v2_1.size.dissect(buffer, index, packet, parent)

  -- Exec Flag: Alpha
  index, exec_flag = nasdaq_iseoptions_spreadfeed_itch_v2_1.exec_flag.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Owner Id: Alpha
  index, owner_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: Alpha
  index, giveup = nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: Alpha
  index, cmta = nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.dissect(buffer, index, packet, parent)

  -- Response Price: Integer
  index, response_price = nasdaq_iseoptions_spreadfeed_itch_v2_1.response_price.dissect(buffer, index, packet, parent)

  -- Response Size: Integer
  index, response_size = nasdaq_iseoptions_spreadfeed_itch_v2_1.response_size.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_4.dissect(buffer, index, packet, parent)

  -- Number Of Flex Dac Legs: Integer
  index, number_of_flex_dac_legs = nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_flex_dac_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Flex Dac Leg Information
  for flex_dac_leg_information_index = 1, number_of_flex_dac_legs do
    index, flex_dac_leg_information = nasdaq_iseoptions_spreadfeed_itch_v2_1.flex_dac_leg_information.dissect(buffer, index, packet, parent, flex_dac_leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Auction Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_strategy_auction_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Add Order Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message = {}

-- Size: Complex Add Order Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.side.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_volume.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.executable_order_volume.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_status.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.limit_price.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.time_in_force.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.size

-- Display: Complex Add Order Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Add Order Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_spreadfeed_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: Integer
  index, original_order_volume = nasdaq_iseoptions_spreadfeed_itch_v2_1.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: Integer
  index, executable_order_volume = nasdaq_iseoptions_spreadfeed_itch_v2_1.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: Alpha
  index, order_status = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Limit Price: Integer
  index, limit_price = nasdaq_iseoptions_spreadfeed_itch_v2_1.limit_price.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_iseoptions_spreadfeed_itch_v2_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_iseoptions_spreadfeed_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_iseoptions_spreadfeed_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Owner Id: Alpha
  index, owner_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: Alpha
  index, giveup = nasdaq_iseoptions_spreadfeed_itch_v2_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: Alpha
  index, cmta = nasdaq_iseoptions_spreadfeed_itch_v2_1.cmta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Add Order Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_add_order_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trading Action Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message = {}

-- Size: Strategy Trading Action Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.current_trading_state.size

-- Display: Strategy Trading Action Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphabetic
  index, current_trading_state = nasdaq_iseoptions_spreadfeed_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information = {}

-- Size: Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.option_id.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.security_symbol.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_year.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_month.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_day.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.explicit_strike_price.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.option_type.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.side.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_ratio.size

-- Display: Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information.fields = function(buffer, offset, packet, parent, leg_information_index)
  local index = offset

  -- Implicit Leg Information Index
  if leg_information_index ~= nil and show.leg_information_index then
    local iteration = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.leg_information_index, leg_information_index)
    iteration:set_generated()
  end

  -- Option Id: Integer
  index, option_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_iseoptions_spreadfeed_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_iseoptions_spreadfeed_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_iseoptions_spreadfeed_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_spreadfeed_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information.dissect = function(buffer, offset, packet, parent, leg_information_index)
  if show.leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
  end
end

-- Complex Strategy Directory Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message = {}

-- Calculate size of: Complex Strategy Directory Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_type.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.underlying_symbol.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.size

  index = index + nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_legs.size

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 25

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Strategy Type: Alphanumeric
  index, strategy_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_iseoptions_spreadfeed_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_iseoptions_spreadfeed_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_iseoptions_spreadfeed_itch_v2_1.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Information
  for leg_information_index = 1, number_of_legs do
    index, leg_information = nasdaq_iseoptions_spreadfeed_itch_v2_1.leg_information.dissect(buffer, index, packet, parent, leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.complex_strategy_directory_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_spreadfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_iseoptions_spreadfeed_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_iseoptions_spreadfeed_itch_v2_1.payload = {}

-- Dissect: Payload
nasdaq_iseoptions_spreadfeed_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if message_type == "s" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if message_type == "H" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Add Order Message
  if message_type == "C" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Auction Message
  if message_type == "a" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_auction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Form Message
  if message_type == "r" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Form Message
  if message_type == "o" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.add_order_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if message_type == "t" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if message_type == "T" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Short Form Message
  if message_type == "i" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Long Form Message
  if message_type == "I" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if message_type == "D" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if message_type == "P" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.single_side_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Trade Message
  if message_type == "q" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Bid And Ask Update Message
  if message_type == "E" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_and_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Bid Update Message
  if message_type == "c" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Best Ask Update Message
  if message_type == "d" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.strategy_best_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Trade Report Message
  if message_type == "R" then
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.complex_strategy_trade_report_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.message_length.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 18 values
  index, message_type = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 18 branches
  index = nasdaq_iseoptions_spreadfeed_itch_v2_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_iseoptions_spreadfeed_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_iseoptions_spreadfeed_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_iseoptions_spreadfeed_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_spreadfeed_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_iseoptions_spreadfeed_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_iseoptions_spreadfeed_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return offset
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_iseoptions_spreadfeed_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header = {}

-- Size: Packet Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.size =
  nasdaq_iseoptions_spreadfeed_itch_v2_1.session.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.sequence_number.size + 
  nasdaq_iseoptions_spreadfeed_itch_v2_1.message_count.size

-- Display: Packet Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_iseoptions_spreadfeed_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_iseoptions_spreadfeed_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_iseoptions_spreadfeed_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_iseoptions_spreadfeed_itch_v2_1.packet = {}

-- Verify required size of Udp packet
nasdaq_iseoptions_spreadfeed_itch_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.size
end

-- Dissect Packet
nasdaq_iseoptions_spreadfeed_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_iseoptions_spreadfeed_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_iseoptions_spreadfeed_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.init()
end

-- Dissector for Nasdaq IseOptions SpreadFeed Itch 2.1
function omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_iseoptions_spreadfeed_itch_v2_1, buffer(), omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_iseoptions_spreadfeed_itch_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq IseOptions SpreadFeed Itch 2.1 (Udp)
local function omi_nasdaq_iseoptions_spreadfeed_itch_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_iseoptions_spreadfeed_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_iseoptions_spreadfeed_itch_v2_1
  omi_nasdaq_iseoptions_spreadfeed_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq IseOptions SpreadFeed Itch 2.1
omi_nasdaq_iseoptions_spreadfeed_itch_v2_1:register_heuristic("udp", omi_nasdaq_iseoptions_spreadfeed_itch_v2_1_udp_heuristic)

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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
