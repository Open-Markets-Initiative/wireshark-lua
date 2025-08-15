-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0 Protocol
local nasdaq_nomoptions_itto_itch_v4_0 = Proto("Nasdaq.NomOptions.Itto.Itch.v4.0.Lua", "Nasdaq NomOptions Itto Itch 4.0")

-- Component Tables
local show = {}
local format = {}
local nasdaq_nomoptions_itto_itch_v4_0_display = {}
local nasdaq_nomoptions_itto_itch_v4_0_dissect = {}
local nasdaq_nomoptions_itto_itch_v4_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0 Fields
nasdaq_nomoptions_itto_itch_v4_0.fields.ask = ProtoField.new("Ask", "nasdaq.nomoptions.itto.itch.v4.0.ask", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.nomoptions.itto.itch.v4.0.askprice", ftypes.DOUBLE)
nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.nomoptions.itto.itch.v4.0.askpricelong", ftypes.DOUBLE)
nasdaq_nomoptions_itto_itch_v4_0.fields.ask_reference_number = ProtoField.new("Ask Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.askreferencenumber", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.nomoptions.itto.itch.v4.0.asksize", ftypes.UINT16)
nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.nomoptions.itto.itch.v4.0.asksizelong", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.nomoptions.itto.itch.v4.0.auctionid", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.nomoptions.itto.itch.v4.0.auctiontype", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.bid = ProtoField.new("Bid", "nasdaq.nomoptions.itto.itch.v4.0.bid", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.nomoptions.itto.itch.v4.0.bidprice", ftypes.DOUBLE)
nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.nomoptions.itto.itch.v4.0.bidpricelong", ftypes.DOUBLE)
nasdaq_nomoptions_itto_itch_v4_0.fields.bid_reference_number = ProtoField.new("Bid Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.bidreferencenumber", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.nomoptions.itto.itch.v4.0.bidsize", ftypes.UINT16)
nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.nomoptions.itto.itch.v4.0.bidsizelong", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nomoptions.itto.itch.v4.0.buysellindicator", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.nomoptions.itto.itch.v4.0.cancelledcontracts", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.nomoptions.itto.itch.v4.0.changereason", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.count = ProtoField.new("Count", "nasdaq.nomoptions.itto.itch.v4.0.count", ftypes.UINT16)
nasdaq_nomoptions_itto_itch_v4_0.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.nomoptions.itto.itch.v4.0.crossnumber", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nomoptions.itto.itch.v4.0.crosstype", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nomoptions.itto.itch.v4.0.currenttradingstate", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.nomoptions.itto.itch.v4.0.customerfirmindicator", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nomoptions.itto.itch.v4.0.eventcode", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.nomoptions.itto.itch.v4.0.executedcontracts", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.nomoptions.itto.itch.v4.0.expirationdate", ftypes.UINT8)
nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.nomoptions.itto.itch.v4.0.expirationmonth", ftypes.UINT8)
nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.nomoptions.itto.itch.v4.0.expirationyear", ftypes.UINT8)
nasdaq_nomoptions_itto_itch_v4_0.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.nomoptions.itto.itch.v4.0.explicitstrikeprice", ftypes.DOUBLE)
nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nomoptions.itto.itch.v4.0.imbalancedirection", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.nomoptions.itto.itch.v4.0.imbalanceprice", ftypes.DOUBLE)
nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.nomoptions.itto.itch.v4.0.imbalancevolume", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.length = ProtoField.new("Length", "nasdaq.nomoptions.itto.itch.v4.0.length", ftypes.UINT16)
nasdaq_nomoptions_itto_itch_v4_0.fields.market_side = ProtoField.new("Market Side", "nasdaq.nomoptions.itto.itch.v4.0.marketside", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.nomoptions.itto.itch.v4.0.matchnumber", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.message = ProtoField.new("Message", "nasdaq.nomoptions.itto.itch.v4.0.message", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nomoptions.itto.itch.v4.0.messageheader", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nomoptions.itto.itch.v4.0.messagetype", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.mpv = ProtoField.new("Mpv", "nasdaq.nomoptions.itto.itch.v4.0.mpv", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.new_reference_number = ProtoField.new("New Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.newreferencenumber", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.open_state = ProtoField.new("Open State", "nasdaq.nomoptions.itto.itch.v4.0.openstate", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.option_id = ProtoField.new("Option Id", "nasdaq.nomoptions.itto.itch.v4.0.optionid", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.nomoptions.itto.itch.v4.0.optiontype", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.nomoptions.itto.itch.v4.0.optionsclosingtype", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.orderreferencenumber", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.original_ask_reference_number = ProtoField.new("Original Ask Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.originalaskreferencenumber", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.original_bid_reference_number = ProtoField.new("Original Bid Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.originalbidreferencenumber", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.original_reference_number = ProtoField.new("Original Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.originalreferencenumber", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.packet = ProtoField.new("Packet", "nasdaq.nomoptions.itto.itch.v4.0.packet", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nomoptions.itto.itch.v4.0.packetheader", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.nomoptions.itto.itch.v4.0.pairedcontracts", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.payload = ProtoField.new("Payload", "nasdaq.nomoptions.itto.itch.v4.0.payload", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.price = ProtoField.new("Price", "nasdaq.nomoptions.itto.itch.v4.0.price", ftypes.DOUBLE)
nasdaq_nomoptions_itto_itch_v4_0.fields.price_long = ProtoField.new("Price Long", "nasdaq.nomoptions.itto.itch.v4.0.pricelong", ftypes.DOUBLE)
nasdaq_nomoptions_itto_itch_v4_0.fields.printable = ProtoField.new("Printable", "nasdaq.nomoptions.itto.itch.v4.0.printable", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.reference_number = ProtoField.new("Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.referencenumber", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.reserved = ProtoField.new("Reserved", "nasdaq.nomoptions.itto.itch.v4.0.reserved", ftypes.UINT32)
nasdaq_nomoptions_itto_itch_v4_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.nomoptions.itto.itch.v4.0.securitysymbol", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.nomoptions.itto.itch.v4.0.sequence", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.session = ProtoField.new("Session", "nasdaq.nomoptions.itto.itch.v4.0.session", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.source = ProtoField.new("Source", "nasdaq.nomoptions.itto.itch.v4.0.source", ftypes.UINT8)
nasdaq_nomoptions_itto_itch_v4_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nomoptions.itto.itch.v4.0.timestamp", ftypes.UINT64)
nasdaq_nomoptions_itto_itch_v4_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nomoptions.itto.itch.v4.0.trackingnumber", ftypes.UINT16)
nasdaq_nomoptions_itto_itch_v4_0.fields.tradable = ProtoField.new("Tradable", "nasdaq.nomoptions.itto.itch.v4.0.tradable", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.nomoptions.itto.itch.v4.0.underlyingsymbol", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.volume = ProtoField.new("Volume", "nasdaq.nomoptions.itto.itch.v4.0.volume", ftypes.UINT16)
nasdaq_nomoptions_itto_itch_v4_0.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.nomoptions.itto.itch.v4.0.volumelong", ftypes.UINT32)

-- Nasdaq NomOptions Itto Itch 4.0 messages
nasdaq_nomoptions_itto_itch_v4_0.fields.add_order_message_long_form_message = ProtoField.new("Add Order Message Long Form Message", "nasdaq.nomoptions.itto.itch.v4.0.addordermessagelongformmessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.add_order_message_short_message_form = ProtoField.new("Add Order Message Short Message Form", "nasdaq.nomoptions.itto.itch.v4.0.addordermessageshortmessageform", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.add_quote_message_long_form_message = ProtoField.new("Add Quote Message Long Form Message", "nasdaq.nomoptions.itto.itch.v4.0.addquotemessagelongformmessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.add_quote_message_short_form_message = ProtoField.new("Add Quote Message Short Form Message", "nasdaq.nomoptions.itto.itch.v4.0.addquotemessageshortformmessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.broken_trade_order_executed_message = ProtoField.new("Broken Trade Order Executed Message", "nasdaq.nomoptions.itto.itch.v4.0.brokentradeorderexecutedmessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.nomoptions.itto.itch.v4.0.noiimessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.nomoptions.itto.itch.v4.0.optionscrosstrademessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.nomoptions.itto.itch.v4.0.optionsdirectorymessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.options_trade_messages_non_auction = ProtoField.new("Options Trade Messages Non Auction", "nasdaq.nomoptions.itto.itch.v4.0.optionstrademessagesnonauction", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nomoptions.itto.itch.v4.0.ordercancelmessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.nomoptions.itto.itch.v4.0.quotedeletemessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.quote_replace_message_long_form = ProtoField.new("Quote Replace Message Long Form", "nasdaq.nomoptions.itto.itch.v4.0.quotereplacemessagelongform", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.quote_replace_message_short_form = ProtoField.new("Quote Replace Message Short Form", "nasdaq.nomoptions.itto.itch.v4.0.quotereplacemessageshortform", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.nomoptions.itto.itch.v4.0.securityopenmessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_change_message = ProtoField.new("Single Side Change Message", "nasdaq.nomoptions.itto.itch.v4.0.singlesidechangemessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.nomoptions.itto.itch.v4.0.singlesidedeletemessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.nomoptions.itto.itch.v4.0.singlesideexecutedmessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.nomoptions.itto.itch.v4.0.singlesideexecutedwithpricemessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "nasdaq.nomoptions.itto.itch.v4.0.singlesidereplacemessagelongform", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "nasdaq.nomoptions.itto.itch.v4.0.singlesidereplacemessageshortform", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nomoptions.itto.itch.v4.0.systemeventmessage", ftypes.STRING)
nasdaq_nomoptions_itto_itch_v4_0.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.nomoptions.itto.itch.v4.0.tradingactionmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0 Element Dissection Options
show.add_order_message_long_form_message = true
show.add_order_message_short_message_form = true
show.add_quote_message_long_form_message = true
show.add_quote_message_short_form_message = true
show.broken_trade_order_executed_message = true
show.message = true
show.message_header = true
show.noii_message = true
show.options_cross_trade_message = true
show.options_directory_message = true
show.options_trade_messages_non_auction = true
show.order_cancel_message = true
show.packet = true
show.packet_header = true
show.quote_delete_message = true
show.quote_replace_message_long_form = true
show.quote_replace_message_short_form = true
show.security_open_message = true
show.single_side_change_message = true
show.single_side_delete_message = true
show.single_side_executed_message = true
show.single_side_executed_with_price_message = true
show.single_side_replace_message_long_form = true
show.single_side_replace_message_short_form = true
show.system_event_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq NomOptions Itto Itch 4.0 Show Options
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_long_form_message = Pref.bool("Show Add Order Message Long Form Message", show.add_order_message_long_form_message, "Parse and add Add Order Message Long Form Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_short_message_form = Pref.bool("Show Add Order Message Short Message Form", show.add_order_message_short_message_form, "Parse and add Add Order Message Short Message Form to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message = Pref.bool("Show Add Quote Message Long Form Message", show.add_quote_message_long_form_message, "Parse and add Add Quote Message Long Form Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message = Pref.bool("Show Add Quote Message Short Form Message", show.add_quote_message_short_form_message, "Parse and add Add Quote Message Short Form Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message = Pref.bool("Show Broken Trade Order Executed Message", show.broken_trade_order_executed_message, "Parse and add Broken Trade Order Executed Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_noii_message = Pref.bool("Show Noii Message", show.noii_message, "Parse and add Noii Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_cross_trade_message = Pref.bool("Show Options Cross Trade Message", show.options_cross_trade_message, "Parse and add Options Cross Trade Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_directory_message = Pref.bool("Show Options Directory Message", show.options_directory_message, "Parse and add Options Directory Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction = Pref.bool("Show Options Trade Messages Non Auction", show.options_trade_messages_non_auction, "Parse and add Options Trade Messages Non Auction to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_delete_message = Pref.bool("Show Quote Delete Message", show.quote_delete_message, "Parse and add Quote Delete Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_long_form = Pref.bool("Show Quote Replace Message Long Form", show.quote_replace_message_long_form, "Parse and add Quote Replace Message Long Form to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_short_form = Pref.bool("Show Quote Replace Message Short Form", show.quote_replace_message_short_form, "Parse and add Quote Replace Message Short Form to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_security_open_message = Pref.bool("Show Security Open Message", show.security_open_message, "Parse and add Security Open Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_change_message = Pref.bool("Show Single Side Change Message", show.single_side_change_message, "Parse and add Single Side Change Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_delete_message = Pref.bool("Show Single Side Delete Message", show.single_side_delete_message, "Parse and add Single Side Delete Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_message = Pref.bool("Show Single Side Executed Message", show.single_side_executed_message, "Parse and add Single Side Executed Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message = Pref.bool("Show Single Side Executed With Price Message", show.single_side_executed_with_price_message, "Parse and add Single Side Executed With Price Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form = Pref.bool("Show Single Side Replace Message Long Form", show.single_side_replace_message_long_form, "Parse and add Single Side Replace Message Long Form to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form = Pref.bool("Show Single Side Replace Message Short Form", show.single_side_replace_message_short_form, "Parse and add Single Side Replace Message Short Form to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_nomoptions_itto_itch_v4_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_nomoptions_itto_itch_v4_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message_long_form_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_long_form_message then
    show.add_order_message_long_form_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_long_form_message
    changed = true
  end
  if show.add_order_message_short_message_form ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_short_message_form then
    show.add_order_message_short_message_form = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_short_message_form
    changed = true
  end
  if show.add_quote_message_long_form_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message then
    show.add_quote_message_long_form_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message
    changed = true
  end
  if show.add_quote_message_short_form_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message then
    show.add_quote_message_short_form_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message
    changed = true
  end
  if show.broken_trade_order_executed_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message then
    show.broken_trade_order_executed_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message
    changed = true
  end
  if show.message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message then
    show.message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header then
    show.message_header = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header
    changed = true
  end
  if show.noii_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_noii_message then
    show.noii_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_noii_message
    changed = true
  end
  if show.options_cross_trade_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_cross_trade_message then
    show.options_cross_trade_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_cross_trade_message
    changed = true
  end
  if show.options_directory_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_directory_message then
    show.options_directory_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_directory_message
    changed = true
  end
  if show.options_trade_messages_non_auction ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction then
    show.options_trade_messages_non_auction = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction
    changed = true
  end
  if show.order_cancel_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_order_cancel_message then
    show.order_cancel_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_order_cancel_message
    changed = true
  end
  if show.packet ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet then
    show.packet = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet_header then
    show.packet_header = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet_header
    changed = true
  end
  if show.quote_delete_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_delete_message then
    show.quote_delete_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_delete_message
    changed = true
  end
  if show.quote_replace_message_long_form ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_long_form then
    show.quote_replace_message_long_form = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_long_form
    changed = true
  end
  if show.quote_replace_message_short_form ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_short_form then
    show.quote_replace_message_short_form = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_short_form
    changed = true
  end
  if show.security_open_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_security_open_message then
    show.security_open_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_security_open_message
    changed = true
  end
  if show.single_side_change_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_change_message then
    show.single_side_change_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_change_message
    changed = true
  end
  if show.single_side_delete_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_delete_message then
    show.single_side_delete_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_delete_message
    changed = true
  end
  if show.single_side_executed_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_message then
    show.single_side_executed_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_message
    changed = true
  end
  if show.single_side_executed_with_price_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message then
    show.single_side_executed_with_price_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message
    changed = true
  end
  if show.single_side_replace_message_long_form ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form then
    show.single_side_replace_message_long_form = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form
    changed = true
  end
  if show.single_side_replace_message_short_form ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form then
    show.single_side_replace_message_short_form = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form
    changed = true
  end
  if show.system_event_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_system_event_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_nomoptions_itto_itch_v4_0.prefs.show_payload then
    show.payload = nasdaq_nomoptions_itto_itch_v4_0.prefs.show_payload
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
-- Dissect Nasdaq NomOptions Itto Itch 4.0
-----------------------------------------------------------------------

-- Size: Reserved
nasdaq_nomoptions_itto_itch_v4_0_size_of.reserved = 3

-- Display: Reserved
nasdaq_nomoptions_itto_itch_v4_0_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_nomoptions_itto_itch_v4_0_dissect.reserved = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.reserved(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0_size_of.customer_firm_indicator = 1

-- Display: Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0_display.customer_firm_indicator = function(value)
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
nasdaq_nomoptions_itto_itch_v4_0_dissect.customer_firm_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.customer_firm_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.customer_firm_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.customer_firm_indicator, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_volume = 4

-- Display: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0_display.imbalance_volume = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0_dissect.imbalance_volume = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_price = 4

-- Display: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0_display.imbalance_price = function(value)
  return "Imbalance Price: "..value
end

-- Translate: Imbalance Price
translate.imbalance_price = function(raw)
  return raw/10000
end

-- Dissect: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0_dissect.imbalance_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.imbalance_price(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.imbalance_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Size: Option Id
nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id = 4

-- Display: Option Id
nasdaq_nomoptions_itto_itch_v4_0_display.option_id = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.option_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.option_id, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_direction = 1

-- Display: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0_display.imbalance_direction = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0_dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Size: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0_size_of.paired_contracts = 4

-- Display: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0_display.paired_contracts = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0_dissect.paired_contracts = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.paired_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.paired_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.paired_contracts, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
nasdaq_nomoptions_itto_itch_v4_0_size_of.auction_type = 1

-- Display: Auction Type
nasdaq_nomoptions_itto_itch_v4_0_display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "P" then
    return "Auction Type: Price Improvement (P)"
  end
  if value == "I" then
    return "Auction Type: Exposure (I)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_nomoptions_itto_itch_v4_0_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
nasdaq_nomoptions_itto_itch_v4_0_size_of.auction_id = 4

-- Display: Auction Id
nasdaq_nomoptions_itto_itch_v4_0_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_nomoptions_itto_itch_v4_0_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_nomoptions_itto_itch_v4_0_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number = 2

-- Display: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0_display.tracking_number = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.tracking_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Noii Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.noii_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.auction_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.auction_type

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.paired_contracts

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_direction

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_price

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.imbalance_volume

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.customer_firm_indicator

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.reserved

  return index
end

-- Display: Noii Message
nasdaq_nomoptions_itto_itch_v4_0_display.noii_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Noii Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.noii_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = nasdaq_nomoptions_itto_itch_v4_0_dissect.auction_type(buffer, index, packet, parent)

  -- Paired Contracts: 4 Byte Unsigned Fixed Width Integer
  index, paired_contracts = nasdaq_nomoptions_itto_itch_v4_0_dissect.paired_contracts(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 2 values
  index, imbalance_direction = nasdaq_nomoptions_itto_itch_v4_0_dissect.imbalance_direction(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Imbalance Price: 4 Byte Signed Fixed Width Integer
  index, imbalance_price = nasdaq_nomoptions_itto_itch_v4_0_dissect.imbalance_price(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = nasdaq_nomoptions_itto_itch_v4_0_dissect.imbalance_volume(buffer, index, packet, parent)

  -- Customer Firm Indicator: 1 Byte Ascii String Enum with 5 values
  index, customer_firm_indicator = nasdaq_nomoptions_itto_itch_v4_0_dissect.customer_firm_indicator(buffer, index, packet, parent)

  -- Reserved: 3 Byte Unsigned Fixed Width Integer
  index, reserved = nasdaq_nomoptions_itto_itch_v4_0_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.noii_message = function(buffer, offset, packet, parent)
  if show.noii_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.noii_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.noii_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.noii_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.noii_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Match Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.match_number = 4

-- Display: Match Number
nasdaq_nomoptions_itto_itch_v4_0_display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.match_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Size: Cross Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_number = 4

-- Display: Cross Number
nasdaq_nomoptions_itto_itch_v4_0_display.cross_number = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.cross_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.cross_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.broken_trade_order_executed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.match_number

  return index
end

-- Display: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_display.broken_trade_order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.broken_trade_order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.broken_trade_order_executed_message = function(buffer, offset, packet, parent)
  if show.broken_trade_order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.broken_trade_order_executed_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.broken_trade_order_executed_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.broken_trade_order_executed_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.broken_trade_order_executed_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Volume Long
nasdaq_nomoptions_itto_itch_v4_0_size_of.volume_long = 4

-- Display: Volume Long
nasdaq_nomoptions_itto_itch_v4_0_display.volume_long = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_nomoptions_itto_itch_v4_0_dissect.volume_long = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.volume_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.volume_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Size: Price Long
nasdaq_nomoptions_itto_itch_v4_0_size_of.price_long = 4

-- Display: Price Long
nasdaq_nomoptions_itto_itch_v4_0_display.price_long = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
translate.price_long = function(raw)
  return raw/10000
end

-- Dissect: Price Long
nasdaq_nomoptions_itto_itch_v4_0_dissect.price_long = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.price_long
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price_long(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.price_long, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_type = 1

-- Display: Cross Type
nasdaq_nomoptions_itto_itch_v4_0_display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: Nasdaq Opening Reopening (O)"
  end
  if value == "P" then
    return "Cross Type: Price Improvement (P)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nomoptions_itto_itch_v4_0_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.options_cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.match_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_type

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.price_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.volume_long

  return index
end

-- Display: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_display.options_cross_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.options_cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 2 values
  index, cross_type = nasdaq_nomoptions_itto_itch_v4_0_dissect.cross_type(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.price_long(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.volume_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.options_cross_trade_message = function(buffer, offset, packet, parent)
  if show.options_cross_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.options_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.options_cross_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.options_cross_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.options_cross_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0_size_of.buy_sell_indicator = 1

-- Display: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0_display.buy_sell_indicator = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0_dissect.buy_sell_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.buy_sell_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.buy_sell_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_size_of.options_trade_messages_non_auction = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.buy_sell_indicator

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.match_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.price_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.volume_long

  return index
end

-- Display: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_display.options_trade_messages_non_auction = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_dissect.options_trade_messages_non_auction_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_nomoptions_itto_itch_v4_0_dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.match_number(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.price_long(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.volume_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_dissect.options_trade_messages_non_auction = function(buffer, offset, packet, parent)
  if show.options_trade_messages_non_auction then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.options_trade_messages_non_auction, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.options_trade_messages_non_auction_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.options_trade_messages_non_auction(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.options_trade_messages_non_auction_fields(buffer, offset, packet, parent)
  end
end

-- Size: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_reference_number = 8

-- Display: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_display.ask_reference_number = function(value)
  return "Ask Reference Number: "..value
end

-- Dissect: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.ask_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.ask_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_reference_number = 8

-- Display: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_display.bid_reference_number = function(value)
  return "Bid Reference Number: "..value
end

-- Dissect: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.bid_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.bid_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.quote_delete_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_reference_number

  return index
end

-- Display: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_display.quote_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_delete_message = function(buffer, offset, packet, parent)
  if show.quote_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.quote_delete_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_delete_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.quote_delete_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_delete_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_size_long = 4

-- Display: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0_display.ask_size_long = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_size_long = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.ask_size_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_price_long = 4

-- Display: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0_display.ask_price_long = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
translate.ask_price_long = function(raw)
  return raw/10000
end

-- Dissect: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_price_long = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_price_long
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.ask_price_long(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.ask_price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_size_long = 4

-- Display: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0_display.bid_size_long = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_size_long = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.bid_size_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_price_long = 4

-- Display: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0_display.bid_price_long = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
translate.bid_price_long = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_price_long = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_price_long
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.bid_price_long(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.bid_price_long(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Size: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.original_ask_reference_number = 8

-- Display: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_display.original_ask_reference_number = function(value)
  return "Original Ask Reference Number: "..value
end

-- Dissect: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.original_ask_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.original_ask_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.original_ask_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.original_ask_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.original_bid_reference_number = 8

-- Display: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_display.original_bid_reference_number = function(value)
  return "Original Bid Reference Number: "..value
end

-- Dissect: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.original_bid_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.original_bid_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.original_bid_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.original_bid_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_size_of.quote_replace_message_long_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.original_bid_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.original_ask_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_price_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_size_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_price_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_size_long

  return index
end

-- Display: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_display.quote_replace_message_long_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.original_bid_reference_number(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_reference_number(buffer, index, packet, parent)

  -- Original Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.original_ask_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_reference_number(buffer, index, packet, parent)

  -- Bid Price Long: 4 Byte Signed Fixed Width Integer
  index, bid_price_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_price_long(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_size_long(buffer, index, packet, parent)

  -- Ask Price Long: 4 Byte Signed Fixed Width Integer
  index, ask_price_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_price_long(buffer, index, packet, parent)

  -- Ask Size Long: 4 Byte Unsigned Fixed Width Integer
  index, ask_size_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_size_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_long_form = function(buffer, offset, packet, parent)
  if show.quote_replace_message_long_form then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.quote_replace_message_long_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_long_form_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.quote_replace_message_long_form(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_long_form_fields(buffer, offset, packet, parent)
  end
end

-- Size: Ask Size
nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_size = 2

-- Display: Ask Size
nasdaq_nomoptions_itto_itch_v4_0_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_price = 2

-- Display: Ask Price
nasdaq_nomoptions_itto_itch_v4_0_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
translate.ask_price = function(raw)
  return raw/100
end

-- Dissect: Ask Price
nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.ask_price(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_size = 2

-- Display: Bid Size
nasdaq_nomoptions_itto_itch_v4_0_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_price = 2

-- Display: Bid Price
nasdaq_nomoptions_itto_itch_v4_0_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw/100
end

-- Dissect: Bid Price
nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.bid_price(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_size_of.quote_replace_message_short_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.original_bid_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.original_ask_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_price

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_size

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_price

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_size

  return index
end

-- Display: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_display.quote_replace_message_short_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.original_bid_reference_number(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_reference_number(buffer, index, packet, parent)

  -- Original Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.original_ask_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_reference_number(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_short_form = function(buffer, offset, packet, parent)
  if show.quote_replace_message_short_form then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.quote_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_short_form_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.quote_replace_message_short_form(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_short_form_fields(buffer, offset, packet, parent)
  end
end

-- Size: Change Reason
nasdaq_nomoptions_itto_itch_v4_0_size_of.change_reason = 1

-- Display: Change Reason
nasdaq_nomoptions_itto_itch_v4_0_display.change_reason = function(value)
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
nasdaq_nomoptions_itto_itch_v4_0_dissect.change_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.change_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.change_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Size: Reference Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.reference_number = 8

-- Display: Reference Number
nasdaq_nomoptions_itto_itch_v4_0_display.reference_number = function(value)
  return "Reference Number: "..value
end

-- Dissect: Reference Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_change_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.change_reason

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.price_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.volume_long

  return index
end

-- Display: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_display.single_side_change_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.reference_number(buffer, index, packet, parent)

  -- Change Reason: 1 Byte Ascii String Enum with 3 values
  index, change_reason = nasdaq_nomoptions_itto_itch_v4_0_dissect.change_reason(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.price_long(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.volume_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_change_message = function(buffer, offset, packet, parent)
  if show.single_side_change_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_change_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_change_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.single_side_change_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_change_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_delete_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.reference_number

  return index
end

-- Display: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_display.single_side_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_delete_message = function(buffer, offset, packet, parent)
  if show.single_side_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_delete_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.single_side_delete_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_delete_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.new_reference_number = 8

-- Display: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0_display.new_reference_number = function(value)
  return "New Reference Number: "..value
end

-- Dissect: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.new_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.new_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.new_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.new_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.original_reference_number = 8

-- Display: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0_display.original_reference_number = function(value)
  return "Original Reference Number: "..value
end

-- Dissect: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.original_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.original_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.original_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.original_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_replace_message_long_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.original_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.new_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.price_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.volume_long

  return index
end

-- Display: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_display.single_side_replace_message_long_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.original_reference_number(buffer, index, packet, parent)

  -- New Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.new_reference_number(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.price_long(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.volume_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_long_form = function(buffer, offset, packet, parent)
  if show.single_side_replace_message_long_form then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_replace_message_long_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_long_form_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.single_side_replace_message_long_form(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_long_form_fields(buffer, offset, packet, parent)
  end
end

-- Size: Volume
nasdaq_nomoptions_itto_itch_v4_0_size_of.volume = 2

-- Display: Volume
nasdaq_nomoptions_itto_itch_v4_0_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_nomoptions_itto_itch_v4_0_dissect.volume = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.volume(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price
nasdaq_nomoptions_itto_itch_v4_0_size_of.price = 2

-- Display: Price
nasdaq_nomoptions_itto_itch_v4_0_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/100
end

-- Dissect: Price
nasdaq_nomoptions_itto_itch_v4_0_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_replace_message_short_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.original_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.new_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.price

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.volume

  return index
end

-- Display: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_display.single_side_replace_message_short_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.original_reference_number(buffer, index, packet, parent)

  -- New Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.new_reference_number(buffer, index, packet, parent)

  -- Price: 2 Byte Signed Fixed Width Integer
  index, price = nasdaq_nomoptions_itto_itch_v4_0_dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_nomoptions_itto_itch_v4_0_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_short_form = function(buffer, offset, packet, parent)
  if show.single_side_replace_message_short_form then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_short_form_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.single_side_replace_message_short_form(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_short_form_fields(buffer, offset, packet, parent)
  end
end

-- Size: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0_size_of.cancelled_contracts = 4

-- Display: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0_display.cancelled_contracts = function(value)
  return "Cancelled Contracts: "..value
end

-- Dissect: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0_dissect.cancelled_contracts = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.cancelled_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.cancelled_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.cancelled_contracts, range, value, display)

  return offset + length, value
end

-- Size: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0_size_of.order_reference_number = 8

-- Display: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0_display.order_reference_number = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0_dissect.order_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.order_cancel_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.order_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.cancelled_contracts

  return index
end

-- Display: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_display.order_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.order_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.order_reference_number(buffer, index, packet, parent)

  -- Cancelled Contracts: 4 Byte Unsigned Fixed Width Integer
  index, cancelled_contracts = nasdaq_nomoptions_itto_itch_v4_0_dissect.cancelled_contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.order_cancel_message = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.order_cancel_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.order_cancel_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.order_cancel_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Printable
nasdaq_nomoptions_itto_itch_v4_0_size_of.printable = 1

-- Display: Printable
nasdaq_nomoptions_itto_itch_v4_0_display.printable = function(value)
  if value == "N" then
    return "Printable: Nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nomoptions_itto_itch_v4_0_dissect.printable = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.printable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_executed_with_price_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.match_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.printable

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.price_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.volume_long

  return index
end

-- Display: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_display.single_side_executed_with_price_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.reference_number(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_nomoptions_itto_itch_v4_0_dissect.printable(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.price_long(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.volume_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_with_price_message = function(buffer, offset, packet, parent)
  if show.single_side_executed_with_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_with_price_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.single_side_executed_with_price_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_with_price_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0_size_of.executed_contracts = 4

-- Display: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0_display.executed_contracts = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0_dissect.executed_contracts = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.executed_contracts
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.executed_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.executed_contracts, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_executed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.executed_contracts

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.cross_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.match_number

  return index
end

-- Display: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_display.single_side_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.reference_number(buffer, index, packet, parent)

  -- Executed Contracts: 4 Byte Unsigned Fixed Width Integer
  index, executed_contracts = nasdaq_nomoptions_itto_itch_v4_0_dissect.executed_contracts(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_message = function(buffer, offset, packet, parent)
  if show.single_side_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.single_side_executed_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Ask
nasdaq_nomoptions_itto_itch_v4_0_size_of.ask = 4

-- Display: Ask
nasdaq_nomoptions_itto_itch_v4_0_display.ask = function(value)
  return "Ask: "..value
end

-- Dissect: Ask
nasdaq_nomoptions_itto_itch_v4_0_dissect.ask = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.ask
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.ask(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.ask, range, value, display)

  return offset + length, value
end

-- Size: Bid
nasdaq_nomoptions_itto_itch_v4_0_size_of.bid = 4

-- Display: Bid
nasdaq_nomoptions_itto_itch_v4_0_display.bid = function(value)
  return "Bid: "..value
end

-- Dissect: Bid
nasdaq_nomoptions_itto_itch_v4_0_dissect.bid = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.bid
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.bid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.bid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.add_quote_message_long_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_size_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_size_long

  return index
end

-- Display: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_display.add_quote_message_long_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_reference_number(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index, bid = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_size_long(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index, ask = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask(buffer, index, packet, parent)

  -- Ask Size Long: 4 Byte Unsigned Fixed Width Integer
  index, ask_size_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_size_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_long_form_message = function(buffer, offset, packet, parent)
  if show.add_quote_message_long_form_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.add_quote_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_long_form_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.add_quote_message_long_form_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_long_form_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.add_quote_message_short_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_price

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.bid_size

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_price

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.ask_size

  return index
end

-- Display: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_display.add_quote_message_short_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_reference_number(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_nomoptions_itto_itch_v4_0_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_nomoptions_itto_itch_v4_0_dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_short_form_message = function(buffer, offset, packet, parent)
  if show.add_quote_message_short_form_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.add_quote_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_short_form_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.add_quote_message_short_form_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_short_form_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Market Side
nasdaq_nomoptions_itto_itch_v4_0_size_of.market_side = 1

-- Display: Market Side
nasdaq_nomoptions_itto_itch_v4_0_display.market_side = function(value)
  if value == "B" then
    return "Market Side: Buy (B)"
  end
  if value == "S" then
    return "Market Side: Sell (S)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
nasdaq_nomoptions_itto_itch_v4_0_dissect.market_side = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.market_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.market_side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.market_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.add_order_message_long_form_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.order_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.market_side

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.price_long

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.volume_long

  return index
end

-- Display: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_display.add_order_message_long_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.order_reference_number(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 2 values
  index, market_side = nasdaq_nomoptions_itto_itch_v4_0_dissect.market_side(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.price_long(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_dissect.volume_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_long_form_message = function(buffer, offset, packet, parent)
  if show.add_order_message_long_form_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.add_order_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_long_form_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.add_order_message_long_form_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_long_form_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_size_of.add_order_message_short_message_form = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.order_reference_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.market_side

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.price

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.volume

  return index
end

-- Display: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_display.add_order_message_short_message_form = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_short_message_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.order_reference_number(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 2 values
  index, market_side = nasdaq_nomoptions_itto_itch_v4_0_dissect.market_side(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Price: 2 Byte Signed Fixed Width Integer
  index, price = nasdaq_nomoptions_itto_itch_v4_0_dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_nomoptions_itto_itch_v4_0_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_short_message_form = function(buffer, offset, packet, parent)
  if show.add_order_message_short_message_form then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.add_order_message_short_message_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_short_message_form_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.add_order_message_short_message_form(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_short_message_form_fields(buffer, offset, packet, parent)
  end
end

-- Size: Open State
nasdaq_nomoptions_itto_itch_v4_0_size_of.open_state = 1

-- Display: Open State
nasdaq_nomoptions_itto_itch_v4_0_display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_nomoptions_itto_itch_v4_0_dissect.open_state = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.open_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.open_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.security_open_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.open_state

  return index
end

-- Display: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_display.security_open_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.security_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_nomoptions_itto_itch_v4_0_dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.security_open_message = function(buffer, offset, packet, parent)
  if show.security_open_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.security_open_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.security_open_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.security_open_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.security_open_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0_display.current_trading_state = function(value)
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

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.current_trading_state

  return index
end

-- Display: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_display.trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index, current_trading_state = nasdaq_nomoptions_itto_itch_v4_0_dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.trading_action_message = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.trading_action_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.trading_action_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.trading_action_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Mpv
nasdaq_nomoptions_itto_itch_v4_0_size_of.mpv = 1

-- Display: Mpv
nasdaq_nomoptions_itto_itch_v4_0_display.mpv = function(value)
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
nasdaq_nomoptions_itto_itch_v4_0_dissect.mpv = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.mpv
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.mpv(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Tradable
nasdaq_nomoptions_itto_itch_v4_0_size_of.tradable = 1

-- Display: Tradable
nasdaq_nomoptions_itto_itch_v4_0_display.tradable = function(value)
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end
  if value == "Y" then
    return "Tradable: Is Tradable (Y)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_nomoptions_itto_itch_v4_0_dissect.tradable = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.tradable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.tradable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.tradable, range, value, display)

  return offset + length, value
end

-- Size: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0_size_of.options_closing_type = 1

-- Display: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0_display.options_closing_type = function(value)
  if value == "N" then
    return "Options Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Options Closing Type: Late (L)"
  end

  return "Options Closing Type: Unknown("..value..")"
end

-- Dissect: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0_dissect.options_closing_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.options_closing_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.options_closing_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.options_closing_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0_size_of.underlying_symbol = 13

-- Display: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Source
nasdaq_nomoptions_itto_itch_v4_0_size_of.source = 1

-- Display: Source
nasdaq_nomoptions_itto_itch_v4_0_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_nomoptions_itto_itch_v4_0_dissect.source = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.source(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Option Type
nasdaq_nomoptions_itto_itch_v4_0_size_of.option_type = 1

-- Display: Option Type
nasdaq_nomoptions_itto_itch_v4_0_display.option_type = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_nomoptions_itto_itch_v4_0_dissect.option_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.option_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0_size_of.explicit_strike_price = 4

-- Display: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0_display.explicit_strike_price = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
translate.explicit_strike_price = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0_dissect.explicit_strike_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.explicit_strike_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.explicit_strike_price(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.explicit_strike_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_date = 1

-- Display: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0_display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_month = 1

-- Display: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0_display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0_dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_year = 1

-- Display: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0_display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0_dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0_size_of.security_symbol = 6

-- Display: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.security_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.options_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_id

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.security_symbol

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_year

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_month

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.expiration_date

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.explicit_strike_price

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.option_type

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.source

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.underlying_symbol

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.options_closing_type

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tradable

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.mpv

  return index
end

-- Display: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_display.options_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.options_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_nomoptions_itto_itch_v4_0_dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_nomoptions_itto_itch_v4_0_dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_nomoptions_itto_itch_v4_0_dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Date: 1 Byte Unsigned Fixed Width Integer
  index, expiration_date = nasdaq_nomoptions_itto_itch_v4_0_dissect.expiration_date(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_nomoptions_itto_itch_v4_0_dissect.explicit_strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = nasdaq_nomoptions_itto_itch_v4_0_dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_nomoptions_itto_itch_v4_0_dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_nomoptions_itto_itch_v4_0_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Options Closing Type: 1 Byte Ascii String Enum with 2 values
  index, options_closing_type = nasdaq_nomoptions_itto_itch_v4_0_dissect.options_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = nasdaq_nomoptions_itto_itch_v4_0_dissect.tradable(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index, mpv = nasdaq_nomoptions_itto_itch_v4_0_dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.options_directory_message = function(buffer, offset, packet, parent)
  if show.options_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.options_directory_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.options_directory_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.options_directory_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Event Code
nasdaq_nomoptions_itto_itch_v4_0_size_of.event_code = 1

-- Display: Event Code
nasdaq_nomoptions_itto_itch_v4_0_display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages This Is Always The First Message Sent In Any Trading Day (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours This Message Indicates That Nasdaq Is Open And Ready To Start Accepting Orders (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process This Message Is Intended To Indicate That Nasdaq Has Started Its Opening Auction Process (Q)"
  end
  if value == "N" then
    return "Event Code: End Of Normal Hours Processing This Message Is Intended To Indicate That Nasdaq Will No Longer Accept Any New Orders Or Changes To Existing Orders For Options That Trade During Normal Trading Hours (N)"
  end
  if value == "L" then
    return "Event Code: End Of Late Hours Processing This Message Is Intended To Indicate That Nasdaq Will No Longer Accept Any New Orders Or Changes To Existing Orders For Options That Trade During Extended Hours (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours This Message Indicates That Nasdaq Options System Is Now Closed (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages This Is Always The Last Message Sent In Any Trading Day (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nomoptions_itto_itch_v4_0_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_nomoptions_itto_itch_v4_0_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.tracking_number

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.timestamp

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_nomoptions_itto_itch_v4_0_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 7 values
  index, event_code = nasdaq_nomoptions_itto_itch_v4_0_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.system_event_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.system_event_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.system_event_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
nasdaq_nomoptions_itto_itch_v4_0_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.system_event_message(buffer, offset)
  end
  -- Size of Options Directory Message
  if message_type == "R" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.options_directory_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.trading_action_message(buffer, offset)
  end
  -- Size of Security Open Message
  if message_type == "O" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.security_open_message(buffer, offset)
  end
  -- Size of Add Order Message Short Message Form
  if message_type == "a" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.add_order_message_short_message_form(buffer, offset)
  end
  -- Size of Add Order Message Long Form Message
  if message_type == "A" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.add_order_message_long_form_message(buffer, offset)
  end
  -- Size of Add Quote Message Short Form Message
  if message_type == "j" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.add_quote_message_short_form_message(buffer, offset)
  end
  -- Size of Add Quote Message Long Form Message
  if message_type == "J" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.add_quote_message_long_form_message(buffer, offset)
  end
  -- Size of Single Side Executed Message
  if message_type == "E" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_executed_message(buffer, offset)
  end
  -- Size of Single Side Executed With Price Message
  if message_type == "C" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_executed_with_price_message(buffer, offset)
  end
  -- Size of Order Cancel Message
  if message_type == "X" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.order_cancel_message(buffer, offset)
  end
  -- Size of Single Side Replace Message Short Form
  if message_type == "u" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_replace_message_short_form(buffer, offset)
  end
  -- Size of Single Side Replace Message Long Form
  if message_type == "U" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_replace_message_long_form(buffer, offset)
  end
  -- Size of Single Side Delete Message
  if message_type == "D" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_delete_message(buffer, offset)
  end
  -- Size of Single Side Change Message
  if message_type == "G" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.single_side_change_message(buffer, offset)
  end
  -- Size of Quote Replace Message Short Form
  if message_type == "k" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.quote_replace_message_short_form(buffer, offset)
  end
  -- Size of Quote Replace Message Long Form
  if message_type == "K" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.quote_replace_message_long_form(buffer, offset)
  end
  -- Size of Quote Delete Message
  if message_type == "Y" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.quote_delete_message(buffer, offset)
  end
  -- Size of Options Trade Messages Non Auction
  if message_type == "P" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.options_trade_messages_non_auction(buffer, offset)
  end
  -- Size of Options Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.options_cross_trade_message(buffer, offset)
  end
  -- Size of Broken Trade Order Executed Message
  if message_type == "B" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.broken_trade_order_executed_message(buffer, offset)
  end
  -- Size of Noii Message
  if message_type == "I" then
    return nasdaq_nomoptions_itto_itch_v4_0_size_of.noii_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_nomoptions_itto_itch_v4_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nomoptions_itto_itch_v4_0_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "R" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.options_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if message_type == "O" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.security_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Message Form
  if message_type == "a" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_short_message_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form Message
  if message_type == "A" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.add_order_message_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form Message
  if message_type == "j" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form Message
  if message_type == "J" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.add_quote_message_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if message_type == "E" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if message_type == "C" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.order_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Short Form
  if message_type == "u" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Long Form
  if message_type == "U" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_replace_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if message_type == "D" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Change Message
  if message_type == "G" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.single_side_change_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Message Short Form
  if message_type == "k" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Message Long Form
  if message_type == "K" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_replace_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if message_type == "Y" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.quote_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Messages Non Auction
  if message_type == "P" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.options_trade_messages_non_auction(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.options_cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Order Executed Message
  if message_type == "B" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.broken_trade_order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if message_type == "I" then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.noii_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_nomoptions_itto_itch_v4_0_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nomoptions_itto_itch_v4_0_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.payload, range, display)

  return nasdaq_nomoptions_itto_itch_v4_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_nomoptions_itto_itch_v4_0_size_of.message_type = 1

-- Display: Message Type
nasdaq_nomoptions_itto_itch_v4_0_display.message_type = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Options Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Security Open Message (O)"
  end
  if value == "a" then
    return "Message Type: Add Order Message Short Message Form (a)"
  end
  if value == "A" then
    return "Message Type: Add Order Message Long Form Message (A)"
  end
  if value == "j" then
    return "Message Type: Add Quote Message Short Form Message (j)"
  end
  if value == "J" then
    return "Message Type: Add Quote Message Long Form Message (J)"
  end
  if value == "E" then
    return "Message Type: Single Side Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Single Side Executed With Price Message (C)"
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
    return "Message Type: Single Side Change Message (G)"
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
  if value == "P" then
    return "Message Type: Options Trade Messages Non Auction (P)"
  end
  if value == "Q" then
    return "Message Type: Options Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Order Executed Message (B)"
  end
  if value == "I" then
    return "Message Type: Noii Message (I)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nomoptions_itto_itch_v4_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_nomoptions_itto_itch_v4_0_size_of.length = 2

-- Display: Length
nasdaq_nomoptions_itto_itch_v4_0_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_nomoptions_itto_itch_v4_0_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_nomoptions_itto_itch_v4_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.length

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_nomoptions_itto_itch_v4_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nomoptions_itto_itch_v4_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_nomoptions_itto_itch_v4_0_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 22 values
  index, message_type = nasdaq_nomoptions_itto_itch_v4_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nomoptions_itto_itch_v4_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
nasdaq_nomoptions_itto_itch_v4_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nomoptions_itto_itch_v4_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 22 branches
  index = nasdaq_nomoptions_itto_itch_v4_0_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nomoptions_itto_itch_v4_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.message, range, display)
  end

  nasdaq_nomoptions_itto_itch_v4_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Count
nasdaq_nomoptions_itto_itch_v4_0_size_of.count = 2

-- Display: Count
nasdaq_nomoptions_itto_itch_v4_0_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_nomoptions_itto_itch_v4_0_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_nomoptions_itto_itch_v4_0_size_of.sequence = 8

-- Display: Sequence
nasdaq_nomoptions_itto_itch_v4_0_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_nomoptions_itto_itch_v4_0_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_nomoptions_itto_itch_v4_0_size_of.session = 10

-- Display: Session
nasdaq_nomoptions_itto_itch_v4_0_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nomoptions_itto_itch_v4_0_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_size_of.session
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

  local display = nasdaq_nomoptions_itto_itch_v4_0_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_nomoptions_itto_itch_v4_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.session

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.sequence

  index = index + nasdaq_nomoptions_itto_itch_v4_0_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_nomoptions_itto_itch_v4_0_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nomoptions_itto_itch_v4_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nomoptions_itto_itch_v4_0_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_nomoptions_itto_itch_v4_0_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_nomoptions_itto_itch_v4_0_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nomoptions_itto_itch_v4_0_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nomoptions_itto_itch_v4_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
nasdaq_nomoptions_itto_itch_v4_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nomoptions_itto_itch_v4_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Length
    local length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index = nasdaq_nomoptions_itto_itch_v4_0_dissect.message(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_nomoptions_itto_itch_v4_0.init()
end

-- Dissector for Nasdaq NomOptions Itto Itch 4.0
function nasdaq_nomoptions_itto_itch_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_nomoptions_itto_itch_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_nomoptions_itto_itch_v4_0, buffer(), nasdaq_nomoptions_itto_itch_v4_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_nomoptions_itto_itch_v4_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_nomoptions_itto_itch_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_nomoptions_itto_itch_v4_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NomOptions Itto Itch 4.0
local function nasdaq_nomoptions_itto_itch_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_nomoptions_itto_itch_v4_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_nomoptions_itto_itch_v4_0
  nasdaq_nomoptions_itto_itch_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NomOptions Itto Itch 4.0
nasdaq_nomoptions_itto_itch_v4_0:register_heuristic("udp", nasdaq_nomoptions_itto_itch_v4_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 4.0
--   Date: Thursday, February 8, 2018
--   Specification: itto_spec40.pdf
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
