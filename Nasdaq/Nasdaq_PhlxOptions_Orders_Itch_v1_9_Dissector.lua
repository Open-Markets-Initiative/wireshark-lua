-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions Orders Itch 1.9 Protocol
local omi_nasdaq_phlxoptions_orders_itch_v1_9 = Proto("Nasdaq.PhlxOptions.Orders.Itch.v1.9.Lua", "Nasdaq PhlxOptions Orders Itch 1.9")

-- Protocol table
local nasdaq_phlxoptions_orders_itch_v1_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions Orders Itch 1.9 Fields
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.action = ProtoField.new("Action", "nasdaq.phlxoptions.orders.itch.v1.9.action", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.all_or_none = ProtoField.new("All Or None", "nasdaq.phlxoptions.orders.itch.v1.9.allornone", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.phlxoptions.orders.itch.v1.9.auctionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_side = ProtoField.new("Auction Side", "nasdaq.phlxoptions.orders.itch.v1.9.auctionside", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.phlxoptions.orders.itch.v1.9.auctiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_leg = ProtoField.new("Complex Order Leg", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderleg", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_leg = ProtoField.new("Complex Order Strategy Leg", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderstrategyleg", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.count = ProtoField.new("Count", "nasdaq.phlxoptions.orders.itch.v1.9.count", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.orders.itch.v1.9.currenttradingstate", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.phlxoptions.orders.itch.v1.9.customerfirmindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.day = ProtoField.new("Day", "nasdaq.phlxoptions.orders.itch.v1.9.day", ftypes.UINT16, nil, base.DEC, 0x001F)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.debit_or_credit = ProtoField.new("Debit Or Credit", "nasdaq.phlxoptions.orders.itch.v1.9.debitorcredit", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.orders.itch.v1.9.eventcode", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.executable_order_volume = ProtoField.new("Executable Order Volume", "nasdaq.phlxoptions.orders.itch.v1.9.executableordervolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.expiration = ProtoField.new("Expiration", "nasdaq.phlxoptions.orders.itch.v1.9.expiration", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlxoptions.orders.itch.v1.9.explicitstrikeprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.phlxoptions.orders.itch.v1.9.imbalancevolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.leg_open_close_indicator = ProtoField.new("Leg Open Close Indicator", "nasdaq.phlxoptions.orders.itch.v1.9.legopencloseindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.phlxoptions.orders.itch.v1.9.legratio", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.length = ProtoField.new("Length", "nasdaq.phlxoptions.orders.itch.v1.9.length", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.limit_price = ProtoField.new("Limit Price", "nasdaq.phlxoptions.orders.itch.v1.9.limitprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.market_qualifier = ProtoField.new("Market Qualifier", "nasdaq.phlxoptions.orders.itch.v1.9.marketqualifier", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.matched_volume = ProtoField.new("Matched Volume", "nasdaq.phlxoptions.orders.itch.v1.9.matchedvolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message = ProtoField.new("Message", "nasdaq.phlxoptions.orders.itch.v1.9.message", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlxoptions.orders.itch.v1.9.messageheader", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlxoptions.orders.itch.v1.9.messagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.month = ProtoField.new("Month", "nasdaq.phlxoptions.orders.itch.v1.9.month", ftypes.UINT16, nil, base.DEC, 0x01E0)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.phlxoptions.orders.itch.v1.9.nanoseconds", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.phlxoptions.orders.itch.v1.9.numberoflegs", ftypes.UINT8)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "nasdaq.phlxoptions.orders.itch.v1.9.opencloseindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.open_state = ProtoField.new("Open State", "nasdaq.phlxoptions.orders.itch.v1.9.openstate", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.phlxoptions.orders.itch.v1.9.optionclosingtype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlxoptions.orders.itch.v1.9.optionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.orders.itch.v1.9.optiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_id = ProtoField.new("Order Id", "nasdaq.phlxoptions.orders.itch.v1.9.orderid", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_status = ProtoField.new("Order Status", "nasdaq.phlxoptions.orders.itch.v1.9.orderstatus", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_type = ProtoField.new("Order Type", "nasdaq.phlxoptions.orders.itch.v1.9.ordertype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.original_order_volume = ProtoField.new("Original Order Volume", "nasdaq.phlxoptions.orders.itch.v1.9.originalordervolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.packet = ProtoField.new("Packet", "nasdaq.phlxoptions.orders.itch.v1.9.packet", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlxoptions.orders.itch.v1.9.packetheader", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.payload = ProtoField.new("Payload", "nasdaq.phlxoptions.orders.itch.v1.9.payload", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.phlx_tradable = ProtoField.new("Phlx Tradable", "nasdaq.phlxoptions.orders.itch.v1.9.phlxtradable", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.price = ProtoField.new("Price", "nasdaq.phlxoptions.orders.itch.v1.9.price", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.reserved = ProtoField.new("Reserved", "nasdaq.phlxoptions.orders.itch.v1.9.reserved", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.seconds = ProtoField.new("Seconds", "nasdaq.phlxoptions.orders.itch.v1.9.seconds", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.orders.itch.v1.9.securitysymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.sequence = ProtoField.new("Sequence", "nasdaq.phlxoptions.orders.itch.v1.9.sequence", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.session = ProtoField.new("Session", "nasdaq.phlxoptions.orders.itch.v1.9.session", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.side = ProtoField.new("Side", "nasdaq.phlxoptions.orders.itch.v1.9.side", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.source = ProtoField.new("Source", "nasdaq.phlxoptions.orders.itch.v1.9.source", ftypes.UINT8)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.phlxoptions.orders.itch.v1.9.strategyid", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.phlxoptions.orders.itch.v1.9.timeinforce", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.orders.itch.v1.9.underlyingsymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.version = ProtoField.new("Version", "nasdaq.phlxoptions.orders.itch.v1.9.version", ftypes.UINT8)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.volume = ProtoField.new("Volume", "nasdaq.phlxoptions.orders.itch.v1.9.volume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.year = ProtoField.new("Year", "nasdaq.phlxoptions.orders.itch.v1.9.year", ftypes.UINT16, nil, base.DEC, 0xFE00)

-- Nasdaq PhlxOptions Orders Itch 1.9 messages
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.phlxoptions.orders.itch.v1.9.auctionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_auction_notification_message = ProtoField.new("Complex Auction Notification Message", "nasdaq.phlxoptions.orders.itch.v1.9.complexauctionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_message = ProtoField.new("Complex Order Message", "nasdaq.phlxoptions.orders.itch.v1.9.complexordermessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_message = ProtoField.new("Complex Order Strategy Message", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderstrategymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_trading_action_message = ProtoField.new("Complex Trading Action Message", "nasdaq.phlxoptions.orders.itch.v1.9.complextradingactionmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.phlxoptions.orders.itch.v1.9.optionsdirectorymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_open_closed_message = ProtoField.new("Security Open Closed Message", "nasdaq.phlxoptions.orders.itch.v1.9.securityopenclosedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_trading_action_message = ProtoField.new("Security Trading Action Message", "nasdaq.phlxoptions.orders.itch.v1.9.securitytradingactionmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.simple_order_message = ProtoField.new("Simple Order Message", "nasdaq.phlxoptions.orders.itch.v1.9.simpleordermessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.phlxoptions.orders.itch.v1.9.strategyopenclosedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.orders.itch.v1.9.systemeventmessage", ftypes.STRING)

-- Nasdaq PhlxOptions Orders Itch 1.9 generated fields
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_leg_index = ProtoField.new("Complex Order Leg Index", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderlegindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_leg_index = ProtoField.new("Complex Order Strategy Leg Index", "nasdaq.phlxoptions.orders.itch.v1.9.complexorderstrategylegindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_index = ProtoField.new("Message Index", "nasdaq.phlxoptions.orders.itch.v1.9.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PhlxOptions Orders Itch 1.9 Element Dissection Options
show.auction_notification_message = true
show.complex_auction_notification_message = true
show.complex_order_leg = true
show.complex_order_message = true
show.complex_order_strategy_leg = true
show.complex_order_strategy_message = true
show.complex_trading_action_message = true
show.expiration = true
show.message = true
show.message_header = true
show.options_directory_message = true
show.packet = true
show.packet_header = true
show.security_open_closed_message = true
show.security_trading_action_message = true
show.simple_order_message = true
show.strategy_open_closed_message = true
show.system_event_message = true
show.payload = false

-- Register Nasdaq PhlxOptions Orders Itch 1.9 Show Options
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_auction_notification_message = Pref.bool("Show Complex Auction Notification Message", show.complex_auction_notification_message, "Parse and add Complex Auction Notification Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_leg = Pref.bool("Show Complex Order Leg", show.complex_order_leg, "Parse and add Complex Order Leg to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_message = Pref.bool("Show Complex Order Message", show.complex_order_message, "Parse and add Complex Order Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_strategy_leg = Pref.bool("Show Complex Order Strategy Leg", show.complex_order_strategy_leg, "Parse and add Complex Order Strategy Leg to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_strategy_message = Pref.bool("Show Complex Order Strategy Message", show.complex_order_strategy_message, "Parse and add Complex Order Strategy Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_trading_action_message = Pref.bool("Show Complex Trading Action Message", show.complex_trading_action_message, "Parse and add Complex Trading Action Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_expiration = Pref.bool("Show Expiration", show.expiration, "Parse and add Expiration to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_options_directory_message = Pref.bool("Show Options Directory Message", show.options_directory_message, "Parse and add Options Directory Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_security_open_closed_message = Pref.bool("Show Security Open Closed Message", show.security_open_closed_message, "Parse and add Security Open Closed Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_security_trading_action_message = Pref.bool("Show Security Trading Action Message", show.security_trading_action_message, "Parse and add Security Trading Action Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_simple_order_message = Pref.bool("Show Simple Order Message", show.simple_order_message, "Parse and add Simple Order Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_strategy_open_closed_message = Pref.bool("Show Strategy Open Closed Message", show.strategy_open_closed_message, "Parse and add Strategy Open Closed Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_notification_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_auction_notification_message then
    show.auction_notification_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_auction_notification_message
    changed = true
  end
  if show.complex_auction_notification_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_auction_notification_message then
    show.complex_auction_notification_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_auction_notification_message
    changed = true
  end
  if show.complex_order_leg ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_leg then
    show.complex_order_leg = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_leg
    changed = true
  end
  if show.complex_order_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_message then
    show.complex_order_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_message
    changed = true
  end
  if show.complex_order_strategy_leg ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_strategy_leg then
    show.complex_order_strategy_leg = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_strategy_leg
    changed = true
  end
  if show.complex_order_strategy_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_strategy_message then
    show.complex_order_strategy_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_order_strategy_message
    changed = true
  end
  if show.complex_trading_action_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_trading_action_message then
    show.complex_trading_action_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_complex_trading_action_message
    changed = true
  end
  if show.expiration ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_expiration then
    show.expiration = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_expiration
    changed = true
  end
  if show.message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_message then
    show.message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_message_header then
    show.message_header = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_message_header
    changed = true
  end
  if show.options_directory_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_options_directory_message then
    show.options_directory_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_options_directory_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_packet then
    show.packet = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_packet_header
    changed = true
  end
  if show.security_open_closed_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_security_open_closed_message then
    show.security_open_closed_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_security_open_closed_message
    changed = true
  end
  if show.security_trading_action_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_security_trading_action_message then
    show.security_trading_action_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_security_trading_action_message
    changed = true
  end
  if show.simple_order_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_simple_order_message then
    show.simple_order_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_simple_order_message
    changed = true
  end
  if show.strategy_open_closed_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_strategy_open_closed_message then
    show.strategy_open_closed_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_strategy_open_closed_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_payload then
    show.payload = omi_nasdaq_phlxoptions_orders_itch_v1_9.prefs.show_payload
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
-- Dissect Nasdaq PhlxOptions Orders Itch 1.9
-----------------------------------------------------------------------

-- Volume
nasdaq_phlxoptions_orders_itch_v1_9.volume = {}

-- Size: Volume
nasdaq_phlxoptions_orders_itch_v1_9.volume.size = 4

-- Display: Volume
nasdaq_phlxoptions_orders_itch_v1_9.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlxoptions_orders_itch_v1_9.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.volume, range, value, display)

  return offset + length, value
end

-- Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit = {}

-- Size: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.size = 1

-- Display: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.display = function(value)
  if value == "D" then
    return "Debit Or Credit: Net Debit (D)"
  end
  if value == "C" then
    return "Debit Or Credit: Net Credit (C)"
  end
  if value == " " then
    return "Debit Or Credit: Even Or Market Order (<whitespace>)"
  end
  if value == "*" then
    return "Debit Or Credit: Anonymous (*)"
  end

  return "Debit Or Credit: Unknown("..value..")"
end

-- Dissect: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.debit_or_credit, range, value, display)

  return offset + length, value
end

-- Auction Side
nasdaq_phlxoptions_orders_itch_v1_9.auction_side = {}

-- Size: Auction Side
nasdaq_phlxoptions_orders_itch_v1_9.auction_side.size = 1

-- Display: Auction Side
nasdaq_phlxoptions_orders_itch_v1_9.auction_side.display = function(value)
  if value == "B" then
    return "Auction Side: Buy (B)"
  end
  if value == "S" then
    return "Auction Side: Sell (S)"
  end
  if value == "*" then
    return "Auction Side: Solicitation Auction (*)"
  end

  return "Auction Side: Unknown("..value..")"
end

-- Dissect: Auction Side
nasdaq_phlxoptions_orders_itch_v1_9.auction_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.auction_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.auction_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_side, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_phlxoptions_orders_itch_v1_9.price = {}

-- Size: Price
nasdaq_phlxoptions_orders_itch_v1_9.price.size = 4

-- Display: Price
nasdaq_phlxoptions_orders_itch_v1_9.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_phlxoptions_orders_itch_v1_9.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_phlxoptions_orders_itch_v1_9.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_orders_itch_v1_9.price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.price, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_phlxoptions_orders_itch_v1_9.auction_type = {}

-- Size: Auction Type
nasdaq_phlxoptions_orders_itch_v1_9.auction_type.size = 1

-- Display: Auction Type
nasdaq_phlxoptions_orders_itch_v1_9.auction_type.display = function(value)
  if value == "C" then
    return "Auction Type: Cola (C)"
  end
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "P" then
    return "Auction Type: Pixl (P)"
  end
  if value == "S" then
    return "Auction Type: Solicitation (S)"
  end
  if value == "I" then
    return "Auction Type: Order Exposure (I)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_phlxoptions_orders_itch_v1_9.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_phlxoptions_orders_itch_v1_9.auction_id = {}

-- Size: Auction Id
nasdaq_phlxoptions_orders_itch_v1_9.auction_id.size = 4

-- Display: Auction Id
nasdaq_phlxoptions_orders_itch_v1_9.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_phlxoptions_orders_itch_v1_9.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_phlxoptions_orders_itch_v1_9.strategy_id = {}

-- Size: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Seconds
nasdaq_phlxoptions_orders_itch_v1_9.seconds = {}

-- Size: Seconds
nasdaq_phlxoptions_orders_itch_v1_9.seconds.size = 4

-- Display: Seconds
nasdaq_phlxoptions_orders_itch_v1_9.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.seconds, range, value, display)

  return offset + length, value
end

-- Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message = {}

-- Size: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.volume.size

-- Display: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_phlxoptions_orders_itch_v1_9.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 6 values
  index, auction_type = nasdaq_phlxoptions_orders_itch_v1_9.auction_type.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_orders_itch_v1_9.price.dissect(buffer, index, packet, parent)

  -- Auction Side: 1 Byte Ascii String Enum with 3 values
  index, auction_side = nasdaq_phlxoptions_orders_itch_v1_9.auction_side.dissect(buffer, index, packet, parent)

  -- Debit Or Credit: 1 Byte Ascii String Enum with 4 values
  index, debit_or_credit = nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_orders_itch_v1_9.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_auction_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved
nasdaq_phlxoptions_orders_itch_v1_9.reserved = {}

-- Size: Reserved
nasdaq_phlxoptions_orders_itch_v1_9.reserved.size = 4

-- Display: Reserved
nasdaq_phlxoptions_orders_itch_v1_9.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_phlxoptions_orders_itch_v1_9.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.reserved, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Matched Volume
nasdaq_phlxoptions_orders_itch_v1_9.matched_volume = {}

-- Size: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.size = 4

-- Display: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.display = function(value)
  return "Matched Volume: "..value
end

-- Dissect: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.matched_volume, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_orders_itch_v1_9.option_type = {}

-- Size: Option Type
nasdaq_phlxoptions_orders_itch_v1_9.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_orders_itch_v1_9.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == " " then
    return "Option Type: Stock (<whitespace>)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_type, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration = {}

-- Size: Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration.size = 2

-- Display: Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration.display = function(range, value, packet, parent)
  local display = ""


  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration.bits = function(range, value, packet, parent)

  -- Day: 5 Bit
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.day, range, value)

  -- Month: 4 Bit
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.month, range, value)

  -- Year: 7 Bit
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.year, range, value)
end

-- Dissect: Expiration
nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_phlxoptions_orders_itch_v1_9.expiration.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.expiration.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.expiration, range, display)

  if show.expiration then
    nasdaq_phlxoptions_orders_itch_v1_9.expiration.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Symbol
nasdaq_phlxoptions_orders_itch_v1_9.security_symbol = {}

-- Size: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size = 5

-- Display: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_phlxoptions_orders_itch_v1_9.option_id = {}

-- Size: Option Id
nasdaq_phlxoptions_orders_itch_v1_9.option_id.size = 4

-- Display: Option Id
nasdaq_phlxoptions_orders_itch_v1_9.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_id, range, value, display)

  return offset + length, value
end

-- Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message = {}

-- Size: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.auction_side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.reserved.size

-- Display: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_phlxoptions_orders_itch_v1_9.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 6 values
  index, auction_type = nasdaq_phlxoptions_orders_itch_v1_9.auction_type.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_orders_itch_v1_9.price.dissect(buffer, index, packet, parent)

  -- Auction Side: 1 Byte Ascii String Enum with 3 values
  index, auction_side = nasdaq_phlxoptions_orders_itch_v1_9.auction_side.dissect(buffer, index, packet, parent)

  -- Matched Volume: 4 Byte Unsigned Fixed Width Integer
  index, matched_volume = nasdaq_phlxoptions_orders_itch_v1_9.matched_volume.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = nasdaq_phlxoptions_orders_itch_v1_9.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Reserved: 4 Byte Unsigned Fixed Width Integer
  index, reserved = nasdaq_phlxoptions_orders_itch_v1_9.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_phlxoptions_orders_itch_v1_9.side = {}

-- Size: Side
nasdaq_phlxoptions_orders_itch_v1_9.side.size = 1

-- Display: Side
nasdaq_phlxoptions_orders_itch_v1_9.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "*" then
    return "Side: Hidden (*)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_phlxoptions_orders_itch_v1_9.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.side, range, value, display)

  return offset + length, value
end

-- Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator = {}

-- Size: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.size = 1

-- Display: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.display = function(value)
  if value == "O" then
    return "Leg Open Close Indicator: Opens Position (O)"
  end
  if value == "C" then
    return "Leg Open Close Indicator: Closes Position (C)"
  end
  if value == " " then
    return "Leg Open Close Indicator: Stock Leg (<whitespace>)"
  end

  return "Leg Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.leg_open_close_indicator, range, value, display)

  return offset + length, value
end

-- Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg = {}

-- Size: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.size =
  nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.size

-- Display: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.fields = function(buffer, offset, packet, parent, complex_order_leg_index)
  local index = offset

  -- Implicit Complex Order Leg Index
  if complex_order_leg_index ~= nil then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_leg_index, complex_order_leg_index)
    iteration:set_generated()
  end

  -- Leg Open Close Indicator: 1 Byte Ascii String Enum with 3 values
  index, leg_open_close_indicator = nasdaq_phlxoptions_orders_itch_v1_9.leg_open_close_indicator.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_phlxoptions_orders_itch_v1_9.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.dissect = function(buffer, offset, packet, parent, complex_order_leg_index)
  if show.complex_order_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_leg, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.fields(buffer, offset, packet, parent, complex_order_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.fields(buffer, offset, packet, parent, complex_order_leg_index)
  end
end

-- Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator = {}

-- Size: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.size = 1

-- Display: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.display = function(value)
  if value == "C" then
    return "Customer Firm Indicator: Customer Order (C)"
  end
  if value == "F" then
    return "Customer Firm Indicator: Firm Order (F)"
  end
  if value == "M" then
    return "Customer Firm Indicator: Onfloor Market Maker (M)"
  end
  if value == "B" then
    return "Customer Firm Indicator: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Customer Firm Indicator: Professional Order (P)"
  end
  if value == " " then
    return "Customer Firm Indicator: Na For Implied Order (<whitespace>)"
  end

  return "Customer Firm Indicator: Unknown("..value..")"
end

-- Dissect: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.customer_firm_indicator, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_phlxoptions_orders_itch_v1_9.time_in_force = {}

-- Size: Time In Force
nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.size = 1

-- Display: Time In Force
nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.display = function(value)
  if value == "D" then
    return "Time In Force: Day Order (D)"
  end
  if value == "G" then
    return "Time In Force: Gtc (G)"
  end
  if value == "I" then
    return "Time In Force: Ioc (I)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- All Or None
nasdaq_phlxoptions_orders_itch_v1_9.all_or_none = {}

-- Size: All Or None
nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.size = 1

-- Display: All Or None
nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.display = function(value)
  if value == "Y" then
    return "All Or None: All Or None Order (Y)"
  end
  if value == "N" then
    return "All Or None: Not All Or None Order (N)"
  end

  return "All Or None: Unknown("..value..")"
end

-- Dissect: All Or None
nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.all_or_none, range, value, display)

  return offset + length, value
end

-- Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price = {}

-- Size: Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price.size = 4

-- Display: Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Limit Price
nasdaq_phlxoptions_orders_itch_v1_9.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_phlxoptions_orders_itch_v1_9.order_type = {}

-- Size: Order Type
nasdaq_phlxoptions_orders_itch_v1_9.order_type.size = 1

-- Display: Order Type
nasdaq_phlxoptions_orders_itch_v1_9.order_type.display = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end
  if value == "*" then
    return "Order Type: Anonymous (*)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_phlxoptions_orders_itch_v1_9.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_type, range, value, display)

  return offset + length, value
end

-- Order Status
nasdaq_phlxoptions_orders_itch_v1_9.order_status = {}

-- Size: Order Status
nasdaq_phlxoptions_orders_itch_v1_9.order_status.size = 1

-- Display: Order Status
nasdaq_phlxoptions_orders_itch_v1_9.order_status.display = function(value)
  if value == "O" then
    return "Order Status: Open (O)"
  end
  if value == "F" then
    return "Order Status: Filled (F)"
  end
  if value == "C" then
    return "Order Status: Cancelled (C)"
  end
  if value == "R" then
    return "Order Status: Renotification (R)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
nasdaq_phlxoptions_orders_itch_v1_9.order_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_status, range, value, display)

  return offset + length, value
end

-- Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume = {}

-- Size: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.size = 4

-- Display: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.display = function(value)
  return "Executable Order Volume: "..value
end

-- Dissect: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.executable_order_volume, range, value, display)

  return offset + length, value
end

-- Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume = {}

-- Size: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.size = 4

-- Display: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.display = function(value)
  return "Original Order Volume: "..value
end

-- Dissect: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.original_order_volume, range, value, display)

  return offset + length, value
end

-- Order Id
nasdaq_phlxoptions_orders_itch_v1_9.order_id = {}

-- Size: Order Id
nasdaq_phlxoptions_orders_itch_v1_9.order_id.size = 4

-- Display: Order Id
nasdaq_phlxoptions_orders_itch_v1_9.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_phlxoptions_orders_itch_v1_9.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.order_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.order_id, range, value, display)

  return offset + length, value
end

-- Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message = {}

-- Calculate size of: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.seconds.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.order_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.side.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.order_status.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.order_type.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.limit_price.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.size

  -- Calculate field size from count
  local complex_order_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_order_leg_count * 22

  return index
end

-- Display: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_orders_itch_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_phlxoptions_orders_itch_v1_9.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: 4 Byte Unsigned Fixed Width Integer
  index, original_order_volume = nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: 4 Byte Unsigned Fixed Width Integer
  index, executable_order_volume = nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: 1 Byte Ascii String Enum with 4 values
  index, order_status = nasdaq_phlxoptions_orders_itch_v1_9.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 3 values
  index, order_type = nasdaq_phlxoptions_orders_itch_v1_9.order_type.dissect(buffer, index, packet, parent)

  -- Limit Price: 4 Byte Signed Fixed Width Integer
  index, limit_price = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.dissect(buffer, index, packet, parent)

  -- Debit Or Credit: 1 Byte Ascii String Enum with 4 values
  index, debit_or_credit = nasdaq_phlxoptions_orders_itch_v1_9.debit_or_credit.dissect(buffer, index, packet, parent)

  -- All Or None: 1 Byte Ascii String Enum with 2 values
  index, all_or_none = nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 3 values
  index, time_in_force = nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: 1 Byte Ascii String Enum with 6 values
  index, customer_firm_indicator = nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index, number_of_legs = nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Order Leg
  for complex_order_leg_index = 1, number_of_legs do
    index, complex_order_leg = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_leg.dissect(buffer, index, packet, parent, complex_order_leg_index)
  end

  return index
end

-- Dissect: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_order_message then
    local length = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_message, range, display)
  end

  return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.fields(buffer, offset, packet, parent)
end

-- Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator = {}

-- Size: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.size = 1

-- Display: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.display = function(value)
  if value == "O" then
    return "Open Close Indicator: Opens Position (O)"
  end
  if value == "C" then
    return "Open Close Indicator: Closes Position (C)"
  end
  if value == " " then
    return "Open Close Indicator: Na (<whitespace>)"
  end

  return "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier = {}

-- Size: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.size = 1

-- Display: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.display = function(value)
  if value == "O" then
    return "Market Qualifier: Opening Order (O)"
  end
  if value == "I" then
    return "Market Qualifier: Implied Order (I)"
  end
  if value == " " then
    return "Market Qualifier: Na (<whitespace>)"
  end

  return "Market Qualifier: Unknown("..value..")"
end

-- Dissect: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.market_qualifier, range, value, display)

  return offset + length, value
end

-- Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message = {}

-- Size: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.order_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.order_status.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.order_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.limit_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.size

-- Display: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_orders_itch_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_phlxoptions_orders_itch_v1_9.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: 4 Byte Unsigned Fixed Width Integer
  index, original_order_volume = nasdaq_phlxoptions_orders_itch_v1_9.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: 4 Byte Unsigned Fixed Width Integer
  index, executable_order_volume = nasdaq_phlxoptions_orders_itch_v1_9.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: 1 Byte Ascii String Enum with 4 values
  index, order_status = nasdaq_phlxoptions_orders_itch_v1_9.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 3 values
  index, order_type = nasdaq_phlxoptions_orders_itch_v1_9.order_type.dissect(buffer, index, packet, parent)

  -- Market Qualifier: 1 Byte Ascii String Enum with 3 values
  index, market_qualifier = nasdaq_phlxoptions_orders_itch_v1_9.market_qualifier.dissect(buffer, index, packet, parent)

  -- Limit Price: 4 Byte Signed Fixed Width Integer
  index, limit_price = nasdaq_phlxoptions_orders_itch_v1_9.limit_price.dissect(buffer, index, packet, parent)

  -- All Or None: 1 Byte Ascii String Enum with 2 values
  index, all_or_none = nasdaq_phlxoptions_orders_itch_v1_9.all_or_none.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 3 values
  index, time_in_force = nasdaq_phlxoptions_orders_itch_v1_9.time_in_force.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: 1 Byte Ascii String Enum with 6 values
  index, customer_firm_indicator = nasdaq_phlxoptions_orders_itch_v1_9.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: 1 Byte Ascii String Enum with 3 values
  index, open_close_indicator = nasdaq_phlxoptions_orders_itch_v1_9.open_close_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.dissect = function(buffer, offset, packet, parent)
  if show.simple_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.simple_order_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Open State
nasdaq_phlxoptions_orders_itch_v1_9.open_state = {}

-- Size: Open State
nasdaq_phlxoptions_orders_itch_v1_9.open_state.size = 1

-- Display: Open State
nasdaq_phlxoptions_orders_itch_v1_9.open_state.display = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_phlxoptions_orders_itch_v1_9.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.open_state, range, value, display)

  return offset + length, value
end

-- Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message = {}

-- Size: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.open_state.size

-- Display: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_phlxoptions_orders_itch_v1_9.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_open_closed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.strategy_open_closed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message = {}

-- Size: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.open_state.size

-- Display: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_phlxoptions_orders_itch_v1_9.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.security_open_closed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_open_closed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Current Trading State
nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state = {}

-- Size: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Phlx Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message = {}

-- Size: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.size

-- Display: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message = {}

-- Size: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.size

-- Display: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 2 values
  index, current_trading_state = nasdaq_phlxoptions_orders_itch_v1_9.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.security_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.security_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg = {}

-- Size: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.size =
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.size

-- Display: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.fields = function(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  local index = offset

  -- Implicit Complex Order Strategy Leg Index
  if complex_order_strategy_leg_index ~= nil then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_leg_index, complex_order_strategy_leg_index)
    iteration:set_generated()
  end

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = nasdaq_phlxoptions_orders_itch_v1_9.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = nasdaq_phlxoptions_orders_itch_v1_9.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.dissect = function(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  if show.complex_order_strategy_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_leg, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.fields(buffer, offset, packet, parent, complex_order_strategy_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.fields(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  end
end

-- Action
nasdaq_phlxoptions_orders_itch_v1_9.action = {}

-- Size: Action
nasdaq_phlxoptions_orders_itch_v1_9.action.size = 1

-- Display: Action
nasdaq_phlxoptions_orders_itch_v1_9.action.display = function(value)
  if value == "A" then
    return "Action: Add (A)"
  end
  if value == "D" then
    return "Action: Delete (D)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
nasdaq_phlxoptions_orders_itch_v1_9.action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.action, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_phlxoptions_orders_itch_v1_9.source = {}

-- Size: Source
nasdaq_phlxoptions_orders_itch_v1_9.source.size = 1

-- Display: Source
nasdaq_phlxoptions_orders_itch_v1_9.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_phlxoptions_orders_itch_v1_9.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.source, range, value, display)

  return offset + length, value
end

-- Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message = {}

-- Calculate size of: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.seconds.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.source.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.action.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.size

  -- Calculate field size from count
  local complex_order_strategy_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_order_strategy_leg_count * 21

  return index
end

-- Display: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_9.strategy_id.dissect(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_phlxoptions_orders_itch_v1_9.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 2 values
  index, action = nasdaq_phlxoptions_orders_itch_v1_9.action.dissect(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index, number_of_legs = nasdaq_phlxoptions_orders_itch_v1_9.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Order Strategy Leg
  for complex_order_strategy_leg_index = 1, number_of_legs do
    index, complex_order_strategy_leg = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_leg.dissect(buffer, index, packet, parent, complex_order_strategy_leg_index)
  end

  return index
end

-- Dissect: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_order_strategy_message then
    local length = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.complex_order_strategy_message, range, display)
  end

  return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.fields(buffer, offset, packet, parent)
end

-- Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable = {}

-- Size: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.size = 1

-- Display: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.display = function(value)
  if value == "Y" then
    return "Phlx Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Phlx Tradable: Not Tradable (N)"
  end

  return "Phlx Tradable: Unknown("..value..")"
end

-- Dissect: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.phlx_tradable, range, value, display)

  return offset + length, value
end

-- Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type = {}

-- Size: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.size = 1

-- Display: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.display = function(value)
  if value == "N" then
    return "Option Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Option Closing Type: Late (L)"
  end
  if value == "W" then
    return "Option Closing Type: Wco Early Closing (W)"
  end

  return "Option Closing Type: Unknown("..value..")"
end

-- Dissect: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.source.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.size

-- Display: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_9.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_9.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_9.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 3 values
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_9.option_type.dissect(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_phlxoptions_orders_itch_v1_9.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Option Closing Type: 1 Byte Ascii String Enum with 3 values
  index, option_closing_type = nasdaq_phlxoptions_orders_itch_v1_9.option_closing_type.dissect(buffer, index, packet, parent)

  -- Phlx Tradable: 1 Byte Ascii String Enum with 2 values
  index, phlx_tradable = nasdaq_phlxoptions_orders_itch_v1_9.phlx_tradable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.options_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Version
nasdaq_phlxoptions_orders_itch_v1_9.version = {}

-- Size: Version
nasdaq_phlxoptions_orders_itch_v1_9.version.size = 1

-- Display: Version
nasdaq_phlxoptions_orders_itch_v1_9.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_phlxoptions_orders_itch_v1_9.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.version, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_phlxoptions_orders_itch_v1_9.event_code = {}

-- Size: Event Code
nasdaq_phlxoptions_orders_itch_v1_9.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_orders_itch_v1_9.event_code.display = function(value)
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
nasdaq_phlxoptions_orders_itch_v1_9.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message = {}

-- Size: System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.size =
  nasdaq_phlxoptions_orders_itch_v1_9.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.event_code.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.version.size

-- Display: System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_9.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_9.nanoseconds.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 8 values
  index, event_code = nasdaq_phlxoptions_orders_itch_v1_9.event_code.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_phlxoptions_orders_itch_v1_9.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_phlxoptions_orders_itch_v1_9.payload = {}

-- Size: Payload
nasdaq_phlxoptions_orders_itch_v1_9.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.size
  end
  -- Size of Options Directory Message
  if message_type == "D" then
    return nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.size
  end
  -- Size of Complex Order Strategy Message
  if message_type == "R" then
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.size(buffer, offset)
  end
  -- Size of Security Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.size
  end
  -- Size of Complex Trading Action Message
  if message_type == "I" then
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.size
  end
  -- Size of Security Open Closed Message
  if message_type == "P" then
    return nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.size
  end
  -- Size of Strategy Open Closed Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.size
  end
  -- Size of Simple Order Message
  if message_type == "O" then
    return nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.size
  end
  -- Size of Complex Order Message
  if message_type == "X" then
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.size(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == "A" then
    return nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.size
  end
  -- Size of Complex Auction Notification Message
  if message_type == "C" then
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.size
  end

  return 0
end

-- Display: Payload
nasdaq_phlxoptions_orders_itch_v1_9.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_phlxoptions_orders_itch_v1_9.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_orders_itch_v1_9.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "D" then
    return nasdaq_phlxoptions_orders_itch_v1_9.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Strategy Message
  if message_type == "R" then
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_orders_itch_v1_9.security_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Trading Action Message
  if message_type == "I" then
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Closed Message
  if message_type == "P" then
    return nasdaq_phlxoptions_orders_itch_v1_9.security_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Open Closed Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_orders_itch_v1_9.strategy_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Message
  if message_type == "O" then
    return nasdaq_phlxoptions_orders_itch_v1_9.simple_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Message
  if message_type == "X" then
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == "A" then
    return nasdaq_phlxoptions_orders_itch_v1_9.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Auction Notification Message
  if message_type == "C" then
    return nasdaq_phlxoptions_orders_itch_v1_9.complex_auction_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_phlxoptions_orders_itch_v1_9.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_phlxoptions_orders_itch_v1_9.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_phlxoptions_orders_itch_v1_9.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_phlxoptions_orders_itch_v1_9.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.payload, range, display)

  return nasdaq_phlxoptions_orders_itch_v1_9.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_phlxoptions_orders_itch_v1_9.message_type = {}

-- Size: Message Type
nasdaq_phlxoptions_orders_itch_v1_9.message_type.size = 1

-- Display: Message Type
nasdaq_phlxoptions_orders_itch_v1_9.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Message Type: Options Directory Message (D)"
  end
  if value == "R" then
    return "Message Type: Complex Order Strategy Message (R)"
  end
  if value == "H" then
    return "Message Type: Security Trading Action Message (H)"
  end
  if value == "I" then
    return "Message Type: Complex Trading Action Message (I)"
  end
  if value == "P" then
    return "Message Type: Security Open Closed Message (P)"
  end
  if value == "Q" then
    return "Message Type: Strategy Open Closed Message (Q)"
  end
  if value == "O" then
    return "Message Type: Simple Order Message (O)"
  end
  if value == "X" then
    return "Message Type: Complex Order Message (X)"
  end
  if value == "A" then
    return "Message Type: Auction Notification Message (A)"
  end
  if value == "C" then
    return "Message Type: Complex Auction Notification Message (C)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_phlxoptions_orders_itch_v1_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Length
nasdaq_phlxoptions_orders_itch_v1_9.length = {}

-- Size: Length
nasdaq_phlxoptions_orders_itch_v1_9.length.size = 2

-- Display: Length
nasdaq_phlxoptions_orders_itch_v1_9.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_phlxoptions_orders_itch_v1_9.length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header = {}

-- Size: Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header.size =
  nasdaq_phlxoptions_orders_itch_v1_9.length.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.message_type.size

-- Display: Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_phlxoptions_orders_itch_v1_9.length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = nasdaq_phlxoptions_orders_itch_v1_9.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlxoptions_orders_itch_v1_9.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_phlxoptions_orders_itch_v1_9.message = {}

-- Calculate size of: Message
nasdaq_phlxoptions_orders_itch_v1_9.message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_orders_itch_v1_9.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + nasdaq_phlxoptions_orders_itch_v1_9.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nasdaq_phlxoptions_orders_itch_v1_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlxoptions_orders_itch_v1_9.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_phlxoptions_orders_itch_v1_9.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = nasdaq_phlxoptions_orders_itch_v1_9.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_phlxoptions_orders_itch_v1_9.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nasdaq_phlxoptions_orders_itch_v1_9.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.message, range, display)
  end

  return nasdaq_phlxoptions_orders_itch_v1_9.message.fields(buffer, offset, packet, parent)
end

-- Count
nasdaq_phlxoptions_orders_itch_v1_9.count = {}

-- Size: Count
nasdaq_phlxoptions_orders_itch_v1_9.count.size = 2

-- Display: Count
nasdaq_phlxoptions_orders_itch_v1_9.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_phlxoptions_orders_itch_v1_9.count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.count, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_phlxoptions_orders_itch_v1_9.sequence = {}

-- Size: Sequence
nasdaq_phlxoptions_orders_itch_v1_9.sequence.size = 4

-- Display: Sequence
nasdaq_phlxoptions_orders_itch_v1_9.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_phlxoptions_orders_itch_v1_9.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_phlxoptions_orders_itch_v1_9.session = {}

-- Size: Session
nasdaq_phlxoptions_orders_itch_v1_9.session.size = 10

-- Display: Session
nasdaq_phlxoptions_orders_itch_v1_9.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlxoptions_orders_itch_v1_9.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_9.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_9.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header = {}

-- Size: Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header.size =
  nasdaq_phlxoptions_orders_itch_v1_9.session.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.sequence.size + 
  nasdaq_phlxoptions_orders_itch_v1_9.count.size

-- Display: Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlxoptions_orders_itch_v1_9.session.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_phlxoptions_orders_itch_v1_9.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_phlxoptions_orders_itch_v1_9.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_phlxoptions_orders_itch_v1_9.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_9.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_9.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_9.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_phlxoptions_orders_itch_v1_9.packet = {}

-- Dissect Packet
nasdaq_phlxoptions_orders_itch_v1_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_phlxoptions_orders_itch_v1_9.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = nasdaq_phlxoptions_orders_itch_v1_9.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_phlxoptions_orders_itch_v1_9.init()
end

-- Dissector for Nasdaq PhlxOptions Orders Itch 1.9
function omi_nasdaq_phlxoptions_orders_itch_v1_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_orders_itch_v1_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_9, buffer(), omi_nasdaq_phlxoptions_orders_itch_v1_9.description, "("..buffer:len().." Bytes)")
  return nasdaq_phlxoptions_orders_itch_v1_9.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_phlxoptions_orders_itch_v1_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_phlxoptions_orders_itch_v1_9.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions Orders Itch 1.9
local function omi_nasdaq_phlxoptions_orders_itch_v1_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_orders_itch_v1_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_orders_itch_v1_9
  omi_nasdaq_phlxoptions_orders_itch_v1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PhlxOptions Orders Itch 1.9
omi_nasdaq_phlxoptions_orders_itch_v1_9:register_heuristic("udp", omi_nasdaq_phlxoptions_orders_itch_v1_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.9
--   Date: Monday, August 10, 2015
--   Specification: topoplusorders.pdf
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
