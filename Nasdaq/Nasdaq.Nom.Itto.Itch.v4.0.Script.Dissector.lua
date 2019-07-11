-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Nom Itto Itch 4.0 Protocol
local nasdaq_nom_itto_itch_v4_0 = Proto("Nasdaq.Nom.Itto.Itch.v4.0.Lua", "Nasdaq Nom Itto Itch 4.0")

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

-- Nasdaq Nom Itto Itch 4.0 Fields
nasdaq_nom_itto_itch_v4_0.fields.add_order_message_long_form_message = ProtoField.new("Add Order Message Long Form Message", "nasdaq.nom.itto.itch.v4.0.addordermessagelongformmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.add_order_message_short_message_form = ProtoField.new("Add Order Message Short Message Form", "nasdaq.nom.itto.itch.v4.0.addordermessageshortmessageform", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.add_quote_message_long_form_message = ProtoField.new("Add Quote Message Long Form Message", "nasdaq.nom.itto.itch.v4.0.addquotemessagelongformmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.add_quote_message_short_form_message = ProtoField.new("Add Quote Message Short Form Message", "nasdaq.nom.itto.itch.v4.0.addquotemessageshortformmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.ask = ProtoField.new("Ask", "nasdaq.nom.itto.itch.v4.0.ask", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.nom.itto.itch.v4.0.askprice", ftypes.UINT16)
nasdaq_nom_itto_itch_v4_0.fields.ask_reference_number = ProtoField.new("Ask Reference Number", "nasdaq.nom.itto.itch.v4.0.askreferencenumber", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.nom.itto.itch.v4.0.asksize", ftypes.UINT16)
nasdaq_nom_itto_itch_v4_0.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.nom.itto.itch.v4.0.auctionid", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.nom.itto.itch.v4.0.auctiontype", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.bid = ProtoField.new("Bid", "nasdaq.nom.itto.itch.v4.0.bid", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.nom.itto.itch.v4.0.bidprice", ftypes.UINT16)
nasdaq_nom_itto_itch_v4_0.fields.bid_reference_number = ProtoField.new("Bid Reference Number", "nasdaq.nom.itto.itch.v4.0.bidreferencenumber", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.nom.itto.itch.v4.0.bidsize", ftypes.UINT16)
nasdaq_nom_itto_itch_v4_0.fields.broken_trade_order_executed_message = ProtoField.new("Broken Trade Order Executed Message", "nasdaq.nom.itto.itch.v4.0.brokentradeorderexecutedmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nom.itto.itch.v4.0.buysellindicator", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.nom.itto.itch.v4.0.cancelledcontracts", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.nom.itto.itch.v4.0.changereason", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.count = ProtoField.new("Count", "nasdaq.nom.itto.itch.v4.0.count", ftypes.UINT16)
nasdaq_nom_itto_itch_v4_0.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.nom.itto.itch.v4.0.crossnumber", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nom.itto.itch.v4.0.crosstype", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nom.itto.itch.v4.0.currenttradingstate", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.nom.itto.itch.v4.0.customerfirmindicator", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nom.itto.itch.v4.0.eventcode", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.nom.itto.itch.v4.0.executedcontracts", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.nom.itto.itch.v4.0.expirationdate", ftypes.UINT8)
nasdaq_nom_itto_itch_v4_0.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.nom.itto.itch.v4.0.expirationmonth", ftypes.UINT8)
nasdaq_nom_itto_itch_v4_0.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.nom.itto.itch.v4.0.expirationyear", ftypes.UINT8)
nasdaq_nom_itto_itch_v4_0.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.nom.itto.itch.v4.0.explicitstrikeprice", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nom.itto.itch.v4.0.imbalancedirection", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.nom.itto.itch.v4.0.imbalanceprice", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.nom.itto.itch.v4.0.imbalancevolume", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.length = ProtoField.new("Length", "nasdaq.nom.itto.itch.v4.0.length", ftypes.UINT16)
nasdaq_nom_itto_itch_v4_0.fields.market_side = ProtoField.new("Market Side", "nasdaq.nom.itto.itch.v4.0.marketside", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.nom.itto.itch.v4.0.matchnumber", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.message = ProtoField.new("Message", "nasdaq.nom.itto.itch.v4.0.message", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nom.itto.itch.v4.0.messageheader", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nom.itto.itch.v4.0.messagetype", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.mpv = ProtoField.new("Mpv", "nasdaq.nom.itto.itch.v4.0.mpv", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.new_reference_number = ProtoField.new("New Reference Number", "nasdaq.nom.itto.itch.v4.0.newreferencenumber", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.nom.itto.itch.v4.0.noiimessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.open_state = ProtoField.new("Open State", "nasdaq.nom.itto.itch.v4.0.openstate", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.option_id = ProtoField.new("Option Id", "nasdaq.nom.itto.itch.v4.0.optionid", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.nom.itto.itch.v4.0.optiontype", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.nom.itto.itch.v4.0.optionsclosingtype", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.nom.itto.itch.v4.0.optionscrosstrademessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.nom.itto.itch.v4.0.optionsdirectorymessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.options_trade_messages_non_auction = ProtoField.new("Options Trade Messages Non Auction", "nasdaq.nom.itto.itch.v4.0.optionstrademessagesnonauction", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nom.itto.itch.v4.0.ordercancelmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nom.itto.itch.v4.0.orderreferencenumber", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.original_ask_reference_number = ProtoField.new("Original Ask Reference Number", "nasdaq.nom.itto.itch.v4.0.originalaskreferencenumber", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.original_bid_reference_number = ProtoField.new("Original Bid Reference Number", "nasdaq.nom.itto.itch.v4.0.originalbidreferencenumber", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.original_reference_number = ProtoField.new("Original Reference Number", "nasdaq.nom.itto.itch.v4.0.originalreferencenumber", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.packet = ProtoField.new("Packet", "nasdaq.nom.itto.itch.v4.0.packet", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nom.itto.itch.v4.0.packetheader", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.nom.itto.itch.v4.0.pairedcontracts", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.payload = ProtoField.new("Payload", "nasdaq.nom.itto.itch.v4.0.payload", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.price = ProtoField.new("Price", "nasdaq.nom.itto.itch.v4.0.price", ftypes.UINT16)
nasdaq_nom_itto_itch_v4_0.fields.printable = ProtoField.new("Printable", "nasdaq.nom.itto.itch.v4.0.printable", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.nom.itto.itch.v4.0.quotedeletemessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.quote_replace_message_long_form = ProtoField.new("Quote Replace Message Long Form", "nasdaq.nom.itto.itch.v4.0.quotereplacemessagelongform", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.quote_replace_message_short_form = ProtoField.new("Quote Replace Message Short Form", "nasdaq.nom.itto.itch.v4.0.quotereplacemessageshortform", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.reference_number = ProtoField.new("Reference Number", "nasdaq.nom.itto.itch.v4.0.referencenumber", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.reserved = ProtoField.new("Reserved", "nasdaq.nom.itto.itch.v4.0.reserved", ftypes.UINT32)
nasdaq_nom_itto_itch_v4_0.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.nom.itto.itch.v4.0.securityopenmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.nom.itto.itch.v4.0.securitysymbol", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.nom.itto.itch.v4.0.sequence", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.session = ProtoField.new("Session", "nasdaq.nom.itto.itch.v4.0.session", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.single_side_change_message = ProtoField.new("Single Side Change Message", "nasdaq.nom.itto.itch.v4.0.singlesidechangemessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.nom.itto.itch.v4.0.singlesidedeletemessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.nom.itto.itch.v4.0.singlesideexecutedmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.nom.itto.itch.v4.0.singlesideexecutedwithpricemessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "nasdaq.nom.itto.itch.v4.0.singlesidereplacemessagelongform", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "nasdaq.nom.itto.itch.v4.0.singlesidereplacemessageshortform", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.source = ProtoField.new("Source", "nasdaq.nom.itto.itch.v4.0.source", ftypes.UINT8)
nasdaq_nom_itto_itch_v4_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nom.itto.itch.v4.0.systemeventmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nom.itto.itch.v4.0.timestamp", ftypes.UINT64)
nasdaq_nom_itto_itch_v4_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nom.itto.itch.v4.0.trackingnumber", ftypes.UINT16)
nasdaq_nom_itto_itch_v4_0.fields.tradable = ProtoField.new("Tradable", "nasdaq.nom.itto.itch.v4.0.tradable", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.nom.itto.itch.v4.0.tradingactionmessage", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.nom.itto.itch.v4.0.underlyingsymbol", ftypes.STRING)
nasdaq_nom_itto_itch_v4_0.fields.volume = ProtoField.new("Volume", "nasdaq.nom.itto.itch.v4.0.volume", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Nom Itto Itch 4.0 Element Dissection Options
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

-- Register Nasdaq Nom Itto Itch 4.0 Show Options
nasdaq_nom_itto_itch_v4_0.prefs.show_add_order_message_long_form_message = Pref.bool("Show Add Order Message Long Form Message", show.add_order_message_long_form_message, "Parse and add Add Order Message Long Form Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_add_order_message_short_message_form = Pref.bool("Show Add Order Message Short Message Form", show.add_order_message_short_message_form, "Parse and add Add Order Message Short Message Form to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message = Pref.bool("Show Add Quote Message Long Form Message", show.add_quote_message_long_form_message, "Parse and add Add Quote Message Long Form Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message = Pref.bool("Show Add Quote Message Short Form Message", show.add_quote_message_short_form_message, "Parse and add Add Quote Message Short Form Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message = Pref.bool("Show Broken Trade Order Executed Message", show.broken_trade_order_executed_message, "Parse and add Broken Trade Order Executed Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_noii_message = Pref.bool("Show Noii Message", show.noii_message, "Parse and add Noii Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_options_cross_trade_message = Pref.bool("Show Options Cross Trade Message", show.options_cross_trade_message, "Parse and add Options Cross Trade Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_options_directory_message = Pref.bool("Show Options Directory Message", show.options_directory_message, "Parse and add Options Directory Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction = Pref.bool("Show Options Trade Messages Non Auction", show.options_trade_messages_non_auction, "Parse and add Options Trade Messages Non Auction to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_quote_delete_message = Pref.bool("Show Quote Delete Message", show.quote_delete_message, "Parse and add Quote Delete Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_quote_replace_message_long_form = Pref.bool("Show Quote Replace Message Long Form", show.quote_replace_message_long_form, "Parse and add Quote Replace Message Long Form to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_quote_replace_message_short_form = Pref.bool("Show Quote Replace Message Short Form", show.quote_replace_message_short_form, "Parse and add Quote Replace Message Short Form to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_security_open_message = Pref.bool("Show Security Open Message", show.security_open_message, "Parse and add Security Open Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_change_message = Pref.bool("Show Single Side Change Message", show.single_side_change_message, "Parse and add Single Side Change Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_delete_message = Pref.bool("Show Single Side Delete Message", show.single_side_delete_message, "Parse and add Single Side Delete Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_executed_message = Pref.bool("Show Single Side Executed Message", show.single_side_executed_message, "Parse and add Single Side Executed Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message = Pref.bool("Show Single Side Executed With Price Message", show.single_side_executed_with_price_message, "Parse and add Single Side Executed With Price Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form = Pref.bool("Show Single Side Replace Message Long Form", show.single_side_replace_message_long_form, "Parse and add Single Side Replace Message Long Form to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form = Pref.bool("Show Single Side Replace Message Short Form", show.single_side_replace_message_short_form, "Parse and add Single Side Replace Message Short Form to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_nom_itto_itch_v4_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_nom_itto_itch_v4_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message_long_form_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_add_order_message_long_form_message then
    show.add_order_message_long_form_message = nasdaq_nom_itto_itch_v4_0.prefs.show_add_order_message_long_form_message
    changed = true
  end
  if show.add_order_message_short_message_form ~= nasdaq_nom_itto_itch_v4_0.prefs.show_add_order_message_short_message_form then
    show.add_order_message_short_message_form = nasdaq_nom_itto_itch_v4_0.prefs.show_add_order_message_short_message_form
    changed = true
  end
  if show.add_quote_message_long_form_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message then
    show.add_quote_message_long_form_message = nasdaq_nom_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message
    changed = true
  end
  if show.add_quote_message_short_form_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message then
    show.add_quote_message_short_form_message = nasdaq_nom_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message
    changed = true
  end
  if show.broken_trade_order_executed_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message then
    show.broken_trade_order_executed_message = nasdaq_nom_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message
    changed = true
  end
  if show.message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_message then
    show.message = nasdaq_nom_itto_itch_v4_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_nom_itto_itch_v4_0.prefs.show_message_header then
    show.message_header = nasdaq_nom_itto_itch_v4_0.prefs.show_message_header
    changed = true
  end
  if show.noii_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_noii_message then
    show.noii_message = nasdaq_nom_itto_itch_v4_0.prefs.show_noii_message
    changed = true
  end
  if show.options_cross_trade_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_options_cross_trade_message then
    show.options_cross_trade_message = nasdaq_nom_itto_itch_v4_0.prefs.show_options_cross_trade_message
    changed = true
  end
  if show.options_directory_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_options_directory_message then
    show.options_directory_message = nasdaq_nom_itto_itch_v4_0.prefs.show_options_directory_message
    changed = true
  end
  if show.options_trade_messages_non_auction ~= nasdaq_nom_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction then
    show.options_trade_messages_non_auction = nasdaq_nom_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction
    changed = true
  end
  if show.order_cancel_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_order_cancel_message then
    show.order_cancel_message = nasdaq_nom_itto_itch_v4_0.prefs.show_order_cancel_message
    changed = true
  end
  if show.packet ~= nasdaq_nom_itto_itch_v4_0.prefs.show_packet then
    show.packet = nasdaq_nom_itto_itch_v4_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_nom_itto_itch_v4_0.prefs.show_packet_header then
    show.packet_header = nasdaq_nom_itto_itch_v4_0.prefs.show_packet_header
    changed = true
  end
  if show.quote_delete_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_quote_delete_message then
    show.quote_delete_message = nasdaq_nom_itto_itch_v4_0.prefs.show_quote_delete_message
    changed = true
  end
  if show.quote_replace_message_long_form ~= nasdaq_nom_itto_itch_v4_0.prefs.show_quote_replace_message_long_form then
    show.quote_replace_message_long_form = nasdaq_nom_itto_itch_v4_0.prefs.show_quote_replace_message_long_form
    changed = true
  end
  if show.quote_replace_message_short_form ~= nasdaq_nom_itto_itch_v4_0.prefs.show_quote_replace_message_short_form then
    show.quote_replace_message_short_form = nasdaq_nom_itto_itch_v4_0.prefs.show_quote_replace_message_short_form
    changed = true
  end
  if show.security_open_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_security_open_message then
    show.security_open_message = nasdaq_nom_itto_itch_v4_0.prefs.show_security_open_message
    changed = true
  end
  if show.single_side_change_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_change_message then
    show.single_side_change_message = nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_change_message
    changed = true
  end
  if show.single_side_delete_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_delete_message then
    show.single_side_delete_message = nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_delete_message
    changed = true
  end
  if show.single_side_executed_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_executed_message then
    show.single_side_executed_message = nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_executed_message
    changed = true
  end
  if show.single_side_executed_with_price_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message then
    show.single_side_executed_with_price_message = nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message
    changed = true
  end
  if show.single_side_replace_message_long_form ~= nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form then
    show.single_side_replace_message_long_form = nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form
    changed = true
  end
  if show.single_side_replace_message_short_form ~= nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form then
    show.single_side_replace_message_short_form = nasdaq_nom_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form
    changed = true
  end
  if show.system_event_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_nom_itto_itch_v4_0.prefs.show_system_event_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_nom_itto_itch_v4_0.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_nom_itto_itch_v4_0.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_nom_itto_itch_v4_0.prefs.show_payload then
    show.payload = nasdaq_nom_itto_itch_v4_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Nom Itto Itch 4.0
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.reserved, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.customer_firm_indicator, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.imbalance_volume, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.imbalance_price, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.option_id, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.imbalance_direction, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.paired_contracts, range, value, display)

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
  if value == "P" then
    return "Auction Type: Price Improvement (P)"
  end
  if value == "I" then
    return "Auction Type: Exposure (I)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
dissect.auction_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_type)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.auction_type, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.auction_id, range, value, display)

  return offset + size_of.auction_id
end

-- Size: Timestamp
size_of.timestamp = 6

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:uint64()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Size: Tracking Number
size_of.tracking_number = 2

-- Display: Tracking Number
display.tracking_number = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
dissect.tracking_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.tracking_number)
  local value = range:uint()
  local display = display.tracking_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.tracking_number, range, value, display)

  return offset + size_of.tracking_number
end

-- Display: Noii Message
display.noii_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Noii Message
dissect.noii_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
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

-- Dissect: Noii Message
dissect.noii_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.noii_message then
    local range = buffer(offset, 34)
    local display = display.noii_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.noii_message, range, display)
  end

  return dissect.noii_message_fields(buffer, offset, packet, parent)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.match_number, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.cross_number, range, value, display)

  return offset + size_of.cross_number
end

-- Display: Broken Trade Order Executed Message
display.broken_trade_order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Order Executed Message
dissect.broken_trade_order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Executed Message
dissect.broken_trade_order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_order_executed_message then
    local range = buffer(offset, 16)
    local display = display.broken_trade_order_executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.broken_trade_order_executed_message, range, display)
  end

  return dissect.broken_trade_order_executed_message_fields(buffer, offset, packet, parent)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.volume, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: Nasdaq Opening Reopening (O)"
  end
  if value == "P" then
    return "Cross Type: Price Improvement (P)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cross_type)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.cross_type, range, value, display)

  return offset + size_of.cross_type
end

-- Display: Options Cross Trade Message
display.options_cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
dissect.options_cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
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
    local range = buffer(offset, 25)
    local display = display.options_cross_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.options_cross_trade_message, range, display)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.buy_sell_indicator, range, value, display)

  return offset + size_of.buy_sell_indicator
end

-- Display: Options Trade Messages Non Auction
display.options_trade_messages_non_auction = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Trade Messages Non Auction
dissect.options_trade_messages_non_auction_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
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

-- Dissect: Options Trade Messages Non Auction
dissect.options_trade_messages_non_auction = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_trade_messages_non_auction then
    local range = buffer(offset, 25)
    local display = display.options_trade_messages_non_auction(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.options_trade_messages_non_auction, range, display)
  end

  return dissect.options_trade_messages_non_auction_fields(buffer, offset, packet, parent)
end

-- Size: Ask Reference Number
size_of.ask_reference_number = 8

-- Display: Ask Reference Number
display.ask_reference_number = function(value)
  return "Ask Reference Number: "..value
end

-- Dissect: Ask Reference Number
dissect.ask_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_reference_number)
  local value = range:uint64()
  local display = display.ask_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.ask_reference_number, range, value, display)

  return offset + size_of.ask_reference_number
end

-- Size: Bid Reference Number
size_of.bid_reference_number = 8

-- Display: Bid Reference Number
display.bid_reference_number = function(value)
  return "Bid Reference Number: "..value
end

-- Dissect: Bid Reference Number
dissect.bid_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_reference_number)
  local value = range:uint64()
  local display = display.bid_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.bid_reference_number, range, value, display)

  return offset + size_of.bid_reference_number
end

-- Display: Quote Delete Message
display.quote_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Delete Message
dissect.quote_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
dissect.quote_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_delete_message then
    local range = buffer(offset, 24)
    local display = display.quote_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.quote_delete_message, range, display)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.ask_size, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.ask_price, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.bid_size, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.bid_price, range, value, display)

  return offset + size_of.bid_price
end

-- Size: Original Ask Reference Number
size_of.original_ask_reference_number = 8

-- Display: Original Ask Reference Number
display.original_ask_reference_number = function(value)
  return "Original Ask Reference Number: "..value
end

-- Dissect: Original Ask Reference Number
dissect.original_ask_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_ask_reference_number)
  local value = range:uint64()
  local display = display.original_ask_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.original_ask_reference_number, range, value, display)

  return offset + size_of.original_ask_reference_number
end

-- Size: Original Bid Reference Number
size_of.original_bid_reference_number = 8

-- Display: Original Bid Reference Number
display.original_bid_reference_number = function(value)
  return "Original Bid Reference Number: "..value
end

-- Dissect: Original Bid Reference Number
dissect.original_bid_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_bid_reference_number)
  local value = range:uint64()
  local display = display.original_bid_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.original_bid_reference_number, range, value, display)

  return offset + size_of.original_bid_reference_number
end

-- Display: Quote Replace Message Long Form
display.quote_replace_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Replace Message Long Form
dissect.quote_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.original_bid_reference_number(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number(buffer, index, packet, parent)

  -- Original Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.original_ask_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number(buffer, index, packet, parent)

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
    local range = buffer(offset, 48)
    local display = display.quote_replace_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.quote_replace_message_long_form, range, display)
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

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.original_bid_reference_number(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number(buffer, index, packet, parent)

  -- Original Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.original_ask_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number(buffer, index, packet, parent)

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
    local range = buffer(offset, 48)
    local display = display.quote_replace_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.quote_replace_message_short_form, range, display)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.change_reason, range, value, display)

  return offset + size_of.change_reason
end

-- Size: Reference Number
size_of.reference_number = 8

-- Display: Reference Number
display.reference_number = function(value)
  return "Reference Number: "..value
end

-- Dissect: Reference Number
dissect.reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_number)
  local value = range:uint64()
  local display = display.reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.reference_number, range, value, display)

  return offset + size_of.reference_number
end

-- Display: Single Side Change Message
display.single_side_change_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Change Message
dissect.single_side_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number(buffer, index, packet, parent)

  -- Change Reason: 1 Byte Ascii String Enum with 3 values
  index = dissect.change_reason(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Change Message
dissect.single_side_change_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_change_message then
    local range = buffer(offset, 21)
    local display = display.single_side_change_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.single_side_change_message, range, display)
  end

  return dissect.single_side_change_message_fields(buffer, offset, packet, parent)
end

-- Display: Single Side Delete Message
display.single_side_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Delete Message
dissect.single_side_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
dissect.single_side_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_delete_message then
    local range = buffer(offset, 16)
    local display = display.single_side_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.single_side_delete_message, range, display)
  end

  return dissect.single_side_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: New Reference Number
size_of.new_reference_number = 8

-- Display: New Reference Number
display.new_reference_number = function(value)
  return "New Reference Number: "..value
end

-- Dissect: New Reference Number
dissect.new_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.new_reference_number)
  local value = range:uint64()
  local display = display.new_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.new_reference_number, range, value, display)

  return offset + size_of.new_reference_number
end

-- Size: Original Reference Number
size_of.original_reference_number = 8

-- Display: Original Reference Number
display.original_reference_number = function(value)
  return "Original Reference Number: "..value
end

-- Dissect: Original Reference Number
dissect.original_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_reference_number)
  local value = range:uint64()
  local display = display.original_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.original_reference_number, range, value, display)

  return offset + size_of.original_reference_number
end

-- Display: Single Side Replace Message Long Form
display.single_side_replace_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
dissect.single_side_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.original_reference_number(buffer, index, packet, parent)

  -- New Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.new_reference_number(buffer, index, packet, parent)

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
    local range = buffer(offset, 28)
    local display = display.single_side_replace_message_long_form(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.single_side_replace_message_long_form, range, display)
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

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.original_reference_number(buffer, index, packet, parent)

  -- New Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.new_reference_number(buffer, index, packet, parent)

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
    local range = buffer(offset, 28)
    local display = display.single_side_replace_message_short_form(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.single_side_replace_message_short_form, range, display)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.cancelled_contracts, range, value, display)

  return offset + size_of.cancelled_contracts
end

-- Size: Order Reference Number
size_of.order_reference_number = 8

-- Display: Order Reference Number
display.order_reference_number = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
dissect.order_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_reference_number)
  local value = range:uint64()
  local display = display.order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.order_reference_number, range, value, display)

  return offset + size_of.order_reference_number
end

-- Display: Order Cancel Message
display.order_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Message
dissect.order_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

  -- Cancelled Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cancelled_contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
dissect.order_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_message then
    local range = buffer(offset, 20)
    local display = display.order_cancel_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.order_cancel_message, range, display)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.printable, range, value, display)

  return offset + size_of.printable
end

-- Display: Single Side Executed With Price Message
display.single_side_executed_with_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
dissect.single_side_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number(buffer, index, packet, parent)

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

-- Dissect: Single Side Executed With Price Message
dissect.single_side_executed_with_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_executed_with_price_message then
    local range = buffer(offset, 29)
    local display = display.single_side_executed_with_price_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.single_side_executed_with_price_message, range, display)
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
  local range = buffer(offset, size_of.executed_contracts)
  local value = range:uint()
  local display = display.executed_contracts(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.executed_contracts, range, value, display)

  return offset + size_of.executed_contracts
end

-- Display: Single Side Executed Message
display.single_side_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Executed Message
dissect.single_side_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number(buffer, index, packet, parent)

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
    local range = buffer(offset, 28)
    local display = display.single_side_executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.single_side_executed_message, range, display)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.ask, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.bid, range, value, display)

  return offset + size_of.bid
end

-- Display: Add Quote Message Long Form Message
display.add_quote_message_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form Message
dissect.add_quote_message_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number(buffer, index, packet, parent)

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

-- Dissect: Add Quote Message Long Form Message
dissect.add_quote_message_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_quote_message_long_form_message then
    local range = buffer(offset, 40)
    local display = display.add_quote_message_long_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.add_quote_message_long_form_message, range, display)
  end

  return dissect.add_quote_message_long_form_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Quote Message Short Form Message
display.add_quote_message_short_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form Message
dissect.add_quote_message_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number(buffer, index, packet, parent)

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

-- Dissect: Add Quote Message Short Form Message
dissect.add_quote_message_short_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_quote_message_short_form_message then
    local range = buffer(offset, 36)
    local display = display.add_quote_message_short_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.add_quote_message_short_form_message, range, display)
  end

  return dissect.add_quote_message_short_form_message_fields(buffer, offset, packet, parent)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.market_side, range, value, display)

  return offset + size_of.market_side
end

-- Display: Add Order Message Long Form Message
display.add_order_message_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message Long Form Message
dissect.add_order_message_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

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

-- Dissect: Add Order Message Long Form Message
dissect.add_order_message_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message_long_form_message then
    local range = buffer(offset, 25)
    local display = display.add_order_message_long_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.add_order_message_long_form_message, range, display)
  end

  return dissect.add_order_message_long_form_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Order Message Short Message Form
display.add_order_message_short_message_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message Short Message Form
dissect.add_order_message_short_message_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

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

-- Dissect: Add Order Message Short Message Form
dissect.add_order_message_short_message_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message_short_message_form then
    local range = buffer(offset, 25)
    local display = display.add_order_message_short_message_form(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.add_order_message_short_message_form, range, display)
  end

  return dissect.add_order_message_short_message_form_fields(buffer, offset, packet, parent)
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
  local range = buffer(offset, size_of.open_state)
  local value = range:string()
  local display = display.open_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.open_state, range, value, display)

  return offset + size_of.open_state
end

-- Display: Security Open Message
display.security_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Open Message
dissect.security_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index = dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
dissect.security_open_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_open_message then
    local range = buffer(offset, 13)
    local display = display.security_open_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.security_open_message, range, display)
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
    return "Current Trading State: Buy Side Trading Suspended (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Trading Suspended (S)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
dissect.current_trading_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_trading_state)
  local value = range:string()
  local display = display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.current_trading_state, range, value, display)

  return offset + size_of.current_trading_state
end

-- Display: Trading Action Message
display.trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Action Message
dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index = dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
dissect.trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_action_message then
    local range = buffer(offset, 13)
    local display = display.trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.trading_action_message, range, display)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.mpv, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.tradable, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.options_closing_type, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.underlying_symbol, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.source, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.option_type, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.explicit_strike_price, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.expiration_date, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.expiration_month, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.expiration_year, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.security_symbol, range, value, display)

  return offset + size_of.security_symbol
end

-- Display: Options Directory Message
display.options_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Directory Message
dissect.options_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
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

-- Dissect: Options Directory Message
dissect.options_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_directory_message then
    local range = buffer(offset, 43)
    local display = display.options_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.options_directory_message, range, display)
  end

  return dissect.options_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
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
dissect.event_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_code)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.event_code, range, value, display)

  return offset + size_of.event_code
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 7 values
  index = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local range = buffer(offset, 9)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, messagetype)
  -- Size of System Event Message
  if messagetype == "S" then
    return 9
  end
  -- Size of Options Directory Message
  if messagetype == "R" then
    return 43
  end
  -- Size of Trading Action Message
  if messagetype == "H" then
    return 13
  end
  -- Size of Security Open Message
  if messagetype == "O" then
    return 13
  end
  -- Size of Add Order Message Short Message Form
  if messagetype == "a" then
    return 25
  end
  -- Size of Add Order Message Long Form Message
  if messagetype == "A" then
    return 25
  end
  -- Size of Add Quote Message Short Form Message
  if messagetype == "j" then
    return 36
  end
  -- Size of Add Quote Message Long Form Message
  if messagetype == "J" then
    return 40
  end
  -- Size of Single Side Executed Message
  if messagetype == "E" then
    return 28
  end
  -- Size of Single Side Executed With Price Message
  if messagetype == "C" then
    return 29
  end
  -- Size of Order Cancel Message
  if messagetype == "X" then
    return 20
  end
  -- Size of Single Side Replace Message Short Form
  if messagetype == "u" then
    return 28
  end
  -- Size of Single Side Replace Message Long Form
  if messagetype == "U" then
    return 28
  end
  -- Size of Single Side Delete Message
  if messagetype == "D" then
    return 16
  end
  -- Size of Single Side Change Message
  if messagetype == "G" then
    return 21
  end
  -- Size of Quote Replace Message Short Form
  if messagetype == "k" then
    return 48
  end
  -- Size of Quote Replace Message Long Form
  if messagetype == "K" then
    return 48
  end
  -- Size of Quote Delete Message
  if messagetype == "Y" then
    return 24
  end
  -- Size of Options Trade Messages Non Auction
  if messagetype == "P" then
    return 25
  end
  -- Size of Options Cross Trade Message
  if messagetype == "Q" then
    return 25
  end
  -- Size of Broken Trade Order Executed Message
  if messagetype == "B" then
    return 16
  end
  -- Size of Noii Message
  if messagetype == "I" then
    return 34
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, messagetype)
  -- Dissect System Event Message
  if messagetype == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if messagetype == "R" then
    return dissect.options_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if messagetype == "H" then
    return dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if messagetype == "O" then
    return dissect.security_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Message Form
  if messagetype == "a" then
    return dissect.add_order_message_short_message_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form Message
  if messagetype == "A" then
    return dissect.add_order_message_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form Message
  if messagetype == "j" then
    return dissect.add_quote_message_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form Message
  if messagetype == "J" then
    return dissect.add_quote_message_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if messagetype == "E" then
    return dissect.single_side_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if messagetype == "C" then
    return dissect.single_side_executed_with_price_message(buffer, offset, packet, parent)
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
  -- Dissect Single Side Change Message
  if messagetype == "G" then
    return dissect.single_side_change_message(buffer, offset, packet, parent)
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
  -- Dissect Options Trade Messages Non Auction
  if messagetype == "P" then
    return dissect.options_trade_messages_non_auction(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if messagetype == "Q" then
    return dissect.options_cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Order Executed Message
  if messagetype == "B" then
    return dissect.broken_trade_order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if messagetype == "I" then
    return dissect.noii_message(buffer, offset, packet, parent)
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
  local element = parent:add(nasdaq_nom_itto_itch_v4_0.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_type)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.message_type, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.length, range, value, display)

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

  -- Message Type: 1 Byte Ascii String Enum with 22 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 22 branches
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
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.message, range, display)
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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.count, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.sequence, range, value, display)

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

  parent:add(nasdaq_nom_itto_itch_v4_0.fields.session, range, value, display)

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
    parent = parent:add(nasdaq_nom_itto_itch_v4_0.fields.packet_header, range, display)
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
function nasdaq_nom_itto_itch_v4_0.init()
end

-- Dissector for Nasdaq Nom Itto Itch 4.0
function nasdaq_nom_itto_itch_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_nom_itto_itch_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_nom_itto_itch_v4_0, buffer(), nasdaq_nom_itto_itch_v4_0.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_nom_itto_itch_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_nom_itto_itch_v4_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Nom Itto Itch 4.0
local function nasdaq_nom_itto_itch_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_nom_itto_itch_v4_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_nom_itto_itch_v4_0
  nasdaq_nom_itto_itch_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Nasdaq Nom Itto Itch 4.0 Heuristic
nasdaq_nom_itto_itch_v4_0:register_heuristic("udp", nasdaq_nom_itto_itch_v4_0_heuristic)

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
