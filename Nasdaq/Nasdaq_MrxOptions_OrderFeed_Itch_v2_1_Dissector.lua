-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq MrxOptions OrderFeed Itch 2.1 Protocol
local omi_nasdaq_mrxoptions_orderfeed_itch_v2_1 = Proto("Nasdaq.MrxOptions.OrderFeed.Itch.v2.1.Lua", "Nasdaq MrxOptions OrderFeed Itch 2.1")

-- Protocol table
local nasdaq_mrxoptions_orderfeed_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq MrxOptions OrderFeed Itch 2.1 Fields
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.all_or_none = ProtoField.new("All Or None", "nasdaq.mrxoptions.orderfeed.itch.v2.1.allornone", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_duration = ProtoField.new("Auction Duration", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctionduration", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctionevent", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctionid", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.closingtype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.cmta = ProtoField.new("Cmta", "nasdaq.mrxoptions.orderfeed.itch.v2.1.cmta", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.mrxoptions.orderfeed.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.mrxoptions.orderfeed.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.mrxoptions.orderfeed.itch.v2.1.execflag", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.executable_order_volume = ProtoField.new("Executable Order Volume", "nasdaq.mrxoptions.orderfeed.itch.v2.1.executableordervolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.mrxoptions.orderfeed.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.mrxoptions.orderfeed.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.mrxoptions.orderfeed.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.mrxoptions.orderfeed.itch.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.giveup = ProtoField.new("Giveup", "nasdaq.mrxoptions.orderfeed.itch.v2.1.giveup", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.mrxoptions.orderfeed.itch.v2.1.imbalancevolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.mrxoptions.orderfeed.itch.v2.1.instrumentid", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.limit_price = ProtoField.new("Limit Price", "nasdaq.mrxoptions.orderfeed.itch.v2.1.limitprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.mpv = ProtoField.new("Mpv", "nasdaq.mrxoptions.orderfeed.itch.v2.1.mpv", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "nasdaq.mrxoptions.orderfeed.itch.v2.1.opencloseindicator", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.mrxoptions.orderfeed.itch.v2.1.ordercapacity", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_qualifier = ProtoField.new("Order Qualifier", "nasdaq.mrxoptions.orderfeed.itch.v2.1.orderqualifier", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_status = ProtoField.new("Order Status", "nasdaq.mrxoptions.orderfeed.itch.v2.1.orderstatus", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_type = ProtoField.new("Order Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.ordertype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.original_order_volume = ProtoField.new("Original Order Volume", "nasdaq.mrxoptions.orderfeed.itch.v2.1.originalordervolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.owner_id = ProtoField.new("Owner Id", "nasdaq.mrxoptions.orderfeed.itch.v2.1.ownerid", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.mrxoptions.orderfeed.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.price = ProtoField.new("Price", "nasdaq.mrxoptions.orderfeed.itch.v2.1.price", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.quantity = ProtoField.new("Quantity", "nasdaq.mrxoptions.orderfeed.itch.v2.1.quantity", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.mrxoptions.orderfeed.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.mrxoptions.orderfeed.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.mrxoptions.orderfeed.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.side = ProtoField.new("Side", "nasdaq.mrxoptions.orderfeed.itch.v2.1.side", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.mrxoptions.orderfeed.itch.v2.1.timeinforce", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.mrxoptions.orderfeed.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.tradable = ProtoField.new("Tradable", "nasdaq.mrxoptions.orderfeed.itch.v2.1.tradable", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.mrxoptions.orderfeed.itch.v2.1.underlyingsymbol", ftypes.STRING)

-- Nasdaq MrxOptions Itch OrderFeed 2.1 Application Messages
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.addordermessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_message = ProtoField.new("Auction Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctionmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.derivative_directory_message = ProtoField.new("Derivative Directory Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.derivativedirectorymessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.tradingactionmessage", ftypes.STRING)

-- Nasdaq MrxOptions OrderFeed Itch 2.1 generated fields
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq MrxOptions OrderFeed Itch 2.1 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq MrxOptions OrderFeed Itch 2.1 Show Options
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message then
    show.message = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message_index then
    show.message_index = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_message_index
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
-- Nasdaq MrxOptions OrderFeed Itch 2.1 Fields
-----------------------------------------------------------------------

-- All Or None
nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none = {}

-- Size: All Or None
nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.size = 1

-- Display: All Or None
nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.display = function(value)
  if value == "Y" then
    return "All Or None: All Or None Order (Y)"
  end
  if value == "N" then
    return "All Or None: Not All Or None Order (N)"
  end

  return "All Or None: Unknown("..value..")"
end

-- Dissect: All Or None
nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.all_or_none, range, value, display)

  return offset + length, value
end

-- Auction Duration
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration = {}

-- Size: Auction Duration
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.size = 4

-- Display: Auction Duration
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.display = function(value)
  return "Auction Duration: "..value
end

-- Dissect: Auction Duration
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_duration, range, value, display)

  return offset + length, value
end

-- Auction Event
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event = {}

-- Size: Auction Event
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.size = 1

-- Display: Auction Event
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.display = function(value)
  if value == "S" then
    return "Auction Event: Start Of Auction (S)"
  end
  if value == "E" then
    return "Auction Event: End Of Auction (E)"
  end
  if value == "U" then
    return "Auction Event: Auction Update (U)"
  end

  return "Auction Event: Unknown("..value..")"
end

-- Dissect: Auction Event
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id = {}

-- Size: Auction Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.size = 4

-- Display: Auction Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type = {}

-- Size: Auction Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.size = 1

-- Display: Auction Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.display = function(value)
  if value == "B" then
    return "Auction Type: Block Auction (B)"
  end
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "I" then
    return "Auction Type: Order Exposure (I)"
  end
  if value == "P" then
    return "Auction Type: Price Improvement Auction (P)"
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
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type = {}

-- Size: Closing Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.size = 1

-- Display: Closing Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.display = function(value)
  if value == "N" then
    return "Closing Type: Normal Hours (N)"
  end
  if value == "L" then
    return "Closing Type: Late Hours (L)"
  end
  if value == "W" then
    return "Closing Type: Wco Early Closing (W)"
  end

  return "Closing Type: Unknown("..value..")"
end

-- Dissect: Closing Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Cmta
nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta = {}

-- Size: Cmta
nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.size = 6

-- Display: Cmta
nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.display = function(value)
  if value == "B" then
    return "Current Trading State: Buy Side Suspended (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Suspended (S)"
  end
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
nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.display = function(value)
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
nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exec Flag
nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag = {}

-- Size: Exec Flag
nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.size = 1

-- Display: Exec Flag
nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.display = function(value)
  if value == "N" then
    return "Exec Flag: None (N)"
  end
  if value == "A" then
    return "Exec Flag: Aon (A)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Executable Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume = {}

-- Size: Executable Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.size = 4

-- Display: Executable Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.display = function(value)
  return "Executable Order Volume: "..value
end

-- Dissect: Executable Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.executable_order_volume, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Giveup
nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup = {}

-- Size: Giveup
nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.size = 6

-- Display: Giveup
nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.display = function(value)
  return "Giveup: "..value
end

-- Dissect: Giveup
nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.giveup, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id = {}

-- Size: Instrument Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Limit Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price = {}

-- Size: Limit Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.size = 4

-- Display: Limit Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Dissect: Limit Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "m" then
    return "Message Type: Derivative Directory Message (m)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Add Order Message (O)"
  end
  if value == "J" then
    return "Message Type: Auction Message (J)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv = {}

-- Size: Mpv
nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.size = 1

-- Display: Mpv
nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.display = function(value)
  if value == "E" then
    return "Mpv: Penny Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Penny Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator = {}

-- Size: Open Close Indicator
nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.size = 1

-- Display: Open Close Indicator
nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.display = function(value)
  if value == "O" then
    return "Open Close Indicator: Opens Position (O)"
  end
  if value == "C" then
    return "Open Close Indicator: Closes Position (C)"
  end
  if value == "" then
    return "Open Close Indicator: Na (<whitespace>)"
  end

  return "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "N" then
    return "Option Type: Not Applicable (N)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity = {}

-- Size: Order Capacity
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.display = function(value)
  if value == "C" then
    return "Order Capacity: Customer Order (C)"
  end
  if value == "F" then
    return "Order Capacity: Firm Order (F)"
  end
  if value == "M" then
    return "Order Capacity: Market Maker Order (M)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Order Capacity: Professional Order (P)"
  end
  if value == "O" then
    return "Order Capacity: Other Exchange Market Maker Order (O)"
  end
  if value == "J" then
    return "Order Capacity: Joint Back Office (J)"
  end
  if value == "" then
    return "Order Capacity: Na (<whitespace>)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Qualifier
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier = {}

-- Size: Order Qualifier
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.size = 1

-- Display: Order Qualifier
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.display = function(value)
  if value == "O" then
    return "Order Qualifier: Opening Order (O)"
  end
  if value == "I" then
    return "Order Qualifier: Implied Order (I)"
  end
  if value == "" then
    return "Order Qualifier: Na (<whitespace>)"
  end

  return "Order Qualifier: Unknown("..value..")"
end

-- Dissect: Order Qualifier
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_qualifier, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Status
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status = {}

-- Size: Order Status
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.size = 1

-- Display: Order Status
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.display = function(value)
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
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type = {}

-- Size: Order Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.size = 1

-- Display: Order Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.display = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume = {}

-- Size: Original Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.size = 4

-- Display: Original Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.display = function(value)
  return "Original Order Volume: "..value
end

-- Dissect: Original Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.original_order_volume, range, value, display)

  return offset + length, value
end

-- Owner Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id = {}

-- Size: Owner Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.size = 6

-- Display: Owner Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.display = function(value)
  return "Owner Id: "..value
end

-- Dissect: Owner Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.owner_id, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.price = {}

-- Size: Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.price.size = 4

-- Display: Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity = {}

-- Size: Quantity
nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.size = 4

-- Display: Quantity
nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.session = {}

-- Size: Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.session.size
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

  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_mrxoptions_orderfeed_itch_v2_1.side = {}

-- Size: Side
nasdaq_mrxoptions_orderfeed_itch_v2_1.side.size = 1

-- Display: Side
nasdaq_mrxoptions_orderfeed_itch_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_mrxoptions_orderfeed_itch_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force = {}

-- Size: Time In Force
nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.size = 1

-- Display: Time In Force
nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.display = function(value)
  if value == "D" then
    return "Time In Force: Day Order (D)"
  end
  if value == "G" then
    return "Time In Force: Good Till Cancelled (G)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable = {}

-- Size: Tradable
nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.size = 1

-- Display: Tradable
nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.tradable, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq MrxOptions OrderFeed Itch 2.1
-----------------------------------------------------------------------

-- Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message = {}

-- Size: Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.side.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.price.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.size

-- Display: Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Duration: Integer
  index, auction_duration = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.dissect(buffer, index, packet, parent)

  -- Auction Event: Alpha
  index, auction_event = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_orderfeed_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_mrxoptions_orderfeed_itch_v2_1.price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Exec Flag: Alpha
  index, exec_flag = nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Owner Id: Alpha
  index, owner_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: Alpha
  index, giveup = nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: Alpha
  index, cmta = nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message = {}

-- Size: Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.side.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.size

-- Display: Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_orderfeed_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: Integer
  index, original_order_volume = nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: Integer
  index, executable_order_volume = nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: Alpha
  index, order_status = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Order Qualifier: Alpha
  index, order_qualifier = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.dissect(buffer, index, packet, parent)

  -- Limit Price: Integer
  index, limit_price = nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.dissect(buffer, index, packet, parent)

  -- All Or None: Alpha
  index, all_or_none = nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alpha
  index, open_close_indicator = nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Owner Id: Alpha
  index, owner_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: Alpha
  index, giveup = nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: Alpha
  index, cmta = nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.size

-- Display: Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message = {}

-- Size: Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.size

-- Display: Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.derivative_directory_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_mrxoptions_orderfeed_itch_v2_1.payload = {}

-- Dissect: Payload
nasdaq_mrxoptions_orderfeed_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if message_type == "m" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "O" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Message
  if message_type == "J" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 5 branches
  index = nasdaq_mrxoptions_orderfeed_itch_v2_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_mrxoptions_orderfeed_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_mrxoptions_orderfeed_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_orderfeed_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_mrxoptions_orderfeed_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_mrxoptions_orderfeed_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
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
    offset = nasdaq_mrxoptions_orderfeed_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header = {}

-- Size: Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.session.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.sequence_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.size

-- Display: Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_mrxoptions_orderfeed_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet = {}

-- Verify size of Udp packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_mrxoptions_orderfeed_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.init()
end

-- Dissector for Nasdaq MrxOptions OrderFeed Itch 2.1
function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1, buffer(), omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_mrxoptions_orderfeed_itch_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_mrxoptions_orderfeed_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq MrxOptions OrderFeed Itch 2.1 (Udp)
local function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_mrxoptions_orderfeed_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1
  omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq MrxOptions OrderFeed Itch 2.1
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1:register_heuristic("udp", omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Friday, February 13, 2026
--   Specification: Options_Order_Feed_2.1.pdf
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
