-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 Protocol
local nasdaq_phlxoptions_marketdepth_itch_v1_5 = Proto("Nasdaq.PhlxOptions.MarketDepth.Itch.v1.5.Lua", "Nasdaq PhlxOptions MarketDepth Itch 1.5")

-- Component Tables
local show = {}
local format = {}
local nasdaq_phlxoptions_marketdepth_itch_v1_5_display = {}
local nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect = {}
local nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 Fields
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask = ProtoField.new("Ask", "nasdaq.phlxoptions.marketdepth.itch.v1.5.ask", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.askprice", ftypes.DOUBLE)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_reference_number_delta = ProtoField.new("Ask Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.askreferencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.phlxoptions.marketdepth.itch.v1.5.asksize", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.phlxoptions.marketdepth.itch.v1.5.auctionid", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.auctiontype", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.base_reference_number = ProtoField.new("Base Reference Number", "nasdaq.phlxoptions.marketdepth.itch.v1.5.basereferencenumber", ftypes.UINT64)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid = ProtoField.new("Bid", "nasdaq.phlxoptions.marketdepth.itch.v1.5.bid", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.bidprice", ftypes.DOUBLE)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_reference_number_delta = ProtoField.new("Bid Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.bidreferencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.phlxoptions.marketdepth.itch.v1.5.bidsize", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.phlxoptions.marketdepth.itch.v1.5.cancelledcontracts", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta = ProtoField.new("Cancelled Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.cancelledreferencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.phlxoptions.marketdepth.itch.v1.5.changereason", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.count = ProtoField.new("Count", "nasdaq.phlxoptions.marketdepth.itch.v1.5.count", ftypes.UINT16)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.phlxoptions.marketdepth.itch.v1.5.crossnumber", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.crosstype", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.marketdepth.itch.v1.5.currenttradingstate", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.customer_indicator = ProtoField.new("Customer Indicator", "nasdaq.phlxoptions.marketdepth.itch.v1.5.customerindicator", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.marketdepth.itch.v1.5.eventcode", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.phlxoptions.marketdepth.itch.v1.5.executedcontracts", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.phlxoptions.marketdepth.itch.v1.5.expirationdate", ftypes.UINT8)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.phlxoptions.marketdepth.itch.v1.5.expirationmonth", ftypes.UINT8)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.phlxoptions.marketdepth.itch.v1.5.expirationyear", ftypes.UINT8)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.explicitstrikeprice", ftypes.DOUBLE)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.phlxoptions.marketdepth.itch.v1.5.imbalancedirection", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.imbalanceprice", ftypes.DOUBLE)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.phlxoptions.marketdepth.itch.v1.5.imbalancevolume", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.length = ProtoField.new("Length", "nasdaq.phlxoptions.marketdepth.itch.v1.5.length", ftypes.UINT16)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.market_side = ProtoField.new("Market Side", "nasdaq.phlxoptions.marketdepth.itch.v1.5.marketside", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.match_number = ProtoField.new("Match Number", "nasdaq.phlxoptions.marketdepth.itch.v1.5.matchnumber", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message = ProtoField.new("Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.message", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlxoptions.marketdepth.itch.v1.5.messageheader", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.messagetype", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.mpv = ProtoField.new("Mpv", "nasdaq.phlxoptions.marketdepth.itch.v1.5.mpv", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.new_reference_number_delta = ProtoField.new("New Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.newreferencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.number_of_reference_number_deltas = ProtoField.new("Number Of Reference Number Deltas", "nasdaq.phlxoptions.marketdepth.itch.v1.5.numberofreferencenumberdeltas", ftypes.UINT16)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.open_state = ProtoField.new("Open State", "nasdaq.phlxoptions.marketdepth.itch.v1.5.openstate", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optionid", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optiontype", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optionsclosingtype", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_id = ProtoField.new("Order Id", "nasdaq.phlxoptions.marketdepth.itch.v1.5.orderid", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_reference_number_delta = ProtoField.new("Order Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.orderreferencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_ask_reference_number_delta = ProtoField.new("Original Ask Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.originalaskreferencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_bid_reference_number_delta = ProtoField.new("Original Bid Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.originalbidreferencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_reference_number_delta = ProtoField.new("Original Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.originalreferencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.packet = ProtoField.new("Packet", "nasdaq.phlxoptions.marketdepth.itch.v1.5.packet", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlxoptions.marketdepth.itch.v1.5.packetheader", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.phlxoptions.marketdepth.itch.v1.5.pairedcontracts", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.payload = ProtoField.new("Payload", "nasdaq.phlxoptions.marketdepth.itch.v1.5.payload", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.price = ProtoField.new("Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.price", ftypes.DOUBLE)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.printable = ProtoField.new("Printable", "nasdaq.phlxoptions.marketdepth.itch.v1.5.printable", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.reference_number_delta = ProtoField.new("Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.referencenumberdelta", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.reserved = ProtoField.new("Reserved", "nasdaq.phlxoptions.marketdepth.itch.v1.5.reserved", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.second = ProtoField.new("Second", "nasdaq.phlxoptions.marketdepth.itch.v1.5.second", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.marketdepth.itch.v1.5.securitysymbol", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.sequence = ProtoField.new("Sequence", "nasdaq.phlxoptions.marketdepth.itch.v1.5.sequence", ftypes.UINT64)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.session = ProtoField.new("Session", "nasdaq.phlxoptions.marketdepth.itch.v1.5.session", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_ask_size = ProtoField.new("Short Ask Size", "nasdaq.phlxoptions.marketdepth.itch.v1.5.shortasksize", ftypes.UINT16)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_bid_size = ProtoField.new("Short Bid Size", "nasdaq.phlxoptions.marketdepth.itch.v1.5.shortbidsize", ftypes.UINT16)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_price = ProtoField.new("Short Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.shortprice", ftypes.DOUBLE)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_volume = ProtoField.new("Short Volume", "nasdaq.phlxoptions.marketdepth.itch.v1.5.shortvolume", ftypes.UINT16)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.source = ProtoField.new("Source", "nasdaq.phlxoptions.marketdepth.itch.v1.5.source", ftypes.UINT8)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlxoptions.marketdepth.itch.v1.5.timestamp", ftypes.UINT32)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.tradable = ProtoField.new("Tradable", "nasdaq.phlxoptions.marketdepth.itch.v1.5.tradable", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.trade_indicator = ProtoField.new("Trade Indicator", "nasdaq.phlxoptions.marketdepth.itch.v1.5.tradeindicator", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.marketdepth.itch.v1.5.underlyingsymbol", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.volume = ProtoField.new("Volume", "nasdaq.phlxoptions.marketdepth.itch.v1.5.volume", ftypes.UINT32)

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 messages
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_order_message_long_form = ProtoField.new("Add Order Message Long Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.addordermessagelongform", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_order_message_short_form = ProtoField.new("Add Order Message Short Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.addordermessageshortform", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_quote_message_long_form = ProtoField.new("Add Quote Message Long Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.addquotemessagelongform", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_quote_message_short_form = ProtoField.new("Add Quote Message Short Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.addquotemessageshortform", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.auctionnotificationmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.base_reference_message = ProtoField.new("Base Reference Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.basereferencemessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.block_delete_message = ProtoField.new("Block Delete Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.blockdeletemessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.broken_trade_order_execution_message = ProtoField.new("Broken Trade Order Execution Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.brokentradeorderexecutionmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.non_auction_options_trade_message = ProtoField.new("Non Auction Options Trade Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.nonauctionoptionstrademessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_directory_message = ProtoField.new("Option Directory Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optiondirectorymessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optionscrosstrademessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_replace_message_short_form = ProtoField.new("Order Replace Message Short Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.orderreplacemessageshortform", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.quotedeletemessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_replace_long_form_message = ProtoField.new("Quote Replace Long Form Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.quotereplacelongformmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_replace_short_form_message = ProtoField.new("Quote Replace Short Form Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.quotereplaceshortformmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.secondsmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.securityopenmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_cancel_message = ProtoField.new("Single Side Cancel Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidecancelmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidedeletemessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesideexecutedmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesideexecutedwithpricemessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_long_form_message = ProtoField.new("Single Side Replace Long Form Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidereplacelongformmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidereplacemessagelongform", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidereplacemessageshortform", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesideupdatemessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.systemeventmessage", ftypes.STRING)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.tradingactionmessage", ftypes.STRING)

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 generated fields
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta_index = ProtoField.new("Cancelled Reference Number Delta Index", "nasdaq.phlxoptions.marketdepth.itch.v1.5.cancelledreferencenumberdeltaindex", ftypes.UINT16)
nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_index = ProtoField.new("Message Index", "nasdaq.phlxoptions.marketdepth.itch.v1.5.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 Element Dissection Options
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

-- Register Nasdaq PhlxOptions MarketDepth Itch 1.5 Show Options
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form = Pref.bool("Show Add Order Message Long Form", show.add_order_message_long_form, "Parse and add Add Order Message Long Form to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form = Pref.bool("Show Add Order Message Short Form", show.add_order_message_short_form, "Parse and add Add Order Message Short Form to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form = Pref.bool("Show Add Quote Message Long Form", show.add_quote_message_long_form, "Parse and add Add Quote Message Long Form to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form = Pref.bool("Show Add Quote Message Short Form", show.add_quote_message_short_form, "Parse and add Add Quote Message Short Form to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_base_reference_message = Pref.bool("Show Base Reference Message", show.base_reference_message, "Parse and add Base Reference Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_block_delete_message = Pref.bool("Show Block Delete Message", show.block_delete_message, "Parse and add Block Delete Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message = Pref.bool("Show Broken Trade Order Execution Message", show.broken_trade_order_execution_message, "Parse and add Broken Trade Order Execution Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message = Pref.bool("Show Non Auction Options Trade Message", show.non_auction_options_trade_message, "Parse and add Non Auction Options Trade Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_option_directory_message = Pref.bool("Show Option Directory Message", show.option_directory_message, "Parse and add Option Directory Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message = Pref.bool("Show Options Cross Trade Message", show.options_cross_trade_message, "Parse and add Options Cross Trade Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form = Pref.bool("Show Order Replace Message Short Form", show.order_replace_message_short_form, "Parse and add Order Replace Message Short Form to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_delete_message = Pref.bool("Show Quote Delete Message", show.quote_delete_message, "Parse and add Quote Delete Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message = Pref.bool("Show Quote Replace Long Form Message", show.quote_replace_long_form_message, "Parse and add Quote Replace Long Form Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message = Pref.bool("Show Quote Replace Short Form Message", show.quote_replace_short_form_message, "Parse and add Quote Replace Short Form Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_security_open_message = Pref.bool("Show Security Open Message", show.security_open_message, "Parse and add Security Open Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message = Pref.bool("Show Single Side Cancel Message", show.single_side_cancel_message, "Parse and add Single Side Cancel Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_delete_message = Pref.bool("Show Single Side Delete Message", show.single_side_delete_message, "Parse and add Single Side Delete Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_message = Pref.bool("Show Single Side Executed Message", show.single_side_executed_message, "Parse and add Single Side Executed Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message = Pref.bool("Show Single Side Executed With Price Message", show.single_side_executed_with_price_message, "Parse and add Single Side Executed With Price Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message = Pref.bool("Show Single Side Replace Long Form Message", show.single_side_replace_long_form_message, "Parse and add Single Side Replace Long Form Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form = Pref.bool("Show Single Side Replace Message Long Form", show.single_side_replace_message_long_form, "Parse and add Single Side Replace Message Long Form to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form = Pref.bool("Show Single Side Replace Message Short Form", show.single_side_replace_message_short_form, "Parse and add Single Side Replace Message Short Form to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_update_message = Pref.bool("Show Single Side Update Message", show.single_side_update_message, "Parse and add Single Side Update Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message_long_form ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form then
    show.add_order_message_long_form = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form
    changed = true
  end
  if show.add_order_message_short_form ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form then
    show.add_order_message_short_form = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form
    changed = true
  end
  if show.add_quote_message_long_form ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form then
    show.add_quote_message_long_form = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form
    changed = true
  end
  if show.add_quote_message_short_form ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form then
    show.add_quote_message_short_form = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form
    changed = true
  end
  if show.auction_notification_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_auction_notification_message then
    show.auction_notification_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_auction_notification_message
    changed = true
  end
  if show.base_reference_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_base_reference_message then
    show.base_reference_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_base_reference_message
    changed = true
  end
  if show.block_delete_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_block_delete_message then
    show.block_delete_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_block_delete_message
    changed = true
  end
  if show.broken_trade_order_execution_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message then
    show.broken_trade_order_execution_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message
    changed = true
  end
  if show.message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message then
    show.message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message_header then
    show.message_header = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message_header
    changed = true
  end
  if show.non_auction_options_trade_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message then
    show.non_auction_options_trade_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message
    changed = true
  end
  if show.option_directory_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_option_directory_message then
    show.option_directory_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_option_directory_message
    changed = true
  end
  if show.options_cross_trade_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message then
    show.options_cross_trade_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message
    changed = true
  end
  if show.order_replace_message_short_form ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form then
    show.order_replace_message_short_form = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form
    changed = true
  end
  if show.packet ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet then
    show.packet = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet_header then
    show.packet_header = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet_header
    changed = true
  end
  if show.quote_delete_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_delete_message then
    show.quote_delete_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_delete_message
    changed = true
  end
  if show.quote_replace_long_form_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message then
    show.quote_replace_long_form_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message
    changed = true
  end
  if show.quote_replace_short_form_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message then
    show.quote_replace_short_form_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message
    changed = true
  end
  if show.seconds_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_seconds_message then
    show.seconds_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_seconds_message
    changed = true
  end
  if show.security_open_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_security_open_message then
    show.security_open_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_security_open_message
    changed = true
  end
  if show.single_side_cancel_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message then
    show.single_side_cancel_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message
    changed = true
  end
  if show.single_side_delete_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_delete_message then
    show.single_side_delete_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_delete_message
    changed = true
  end
  if show.single_side_executed_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_message then
    show.single_side_executed_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_message
    changed = true
  end
  if show.single_side_executed_with_price_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message then
    show.single_side_executed_with_price_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message
    changed = true
  end
  if show.single_side_replace_long_form_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message then
    show.single_side_replace_long_form_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message
    changed = true
  end
  if show.single_side_replace_message_long_form ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form then
    show.single_side_replace_message_long_form = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form
    changed = true
  end
  if show.single_side_replace_message_short_form ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form then
    show.single_side_replace_message_short_form = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form
    changed = true
  end
  if show.single_side_update_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_update_message then
    show.single_side_update_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_update_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_system_event_message then
    show.system_event_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_system_event_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_payload then
    show.payload = nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_payload
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
-- Dissect Nasdaq PhlxOptions MarketDepth Itch 1.5
-----------------------------------------------------------------------

-- Size: Reserved
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reserved = 3

-- Display: Reserved
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.reserved = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.reserved(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Customer Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.customer_indicator = 1

-- Display: Customer Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.customer_indicator = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_volume = 4

-- Display: Imbalance Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.imbalance_volume = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.imbalance_volume = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_price = 4

-- Display: Imbalance Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.imbalance_price = function(value)
  return "Imbalance Price: "..value
end

-- Translate: Imbalance Price
translate.imbalance_price = function(raw)
  return raw/10000
end

-- Dissect: Imbalance Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.imbalance_price = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.imbalance_price(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.imbalance_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Size: Option Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id = 4

-- Display: Option Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_id, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Direction
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_direction = 1

-- Display: Imbalance Direction
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.imbalance_direction = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Size: Paired Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.paired_contracts = 4

-- Display: Paired Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.paired_contracts = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.paired_contracts = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.paired_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.paired_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.paired_contracts, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.auction_type = 1

-- Display: Auction Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.auction_type = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.auction_id = 4

-- Display: Auction Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp = 4

-- Display: Timestamp
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.auction_notification_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.auction_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.auction_type

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.paired_contracts

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_direction

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.imbalance_volume

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.customer_indicator

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reserved

  return index
end

-- Display: Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.auction_notification_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index, auction_type = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_type(buffer, index, packet, parent)

  -- Paired Contracts: 4 Byte Unsigned Fixed Width Integer
  index, paired_contracts = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.paired_contracts(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 2 values
  index, imbalance_direction = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.imbalance_direction(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Imbalance Price: 4 Byte Signed Fixed Width Integer
  index, imbalance_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.imbalance_price(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.imbalance_volume(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 5 values
  index, customer_indicator = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.customer_indicator(buffer, index, packet, parent)

  -- Reserved: 3 Byte Unsigned Fixed Width Integer
  index, reserved = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_notification_message = function(buffer, offset, packet, parent)
  if show.auction_notification_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_notification_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.auction_notification_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_notification_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Match Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.match_number = 4

-- Display: Match Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.match_number = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.match_number, range, value, display)

  return offset + length, value
end

-- Size: Cross Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_number = 4

-- Display: Cross Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.cross_number = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cross_number = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.cross_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.broken_trade_order_execution_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_number

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.match_number

  return index
end

-- Display: Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.broken_trade_order_execution_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.broken_trade_order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.broken_trade_order_execution_message = function(buffer, offset, packet, parent)
  if show.broken_trade_order_execution_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.broken_trade_order_execution_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.broken_trade_order_execution_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.broken_trade_order_execution_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.broken_trade_order_execution_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume = 4

-- Display: Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.volume = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price = 4

-- Display: Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_type = 1

-- Display: Cross Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: Opening Reopening (O)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.options_cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_number

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.match_number

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_type

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume

  return index
end

-- Display: Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.options_cross_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.options_cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 1 values
  index, cross_type = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cross_type(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.options_cross_trade_message = function(buffer, offset, packet, parent)
  if show.options_cross_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.options_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.options_cross_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.options_cross_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.options_cross_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Trade Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.trade_indicator = 1

-- Display: Trade Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.trade_indicator = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.trade_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.trade_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.trade_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.trade_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.non_auction_options_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.trade_indicator

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_number

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.match_number

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume

  return index
end

-- Display: Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.non_auction_options_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.non_auction_options_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Indicator: 1 Byte Ascii String Enum with 3 values
  index, trade_indicator = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.trade_indicator(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.match_number(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.non_auction_options_trade_message = function(buffer, offset, packet, parent)
  if show.non_auction_options_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.non_auction_options_trade_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.non_auction_options_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.non_auction_options_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.non_auction_options_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Cancelled Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cancelled_reference_number_delta = 4

-- Display: Cancelled Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.cancelled_reference_number_delta = function(value)
  return "Cancelled Reference Number Delta: "..value
end

-- Dissect: Cancelled Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cancelled_reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cancelled_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.cancelled_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Size: Number Of Reference Number Deltas
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.number_of_reference_number_deltas = 2

-- Display: Number Of Reference Number Deltas
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.number_of_reference_number_deltas = function(value)
  return "Number Of Reference Number Deltas: "..value
end

-- Dissect: Number Of Reference Number Deltas
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.number_of_reference_number_deltas = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.number_of_reference_number_deltas
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.number_of_reference_number_deltas(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.number_of_reference_number_deltas, range, value, display)

  return offset + length, value
end

-- Calculate size of: Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.block_delete_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.number_of_reference_number_deltas

  -- Calculate field size from count
  local cancelled_reference_number_delta_count = buffer(offset + index - 2, 2):uint()
  index = index + cancelled_reference_number_delta_count * 4

  return index
end

-- Display: Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.block_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.block_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Number Of Reference Number Deltas: 2 Byte Unsigned Fixed Width Integer
  index, number_of_reference_number_deltas = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.number_of_reference_number_deltas(buffer, index, packet, parent)

  -- Repeating: Cancelled Reference Number Delta
  for cancelled_reference_number_delta_index = 1, number_of_reference_number_deltas do
    index, cancelled_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cancelled_reference_number_delta(buffer, index, packet, parent)

    if cancelled_reference_number_delta ~= nil then
      local iteration = cancelled_reference_number_delta:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta_index, cancelled_reference_number_delta_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.block_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.block_delete_message then
    local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.block_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.block_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.block_delete_message, range, display)
  end

  return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.block_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_reference_number_delta = 4

-- Display: Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.ask_reference_number_delta = function(value)
  return "Ask Reference Number Delta: "..value
end

-- Dissect: Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.ask_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Size: Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_reference_number_delta = 4

-- Display: Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.bid_reference_number_delta = function(value)
  return "Bid Reference Number Delta: "..value
end

-- Dissect: Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.bid_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.quote_delete_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_reference_number_delta

  return index
end

-- Display: Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.quote_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_reference_number_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_delete_message = function(buffer, offset, packet, parent)
  if show.quote_delete_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_delete_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_delete_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.quote_delete_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_delete_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_size = 4

-- Display: Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask = 4

-- Display: Ask
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.ask = function(value)
  return "Ask: "..value
end

-- Dissect: Ask
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.ask(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_size = 4

-- Display: Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid = 4

-- Display: Bid
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.bid = function(value)
  return "Bid: "..value
end

-- Dissect: Bid
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.bid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid, range, value, display)

  return offset + length, value
end

-- Size: Original Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_ask_reference_number_delta = 4

-- Display: Original Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.original_ask_reference_number_delta = function(value)
  return "Original Ask Reference Number Delta: "..value
end

-- Dissect: Original Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_ask_reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_ask_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.original_ask_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_ask_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Size: Original Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_bid_reference_number_delta = 4

-- Display: Original Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.original_bid_reference_number_delta = function(value)
  return "Original Bid Reference Number Delta: "..value
end

-- Dissect: Original Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_bid_reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_bid_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.original_bid_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_bid_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.quote_replace_long_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_bid_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_ask_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_size

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_size

  return index
end

-- Display: Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.quote_replace_long_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_bid_reference_number_delta(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_ask_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index, bid = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_size(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index, ask = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_long_form_message = function(buffer, offset, packet, parent)
  if show.quote_replace_long_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_long_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.quote_replace_long_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_long_form_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Short Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_ask_size = 2

-- Display: Short Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.short_ask_size = function(value)
  return "Short Ask Size: "..value
end

-- Dissect: Short Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.short_ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_price = 2

-- Display: Ask Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
translate.ask_price = function(raw)
  return raw/100
end

-- Dissect: Ask Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.ask_price(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Short Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_bid_size = 2

-- Display: Short Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.short_bid_size = function(value)
  return "Short Bid Size: "..value
end

-- Dissect: Short Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.short_bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_price = 2

-- Display: Bid Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw/100
end

-- Dissect: Bid Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.bid_price(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.quote_replace_short_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_bid_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_ask_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_bid_size

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_ask_size

  return index
end

-- Display: Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.quote_replace_short_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_bid_reference_number_delta(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_ask_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_price(buffer, index, packet, parent)

  -- Short Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, short_bid_size = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_price(buffer, index, packet, parent)

  -- Short Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, short_ask_size = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_short_form_message = function(buffer, offset, packet, parent)
  if show.quote_replace_short_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_replace_short_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_short_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.quote_replace_short_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_short_form_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Change Reason
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.change_reason = 1

-- Display: Change Reason
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.change_reason = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.change_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.change_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.change_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Size: Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reference_number_delta = 4

-- Display: Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.reference_number_delta = function(value)
  return "Reference Number Delta: "..value
end

-- Dissect: Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.change_reason

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume

  return index
end

-- Display: Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.reference_number_delta(buffer, index, packet, parent)

  -- Change Reason: 1 Byte Ascii String Enum with 4 values
  index, change_reason = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.change_reason(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_update_message = function(buffer, offset, packet, parent)
  if show.single_side_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_update_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_delete_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reference_number_delta

  return index
end

-- Display: Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.reference_number_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_delete_message = function(buffer, offset, packet, parent)
  if show.single_side_delete_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_delete_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_delete_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_delete_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Order Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_id = 4

-- Display: Order Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_id = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.order_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: New Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.new_reference_number_delta = 4

-- Display: New Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.new_reference_number_delta = function(value)
  return "New Reference Number Delta: "..value
end

-- Dissect: New Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.new_reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.new_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.new_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.new_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Size: Original Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_reference_number_delta = 4

-- Display: Original Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.original_reference_number_delta = function(value)
  return "Original Reference Number Delta: "..value
end

-- Dissect: Original Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.original_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_replace_long_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.new_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_id

  return index
end

-- Display: Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_replace_long_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.volume(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_long_form_message = function(buffer, offset, packet, parent)
  if show.single_side_replace_long_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_long_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_replace_long_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_long_form_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Short Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_volume = 2

-- Display: Short Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.short_volume = function(value)
  return "Short Volume: "..value
end

-- Dissect: Short Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_volume = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.short_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_volume, range, value, display)

  return offset + length, value
end

-- Size: Short Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_price = 2

-- Display: Short Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.short_price = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
translate.short_price = function(raw)
  return raw/100
end

-- Dissect: Short Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_price = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.short_price(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.short_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_replace_message_short_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.new_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_volume

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_id

  return index
end

-- Display: Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.order_replace_message_short_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Short Price: 2 Byte Signed Fixed Width Integer
  index, short_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_price(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_volume(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_replace_message_short_form = function(buffer, offset, packet, parent)
  if show.order_replace_message_short_form then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_replace_message_short_form_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.order_replace_message_short_form(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_replace_message_short_form_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_replace_message_long_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.new_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume

  return index
end

-- Display: Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_replace_message_long_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_long_form = function(buffer, offset, packet, parent)
  if show.single_side_replace_message_long_form then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_message_long_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_long_form_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_replace_message_long_form(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_long_form_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_replace_message_short_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.original_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.new_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_volume

  return index
end

-- Display: Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_replace_message_short_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Short Price: 2 Byte Signed Fixed Width Integer
  index, short_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_price(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_short_form = function(buffer, offset, packet, parent)
  if show.single_side_replace_message_short_form then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_short_form_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_replace_message_short_form(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_short_form_fields(buffer, offset, packet, element)
  end
end

-- Size: Cancelled Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cancelled_contracts = 4

-- Display: Cancelled Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.cancelled_contracts = function(value)
  return "Cancelled Contracts: "..value
end

-- Dissect: Cancelled Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cancelled_contracts = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cancelled_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.cancelled_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_contracts, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_cancel_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cancelled_contracts

  return index
end

-- Display: Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.reference_number_delta(buffer, index, packet, parent)

  -- Cancelled Contracts: 4 Byte Unsigned Fixed Width Integer
  index, cancelled_contracts = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cancelled_contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_cancel_message = function(buffer, offset, packet, parent)
  if show.single_side_cancel_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_cancel_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_cancel_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_cancel_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_cancel_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Printable
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.printable = 1

-- Display: Printable
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.printable = function(value)
  if value == "N" then
    return "Printable: Nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.printable = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.printable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.printable, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_executed_with_price_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_number

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.match_number

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.printable

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume

  return index
end

-- Display: Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_executed_with_price_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.reference_number_delta(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.printable(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_with_price_message = function(buffer, offset, packet, parent)
  if show.single_side_executed_with_price_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_with_price_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_executed_with_price_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_with_price_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Executed Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.executed_contracts = 4

-- Display: Executed Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.executed_contracts = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.executed_contracts = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.executed_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.executed_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.executed_contracts, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_executed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.executed_contracts

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.cross_number

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.match_number

  return index
end

-- Display: Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.reference_number_delta(buffer, index, packet, parent)

  -- Executed Contracts: 4 Byte Unsigned Fixed Width Integer
  index, executed_contracts = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.executed_contracts(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_message = function(buffer, offset, packet, parent)
  if show.single_side_executed_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.single_side_executed_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.add_quote_message_long_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_size

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_size

  return index
end

-- Display: Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.add_quote_message_long_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index, bid = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_size(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index, ask = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_long_form = function(buffer, offset, packet, parent)
  if show.add_quote_message_long_form then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_quote_message_long_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_long_form_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.add_quote_message_long_form(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_long_form_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.add_quote_message_short_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.bid_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_bid_size

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.ask_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_ask_size

  return index
end

-- Display: Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.add_quote_message_short_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.bid_price(buffer, index, packet, parent)

  -- Short Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, short_bid_size = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.ask_price(buffer, index, packet, parent)

  -- Short Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, short_ask_size = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_short_form = function(buffer, offset, packet, parent)
  if show.add_quote_message_short_form then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_quote_message_short_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_short_form_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.add_quote_message_short_form(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_short_form_fields(buffer, offset, packet, element)
  end
end

-- Size: Market Side
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.market_side = 1

-- Display: Market Side
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.market_side = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.market_side = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.market_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.market_side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.market_side, range, value, display)

  return offset + length, value
end

-- Size: Order Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_reference_number_delta = 4

-- Display: Order Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.order_reference_number_delta = function(value)
  return "Order Reference Number Delta: "..value
end

-- Dissect: Order Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_reference_number_delta = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_reference_number_delta
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.order_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.add_order_message_long_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.market_side

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.volume

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_id

  return index
end

-- Display: Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.add_order_message_long_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, order_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 6 values
  index, market_side = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.market_side(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.volume(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_long_form = function(buffer, offset, packet, parent)
  if show.add_order_message_long_form then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_order_message_long_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_long_form_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.add_order_message_long_form(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_long_form_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.add_order_message_short_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_reference_number_delta

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.market_side

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.short_volume

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_id

  return index
end

-- Display: Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.add_order_message_short_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, order_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 6 values
  index, market_side = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.market_side(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Short Price: 2 Byte Signed Fixed Width Integer
  index, short_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_price(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.short_volume(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_short_form = function(buffer, offset, packet, parent)
  if show.add_order_message_short_form then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_order_message_short_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_short_form_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.add_order_message_short_form(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_short_form_fields(buffer, offset, packet, element)
  end
end

-- Size: Open State
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.open_state = 1

-- Display: Open State
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.open_state = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.security_open_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.open_state

  return index
end

-- Display: Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.security_open_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.security_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.security_open_message = function(buffer, offset, packet, parent)
  if show.security_open_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.security_open_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.security_open_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.security_open_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.security_open_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Current Trading State
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.current_trading_state = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.current_trading_state

  return index
end

-- Display: Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index, current_trading_state = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.trading_action_message = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.trading_action_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.trading_action_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.trading_action_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Mpv
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.mpv = 1

-- Display: Mpv
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.mpv = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.mpv
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.mpv(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Tradable
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.tradable = 1

-- Display: Tradable
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.tradable = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.tradable = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.tradable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.tradable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.tradable, range, value, display)

  return offset + length, value
end

-- Size: Options Closing Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.options_closing_type = 1

-- Display: Options Closing Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.options_closing_type = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.options_closing_type = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.options_closing_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.options_closing_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.options_closing_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.underlying_symbol = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.source = 1

-- Display: Source
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.source = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Option Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_type = 1

-- Display: Option Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.option_type = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_type = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Explicit Strike Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.explicit_strike_price = 4

-- Display: Explicit Strike Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.explicit_strike_price = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
translate.explicit_strike_price = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.explicit_strike_price = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.explicit_strike_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.explicit_strike_price(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.explicit_strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_date = 1

-- Display: Expiration Date
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_month = 1

-- Display: Expiration Month
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_year = 1

-- Display: Expiration Year
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.security_symbol = 6

-- Display: Security Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.security_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_id

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.security_symbol

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_year

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_month

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.expiration_date

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.explicit_strike_price

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_type

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.source

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.underlying_symbol

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.options_closing_type

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.tradable

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.mpv

  return index
end

-- Display: Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.option_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Date: 1 Byte Unsigned Fixed Width Integer
  index, expiration_date = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.expiration_date(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.explicit_strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Options Closing Type: 1 Byte Ascii String Enum with 3 values
  index, options_closing_type = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.options_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.tradable(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index, mpv = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_directory_message = function(buffer, offset, packet, parent)
  if show.option_directory_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_directory_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.option_directory_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_directory_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Base Reference Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.base_reference_number = 8

-- Display: Base Reference Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.base_reference_number = function(value)
  return "Base Reference Number: "..value
end

-- Dissect: Base Reference Number
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.base_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.base_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.base_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.base_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.base_reference_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.base_reference_number

  return index
end

-- Display: Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.base_reference_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.base_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Base Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, base_reference_number = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.base_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.base_reference_message = function(buffer, offset, packet, parent)
  if show.base_reference_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.base_reference_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.base_reference_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.base_reference_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.base_reference_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Event Code
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.event_code = 1

-- Display: Event Code
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.event_code = function(value)
  return "Event Code: "..value
end

-- Dissect: Event Code
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.timestamp

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String
  index, event_code = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.system_event_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.system_event_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.system_event_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Second
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.second = 4

-- Display: Second
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.second = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.second
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.second(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.second, range, value, display)

  return offset + length, value
end

-- Calculate size of: Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.seconds_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.second

  return index
end

-- Display: Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.seconds_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.seconds_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index, second = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.seconds_message = function(buffer, offset, packet, parent)
  if show.seconds_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.seconds_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.seconds_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.seconds_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.payload = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.seconds_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.system_event_message(buffer, offset)
  end
  -- Size of Base Reference Message
  if message_type == "L" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.base_reference_message(buffer, offset)
  end
  -- Size of Option Directory Message
  if message_type == "R" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.option_directory_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.trading_action_message(buffer, offset)
  end
  -- Size of Security Open Message
  if message_type == "O" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.security_open_message(buffer, offset)
  end
  -- Size of Add Order Message Short Form
  if message_type == "a" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.add_order_message_short_form(buffer, offset)
  end
  -- Size of Add Order Message Long Form
  if message_type == "A" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.add_order_message_long_form(buffer, offset)
  end
  -- Size of Add Quote Message Short Form
  if message_type == "j" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.add_quote_message_short_form(buffer, offset)
  end
  -- Size of Add Quote Message Long Form
  if message_type == "J" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.add_quote_message_long_form(buffer, offset)
  end
  -- Size of Single Side Executed Message
  if message_type == "E" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_executed_message(buffer, offset)
  end
  -- Size of Single Side Executed With Price Message
  if message_type == "C" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_executed_with_price_message(buffer, offset)
  end
  -- Size of Single Side Cancel Message
  if message_type == "X" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_cancel_message(buffer, offset)
  end
  -- Size of Single Side Replace Message Short Form
  if message_type == "u" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_replace_message_short_form(buffer, offset)
  end
  -- Size of Single Side Replace Message Long Form
  if message_type == "U" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_replace_message_long_form(buffer, offset)
  end
  -- Size of Order Replace Message Short Form
  if message_type == "v" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.order_replace_message_short_form(buffer, offset)
  end
  -- Size of Single Side Replace Long Form Message
  if message_type == "V" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_replace_long_form_message(buffer, offset)
  end
  -- Size of Single Side Delete Message
  if message_type == "D" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_delete_message(buffer, offset)
  end
  -- Size of Single Side Update Message
  if message_type == "G" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.single_side_update_message(buffer, offset)
  end
  -- Size of Quote Replace Short Form Message
  if message_type == "k" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.quote_replace_short_form_message(buffer, offset)
  end
  -- Size of Quote Replace Long Form Message
  if message_type == "K" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.quote_replace_long_form_message(buffer, offset)
  end
  -- Size of Quote Delete Message
  if message_type == "Y" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.quote_delete_message(buffer, offset)
  end
  -- Size of Block Delete Message
  if message_type == "Z" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.block_delete_message(buffer, offset)
  end
  -- Size of Non Auction Options Trade Message
  if message_type == "P" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.non_auction_options_trade_message(buffer, offset)
  end
  -- Size of Options Cross Trade Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.options_cross_trade_message(buffer, offset)
  end
  -- Size of Broken Trade Order Execution Message
  if message_type == "B" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.broken_trade_order_execution_message(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == "I" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.auction_notification_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.seconds_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Base Reference Message
  if message_type == "L" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.base_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Directory Message
  if message_type == "R" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.option_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if message_type == "O" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.security_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Form
  if message_type == "a" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form
  if message_type == "A" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_order_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form
  if message_type == "j" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form
  if message_type == "J" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.add_quote_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if message_type == "E" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if message_type == "C" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Cancel Message
  if message_type == "X" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Short Form
  if message_type == "u" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Long Form
  if message_type == "U" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message Short Form
  if message_type == "v" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.order_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Long Form Message
  if message_type == "V" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_replace_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if message_type == "D" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if message_type == "G" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.single_side_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Short Form Message
  if message_type == "k" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Long Form Message
  if message_type == "K" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_replace_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if message_type == "Y" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.quote_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Block Delete Message
  if message_type == "Z" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.block_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Non Auction Options Trade Message
  if message_type == "P" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.non_auction_options_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.options_cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Order Execution Message
  if message_type == "B" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.broken_trade_order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == "I" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.auction_notification_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.payload, range, display)

  return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.message_type = 1

-- Display: Message Type
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.message_type = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.length = 2

-- Display: Length
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.length

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 27 values
  index, message_type = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 27 branches
  index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message, buffer(offset, 0))
    local current = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_fields(buffer, offset, packet, element, size_of_message)
    element:set_len(size_of_message)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.message(buffer, packet, element)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Size: Count
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.count = 2

-- Display: Count
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.sequence = 8

-- Display: Sequence
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.session = 10

-- Display: Session
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.session
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

  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.session

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.sequence

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Length
    local length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.message(buffer, index, packet, parent, size_of_message)

    if message ~= nil then
      local iteration = message:add(nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_index, message_index)
      iteration:set_generated()
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_phlxoptions_marketdepth_itch_v1_5.init()
end

-- Dissector for Nasdaq PhlxOptions MarketDepth Itch 1.5
function nasdaq_phlxoptions_marketdepth_itch_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_phlxoptions_marketdepth_itch_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_phlxoptions_marketdepth_itch_v1_5, buffer(), nasdaq_phlxoptions_marketdepth_itch_v1_5.description, "("..buffer:len().." Bytes)")
  return nasdaq_phlxoptions_marketdepth_itch_v1_5_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_phlxoptions_marketdepth_itch_v1_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_phlxoptions_marketdepth_itch_v1_5_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions MarketDepth Itch 1.5
local function nasdaq_phlxoptions_marketdepth_itch_v1_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_phlxoptions_marketdepth_itch_v1_5_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_phlxoptions_marketdepth_itch_v1_5
  nasdaq_phlxoptions_marketdepth_itch_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PhlxOptions MarketDepth Itch 1.5
nasdaq_phlxoptions_marketdepth_itch_v1_5:register_heuristic("udp", nasdaq_phlxoptions_marketdepth_itch_v1_5_heuristic)

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
