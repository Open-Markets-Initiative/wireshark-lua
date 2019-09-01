-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Bx Options DepthOfMarket Itch 1.3 Protocol
local nasdaq_bx_options_depthofmarket_itch_v1_3 = Proto("Nasdaq.Bx.Options.DepthOfMarket.Itch.v1.3.Lua", "Nasdaq Bx Options DepthOfMarket Itch 1.3")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Bx Options DepthOfMarket Itch 1.3 Fields
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.add_order_message_long_form = ProtoField.new("Add Order Message Long Form", "nasdaq.bx.options.depthofmarket.itch.v1.3.addordermessagelongform", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.add_order_message_short_form = ProtoField.new("Add Order Message Short Form", "nasdaq.bx.options.depthofmarket.itch.v1.3.addordermessageshortform", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.add_quote_message_long_form = ProtoField.new("Add Quote Message Long Form", "nasdaq.bx.options.depthofmarket.itch.v1.3.addquotemessagelongform", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.add_quote_message_short_form = ProtoField.new("Add Quote Message Short Form", "nasdaq.bx.options.depthofmarket.itch.v1.3.addquotemessageshortform", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask = ProtoField.new("Ask", "nasdaq.bx.options.depthofmarket.itch.v1.3.ask", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.bx.options.depthofmarket.itch.v1.3.askprice", ftypes.UINT16)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask_reference_delta_number = ProtoField.new("Ask Reference Delta Number", "nasdaq.bx.options.depthofmarket.itch.v1.3.askreferencedeltanumber", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask_reference_number_delta = ProtoField.new("Ask Reference Number Delta", "nasdaq.bx.options.depthofmarket.itch.v1.3.askreferencenumberdelta", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.bx.options.depthofmarket.itch.v1.3.asksize", ftypes.UINT16)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.bx.options.depthofmarket.itch.v1.3.auctionid", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.bx.options.depthofmarket.itch.v1.3.auctiontype", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.base_reference_message = ProtoField.new("Base Reference Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.basereferencemessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.base_reference_number = ProtoField.new("Base Reference Number", "nasdaq.bx.options.depthofmarket.itch.v1.3.basereferencenumber", ftypes.UINT64)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.bid = ProtoField.new("Bid", "nasdaq.bx.options.depthofmarket.itch.v1.3.bid", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.bx.options.depthofmarket.itch.v1.3.bidprice", ftypes.UINT16)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.bid_reference_number_delta = ProtoField.new("Bid Reference Number Delta", "nasdaq.bx.options.depthofmarket.itch.v1.3.bidreferencenumberdelta", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.bx.options.depthofmarket.itch.v1.3.bidsize", ftypes.UINT16)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.block_delete_message = ProtoField.new("Block Delete Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.blockdeletemessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.broken_trade_or_order_execution_message = ProtoField.new("Broken Trade Or Order Execution Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.brokentradeororderexecutionmessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.bx.options.depthofmarket.itch.v1.3.buysellindicator", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.bx.options.depthofmarket.itch.v1.3.cancelledcontracts", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.bx.options.depthofmarket.itch.v1.3.changereason", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.count = ProtoField.new("Count", "nasdaq.bx.options.depthofmarket.itch.v1.3.count", ftypes.UINT16)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.bx.options.depthofmarket.itch.v1.3.crossnumber", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.bx.options.depthofmarket.itch.v1.3.crosstype", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.bx.options.depthofmarket.itch.v1.3.currenttradingstate", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.bx.options.depthofmarket.itch.v1.3.customerfirmindicator", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.event_code = ProtoField.new("Event Code", "nasdaq.bx.options.depthofmarket.itch.v1.3.eventcode", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.bx.options.depthofmarket.itch.v1.3.executedcontracts", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.bx.options.depthofmarket.itch.v1.3.expirationdate", ftypes.UINT8)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.bx.options.depthofmarket.itch.v1.3.expirationmonth", ftypes.UINT8)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.bx.options.depthofmarket.itch.v1.3.expirationyear", ftypes.UINT8)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.bx.options.depthofmarket.itch.v1.3.explicitstrikeprice", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.bx.options.depthofmarket.itch.v1.3.imbalancedirection", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.bx.options.depthofmarket.itch.v1.3.imbalanceprice", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.bx.options.depthofmarket.itch.v1.3.imbalancevolume", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.length = ProtoField.new("Length", "nasdaq.bx.options.depthofmarket.itch.v1.3.length", ftypes.UINT16)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.market_side = ProtoField.new("Market Side", "nasdaq.bx.options.depthofmarket.itch.v1.3.marketside", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.match_number = ProtoField.new("Match Number", "nasdaq.bx.options.depthofmarket.itch.v1.3.matchnumber", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.message = ProtoField.new("Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.message", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.message_header = ProtoField.new("Message Header", "nasdaq.bx.options.depthofmarket.itch.v1.3.messageheader", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.message_type = ProtoField.new("Message Type", "nasdaq.bx.options.depthofmarket.itch.v1.3.messagetype", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.mpv = ProtoField.new("Mpv", "nasdaq.bx.options.depthofmarket.itch.v1.3.mpv", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.netorderimbalanceindicatormessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.new_reference_number_delta = ProtoField.new("New Reference Number Delta", "nasdaq.bx.options.depthofmarket.itch.v1.3.newreferencenumberdelta", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.non_auction_options_trade_message = ProtoField.new("Non Auction Options Trade Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.nonauctionoptionstrademessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.open_state = ProtoField.new("Open State", "nasdaq.bx.options.depthofmarket.itch.v1.3.openstate", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.option_directory_message = ProtoField.new("Option Directory Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.optiondirectorymessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.option_id = ProtoField.new("Option Id", "nasdaq.bx.options.depthofmarket.itch.v1.3.optionid", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.option_open_message = ProtoField.new("Option Open Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.optionopenmessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.option_type = ProtoField.new("Option Type", "nasdaq.bx.options.depthofmarket.itch.v1.3.optiontype", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.bx.options.depthofmarket.itch.v1.3.optionsclosingtype", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.optionscrosstrademessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.ordercancelmessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.order_reference_number_delta = ProtoField.new("Order Reference Number Delta", "nasdaq.bx.options.depthofmarket.itch.v1.3.orderreferencenumberdelta", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.original_ask_reference_number_delta = ProtoField.new("Original Ask Reference Number Delta", "nasdaq.bx.options.depthofmarket.itch.v1.3.originalaskreferencenumberdelta", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.original_bid_reference_number_delta = ProtoField.new("Original Bid Reference Number Delta", "nasdaq.bx.options.depthofmarket.itch.v1.3.originalbidreferencenumberdelta", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.original_reference_number_delta = ProtoField.new("Original Reference Number Delta", "nasdaq.bx.options.depthofmarket.itch.v1.3.originalreferencenumberdelta", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.packet = ProtoField.new("Packet", "nasdaq.bx.options.depthofmarket.itch.v1.3.packet", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.bx.options.depthofmarket.itch.v1.3.packetheader", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.bx.options.depthofmarket.itch.v1.3.pairedcontracts", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.payload = ProtoField.new("Payload", "nasdaq.bx.options.depthofmarket.itch.v1.3.payload", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.price = ProtoField.new("Price", "nasdaq.bx.options.depthofmarket.itch.v1.3.price", ftypes.UINT16)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.printable = ProtoField.new("Printable", "nasdaq.bx.options.depthofmarket.itch.v1.3.printable", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.quotedeletemessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.quote_replace_message_long_form = ProtoField.new("Quote Replace Message Long Form", "nasdaq.bx.options.depthofmarket.itch.v1.3.quotereplacemessagelongform", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.quote_replace_message_short_form = ProtoField.new("Quote Replace Message Short Form", "nasdaq.bx.options.depthofmarket.itch.v1.3.quotereplacemessageshortform", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.reference_number_delta = ProtoField.new("Reference Number Delta", "nasdaq.bx.options.depthofmarket.itch.v1.3.referencenumberdelta", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.reference_number_deltan = ProtoField.new("Reference Number Deltan", "nasdaq.bx.options.depthofmarket.itch.v1.3.referencenumberdeltan", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.reserved = ProtoField.new("Reserved", "nasdaq.bx.options.depthofmarket.itch.v1.3.reserved", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.second = ProtoField.new("Second", "nasdaq.bx.options.depthofmarket.itch.v1.3.second", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.secondsmessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.bx.options.depthofmarket.itch.v1.3.securitysymbol", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.sequence = ProtoField.new("Sequence", "nasdaq.bx.options.depthofmarket.itch.v1.3.sequence", ftypes.UINT64)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.session = ProtoField.new("Session", "nasdaq.bx.options.depthofmarket.itch.v1.3.session", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.singlesidedeletemessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.singlesideexecutedmessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_order_executed_with_price_message = ProtoField.new("Single Side Order Executed With Price Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.singlesideorderexecutedwithpricemessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "nasdaq.bx.options.depthofmarket.itch.v1.3.singlesidereplacemessagelongform", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "nasdaq.bx.options.depthofmarket.itch.v1.3.singlesidereplacemessageshortform", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.singlesideupdatemessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.source = ProtoField.new("Source", "nasdaq.bx.options.depthofmarket.itch.v1.3.source", ftypes.UINT8)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.systemeventmessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.bx.options.depthofmarket.itch.v1.3.timestamp", ftypes.UINT32)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.total_number_of_reference_number_deltas = ProtoField.new("Total Number Of Reference Number Deltas", "nasdaq.bx.options.depthofmarket.itch.v1.3.totalnumberofreferencenumberdeltas", ftypes.UINT16)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.tradable = ProtoField.new("Tradable", "nasdaq.bx.options.depthofmarket.itch.v1.3.tradable", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.bx.options.depthofmarket.itch.v1.3.tradingactionmessage", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.bx.options.depthofmarket.itch.v1.3.underlyingsymbol", ftypes.STRING)
nasdaq_bx_options_depthofmarket_itch_v1_3.fields.volume = ProtoField.new("Volume", "nasdaq.bx.options.depthofmarket.itch.v1.3.volume", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Bx Options DepthOfMarket Itch 1.3 Element Dissection Options
show.add_order_message_long_form = true
show.add_order_message_short_form = true
show.add_quote_message_long_form = true
show.add_quote_message_short_form = true
show.base_reference_message = true
show.block_delete_message = true
show.broken_trade_or_order_execution_message = true
show.message = true
show.message_header = true
show.net_order_imbalance_indicator_message = true
show.non_auction_options_trade_message = true
show.option_directory_message = true
show.option_open_message = true
show.options_cross_trade_message = true
show.order_cancel_message = true
show.packet = true
show.packet_header = true
show.quote_delete_message = true
show.quote_replace_message_long_form = true
show.quote_replace_message_short_form = true
show.seconds_message = true
show.single_side_delete_message = true
show.single_side_executed_message = true
show.single_side_order_executed_with_price_message = true
show.single_side_replace_message_long_form = true
show.single_side_replace_message_short_form = true
show.single_side_update_message = true
show.system_event_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq Bx Options DepthOfMarket Itch 1.3 Show Options
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_order_message_long_form = Pref.bool("Show Add Order Message Long Form", show.add_order_message_long_form, "Parse and add Add Order Message Long Form to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_order_message_short_form = Pref.bool("Show Add Order Message Short Form", show.add_order_message_short_form, "Parse and add Add Order Message Short Form to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_quote_message_long_form = Pref.bool("Show Add Quote Message Long Form", show.add_quote_message_long_form, "Parse and add Add Quote Message Long Form to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_quote_message_short_form = Pref.bool("Show Add Quote Message Short Form", show.add_quote_message_short_form, "Parse and add Add Quote Message Short Form to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_base_reference_message = Pref.bool("Show Base Reference Message", show.base_reference_message, "Parse and add Base Reference Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_block_delete_message = Pref.bool("Show Block Delete Message", show.block_delete_message, "Parse and add Block Delete Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_broken_trade_or_order_execution_message = Pref.bool("Show Broken Trade Or Order Execution Message", show.broken_trade_or_order_execution_message, "Parse and add Broken Trade Or Order Execution Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_net_order_imbalance_indicator_message = Pref.bool("Show Net Order Imbalance Indicator Message", show.net_order_imbalance_indicator_message, "Parse and add Net Order Imbalance Indicator Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_non_auction_options_trade_message = Pref.bool("Show Non Auction Options Trade Message", show.non_auction_options_trade_message, "Parse and add Non Auction Options Trade Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_option_directory_message = Pref.bool("Show Option Directory Message", show.option_directory_message, "Parse and add Option Directory Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_option_open_message = Pref.bool("Show Option Open Message", show.option_open_message, "Parse and add Option Open Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_options_cross_trade_message = Pref.bool("Show Options Cross Trade Message", show.options_cross_trade_message, "Parse and add Options Cross Trade Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_delete_message = Pref.bool("Show Quote Delete Message", show.quote_delete_message, "Parse and add Quote Delete Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_replace_message_long_form = Pref.bool("Show Quote Replace Message Long Form", show.quote_replace_message_long_form, "Parse and add Quote Replace Message Long Form to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_replace_message_short_form = Pref.bool("Show Quote Replace Message Short Form", show.quote_replace_message_short_form, "Parse and add Quote Replace Message Short Form to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_delete_message = Pref.bool("Show Single Side Delete Message", show.single_side_delete_message, "Parse and add Single Side Delete Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_executed_message = Pref.bool("Show Single Side Executed Message", show.single_side_executed_message, "Parse and add Single Side Executed Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_order_executed_with_price_message = Pref.bool("Show Single Side Order Executed With Price Message", show.single_side_order_executed_with_price_message, "Parse and add Single Side Order Executed With Price Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_replace_message_long_form = Pref.bool("Show Single Side Replace Message Long Form", show.single_side_replace_message_long_form, "Parse and add Single Side Replace Message Long Form to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_replace_message_short_form = Pref.bool("Show Single Side Replace Message Short Form", show.single_side_replace_message_short_form, "Parse and add Single Side Replace Message Short Form to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_update_message = Pref.bool("Show Single Side Update Message", show.single_side_update_message, "Parse and add Single Side Update Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_bx_options_depthofmarket_itch_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message_long_form ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_order_message_long_form then
    show.add_order_message_long_form = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_order_message_long_form
    changed = true
  end
  if show.add_order_message_short_form ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_order_message_short_form then
    show.add_order_message_short_form = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_order_message_short_form
    changed = true
  end
  if show.add_quote_message_long_form ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_quote_message_long_form then
    show.add_quote_message_long_form = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_quote_message_long_form
    changed = true
  end
  if show.add_quote_message_short_form ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_quote_message_short_form then
    show.add_quote_message_short_form = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_add_quote_message_short_form
    changed = true
  end
  if show.base_reference_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_base_reference_message then
    show.base_reference_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_base_reference_message
    changed = true
  end
  if show.block_delete_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_block_delete_message then
    show.block_delete_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_block_delete_message
    changed = true
  end
  if show.broken_trade_or_order_execution_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_broken_trade_or_order_execution_message then
    show.broken_trade_or_order_execution_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_broken_trade_or_order_execution_message
    changed = true
  end
  if show.message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_message then
    show.message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_message_header then
    show.message_header = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_message_header
    changed = true
  end
  if show.net_order_imbalance_indicator_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_net_order_imbalance_indicator_message then
    show.net_order_imbalance_indicator_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_net_order_imbalance_indicator_message
    changed = true
  end
  if show.non_auction_options_trade_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_non_auction_options_trade_message then
    show.non_auction_options_trade_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_non_auction_options_trade_message
    changed = true
  end
  if show.option_directory_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_option_directory_message then
    show.option_directory_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_option_directory_message
    changed = true
  end
  if show.option_open_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_option_open_message then
    show.option_open_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_option_open_message
    changed = true
  end
  if show.options_cross_trade_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_options_cross_trade_message then
    show.options_cross_trade_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_options_cross_trade_message
    changed = true
  end
  if show.order_cancel_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_order_cancel_message then
    show.order_cancel_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_order_cancel_message
    changed = true
  end
  if show.packet ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_packet then
    show.packet = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_packet_header then
    show.packet_header = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_packet_header
    changed = true
  end
  if show.quote_delete_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_delete_message then
    show.quote_delete_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_delete_message
    changed = true
  end
  if show.quote_replace_message_long_form ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_replace_message_long_form then
    show.quote_replace_message_long_form = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_replace_message_long_form
    changed = true
  end
  if show.quote_replace_message_short_form ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_replace_message_short_form then
    show.quote_replace_message_short_form = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_quote_replace_message_short_form
    changed = true
  end
  if show.seconds_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_seconds_message then
    show.seconds_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_seconds_message
    changed = true
  end
  if show.single_side_delete_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_delete_message then
    show.single_side_delete_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_delete_message
    changed = true
  end
  if show.single_side_executed_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_executed_message then
    show.single_side_executed_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_executed_message
    changed = true
  end
  if show.single_side_order_executed_with_price_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_order_executed_with_price_message then
    show.single_side_order_executed_with_price_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_order_executed_with_price_message
    changed = true
  end
  if show.single_side_replace_message_long_form ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_replace_message_long_form then
    show.single_side_replace_message_long_form = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_replace_message_long_form
    changed = true
  end
  if show.single_side_replace_message_short_form ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_replace_message_short_form then
    show.single_side_replace_message_short_form = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_replace_message_short_form
    changed = true
  end
  if show.single_side_update_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_update_message then
    show.single_side_update_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_single_side_update_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_system_event_message then
    show.system_event_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_system_event_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_payload then
    show.payload = nasdaq_bx_options_depthofmarket_itch_v1_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Bx Options DepthOfMarket Itch 1.3
-----------------------------------------------------------------------

-- Size: Reserved
size_of.reserved = 3

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved)
  local value = range:uint()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.reserved, range, value, display)

  return offset + size_of.reserved
end

-- Size: Customer Firm Indicator
size_of.customer_firm_indicator = 1

-- Display: Customer Firm Indicator
display.customer_firm_indicator = function(value)
  if value == "C" then
    return "Customer Firm Indicator: Customer (C)"
  end
  if value == "F" then
    return "Customer Firm Indicator: Firm Joint (F)"
  end
  if value == "M" then
    return "Customer Firm Indicator: Onfloor (M)"
  end
  if value == "P" then
    return "Customer Firm Indicator: Professional (P)"
  end
  if value == "B" then
    return "Customer Firm Indicator: Broker Dealer Non Registered (B)"
  end

  return "Customer Firm Indicator: Unknown("..value..")"
end

-- Dissect: Customer Firm Indicator
dissect.customer_firm_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.customer_firm_indicator)
  local value = range:string()
  local display = display.customer_firm_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.customer_firm_indicator, range, value, display)

  return offset + size_of.customer_firm_indicator
end

-- Size: Imbalance Volume
size_of.imbalance_volume = 4

-- Display: Imbalance Volume
display.imbalance_volume = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
dissect.imbalance_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.imbalance_volume)
  local value = range:uint()
  local display = display.imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.imbalance_volume, range, value, display)

  return offset + size_of.imbalance_volume
end

-- Size: Imbalance Price
size_of.imbalance_price = 4

-- Display: Imbalance Price
display.imbalance_price = function(value)
  return "Imbalance Price: "..value
end

-- Dissect: Imbalance Price
dissect.imbalance_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.imbalance_price)
  local value = range:uint()
  local display = display.imbalance_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.imbalance_price, range, value, display)

  return offset + size_of.imbalance_price
end

-- Size: Option Id
size_of.option_id = 4

-- Display: Option Id
display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
dissect.option_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_id)
  local value = range:uint()
  local display = display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.option_id, range, value, display)

  return offset + size_of.option_id
end

-- Size: Imbalance Direction
size_of.imbalance_direction = 1

-- Display: Imbalance Direction
display.imbalance_direction = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.imbalance_direction)
  local value = range:string()
  local display = display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.imbalance_direction, range, value, display)

  return offset + size_of.imbalance_direction
end

-- Size: Paired Contracts
size_of.paired_contracts = 4

-- Display: Paired Contracts
display.paired_contracts = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
dissect.paired_contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.paired_contracts)
  local value = range:uint()
  local display = display.paired_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.paired_contracts, range, value, display)

  return offset + size_of.paired_contracts
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "I" then
    return "Auction Type: Exposure (I)"
  end
  if value == "P" then
    return "Auction Type: Price Improvement (P)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
dissect.auction_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_type)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.auction_type, range, value, display)

  return offset + size_of.auction_type
end

-- Size: Auction Id
size_of.auction_id = 4

-- Display: Auction Id
display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
dissect.auction_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_id)
  local value = range:uint()
  local display = display.auction_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.auction_id, range, value, display)

  return offset + size_of.auction_id
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Display: Net Order Imbalance Indicator Message
display.net_order_imbalance_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
dissect.net_order_imbalance_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Paired Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.paired_contracts(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 2 values
  index = dissect.imbalance_direction(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Imbalance Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.imbalance_price(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.imbalance_volume(buffer, index, packet, parent)

  -- Customer Firm Indicator: 1 Byte Ascii String Enum with 5 values
  index = dissect.customer_firm_indicator(buffer, index, packet, parent)

  -- Reserved: 3 Byte Unsigned Fixed Width Integer
  index = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
dissect.net_order_imbalance_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.net_order_imbalance_indicator_message then
    local range = buffer(offset, 30)
    local display = display.net_order_imbalance_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.net_order_imbalance_indicator_message, range, display)
  end

  return dissect.net_order_imbalance_indicator_message_fields(buffer, offset, packet, parent)
end

-- Size: Match Number
size_of.match_number = 4

-- Display: Match Number
display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
dissect.match_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.match_number)
  local value = range:uint()
  local display = display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.match_number, range, value, display)

  return offset + size_of.match_number
end

-- Size: Cross Number
size_of.cross_number = 4

-- Display: Cross Number
display.cross_number = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
dissect.cross_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cross_number)
  local value = range:uint()
  local display = display.cross_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.cross_number, range, value, display)

  return offset + size_of.cross_number
end

-- Display: Broken Trade Or Order Execution Message
display.broken_trade_or_order_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Or Order Execution Message
dissect.broken_trade_or_order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Or Order Execution Message
dissect.broken_trade_or_order_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_or_order_execution_message then
    local range = buffer(offset, 12)
    local display = display.broken_trade_or_order_execution_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.broken_trade_or_order_execution_message, range, display)
  end

  return dissect.broken_trade_or_order_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Volume
size_of.volume = 2

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volume)
  local value = range:uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.volume, range, value, display)

  return offset + size_of.volume
end

-- Size: Price
size_of.price = 2

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: Bx Opening Reopening (O)"
  end
  if value == "P" then
    return "Cross Type: Bx Opening Reopening (P)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cross_type)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.cross_type, range, value, display)

  return offset + size_of.cross_type
end

-- Display: Options Cross Trade Message
display.options_cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
dissect.options_cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
dissect.options_cross_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_cross_trade_message then
    local range = buffer(offset, 21)
    local display = display.options_cross_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.options_cross_trade_message, range, display)
  end

  return dissect.options_cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Buy Sell Indicator
size_of.buy_sell_indicator = 1

-- Display: Buy Sell Indicator
display.buy_sell_indicator = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
dissect.buy_sell_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.buy_sell_indicator)
  local value = range:string()
  local display = display.buy_sell_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.buy_sell_indicator, range, value, display)

  return offset + size_of.buy_sell_indicator
end

-- Display: Non Auction Options Trade Message
display.non_auction_options_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Non Auction Options Trade Message
dissect.non_auction_options_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Auction Options Trade Message
dissect.non_auction_options_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.non_auction_options_trade_message then
    local range = buffer(offset, 21)
    local display = display.non_auction_options_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.non_auction_options_trade_message, range, display)
  end

  return dissect.non_auction_options_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Reference Number Deltan
size_of.reference_number_deltan = 4

-- Display: Reference Number Deltan
display.reference_number_deltan = function(value)
  return "Reference Number Deltan: "..value
end

-- Dissect: Reference Number Deltan
dissect.reference_number_deltan = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_number_deltan)
  local value = range:uint()
  local display = display.reference_number_deltan(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.reference_number_deltan, range, value, display)

  return offset + size_of.reference_number_deltan
end

-- Size: Total Number Of Reference Number Deltas
size_of.total_number_of_reference_number_deltas = 2

-- Display: Total Number Of Reference Number Deltas
display.total_number_of_reference_number_deltas = function(value)
  return "Total Number Of Reference Number Deltas: "..value
end

-- Dissect: Total Number Of Reference Number Deltas
dissect.total_number_of_reference_number_deltas = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_number_of_reference_number_deltas)
  local value = range:uint()
  local display = display.total_number_of_reference_number_deltas(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.total_number_of_reference_number_deltas, range, value, display)

  return offset + size_of.total_number_of_reference_number_deltas
end

-- Display: Block Delete Message
display.block_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Delete Message
dissect.block_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Total Number Of Reference Number Deltas: 2 Byte Unsigned Fixed Width Integer
  index = dissect.total_number_of_reference_number_deltas(buffer, index, packet, parent)

  -- Reference Number Deltan: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_deltan(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Delete Message
dissect.block_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.block_delete_message then
    local range = buffer(offset, 10)
    local display = display.block_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.block_delete_message, range, display)
  end

  return dissect.block_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Reference Number Delta
size_of.ask_reference_number_delta = 4

-- Display: Ask Reference Number Delta
display.ask_reference_number_delta = function(value)
  return "Ask Reference Number Delta: "..value
end

-- Dissect: Ask Reference Number Delta
dissect.ask_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_reference_number_delta)
  local value = range:uint()
  local display = display.ask_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask_reference_number_delta, range, value, display)

  return offset + size_of.ask_reference_number_delta
end

-- Size: Bid Reference Number Delta
size_of.bid_reference_number_delta = 4

-- Display: Bid Reference Number Delta
display.bid_reference_number_delta = function(value)
  return "Bid Reference Number Delta: "..value
end

-- Dissect: Bid Reference Number Delta
dissect.bid_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_reference_number_delta)
  local value = range:uint()
  local display = display.bid_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.bid_reference_number_delta, range, value, display)

  return offset + size_of.bid_reference_number_delta
end

-- Display: Quote Delete Message
display.quote_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Delete Message
dissect.quote_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
dissect.quote_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_delete_message then
    local range = buffer(offset, 12)
    local display = display.quote_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.quote_delete_message, range, display)
  end

  return dissect.quote_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Size
size_of.ask_size = 2

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_size)
  local value = range:uint()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask_size, range, value, display)

  return offset + size_of.ask_size
end

-- Size: Ask Price
size_of.ask_price = 2

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_price)
  local value = range:uint()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask_price, range, value, display)

  return offset + size_of.ask_price
end

-- Size: Bid Size
size_of.bid_size = 2

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_size)
  local value = range:uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.bid_size, range, value, display)

  return offset + size_of.bid_size
end

-- Size: Bid Price
size_of.bid_price = 2

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price)
  local value = range:uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.bid_price, range, value, display)

  return offset + size_of.bid_price
end

-- Size: Ask Reference Delta Number
size_of.ask_reference_delta_number = 4

-- Display: Ask Reference Delta Number
display.ask_reference_delta_number = function(value)
  return "Ask Reference Delta Number: "..value
end

-- Dissect: Ask Reference Delta Number
dissect.ask_reference_delta_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_reference_delta_number)
  local value = range:uint()
  local display = display.ask_reference_delta_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask_reference_delta_number, range, value, display)

  return offset + size_of.ask_reference_delta_number
end

-- Size: Original Ask Reference Number Delta
size_of.original_ask_reference_number_delta = 4

-- Display: Original Ask Reference Number Delta
display.original_ask_reference_number_delta = function(value)
  return "Original Ask Reference Number Delta: "..value
end

-- Dissect: Original Ask Reference Number Delta
dissect.original_ask_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_ask_reference_number_delta)
  local value = range:uint()
  local display = display.original_ask_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.original_ask_reference_number_delta, range, value, display)

  return offset + size_of.original_ask_reference_number_delta
end

-- Size: Original Bid Reference Number Delta
size_of.original_bid_reference_number_delta = 4

-- Display: Original Bid Reference Number Delta
display.original_bid_reference_number_delta = function(value)
  return "Original Bid Reference Number Delta: "..value
end

-- Dissect: Original Bid Reference Number Delta
dissect.original_bid_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_bid_reference_number_delta)
  local value = range:uint()
  local display = display.original_bid_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.original_bid_reference_number_delta, range, value, display)

  return offset + size_of.original_bid_reference_number_delta
end

-- Display: Quote Replace Message Long Form
display.quote_replace_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Replace Message Long Form
dissect.quote_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_bid_reference_number_delta(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_ask_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Delta Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_delta_number(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Long Form
dissect.quote_replace_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_replace_message_long_form then
    local range = buffer(offset, 28)
    local display = display.quote_replace_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.quote_replace_message_long_form, range, display)
  end

  return dissect.quote_replace_message_long_form_fields(buffer, offset, packet, parent)
end

-- Display: Quote Replace Message Short Form
display.quote_replace_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Replace Message Short Form
dissect.quote_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_bid_reference_number_delta(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_ask_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Delta Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_delta_number(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Short Form
dissect.quote_replace_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_replace_message_short_form then
    local range = buffer(offset, 28)
    local display = display.quote_replace_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.quote_replace_message_short_form, range, display)
  end

  return dissect.quote_replace_message_short_form_fields(buffer, offset, packet, parent)
end

-- Size: Change Reason
size_of.change_reason = 1

-- Display: Change Reason
display.change_reason = function(value)
  if value == "U" then
    return "Change Reason: User (U)"
  end
  if value == "R" then
    return "Change Reason: Reprice (R)"
  end
  if value == "S" then
    return "Change Reason: Suspend (S)"
  end

  return "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
dissect.change_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.change_reason)
  local value = range:string()
  local display = display.change_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.change_reason, range, value, display)

  return offset + size_of.change_reason
end

-- Size: Reference Number Delta
size_of.reference_number_delta = 4

-- Display: Reference Number Delta
display.reference_number_delta = function(value)
  return "Reference Number Delta: "..value
end

-- Dissect: Reference Number Delta
dissect.reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_number_delta)
  local value = range:uint()
  local display = display.reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.reference_number_delta, range, value, display)

  return offset + size_of.reference_number_delta
end

-- Display: Single Side Update Message
display.single_side_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Update Message
dissect.single_side_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Change Reason: 1 Byte Ascii String Enum with 3 values
  index = dissect.change_reason(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
dissect.single_side_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_update_message then
    local range = buffer(offset, 13)
    local display = display.single_side_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_update_message, range, display)
  end

  return dissect.single_side_update_message_fields(buffer, offset, packet, parent)
end

-- Display: Single Side Delete Message
display.single_side_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Delete Message
dissect.single_side_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
dissect.single_side_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_delete_message then
    local range = buffer(offset, 8)
    local display = display.single_side_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_delete_message, range, display)
  end

  return dissect.single_side_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: New Reference Number Delta
size_of.new_reference_number_delta = 4

-- Display: New Reference Number Delta
display.new_reference_number_delta = function(value)
  return "New Reference Number Delta: "..value
end

-- Dissect: New Reference Number Delta
dissect.new_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.new_reference_number_delta)
  local value = range:uint()
  local display = display.new_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.new_reference_number_delta, range, value, display)

  return offset + size_of.new_reference_number_delta
end

-- Size: Original Reference Number Delta
size_of.original_reference_number_delta = 4

-- Display: Original Reference Number Delta
display.original_reference_number_delta = function(value)
  return "Original Reference Number Delta: "..value
end

-- Dissect: Original Reference Number Delta
dissect.original_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_reference_number_delta)
  local value = range:uint()
  local display = display.original_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.original_reference_number_delta, range, value, display)

  return offset + size_of.original_reference_number_delta
end

-- Display: Single Side Replace Message Long Form
display.single_side_replace_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
dissect.single_side_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
dissect.single_side_replace_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_replace_message_long_form then
    local range = buffer(offset, 16)
    local display = display.single_side_replace_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_replace_message_long_form, range, display)
  end

  return dissect.single_side_replace_message_long_form_fields(buffer, offset, packet, parent)
end

-- Display: Single Side Replace Message Short Form
display.single_side_replace_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
dissect.single_side_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
dissect.single_side_replace_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_replace_message_short_form then
    local range = buffer(offset, 16)
    local display = display.single_side_replace_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_replace_message_short_form, range, display)
  end

  return dissect.single_side_replace_message_short_form_fields(buffer, offset, packet, parent)
end

-- Size: Cancelled Contracts
size_of.cancelled_contracts = 4

-- Display: Cancelled Contracts
display.cancelled_contracts = function(value)
  return "Cancelled Contracts: "..value
end

-- Dissect: Cancelled Contracts
dissect.cancelled_contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cancelled_contracts)
  local value = range:uint()
  local display = display.cancelled_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.cancelled_contracts, range, value, display)

  return offset + size_of.cancelled_contracts
end

-- Size: Order Reference Number Delta
size_of.order_reference_number_delta = 4

-- Display: Order Reference Number Delta
display.order_reference_number_delta = function(value)
  return "Order Reference Number Delta: "..value
end

-- Dissect: Order Reference Number Delta
dissect.order_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_reference_number_delta)
  local value = range:uint()
  local display = display.order_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.order_reference_number_delta, range, value, display)

  return offset + size_of.order_reference_number_delta
end

-- Display: Order Cancel Message
display.order_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Message
dissect.order_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Cancelled Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cancelled_contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
dissect.order_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_message then
    local range = buffer(offset, 12)
    local display = display.order_cancel_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.order_cancel_message, range, display)
  end

  return dissect.order_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Printable
size_of.printable = 1

-- Display: Printable
display.printable = function(value)
  if value == "N" then
    return "Printable: Nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
dissect.printable = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.printable)
  local value = range:string()
  local display = display.printable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.printable, range, value, display)

  return offset + size_of.printable
end

-- Display: Single Side Order Executed With Price Message
display.single_side_order_executed_with_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Order Executed With Price Message
dissect.single_side_order_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index = dissect.printable(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Order Executed With Price Message
dissect.single_side_order_executed_with_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_order_executed_with_price_message then
    local range = buffer(offset, 21)
    local display = display.single_side_order_executed_with_price_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_order_executed_with_price_message, range, display)
  end

  return dissect.single_side_order_executed_with_price_message_fields(buffer, offset, packet, parent)
end

-- Size: Executed Contracts
size_of.executed_contracts = 4

-- Display: Executed Contracts
display.executed_contracts = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
dissect.executed_contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.executed_contracts)
  local value = range:uint()
  local display = display.executed_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.executed_contracts, range, value, display)

  return offset + size_of.executed_contracts
end

-- Display: Single Side Executed Message
display.single_side_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Executed Message
dissect.single_side_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Executed Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_contracts(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
dissect.single_side_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_executed_message then
    local range = buffer(offset, 20)
    local display = display.single_side_executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.single_side_executed_message, range, display)
  end

  return dissect.single_side_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask
size_of.ask = 4

-- Display: Ask
display.ask = function(value)
  return "Ask: "..value
end

-- Dissect: Ask
dissect.ask = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask)
  local value = range:uint()
  local display = display.ask(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.ask, range, value, display)

  return offset + size_of.ask
end

-- Size: Bid
size_of.bid = 4

-- Display: Bid
display.bid = function(value)
  return "Bid: "..value
end

-- Dissect: Bid
dissect.bid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid)
  local value = range:uint()
  local display = display.bid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.bid, range, value, display)

  return offset + size_of.bid
end

-- Display: Add Quote Message Long Form
display.add_quote_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form
dissect.add_quote_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form
dissect.add_quote_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_quote_message_long_form then
    local range = buffer(offset, 28)
    local display = display.add_quote_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.add_quote_message_long_form, range, display)
  end

  return dissect.add_quote_message_long_form_fields(buffer, offset, packet, parent)
end

-- Display: Add Quote Message Short Form
display.add_quote_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form
dissect.add_quote_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form
dissect.add_quote_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_quote_message_short_form then
    local range = buffer(offset, 24)
    local display = display.add_quote_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.add_quote_message_short_form, range, display)
  end

  return dissect.add_quote_message_short_form_fields(buffer, offset, packet, parent)
end

-- Size: Market Side
size_of.market_side = 1

-- Display: Market Side
display.market_side = function(value)
  if value == "B" then
    return "Market Side: Buy (B)"
  end
  if value == "S" then
    return "Market Side: Sell (S)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
dissect.market_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_side)
  local value = range:string()
  local display = display.market_side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.market_side, range, value, display)

  return offset + size_of.market_side
end

-- Display: Add Order Message Long Form
display.add_order_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message Long Form
dissect.add_order_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.market_side(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form
dissect.add_order_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message_long_form then
    local range = buffer(offset, 17)
    local display = display.add_order_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.add_order_message_long_form, range, display)
  end

  return dissect.add_order_message_long_form_fields(buffer, offset, packet, parent)
end

-- Display: Add Order Message Short Form
display.add_order_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message Short Form
dissect.add_order_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.market_side(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Form
dissect.add_order_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message_short_form then
    local range = buffer(offset, 17)
    local display = display.add_order_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.add_order_message_short_form, range, display)
  end

  return dissect.add_order_message_short_form_fields(buffer, offset, packet, parent)
end

-- Size: Open State
size_of.open_state = 1

-- Display: Open State
display.open_state = function(value)
  return "Open State: "..value
end

-- Dissect: Open State
dissect.open_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_state)
  local value = range:string()
  local display = display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.open_state, range, value, display)

  return offset + size_of.open_state
end

-- Display: Option Open Message
display.option_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Open Message
dissect.option_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String
  index = dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Open Message
dissect.option_open_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_open_message then
    local range = buffer(offset, 9)
    local display = display.option_open_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.option_open_message, range, display)
  end

  return dissect.option_open_message_fields(buffer, offset, packet, parent)
end

-- Size: Current Trading State
size_of.current_trading_state = 1

-- Display: Current Trading State
display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halt (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end
  if value == "B" then
    return "Current Trading State: Buy Side Trading Suspended (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Trading Suspended (S)"
  end
  if value == "Y" then
    return "Current Trading State: Open (Y)"
  end
  if value == "N" then
    return "Current Trading State: Closed (N)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
dissect.current_trading_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_trading_state)
  local value = range:string()
  local display = display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.current_trading_state, range, value, display)

  return offset + size_of.current_trading_state
end

-- Display: Trading Action Message
display.trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Action Message
dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 6 values
  index = dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
dissect.trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_action_message then
    local range = buffer(offset, 9)
    local display = display.trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.trading_action_message, range, display)
  end

  return dissect.trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Mpv
size_of.mpv = 1

-- Display: Mpv
display.mpv = function(value)
  if value == "E" then
    return "Mpv: Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
dissect.mpv = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mpv)
  local value = range:string()
  local display = display.mpv(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.mpv, range, value, display)

  return offset + size_of.mpv
end

-- Size: Tradable
size_of.tradable = 1

-- Display: Tradable
display.tradable = function(value)
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end
  if value == "Y" then
    return "Tradable: Is Tradable (Y)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
dissect.tradable = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.tradable)
  local value = range:string()
  local display = display.tradable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.tradable, range, value, display)

  return offset + size_of.tradable
end

-- Size: Options Closing Type
size_of.options_closing_type = 1

-- Display: Options Closing Type
display.options_closing_type = function(value)
  if value == "N" then
    return "Options Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Options Closing Type: Late (L)"
  end

  return "Options Closing Type: Unknown("..value..")"
end

-- Dissect: Options Closing Type
dissect.options_closing_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.options_closing_type)
  local value = range:string()
  local display = display.options_closing_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.options_closing_type, range, value, display)

  return offset + size_of.options_closing_type
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 13

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_symbol)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.underlying_symbol, range, value, display)

  return offset + size_of.underlying_symbol
end

-- Size: Source
size_of.source = 1

-- Display: Source
display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
dissect.source = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source)
  local value = range:uint()
  local display = display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.source, range, value, display)

  return offset + size_of.source
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_type)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.option_type, range, value, display)

  return offset + size_of.option_type
end

-- Size: Explicit Strike Price
size_of.explicit_strike_price = 4

-- Display: Explicit Strike Price
display.explicit_strike_price = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
dissect.explicit_strike_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.explicit_strike_price)
  local value = range:uint()
  local display = display.explicit_strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.explicit_strike_price, range, value, display)

  return offset + size_of.explicit_strike_price
end

-- Size: Expiration Date
size_of.expiration_date = 1

-- Display: Expiration Date
display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
dissect.expiration_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_date)
  local value = range:uint()
  local display = display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.expiration_date, range, value, display)

  return offset + size_of.expiration_date
end

-- Size: Expiration Month
size_of.expiration_month = 1

-- Display: Expiration Month
display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
dissect.expiration_month = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_month)
  local value = range:uint()
  local display = display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.expiration_month, range, value, display)

  return offset + size_of.expiration_month
end

-- Size: Expiration Year
size_of.expiration_year = 1

-- Display: Expiration Year
display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
dissect.expiration_year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_year)
  local value = range:uint()
  local display = display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.expiration_year, range, value, display)

  return offset + size_of.expiration_year
end

-- Size: Security Symbol
size_of.security_symbol = 6

-- Display: Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_symbol)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.security_symbol, range, value, display)

  return offset + size_of.security_symbol
end

-- Display: Option Directory Message
display.option_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Directory Message
dissect.option_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index = dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Date: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_date(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.explicit_strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index = dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Options Closing Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.options_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index = dissect.tradable(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index = dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Directory Message
dissect.option_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_directory_message then
    local range = buffer(offset, 39)
    local display = display.option_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.option_directory_message, range, display)
  end

  return dissect.option_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Base Reference Number
size_of.base_reference_number = 8

-- Display: Base Reference Number
display.base_reference_number = function(value)
  return "Base Reference Number: "..value
end

-- Dissect: Base Reference Number
dissect.base_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.base_reference_number)
  local value = range:uint64()
  local display = display.base_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.base_reference_number, range, value, display)

  return offset + size_of.base_reference_number
end

-- Display: Base Reference Message
display.base_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Base Reference Message
dissect.base_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Base Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.base_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Base Reference Message
dissect.base_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.base_reference_message then
    local range = buffer(offset, 12)
    local display = display.base_reference_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.base_reference_message, range, display)
  end

  return dissect.base_reference_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_code)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.event_code, range, value, display)

  return offset + size_of.event_code
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local range = buffer(offset, 5)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Size: Second
size_of.second = 4

-- Display: Second
display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
dissect.second = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.second)
  local value = range:uint()
  local display = display.second(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.second, range, value, display)

  return offset + size_of.second
end

-- Display: Seconds Message
display.seconds_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Seconds Message
dissect.seconds_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index = dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
dissect.seconds_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.seconds_message then
    local range = buffer(offset, 4)
    local display = display.seconds_message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.seconds_message, range, display)
  end

  return dissect.seconds_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, messagetype)
  -- Size of Seconds Message
  if messagetype == "T" then
    return 4
  end
  -- Size of System Event Message
  if messagetype == "S" then
    return 5
  end
  -- Size of Base Reference Message
  if messagetype == "L" then
    return 12
  end
  -- Size of Option Directory Message
  if messagetype == "R" then
    return 39
  end
  -- Size of Trading Action Message
  if messagetype == "H" then
    return 9
  end
  -- Size of Option Open Message
  if messagetype == "O" then
    return 9
  end
  -- Size of Add Order Message Short Form
  if messagetype == "a" then
    return 17
  end
  -- Size of Add Order Message Long Form
  if messagetype == "A" then
    return 17
  end
  -- Size of Add Quote Message Short Form
  if messagetype == "j" then
    return 24
  end
  -- Size of Add Quote Message Long Form
  if messagetype == "J" then
    return 28
  end
  -- Size of Single Side Executed Message
  if messagetype == "E" then
    return 20
  end
  -- Size of Single Side Order Executed With Price Message
  if messagetype == "C" then
    return 21
  end
  -- Size of Order Cancel Message
  if messagetype == "X" then
    return 12
  end
  -- Size of Single Side Replace Message Short Form
  if messagetype == "u" then
    return 16
  end
  -- Size of Single Side Replace Message Long Form
  if messagetype == "U" then
    return 16
  end
  -- Size of Single Side Delete Message
  if messagetype == "D" then
    return 8
  end
  -- Size of Single Side Update Message
  if messagetype == "G" then
    return 13
  end
  -- Size of Quote Replace Message Short Form
  if messagetype == "k" then
    return 28
  end
  -- Size of Quote Replace Message Long Form
  if messagetype == "K" then
    return 28
  end
  -- Size of Quote Delete Message
  if messagetype == "Y" then
    return 12
  end
  -- Size of Block Delete Message
  if messagetype == "Z" then
    return 10
  end
  -- Size of Non Auction Options Trade Message
  if messagetype == "P" then
    return 21
  end
  -- Size of Options Cross Trade Message
  if messagetype == "Q" then
    return 21
  end
  -- Size of Broken Trade Or Order Execution Message
  if messagetype == "B" then
    return 12
  end
  -- Size of Net Order Imbalance Indicator Message
  if messagetype == "I" then
    return 30
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, messagetype)
  -- Dissect Seconds Message
  if messagetype == "T" then
    return dissect.seconds_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if messagetype == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Base Reference Message
  if messagetype == "L" then
    return dissect.base_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Directory Message
  if messagetype == "R" then
    return dissect.option_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if messagetype == "H" then
    return dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Open Message
  if messagetype == "O" then
    return dissect.option_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Form
  if messagetype == "a" then
    return dissect.add_order_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form
  if messagetype == "A" then
    return dissect.add_order_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form
  if messagetype == "j" then
    return dissect.add_quote_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form
  if messagetype == "J" then
    return dissect.add_quote_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if messagetype == "E" then
    return dissect.single_side_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Order Executed With Price Message
  if messagetype == "C" then
    return dissect.single_side_order_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if messagetype == "X" then
    return dissect.order_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Short Form
  if messagetype == "u" then
    return dissect.single_side_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Long Form
  if messagetype == "U" then
    return dissect.single_side_replace_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if messagetype == "D" then
    return dissect.single_side_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if messagetype == "G" then
    return dissect.single_side_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Message Short Form
  if messagetype == "k" then
    return dissect.quote_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Message Long Form
  if messagetype == "K" then
    return dissect.quote_replace_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if messagetype == "Y" then
    return dissect.quote_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Block Delete Message
  if messagetype == "Z" then
    return dissect.block_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Non Auction Options Trade Message
  if messagetype == "P" then
    return dissect.non_auction_options_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if messagetype == "Q" then
    return dissect.options_cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Or Order Execution Message
  if messagetype == "B" then
    return dissect.broken_trade_or_order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if messagetype == "I" then
    return dissect.net_order_imbalance_indicator_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, code)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Message Type: Base Reference Message (L)"
  end
  if value == "R" then
    return "Message Type: Option Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Option Open Message (O)"
  end
  if value == "a" then
    return "Message Type: Add Order Message Short Form (a)"
  end
  if value == "A" then
    return "Message Type: Add Order Message Long Form (A)"
  end
  if value == "j" then
    return "Message Type: Add Quote Message Short Form (j)"
  end
  if value == "J" then
    return "Message Type: Add Quote Message Long Form (J)"
  end
  if value == "E" then
    return "Message Type: Single Side Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Single Side Order Executed With Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "u" then
    return "Message Type: Single Side Replace Message Short Form (u)"
  end
  if value == "U" then
    return "Message Type: Single Side Replace Message Long Form (U)"
  end
  if value == "D" then
    return "Message Type: Single Side Delete Message (D)"
  end
  if value == "G" then
    return "Message Type: Single Side Update Message (G)"
  end
  if value == "k" then
    return "Message Type: Quote Replace Message Short Form (k)"
  end
  if value == "K" then
    return "Message Type: Quote Replace Message Long Form (K)"
  end
  if value == "Y" then
    return "Message Type: Quote Delete Message (Y)"
  end
  if value == "Z" then
    return "Message Type: Block Delete Message (Z)"
  end
  if value == "P" then
    return "Message Type: Non Auction Options Trade Message (P)"
  end
  if value == "Q" then
    return "Message Type: Options Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Or Order Execution Message (B)"
  end
  if value == "I" then
    return "Message Type: Net Order Imbalance Indicator Message (I)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_type)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.message_type, range, value, display)

  return offset + size_of.message_type
end

-- Size: Length
size_of.length = 2

-- Display: Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.length, range, value, display)

  return offset + size_of.length
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 25 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 25 branches
  local code = buffer(index - 1, 1):string()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
size_of.count = 2

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.count)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.count, range, value, display)

  return offset + size_of.count
end

-- Size: Sequence
size_of.sequence = 8

-- Display: Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.sequence, range, value, display)

  return offset + size_of.sequence
end

-- Size: Session
size_of.session = 10

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.session, range, value, display)

  return offset + size_of.session
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index = dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 20)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  local end_of_payload = buffer:len()
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_bx_options_depthofmarket_itch_v1_3.init()
end

-- Dissector for Nasdaq Bx Options DepthOfMarket Itch 1.3
function nasdaq_bx_options_depthofmarket_itch_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_bx_options_depthofmarket_itch_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_bx_options_depthofmarket_itch_v1_3, buffer(), nasdaq_bx_options_depthofmarket_itch_v1_3.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_bx_options_depthofmarket_itch_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_bx_options_depthofmarket_itch_v1_3_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Bx Options DepthOfMarket Itch 1.3
local function nasdaq_bx_options_depthofmarket_itch_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_bx_options_depthofmarket_itch_v1_3_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_bx_options_depthofmarket_itch_v1_3
  nasdaq_bx_options_depthofmarket_itch_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Bx Options DepthOfMarket Itch 1.3
nasdaq_bx_options_depthofmarket_itch_v1_3:register_heuristic("udp", nasdaq_bx_options_depthofmarket_itch_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.3
--   Date: Thursday, November 2, 2017
--   Specification: BXOptions_DepthofMarket.pdf
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
