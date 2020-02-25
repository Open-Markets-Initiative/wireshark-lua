-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Phlx MarketDepth Itch 1.5 Protocol
local nasdaq_phlx_marketdepth_itch_v1_5 = Proto("Nasdaq.Phlx.MarketDepth.Itch.v1.5.Lua", "Nasdaq Phlx MarketDepth Itch 1.5")

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

-- Nasdaq Phlx MarketDepth Itch 1.5 Fields
nasdaq_phlx_marketdepth_itch_v1_5.fields.add_order_message_long_form = ProtoField.new("Add Order Message Long Form", "nasdaq.phlx.marketdepth.itch.v1.5.addordermessagelongform", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.add_order_message_short_form = ProtoField.new("Add Order Message Short Form", "nasdaq.phlx.marketdepth.itch.v1.5.addordermessageshortform", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.add_quote_message_long_form = ProtoField.new("Add Quote Message Long Form", "nasdaq.phlx.marketdepth.itch.v1.5.addquotemessagelongform", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.add_quote_message_short_form = ProtoField.new("Add Quote Message Short Form", "nasdaq.phlx.marketdepth.itch.v1.5.addquotemessageshortform", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.ask = ProtoField.new("Ask", "nasdaq.phlx.marketdepth.itch.v1.5.ask", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.phlx.marketdepth.itch.v1.5.askprice", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.ask_reference_number_delta = ProtoField.new("Ask Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.askreferencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.phlx.marketdepth.itch.v1.5.asksize", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.phlx.marketdepth.itch.v1.5.auctionid", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.phlx.marketdepth.itch.v1.5.auctionnotificationmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.phlx.marketdepth.itch.v1.5.auctiontype", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.base_reference_message = ProtoField.new("Base Reference Message", "nasdaq.phlx.marketdepth.itch.v1.5.basereferencemessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.base_reference_number = ProtoField.new("Base Reference Number", "nasdaq.phlx.marketdepth.itch.v1.5.basereferencenumber", ftypes.UINT64)
nasdaq_phlx_marketdepth_itch_v1_5.fields.bid = ProtoField.new("Bid", "nasdaq.phlx.marketdepth.itch.v1.5.bid", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.phlx.marketdepth.itch.v1.5.bidprice", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.bid_reference_number_delta = ProtoField.new("Bid Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.bidreferencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.phlx.marketdepth.itch.v1.5.bidsize", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.block_delete_message = ProtoField.new("Block Delete Message", "nasdaq.phlx.marketdepth.itch.v1.5.blockdeletemessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.broken_trade_order_execution_message = ProtoField.new("Broken Trade Order Execution Message", "nasdaq.phlx.marketdepth.itch.v1.5.brokentradeorderexecutionmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.phlx.marketdepth.itch.v1.5.cancelledcontracts", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta = ProtoField.new("Cancelled Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.cancelledreferencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.phlx.marketdepth.itch.v1.5.changereason", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.count = ProtoField.new("Count", "nasdaq.phlx.marketdepth.itch.v1.5.count", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.phlx.marketdepth.itch.v1.5.crossnumber", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.phlx.marketdepth.itch.v1.5.crosstype", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlx.marketdepth.itch.v1.5.currenttradingstate", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.customer_indicator = ProtoField.new("Customer Indicator", "nasdaq.phlx.marketdepth.itch.v1.5.customerindicator", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlx.marketdepth.itch.v1.5.eventcode", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.phlx.marketdepth.itch.v1.5.executedcontracts", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.phlx.marketdepth.itch.v1.5.expirationdate", ftypes.UINT8)
nasdaq_phlx_marketdepth_itch_v1_5.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.phlx.marketdepth.itch.v1.5.expirationmonth", ftypes.UINT8)
nasdaq_phlx_marketdepth_itch_v1_5.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.phlx.marketdepth.itch.v1.5.expirationyear", ftypes.UINT8)
nasdaq_phlx_marketdepth_itch_v1_5.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlx.marketdepth.itch.v1.5.explicitstrikeprice", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.phlx.marketdepth.itch.v1.5.imbalancedirection", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.phlx.marketdepth.itch.v1.5.imbalanceprice", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.phlx.marketdepth.itch.v1.5.imbalancevolume", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.length = ProtoField.new("Length", "nasdaq.phlx.marketdepth.itch.v1.5.length", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.market_side = ProtoField.new("Market Side", "nasdaq.phlx.marketdepth.itch.v1.5.marketside", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.match_number = ProtoField.new("Match Number", "nasdaq.phlx.marketdepth.itch.v1.5.matchnumber", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.message = ProtoField.new("Message", "nasdaq.phlx.marketdepth.itch.v1.5.message", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlx.marketdepth.itch.v1.5.messageheader", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlx.marketdepth.itch.v1.5.messagetype", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.mpv = ProtoField.new("Mpv", "nasdaq.phlx.marketdepth.itch.v1.5.mpv", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.new_reference_number_delta = ProtoField.new("New Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.newreferencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.non_auction_options_trade_message = ProtoField.new("Non Auction Options Trade Message", "nasdaq.phlx.marketdepth.itch.v1.5.nonauctionoptionstrademessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.number_of_reference_number_deltas = ProtoField.new("Number Of Reference Number Deltas", "nasdaq.phlx.marketdepth.itch.v1.5.numberofreferencenumberdeltas", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.open_state = ProtoField.new("Open State", "nasdaq.phlx.marketdepth.itch.v1.5.openstate", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.option_directory_message = ProtoField.new("Option Directory Message", "nasdaq.phlx.marketdepth.itch.v1.5.optiondirectorymessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlx.marketdepth.itch.v1.5.optionid", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlx.marketdepth.itch.v1.5.optiontype", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.phlx.marketdepth.itch.v1.5.optionsclosingtype", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.phlx.marketdepth.itch.v1.5.optionscrosstrademessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.order_id = ProtoField.new("Order Id", "nasdaq.phlx.marketdepth.itch.v1.5.orderid", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.order_reference_number_delta = ProtoField.new("Order Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.orderreferencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.order_replace_message_short_form = ProtoField.new("Order Replace Message Short Form", "nasdaq.phlx.marketdepth.itch.v1.5.orderreplacemessageshortform", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.original_ask_reference_number_delta = ProtoField.new("Original Ask Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.originalaskreferencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.original_bid_reference_number_delta = ProtoField.new("Original Bid Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.originalbidreferencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.original_reference_number_delta = ProtoField.new("Original Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.originalreferencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.packet = ProtoField.new("Packet", "nasdaq.phlx.marketdepth.itch.v1.5.packet", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlx.marketdepth.itch.v1.5.packetheader", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.phlx.marketdepth.itch.v1.5.pairedcontracts", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.payload = ProtoField.new("Payload", "nasdaq.phlx.marketdepth.itch.v1.5.payload", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.price = ProtoField.new("Price", "nasdaq.phlx.marketdepth.itch.v1.5.price", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.printable = ProtoField.new("Printable", "nasdaq.phlx.marketdepth.itch.v1.5.printable", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.phlx.marketdepth.itch.v1.5.quotedeletemessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.quote_replace_long_form_message = ProtoField.new("Quote Replace Long Form Message", "nasdaq.phlx.marketdepth.itch.v1.5.quotereplacelongformmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.quote_replace_short_form_message = ProtoField.new("Quote Replace Short Form Message", "nasdaq.phlx.marketdepth.itch.v1.5.quotereplaceshortformmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.reference_number_delta = ProtoField.new("Reference Number Delta", "nasdaq.phlx.marketdepth.itch.v1.5.referencenumberdelta", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.reserved = ProtoField.new("Reserved", "nasdaq.phlx.marketdepth.itch.v1.5.reserved", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.second = ProtoField.new("Second", "nasdaq.phlx.marketdepth.itch.v1.5.second", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.phlx.marketdepth.itch.v1.5.secondsmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.phlx.marketdepth.itch.v1.5.securityopenmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlx.marketdepth.itch.v1.5.securitysymbol", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.sequence = ProtoField.new("Sequence", "nasdaq.phlx.marketdepth.itch.v1.5.sequence", ftypes.UINT64)
nasdaq_phlx_marketdepth_itch_v1_5.fields.session = ProtoField.new("Session", "nasdaq.phlx.marketdepth.itch.v1.5.session", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.short_ask_size = ProtoField.new("Short Ask Size", "nasdaq.phlx.marketdepth.itch.v1.5.shortasksize", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.short_bid_size = ProtoField.new("Short Bid Size", "nasdaq.phlx.marketdepth.itch.v1.5.shortbidsize", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.short_price = ProtoField.new("Short Price", "nasdaq.phlx.marketdepth.itch.v1.5.shortprice", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.short_volume = ProtoField.new("Short Volume", "nasdaq.phlx.marketdepth.itch.v1.5.shortvolume", ftypes.UINT16)
nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_cancel_message = ProtoField.new("Single Side Cancel Message", "nasdaq.phlx.marketdepth.itch.v1.5.singlesidecancelmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.phlx.marketdepth.itch.v1.5.singlesidedeletemessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.phlx.marketdepth.itch.v1.5.singlesideexecutedmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.phlx.marketdepth.itch.v1.5.singlesideexecutedwithpricemessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_replace_long_form_message = ProtoField.new("Single Side Replace Long Form Message", "nasdaq.phlx.marketdepth.itch.v1.5.singlesidereplacelongformmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "nasdaq.phlx.marketdepth.itch.v1.5.singlesidereplacemessagelongform", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "nasdaq.phlx.marketdepth.itch.v1.5.singlesidereplacemessageshortform", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "nasdaq.phlx.marketdepth.itch.v1.5.singlesideupdatemessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.source = ProtoField.new("Source", "nasdaq.phlx.marketdepth.itch.v1.5.source", ftypes.UINT8)
nasdaq_phlx_marketdepth_itch_v1_5.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlx.marketdepth.itch.v1.5.systemeventmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlx.marketdepth.itch.v1.5.timestamp", ftypes.UINT32)
nasdaq_phlx_marketdepth_itch_v1_5.fields.tradable = ProtoField.new("Tradable", "nasdaq.phlx.marketdepth.itch.v1.5.tradable", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.trade_indicator = ProtoField.new("Trade Indicator", "nasdaq.phlx.marketdepth.itch.v1.5.tradeindicator", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.phlx.marketdepth.itch.v1.5.tradingactionmessage", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlx.marketdepth.itch.v1.5.underlyingsymbol", ftypes.STRING)
nasdaq_phlx_marketdepth_itch_v1_5.fields.volume = ProtoField.new("Volume", "nasdaq.phlx.marketdepth.itch.v1.5.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Phlx MarketDepth Itch 1.5 Element Dissection Options
show.add_order_message_long_form = true
show.add_order_message_short_form = true
show.add_quote_message_long_form = true
show.add_quote_message_short_form = true
show.auction_notification_message = true
show.base_reference_message = true
show.block_delete_message = true
show.broken_trade_order_execution_message = true
show.message = true
show.message_header = true
show.non_auction_options_trade_message = true
show.option_directory_message = true
show.options_cross_trade_message = true
show.order_replace_message_short_form = true
show.packet = true
show.packet_header = true
show.quote_delete_message = true
show.quote_replace_long_form_message = true
show.quote_replace_short_form_message = true
show.seconds_message = true
show.security_open_message = true
show.single_side_cancel_message = true
show.single_side_delete_message = true
show.single_side_executed_message = true
show.single_side_executed_with_price_message = true
show.single_side_replace_long_form_message = true
show.single_side_replace_message_long_form = true
show.single_side_replace_message_short_form = true
show.single_side_update_message = true
show.system_event_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq Phlx MarketDepth Itch 1.5 Show Options
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form = Pref.bool("Show Add Order Message Long Form", show.add_order_message_long_form, "Parse and add Add Order Message Long Form to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form = Pref.bool("Show Add Order Message Short Form", show.add_order_message_short_form, "Parse and add Add Order Message Short Form to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form = Pref.bool("Show Add Quote Message Long Form", show.add_quote_message_long_form, "Parse and add Add Quote Message Long Form to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form = Pref.bool("Show Add Quote Message Short Form", show.add_quote_message_short_form, "Parse and add Add Quote Message Short Form to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_base_reference_message = Pref.bool("Show Base Reference Message", show.base_reference_message, "Parse and add Base Reference Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_block_delete_message = Pref.bool("Show Block Delete Message", show.block_delete_message, "Parse and add Block Delete Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message = Pref.bool("Show Broken Trade Order Execution Message", show.broken_trade_order_execution_message, "Parse and add Broken Trade Order Execution Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message = Pref.bool("Show Non Auction Options Trade Message", show.non_auction_options_trade_message, "Parse and add Non Auction Options Trade Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_option_directory_message = Pref.bool("Show Option Directory Message", show.option_directory_message, "Parse and add Option Directory Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message = Pref.bool("Show Options Cross Trade Message", show.options_cross_trade_message, "Parse and add Options Cross Trade Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form = Pref.bool("Show Order Replace Message Short Form", show.order_replace_message_short_form, "Parse and add Order Replace Message Short Form to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_delete_message = Pref.bool("Show Quote Delete Message", show.quote_delete_message, "Parse and add Quote Delete Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message = Pref.bool("Show Quote Replace Long Form Message", show.quote_replace_long_form_message, "Parse and add Quote Replace Long Form Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message = Pref.bool("Show Quote Replace Short Form Message", show.quote_replace_short_form_message, "Parse and add Quote Replace Short Form Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_security_open_message = Pref.bool("Show Security Open Message", show.security_open_message, "Parse and add Security Open Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message = Pref.bool("Show Single Side Cancel Message", show.single_side_cancel_message, "Parse and add Single Side Cancel Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_delete_message = Pref.bool("Show Single Side Delete Message", show.single_side_delete_message, "Parse and add Single Side Delete Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_executed_message = Pref.bool("Show Single Side Executed Message", show.single_side_executed_message, "Parse and add Single Side Executed Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message = Pref.bool("Show Single Side Executed With Price Message", show.single_side_executed_with_price_message, "Parse and add Single Side Executed With Price Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message = Pref.bool("Show Single Side Replace Long Form Message", show.single_side_replace_long_form_message, "Parse and add Single Side Replace Long Form Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form = Pref.bool("Show Single Side Replace Message Long Form", show.single_side_replace_message_long_form, "Parse and add Single Side Replace Message Long Form to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form = Pref.bool("Show Single Side Replace Message Short Form", show.single_side_replace_message_short_form, "Parse and add Single Side Replace Message Short Form to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_update_message = Pref.bool("Show Single Side Update Message", show.single_side_update_message, "Parse and add Single Side Update Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_phlx_marketdepth_itch_v1_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message_long_form ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form then
    show.add_order_message_long_form = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form
    changed = true
  end
  if show.add_order_message_short_form ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form then
    show.add_order_message_short_form = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form
    changed = true
  end
  if show.add_quote_message_long_form ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form then
    show.add_quote_message_long_form = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form
    changed = true
  end
  if show.add_quote_message_short_form ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form then
    show.add_quote_message_short_form = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form
    changed = true
  end
  if show.auction_notification_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_auction_notification_message then
    show.auction_notification_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_auction_notification_message
    changed = true
  end
  if show.base_reference_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_base_reference_message then
    show.base_reference_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_base_reference_message
    changed = true
  end
  if show.block_delete_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_block_delete_message then
    show.block_delete_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_block_delete_message
    changed = true
  end
  if show.broken_trade_order_execution_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message then
    show.broken_trade_order_execution_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message
    changed = true
  end
  if show.message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_message then
    show.message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_message_header then
    show.message_header = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_message_header
    changed = true
  end
  if show.non_auction_options_trade_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message then
    show.non_auction_options_trade_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message
    changed = true
  end
  if show.option_directory_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_option_directory_message then
    show.option_directory_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_option_directory_message
    changed = true
  end
  if show.options_cross_trade_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message then
    show.options_cross_trade_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message
    changed = true
  end
  if show.order_replace_message_short_form ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form then
    show.order_replace_message_short_form = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form
    changed = true
  end
  if show.packet ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_packet then
    show.packet = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_packet_header then
    show.packet_header = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_packet_header
    changed = true
  end
  if show.quote_delete_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_delete_message then
    show.quote_delete_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_delete_message
    changed = true
  end
  if show.quote_replace_long_form_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message then
    show.quote_replace_long_form_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message
    changed = true
  end
  if show.quote_replace_short_form_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message then
    show.quote_replace_short_form_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message
    changed = true
  end
  if show.seconds_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_seconds_message then
    show.seconds_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_seconds_message
    changed = true
  end
  if show.security_open_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_security_open_message then
    show.security_open_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_security_open_message
    changed = true
  end
  if show.single_side_cancel_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message then
    show.single_side_cancel_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message
    changed = true
  end
  if show.single_side_delete_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_delete_message then
    show.single_side_delete_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_delete_message
    changed = true
  end
  if show.single_side_executed_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_executed_message then
    show.single_side_executed_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_executed_message
    changed = true
  end
  if show.single_side_executed_with_price_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message then
    show.single_side_executed_with_price_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message
    changed = true
  end
  if show.single_side_replace_long_form_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message then
    show.single_side_replace_long_form_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message
    changed = true
  end
  if show.single_side_replace_message_long_form ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form then
    show.single_side_replace_message_long_form = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form
    changed = true
  end
  if show.single_side_replace_message_short_form ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form then
    show.single_side_replace_message_short_form = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form
    changed = true
  end
  if show.single_side_update_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_update_message then
    show.single_side_update_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_single_side_update_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_system_event_message then
    show.system_event_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_system_event_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_payload then
    show.payload = nasdaq_phlx_marketdepth_itch_v1_5.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Phlx MarketDepth Itch 1.5
-----------------------------------------------------------------------

-- Size: Reserved
size_of.reserved = 3

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Customer Indicator
size_of.customer_indicator = 1

-- Display: Customer Indicator
display.customer_indicator = function(value)
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end
  if value == "F" then
    return "Customer Indicator: Firm (F)"
  end
  if value == "M" then
    return "Customer Indicator: Onfloor (M)"
  end
  if value == "P" then
    return "Customer Indicator: Professional (P)"
  end
  if value == "B" then
    return "Customer Indicator: Non Phlx (B)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Volume
size_of.imbalance_volume = 4

-- Display: Imbalance Volume
display.imbalance_volume = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
dissect.imbalance_volume = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Price
size_of.imbalance_price = 4

-- Display: Imbalance Price
display.imbalance_price = function(value)
  return "Imbalance Price: "..value
end

-- Dissect: Imbalance Price
dissect.imbalance_price = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.imbalance_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Size: Option Id
size_of.option_id = 4

-- Display: Option Id
display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
dissect.option_id = function(buffer, offset, packet, parent)
  local length = size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.option_id, range, value, display)

  return offset + length, value
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
  local length = size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Size: Paired Contracts
size_of.paired_contracts = 4

-- Display: Paired Contracts
display.paired_contracts = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
dissect.paired_contracts = function(buffer, offset, packet, parent)
  local length = size_of.paired_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.paired_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.paired_contracts, range, value, display)

  return offset + length, value
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

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
dissect.auction_type = function(buffer, offset, packet, parent)
  local length = size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
size_of.auction_id = 4

-- Display: Auction Id
display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
dissect.auction_id = function(buffer, offset, packet, parent)
  local length = size_of.auction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.auction_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Notification Message
size_of.auction_notification_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.auction_id

  index = index + size_of.auction_type

  index = index + size_of.paired_contracts

  index = index + size_of.imbalance_direction

  index = index + size_of.option_id

  index = index + size_of.imbalance_price

  index = index + size_of.imbalance_volume

  index = index + size_of.customer_indicator

  index = index + size_of.reserved

  return index
end

-- Display: Auction Notification Message
display.auction_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Notification Message
dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  -- Paired Contracts: 4 Byte Unsigned Fixed Width Integer
  index, paired_contracts = dissect.paired_contracts(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 2 values
  index, imbalance_direction = dissect.imbalance_direction(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Imbalance Price: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_price = dissect.imbalance_price(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = dissect.imbalance_volume(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 5 values
  index, customer_indicator = dissect.customer_indicator(buffer, index, packet, parent)

  -- Reserved: 3 Byte Unsigned Fixed Width Integer
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
dissect.auction_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_notification_message then
    local length = size_of.auction_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_notification_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.auction_notification_message, range, display)
  end

  return dissect.auction_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Match Number
size_of.match_number = 4

-- Display: Match Number
display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
dissect.match_number = function(buffer, offset, packet, parent)
  local length = size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.match_number, range, value, display)

  return offset + length, value
end

-- Size: Cross Number
size_of.cross_number = 4

-- Display: Cross Number
display.cross_number = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
dissect.cross_number = function(buffer, offset, packet, parent)
  local length = size_of.cross_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cross_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Order Execution Message
size_of.broken_trade_order_execution_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.cross_number

  index = index + size_of.match_number

  return index
end

-- Display: Broken Trade Order Execution Message
display.broken_trade_order_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Order Execution Message
dissect.broken_trade_order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Execution Message
dissect.broken_trade_order_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_order_execution_message then
    local length = size_of.broken_trade_order_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.broken_trade_order_execution_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.broken_trade_order_execution_message, range, display)
  end

  return dissect.broken_trade_order_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = size_of.volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: Opening Reopening (O)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Cross Trade Message
size_of.options_cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.option_id

  index = index + size_of.cross_number

  index = index + size_of.match_number

  index = index + size_of.cross_type

  index = index + size_of.price

  index = index + size_of.volume

  return index
end

-- Display: Options Cross Trade Message
display.options_cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
dissect.options_cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 1 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
dissect.options_cross_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_cross_trade_message then
    local length = size_of.options_cross_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.options_cross_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.options_cross_trade_message, range, display)
  end

  return dissect.options_cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Indicator
size_of.trade_indicator = 1

-- Display: Trade Indicator
display.trade_indicator = function(value)
  if value == "O" then
    return "Trade Indicator: Non Displayable (O)"
  end
  if value == "C" then
    return "Trade Indicator: Complex (C)"
  end
  if value == "P" then
    return "Trade Indicator: Pixl (P)"
  end

  return "Trade Indicator: Unknown("..value..")"
end

-- Dissect: Trade Indicator
dissect.trade_indicator = function(buffer, offset, packet, parent)
  local length = size_of.trade_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.trade_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Non Auction Options Trade Message
size_of.non_auction_options_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.trade_indicator

  index = index + size_of.option_id

  index = index + size_of.cross_number

  index = index + size_of.match_number

  index = index + size_of.price

  index = index + size_of.volume

  return index
end

-- Display: Non Auction Options Trade Message
display.non_auction_options_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Non Auction Options Trade Message
dissect.non_auction_options_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Indicator: 1 Byte Ascii String Enum with 3 values
  index, trade_indicator = dissect.trade_indicator(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Auction Options Trade Message
dissect.non_auction_options_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.non_auction_options_trade_message then
    local length = size_of.non_auction_options_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.non_auction_options_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.non_auction_options_trade_message, range, display)
  end

  return dissect.non_auction_options_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancelled Reference Number Delta
size_of.cancelled_reference_number_delta = 4

-- Display: Cancelled Reference Number Delta
display.cancelled_reference_number_delta = function(value)
  return "Cancelled Reference Number Delta: "..value
end

-- Dissect: Cancelled Reference Number Delta
dissect.cancelled_reference_number_delta = function(buffer, offset, packet, parent)
  local length = size_of.cancelled_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cancelled_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Size: Number Of Reference Number Deltas
size_of.number_of_reference_number_deltas = 2

-- Display: Number Of Reference Number Deltas
display.number_of_reference_number_deltas = function(value)
  return "Number Of Reference Number Deltas: "..value
end

-- Dissect: Number Of Reference Number Deltas
dissect.number_of_reference_number_deltas = function(buffer, offset, packet, parent)
  local length = size_of.number_of_reference_number_deltas
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.number_of_reference_number_deltas(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.number_of_reference_number_deltas, range, value, display)

  return offset + length, value
end

-- Calculate size of: Block Delete Message
size_of.block_delete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.number_of_reference_number_deltas

  -- Calculate field size from count
  local cancelled_reference_number_delta_count = buffer(offset + index - 2, 2):uint()
  index = index + cancelled_reference_number_delta_count * 4

  return index
end

-- Display: Block Delete Message
display.block_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Delete Message
dissect.block_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Number Of Reference Number Deltas: 2 Byte Unsigned Fixed Width Integer
  index, number_of_reference_number_deltas = dissect.number_of_reference_number_deltas(buffer, index, packet, parent)

  -- Cancelled Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  for i = 1, number_of_reference_number_deltas do
    index = dissect.cancelled_reference_number_delta(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Block Delete Message
dissect.block_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.block_delete_message then
    local length = size_of.block_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.block_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.block_delete_message, range, display)
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
  local length = size_of.ask_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.ask_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Size: Bid Reference Number Delta
size_of.bid_reference_number_delta = 4

-- Display: Bid Reference Number Delta
display.bid_reference_number_delta = function(value)
  return "Bid Reference Number Delta: "..value
end

-- Dissect: Bid Reference Number Delta
dissect.bid_reference_number_delta = function(buffer, offset, packet, parent)
  local length = size_of.bid_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.bid_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Delete Message
size_of.quote_delete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.bid_reference_number_delta

  index = index + size_of.ask_reference_number_delta

  return index
end

-- Display: Quote Delete Message
display.quote_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Delete Message
dissect.quote_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
dissect.quote_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_delete_message then
    local length = size_of.quote_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.quote_delete_message, range, display)
  end

  return dissect.quote_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Size
size_of.ask_size = 4

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local length = size_of.ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask
size_of.ask = 4

-- Display: Ask
display.ask = function(value)
  return "Ask: "..value
end

-- Dissect: Ask
dissect.ask = function(buffer, offset, packet, parent)
  local length = size_of.ask
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.ask, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid
size_of.bid = 4

-- Display: Bid
display.bid = function(value)
  return "Bid: "..value
end

-- Dissect: Bid
dissect.bid = function(buffer, offset, packet, parent)
  local length = size_of.bid
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.bid, range, value, display)

  return offset + length, value
end

-- Size: Original Ask Reference Number Delta
size_of.original_ask_reference_number_delta = 4

-- Display: Original Ask Reference Number Delta
display.original_ask_reference_number_delta = function(value)
  return "Original Ask Reference Number Delta: "..value
end

-- Dissect: Original Ask Reference Number Delta
dissect.original_ask_reference_number_delta = function(buffer, offset, packet, parent)
  local length = size_of.original_ask_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.original_ask_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.original_ask_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Size: Original Bid Reference Number Delta
size_of.original_bid_reference_number_delta = 4

-- Display: Original Bid Reference Number Delta
display.original_bid_reference_number_delta = function(value)
  return "Original Bid Reference Number Delta: "..value
end

-- Dissect: Original Bid Reference Number Delta
dissect.original_bid_reference_number_delta = function(buffer, offset, packet, parent)
  local length = size_of.original_bid_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.original_bid_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.original_bid_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Replace Long Form Message
size_of.quote_replace_long_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.original_bid_reference_number_delta

  index = index + size_of.bid_reference_number_delta

  index = index + size_of.original_ask_reference_number_delta

  index = index + size_of.ask_reference_number_delta

  index = index + size_of.bid

  index = index + size_of.bid_size

  index = index + size_of.ask

  index = index + size_of.ask_size

  return index
end

-- Display: Quote Replace Long Form Message
display.quote_replace_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Replace Long Form Message
dissect.quote_replace_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number_delta = dissect.original_bid_reference_number_delta(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number_delta = dissect.original_ask_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index, bid = dissect.bid(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index, ask = dissect.ask(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Long Form Message
dissect.quote_replace_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_replace_long_form_message then
    local length = size_of.quote_replace_long_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_replace_long_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.quote_replace_long_form_message, range, display)
  end

  return dissect.quote_replace_long_form_message_fields(buffer, offset, packet, parent)
end

-- Size: Short Ask Size
size_of.short_ask_size = 2

-- Display: Short Ask Size
display.short_ask_size = function(value)
  return "Short Ask Size: "..value
end

-- Dissect: Short Ask Size
dissect.short_ask_size = function(buffer, offset, packet, parent)
  local length = size_of.short_ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.short_ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.short_ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
size_of.ask_price = 2

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local length = size_of.ask_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Short Bid Size
size_of.short_bid_size = 2

-- Display: Short Bid Size
display.short_bid_size = function(value)
  return "Short Bid Size: "..value
end

-- Dissect: Short Bid Size
dissect.short_bid_size = function(buffer, offset, packet, parent)
  local length = size_of.short_bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.short_bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.short_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
size_of.bid_price = 2

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = size_of.bid_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Replace Short Form Message
size_of.quote_replace_short_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.original_bid_reference_number_delta

  index = index + size_of.bid_reference_number_delta

  index = index + size_of.original_ask_reference_number_delta

  index = index + size_of.ask_reference_number_delta

  index = index + size_of.bid_price

  index = index + size_of.short_bid_size

  index = index + size_of.ask_price

  index = index + size_of.short_ask_size

  return index
end

-- Display: Quote Replace Short Form Message
display.quote_replace_short_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Replace Short Form Message
dissect.quote_replace_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number_delta = dissect.original_bid_reference_number_delta(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number_delta = dissect.original_ask_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Short Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, short_bid_size = dissect.short_bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Unsigned Fixed Width Integer
  index, ask_price = dissect.ask_price(buffer, index, packet, parent)

  -- Short Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, short_ask_size = dissect.short_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Short Form Message
dissect.quote_replace_short_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_replace_short_form_message then
    local length = size_of.quote_replace_short_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_replace_short_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.quote_replace_short_form_message, range, display)
  end

  return dissect.quote_replace_short_form_message_fields(buffer, offset, packet, parent)
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
  if value == "E" then
    return "Change Reason: Exhausted (E)"
  end

  return "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
dissect.change_reason = function(buffer, offset, packet, parent)
  local length = size_of.change_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.change_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Size: Reference Number Delta
size_of.reference_number_delta = 4

-- Display: Reference Number Delta
display.reference_number_delta = function(value)
  return "Reference Number Delta: "..value
end

-- Dissect: Reference Number Delta
dissect.reference_number_delta = function(buffer, offset, packet, parent)
  local length = size_of.reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Update Message
size_of.single_side_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.reference_number_delta

  index = index + size_of.change_reason

  index = index + size_of.price

  index = index + size_of.volume

  return index
end

-- Display: Single Side Update Message
display.single_side_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Update Message
dissect.single_side_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Change Reason: 1 Byte Ascii String Enum with 4 values
  index, change_reason = dissect.change_reason(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
dissect.single_side_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_update_message then
    local length = size_of.single_side_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_side_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_update_message, range, display)
  end

  return dissect.single_side_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Single Side Delete Message
size_of.single_side_delete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.reference_number_delta

  return index
end

-- Display: Single Side Delete Message
display.single_side_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Delete Message
dissect.single_side_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = dissect.reference_number_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
dissect.single_side_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_delete_message then
    local length = size_of.single_side_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_side_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_delete_message, range, display)
  end

  return dissect.single_side_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Id
size_of.order_id = 4

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: New Reference Number Delta
size_of.new_reference_number_delta = 4

-- Display: New Reference Number Delta
display.new_reference_number_delta = function(value)
  return "New Reference Number Delta: "..value
end

-- Dissect: New Reference Number Delta
dissect.new_reference_number_delta = function(buffer, offset, packet, parent)
  local length = size_of.new_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.new_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.new_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Size: Original Reference Number Delta
size_of.original_reference_number_delta = 4

-- Display: Original Reference Number Delta
display.original_reference_number_delta = function(value)
  return "Original Reference Number Delta: "..value
end

-- Dissect: Original Reference Number Delta
dissect.original_reference_number_delta = function(buffer, offset, packet, parent)
  local length = size_of.original_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.original_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.original_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Replace Long Form Message
size_of.single_side_replace_long_form_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.original_reference_number_delta

  index = index + size_of.new_reference_number_delta

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.order_id

  return index
end

-- Display: Single Side Replace Long Form Message
display.single_side_replace_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Long Form Message
dissect.single_side_replace_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Long Form Message
dissect.single_side_replace_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_replace_long_form_message then
    local length = size_of.single_side_replace_long_form_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_side_replace_long_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_replace_long_form_message, range, display)
  end

  return dissect.single_side_replace_long_form_message_fields(buffer, offset, packet, parent)
end

-- Size: Short Volume
size_of.short_volume = 2

-- Display: Short Volume
display.short_volume = function(value)
  return "Short Volume: "..value
end

-- Dissect: Short Volume
dissect.short_volume = function(buffer, offset, packet, parent)
  local length = size_of.short_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.short_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.short_volume, range, value, display)

  return offset + length, value
end

-- Size: Short Price
size_of.short_price = 2

-- Display: Short Price
display.short_price = function(value)
  return "Short Price: "..value
end

-- Dissect: Short Price
dissect.short_price = function(buffer, offset, packet, parent)
  local length = size_of.short_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.short_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.short_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Message Short Form
size_of.order_replace_message_short_form = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.original_reference_number_delta

  index = index + size_of.new_reference_number_delta

  index = index + size_of.short_price

  index = index + size_of.short_volume

  index = index + size_of.order_id

  return index
end

-- Display: Order Replace Message Short Form
display.order_replace_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replace Message Short Form
dissect.order_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = dissect.short_price(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = dissect.short_volume(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message Short Form
dissect.order_replace_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replace_message_short_form then
    local length = size_of.order_replace_message_short_form(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_replace_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.order_replace_message_short_form, range, display)
  end

  return dissect.order_replace_message_short_form_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Single Side Replace Message Long Form
size_of.single_side_replace_message_long_form = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.original_reference_number_delta

  index = index + size_of.new_reference_number_delta

  index = index + size_of.price

  index = index + size_of.volume

  return index
end

-- Display: Single Side Replace Message Long Form
display.single_side_replace_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
dissect.single_side_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
dissect.single_side_replace_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_replace_message_long_form then
    local length = size_of.single_side_replace_message_long_form(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_side_replace_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_replace_message_long_form, range, display)
  end

  return dissect.single_side_replace_message_long_form_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Single Side Replace Message Short Form
size_of.single_side_replace_message_short_form = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.original_reference_number_delta

  index = index + size_of.new_reference_number_delta

  index = index + size_of.short_price

  index = index + size_of.short_volume

  return index
end

-- Display: Single Side Replace Message Short Form
display.single_side_replace_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
dissect.single_side_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = dissect.short_price(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = dissect.short_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
dissect.single_side_replace_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_replace_message_short_form then
    local length = size_of.single_side_replace_message_short_form(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_side_replace_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_replace_message_short_form, range, display)
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
  local length = size_of.cancelled_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cancelled_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.cancelled_contracts, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Cancel Message
size_of.single_side_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.reference_number_delta

  index = index + size_of.cancelled_contracts

  return index
end

-- Display: Single Side Cancel Message
display.single_side_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Cancel Message
dissect.single_side_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Cancelled Contracts: 4 Byte Unsigned Fixed Width Integer
  index, cancelled_contracts = dissect.cancelled_contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Cancel Message
dissect.single_side_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_cancel_message then
    local length = size_of.single_side_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_side_cancel_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_cancel_message, range, display)
  end

  return dissect.single_side_cancel_message_fields(buffer, offset, packet, parent)
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
  local length = size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.printable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.printable, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Executed With Price Message
size_of.single_side_executed_with_price_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.reference_number_delta

  index = index + size_of.cross_number

  index = index + size_of.match_number

  index = index + size_of.printable

  index = index + size_of.price

  index = index + size_of.volume

  return index
end

-- Display: Single Side Executed With Price Message
display.single_side_executed_with_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
dissect.single_side_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = dissect.printable(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
dissect.single_side_executed_with_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_executed_with_price_message then
    local length = size_of.single_side_executed_with_price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_side_executed_with_price_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_executed_with_price_message, range, display)
  end

  return dissect.single_side_executed_with_price_message_fields(buffer, offset, packet, parent)
end

-- Size: Executed Contracts
size_of.executed_contracts = 4

-- Display: Executed Contracts
display.executed_contracts = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
dissect.executed_contracts = function(buffer, offset, packet, parent)
  local length = size_of.executed_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.executed_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.executed_contracts, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Executed Message
size_of.single_side_executed_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.reference_number_delta

  index = index + size_of.executed_contracts

  index = index + size_of.cross_number

  index = index + size_of.match_number

  return index
end

-- Display: Single Side Executed Message
display.single_side_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Executed Message
dissect.single_side_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Executed Contracts: 4 Byte Unsigned Fixed Width Integer
  index, executed_contracts = dissect.executed_contracts(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
dissect.single_side_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_executed_message then
    local length = size_of.single_side_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_side_executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.single_side_executed_message, range, display)
  end

  return dissect.single_side_executed_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Quote Message Long Form
size_of.add_quote_message_long_form = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.bid_reference_number_delta

  index = index + size_of.ask_reference_number_delta

  index = index + size_of.option_id

  index = index + size_of.bid

  index = index + size_of.bid_size

  index = index + size_of.ask

  index = index + size_of.ask_size

  return index
end

-- Display: Add Quote Message Long Form
display.add_quote_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form
dissect.add_quote_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index, bid = dissect.bid(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index, ask = dissect.ask(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form
dissect.add_quote_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_quote_message_long_form then
    local length = size_of.add_quote_message_long_form(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_quote_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.add_quote_message_long_form, range, display)
  end

  return dissect.add_quote_message_long_form_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Quote Message Short Form
size_of.add_quote_message_short_form = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.bid_reference_number_delta

  index = index + size_of.ask_reference_number_delta

  index = index + size_of.option_id

  index = index + size_of.bid_price

  index = index + size_of.short_bid_size

  index = index + size_of.ask_price

  index = index + size_of.short_ask_size

  return index
end

-- Display: Add Quote Message Short Form
display.add_quote_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form
dissect.add_quote_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Short Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, short_bid_size = dissect.short_bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Unsigned Fixed Width Integer
  index, ask_price = dissect.ask_price(buffer, index, packet, parent)

  -- Short Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, short_ask_size = dissect.short_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form
dissect.add_quote_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_quote_message_short_form then
    local length = size_of.add_quote_message_short_form(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_quote_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.add_quote_message_short_form, range, display)
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
  if value == "A" then
    return "Market Side: Buy (A)"
  end
  if value == "B" then
    return "Market Side: Sell (B)"
  end
  if value == "M" then
    return "Market Side: Buy (M)"
  end
  if value == "N" then
    return "Market Side: Sell (N)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
dissect.market_side = function(buffer, offset, packet, parent)
  local length = size_of.market_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.market_side, range, value, display)

  return offset + length, value
end

-- Size: Order Reference Number Delta
size_of.order_reference_number_delta = 4

-- Display: Order Reference Number Delta
display.order_reference_number_delta = function(value)
  return "Order Reference Number Delta: "..value
end

-- Dissect: Order Reference Number Delta
dissect.order_reference_number_delta = function(buffer, offset, packet, parent)
  local length = size_of.order_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.order_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.order_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Message Long Form
size_of.add_order_message_long_form = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number_delta

  index = index + size_of.market_side

  index = index + size_of.option_id

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.order_id

  return index
end

-- Display: Add Order Message Long Form
display.add_order_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message Long Form
dissect.add_order_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, order_reference_number_delta = dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 6 values
  index, market_side = dissect.market_side(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form
dissect.add_order_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message_long_form then
    local length = size_of.add_order_message_long_form(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.add_order_message_long_form, range, display)
  end

  return dissect.add_order_message_long_form_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Message Short Form
size_of.add_order_message_short_form = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number_delta

  index = index + size_of.market_side

  index = index + size_of.option_id

  index = index + size_of.short_price

  index = index + size_of.short_volume

  index = index + size_of.order_id

  return index
end

-- Display: Add Order Message Short Form
display.add_order_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message Short Form
dissect.add_order_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, order_reference_number_delta = dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 6 values
  index, market_side = dissect.market_side(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = dissect.short_price(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = dissect.short_volume(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Form
dissect.add_order_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message_short_form then
    local length = size_of.add_order_message_short_form(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.add_order_message_short_form, range, display)
  end

  return dissect.add_order_message_short_form_fields(buffer, offset, packet, parent)
end

-- Size: Open State
size_of.open_state = 1

-- Display: Open State
display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
dissect.open_state = function(buffer, offset, packet, parent)
  local length = size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Open Message
size_of.security_open_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.option_id

  index = index + size_of.open_state

  return index
end

-- Display: Security Open Message
display.security_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Open Message
dissect.security_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
dissect.security_open_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_open_message then
    local length = size_of.security_open_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_open_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.security_open_message, range, display)
  end

  return dissect.security_open_message_fields(buffer, offset, packet, parent)
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
    return "Current Trading State: Buy Side Trading Suspended Exhausted (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Trading Suspended Exhausted (S)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.option_id

  index = index + size_of.current_trading_state

  return index
end

-- Display: Trading Action Message
display.trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Action Message
dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index, current_trading_state = dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
dissect.trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_action_message then
    local length = size_of.trading_action_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.trading_action_message, range, display)
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
  local length = size_of.mpv
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mpv(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Tradable
size_of.tradable = 1

-- Display: Tradable
display.tradable = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
dissect.tradable = function(buffer, offset, packet, parent)
  local length = size_of.tradable
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tradable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.tradable, range, value, display)

  return offset + length, value
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
  if value == "W" then
    return "Options Closing Type: Wco Early Closing (W)"
  end

  return "Options Closing Type: Unknown("..value..")"
end

-- Dissect: Options Closing Type
dissect.options_closing_type = function(buffer, offset, packet, parent)
  local length = size_of.options_closing_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.options_closing_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.options_closing_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 13

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
size_of.source = 1

-- Display: Source
display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
dissect.source = function(buffer, offset, packet, parent)
  local length = size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.source, range, value, display)

  return offset + length, value
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
  local length = size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Explicit Strike Price
size_of.explicit_strike_price = 4

-- Display: Explicit Strike Price
display.explicit_strike_price = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
dissect.explicit_strike_price = function(buffer, offset, packet, parent)
  local length = size_of.explicit_strike_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.explicit_strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
size_of.expiration_date = 1

-- Display: Expiration Date
display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = size_of.expiration_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
size_of.expiration_month = 1

-- Display: Expiration Month
display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
size_of.expiration_year = 1

-- Display: Expiration Year
display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
size_of.security_symbol = 6

-- Display: Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Directory Message
size_of.option_directory_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.option_id

  index = index + size_of.security_symbol

  index = index + size_of.expiration_year

  index = index + size_of.expiration_month

  index = index + size_of.expiration_date

  index = index + size_of.explicit_strike_price

  index = index + size_of.option_type

  index = index + size_of.source

  index = index + size_of.underlying_symbol

  index = index + size_of.options_closing_type

  index = index + size_of.tradable

  index = index + size_of.mpv

  return index
end

-- Display: Option Directory Message
display.option_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Directory Message
dissect.option_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Date: 1 Byte Unsigned Fixed Width Integer
  index, expiration_date = dissect.expiration_date(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, explicit_strike_price = dissect.explicit_strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Options Closing Type: 1 Byte Ascii String Enum with 3 values
  index, options_closing_type = dissect.options_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = dissect.tradable(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index, mpv = dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Directory Message
dissect.option_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_directory_message then
    local length = size_of.option_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.option_directory_message, range, display)
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
  local length = size_of.base_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.base_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.base_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Base Reference Message
size_of.base_reference_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.base_reference_number

  return index
end

-- Display: Base Reference Message
display.base_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Base Reference Message
dissect.base_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Base Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, base_reference_number = dissect.base_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Base Reference Message
dissect.base_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.base_reference_message then
    local length = size_of.base_reference_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.base_reference_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.base_reference_message, range, display)
  end

  return dissect.base_reference_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
  return "Event Code: "..value
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local length = size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.event_code

  return index
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String
  index, event_code = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.system_event_message, range, display)
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
  local length = size_of.second
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.second(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.second, range, value, display)

  return offset + length, value
end

-- Calculate size of: Seconds Message
size_of.seconds_message = function(buffer, offset)
  local index = 0

  index = index + size_of.second

  return index
end

-- Display: Seconds Message
display.seconds_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Seconds Message
dissect.seconds_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index, second = dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
dissect.seconds_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.seconds_message then
    local length = size_of.seconds_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.seconds_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.seconds_message, range, display)
  end

  return dissect.seconds_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return size_of.seconds_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return size_of.system_event_message(buffer, offset)
  end
  -- Size of Base Reference Message
  if message_type == "L" then
    return size_of.base_reference_message(buffer, offset)
  end
  -- Size of Option Directory Message
  if message_type == "R" then
    return size_of.option_directory_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return size_of.trading_action_message(buffer, offset)
  end
  -- Size of Security Open Message
  if message_type == "O" then
    return size_of.security_open_message(buffer, offset)
  end
  -- Size of Add Order Message Short Form
  if message_type == "a" then
    return size_of.add_order_message_short_form(buffer, offset)
  end
  -- Size of Add Order Message Long Form
  if message_type == "A" then
    return size_of.add_order_message_long_form(buffer, offset)
  end
  -- Size of Add Quote Message Short Form
  if message_type == "j" then
    return size_of.add_quote_message_short_form(buffer, offset)
  end
  -- Size of Add Quote Message Long Form
  if message_type == "J" then
    return size_of.add_quote_message_long_form(buffer, offset)
  end
  -- Size of Single Side Executed Message
  if message_type == "E" then
    return size_of.single_side_executed_message(buffer, offset)
  end
  -- Size of Single Side Executed With Price Message
  if message_type == "C" then
    return size_of.single_side_executed_with_price_message(buffer, offset)
  end
  -- Size of Single Side Cancel Message
  if message_type == "X" then
    return size_of.single_side_cancel_message(buffer, offset)
  end
  -- Size of Single Side Replace Message Short Form
  if message_type == "u" then
    return size_of.single_side_replace_message_short_form(buffer, offset)
  end
  -- Size of Single Side Replace Message Long Form
  if message_type == "U" then
    return size_of.single_side_replace_message_long_form(buffer, offset)
  end
  -- Size of Order Replace Message Short Form
  if message_type == "v" then
    return size_of.order_replace_message_short_form(buffer, offset)
  end
  -- Size of Single Side Replace Long Form Message
  if message_type == "V" then
    return size_of.single_side_replace_long_form_message(buffer, offset)
  end
  -- Size of Single Side Delete Message
  if message_type == "D" then
    return size_of.single_side_delete_message(buffer, offset)
  end
  -- Size of Single Side Update Message
  if message_type == "G" then
    return size_of.single_side_update_message(buffer, offset)
  end
  -- Size of Quote Replace Short Form Message
  if message_type == "k" then
    return size_of.quote_replace_short_form_message(buffer, offset)
  end
  -- Size of Quote Replace Long Form Message
  if message_type == "K" then
    return size_of.quote_replace_long_form_message(buffer, offset)
  end
  -- Size of Quote Delete Message
  if message_type == "Y" then
    return size_of.quote_delete_message(buffer, offset)
  end
  -- Size of Block Delete Message
  if message_type == "Z" then
    return size_of.block_delete_message(buffer, offset)
  end
  -- Size of Non Auction Options Trade Message
  if message_type == "P" then
    return size_of.non_auction_options_trade_message(buffer, offset)
  end
  -- Size of Options Cross Trade Message
  if message_type == "Q" then
    return size_of.options_cross_trade_message(buffer, offset)
  end
  -- Size of Broken Trade Order Execution Message
  if message_type == "B" then
    return size_of.broken_trade_order_execution_message(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == "I" then
    return size_of.auction_notification_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return dissect.seconds_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Base Reference Message
  if message_type == "L" then
    return dissect.base_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Directory Message
  if message_type == "R" then
    return dissect.option_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if message_type == "O" then
    return dissect.security_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Form
  if message_type == "a" then
    return dissect.add_order_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form
  if message_type == "A" then
    return dissect.add_order_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form
  if message_type == "j" then
    return dissect.add_quote_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form
  if message_type == "J" then
    return dissect.add_quote_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if message_type == "E" then
    return dissect.single_side_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if message_type == "C" then
    return dissect.single_side_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Cancel Message
  if message_type == "X" then
    return dissect.single_side_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Short Form
  if message_type == "u" then
    return dissect.single_side_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Long Form
  if message_type == "U" then
    return dissect.single_side_replace_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message Short Form
  if message_type == "v" then
    return dissect.order_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Long Form Message
  if message_type == "V" then
    return dissect.single_side_replace_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if message_type == "D" then
    return dissect.single_side_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if message_type == "G" then
    return dissect.single_side_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Short Form Message
  if message_type == "k" then
    return dissect.quote_replace_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Long Form Message
  if message_type == "K" then
    return dissect.quote_replace_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if message_type == "Y" then
    return dissect.quote_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Block Delete Message
  if message_type == "Z" then
    return dissect.block_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Non Auction Options Trade Message
  if message_type == "P" then
    return dissect.non_auction_options_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if message_type == "Q" then
    return dissect.options_cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Order Execution Message
  if message_type == "B" then
    return dissect.broken_trade_order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == "I" then
    return dissect.auction_notification_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_type)
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
    return "Message Type: Security Open Message (O)"
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
    return "Message Type: Single Side Executed With Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Single Side Cancel Message (X)"
  end
  if value == "u" then
    return "Message Type: Single Side Replace Message Short Form (u)"
  end
  if value == "U" then
    return "Message Type: Single Side Replace Message Long Form (U)"
  end
  if value == "v" then
    return "Message Type: Order Replace Message Short Form (v)"
  end
  if value == "V" then
    return "Message Type: Single Side Replace Long Form Message (V)"
  end
  if value == "D" then
    return "Message Type: Single Side Delete Message (D)"
  end
  if value == "G" then
    return "Message Type: Single Side Update Message (G)"
  end
  if value == "k" then
    return "Message Type: Quote Replace Short Form Message (k)"
  end
  if value == "K" then
    return "Message Type: Quote Replace Long Form Message (K)"
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
    return "Message Type: Broken Trade Order Execution Message (B)"
  end
  if value == "I" then
    return "Message Type: Auction Notification Message (I)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
size_of.length = 2

-- Display: Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local length = size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.length

  index = index + size_of.message_type

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 27 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header(buffer, offset + index)

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
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 27 branches
  index = dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.message, range, display)
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
  local length = size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
size_of.sequence = 8

-- Display: Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local length = size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
size_of.session = 10

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.session

  index = index + size_of.sequence

  index = index + size_of.count

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_phlx_marketdepth_itch_v1_5.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_phlx_marketdepth_itch_v1_5.init()
end

-- Dissector for Nasdaq Phlx MarketDepth Itch 1.5
function nasdaq_phlx_marketdepth_itch_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_phlx_marketdepth_itch_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_phlx_marketdepth_itch_v1_5, buffer(), nasdaq_phlx_marketdepth_itch_v1_5.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_phlx_marketdepth_itch_v1_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_phlx_marketdepth_itch_v1_5_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Phlx MarketDepth Itch 1.5
local function nasdaq_phlx_marketdepth_itch_v1_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_phlx_marketdepth_itch_v1_5_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_phlx_marketdepth_itch_v1_5
  nasdaq_phlx_marketdepth_itch_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Phlx MarketDepth Itch 1.5
nasdaq_phlx_marketdepth_itch_v1_5:register_heuristic("udp", nasdaq_phlx_marketdepth_itch_v1_5_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.5
--   Date: Wednesday, September 30, 2015
--   Specification: phlxdepth.pdf
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
