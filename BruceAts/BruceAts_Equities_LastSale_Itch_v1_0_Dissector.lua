-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- BruceAts Equities LastSale Itch 1.0 Protocol
local omi_bruceats_equities_lastsale_itch_v1_0 = Proto("BruceAts.Equities.LastSale.Itch.v1.0.Lua", "BruceAts Equities LastSale Itch 1.0")

-- Protocol table
local bruceats_equities_lastsale_itch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- BruceAts Equities LastSale Itch 1.0 Fields
omi_bruceats_equities_lastsale_itch_v1_0.fields.authenticity = ProtoField.new("Authenticity", "bruceats.equities.lastsale.itch.v1.0.authenticity", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.event_code = ProtoField.new("Event Code", "bruceats.equities.lastsale.itch.v1.0.eventcode", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.market_category = ProtoField.new("Market Category", "bruceats.equities.lastsale.itch.v1.0.marketcategory", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.match_id = ProtoField.new("Match Id", "bruceats.equities.lastsale.itch.v1.0.matchid", ftypes.UINT64)
omi_bruceats_equities_lastsale_itch_v1_0.fields.message = ProtoField.new("Message", "bruceats.equities.lastsale.itch.v1.0.message", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.message_count = ProtoField.new("Message Count", "bruceats.equities.lastsale.itch.v1.0.messagecount", ftypes.UINT16)
omi_bruceats_equities_lastsale_itch_v1_0.fields.message_header = ProtoField.new("Message Header", "bruceats.equities.lastsale.itch.v1.0.messageheader", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.message_length = ProtoField.new("Message Length", "bruceats.equities.lastsale.itch.v1.0.messagelength", ftypes.UINT16)
omi_bruceats_equities_lastsale_itch_v1_0.fields.message_type = ProtoField.new("Message Type", "bruceats.equities.lastsale.itch.v1.0.messagetype", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.packet = ProtoField.new("Packet", "bruceats.equities.lastsale.itch.v1.0.packet", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "bruceats.equities.lastsale.itch.v1.0.packetheader", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.payload = ProtoField.new("Payload", "bruceats.equities.lastsale.itch.v1.0.payload", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.price = ProtoField.new("Price", "bruceats.equities.lastsale.itch.v1.0.price", ftypes.DOUBLE)
omi_bruceats_equities_lastsale_itch_v1_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "bruceats.equities.lastsale.itch.v1.0.regshoaction", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "bruceats.equities.lastsale.itch.v1.0.roundlotsize", ftypes.UINT32)
omi_bruceats_equities_lastsale_itch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "bruceats.equities.lastsale.itch.v1.0.sequencenumber", ftypes.UINT64)
omi_bruceats_equities_lastsale_itch_v1_0.fields.session = ProtoField.new("Session", "bruceats.equities.lastsale.itch.v1.0.session", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.size = ProtoField.new("Size", "bruceats.equities.lastsale.itch.v1.0.size", ftypes.UINT32)
omi_bruceats_equities_lastsale_itch_v1_0.fields.stock = ProtoField.new("Stock", "bruceats.equities.lastsale.itch.v1.0.stock", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.stock_locate = ProtoField.new("Stock Locate", "bruceats.equities.lastsale.itch.v1.0.stocklocate", ftypes.UINT16)
omi_bruceats_equities_lastsale_itch_v1_0.fields.timestamp = ProtoField.new("Timestamp", "bruceats.equities.lastsale.itch.v1.0.timestamp", ftypes.UINT64)
omi_bruceats_equities_lastsale_itch_v1_0.fields.trading_state = ProtoField.new("Trading State", "bruceats.equities.lastsale.itch.v1.0.tradingstate", ftypes.STRING)

-- BruceAts Equities LastSale Itch 1.0 messages
omi_bruceats_equities_lastsale_itch_v1_0.fields.reg_sho_short_sale_price_test_restricted_indicator = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator", "bruceats.equities.lastsale.itch.v1.0.regshoshortsalepricetestrestrictedindicator", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.stock_directory = ProtoField.new("Stock Directory", "bruceats.equities.lastsale.itch.v1.0.stockdirectory", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.stock_trading_action = ProtoField.new("Stock Trading Action", "bruceats.equities.lastsale.itch.v1.0.stocktradingaction", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "bruceats.equities.lastsale.itch.v1.0.systemeventmessage", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "bruceats.equities.lastsale.itch.v1.0.tradecancelmessage", ftypes.STRING)
omi_bruceats_equities_lastsale_itch_v1_0.fields.trade_report_message = ProtoField.new("Trade Report Message", "bruceats.equities.lastsale.itch.v1.0.tradereportmessage", ftypes.STRING)

-- BruceAts Equities LastSale Itch 1.0 generated fields
omi_bruceats_equities_lastsale_itch_v1_0.fields.message_index = ProtoField.new("Message Index", "bruceats.equities.lastsale.itch.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- BruceAts Equities LastSale Itch 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.reg_sho_short_sale_price_test_restricted_indicator = true
show.stock_directory = true
show.stock_trading_action = true
show.system_event_message = true
show.trade_cancel_message = true
show.trade_report_message = true
show.payload = false

-- Register BruceAts Equities LastSale Itch 1.0 Show Options
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator", show.reg_sho_short_sale_price_test_restricted_indicator, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_stock_directory = Pref.bool("Show Stock Directory", show.stock_directory, "Parse and add Stock Directory to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_stock_trading_action = Pref.bool("Show Stock Trading Action", show.stock_trading_action, "Parse and add Stock Trading Action to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_bruceats_equities_lastsale_itch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_message then
    show.message = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_message_header then
    show.message_header = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_packet then
    show.packet = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_packet_header then
    show.packet_header = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator then
    show.reg_sho_short_sale_price_test_restricted_indicator = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator
    changed = true
  end
  if show.stock_directory ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_stock_directory then
    show.stock_directory = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_stock_directory
    changed = true
  end
  if show.stock_trading_action ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_stock_trading_action then
    show.stock_trading_action = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_stock_trading_action
    changed = true
  end
  if show.system_event_message ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_system_event_message then
    show.system_event_message = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_system_event_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_trade_cancel_message
    changed = true
  end
  if show.trade_report_message ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_trade_report_message then
    show.trade_report_message = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_trade_report_message
    changed = true
  end
  if show.payload ~= omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_payload then
    show.payload = omi_bruceats_equities_lastsale_itch_v1_0.prefs.show_payload
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
-- Dissect BruceAts Equities LastSale Itch 1.0
-----------------------------------------------------------------------

-- Size
bruceats_equities_lastsale_itch_v1_0.size = {}

-- Size: Size
bruceats_equities_lastsale_itch_v1_0.size.size = 4

-- Display: Size
bruceats_equities_lastsale_itch_v1_0.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
bruceats_equities_lastsale_itch_v1_0.size.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bruceats_equities_lastsale_itch_v1_0.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.size, range, value, display)

  return offset + length, value
end

-- Price
bruceats_equities_lastsale_itch_v1_0.price = {}

-- Size: Price
bruceats_equities_lastsale_itch_v1_0.price.size = 8

-- Display: Price
bruceats_equities_lastsale_itch_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bruceats_equities_lastsale_itch_v1_0.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
bruceats_equities_lastsale_itch_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = bruceats_equities_lastsale_itch_v1_0.price.translate(raw)
  local display = bruceats_equities_lastsale_itch_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Match Id
bruceats_equities_lastsale_itch_v1_0.match_id = {}

-- Size: Match Id
bruceats_equities_lastsale_itch_v1_0.match_id.size = 8

-- Display: Match Id
bruceats_equities_lastsale_itch_v1_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
bruceats_equities_lastsale_itch_v1_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bruceats_equities_lastsale_itch_v1_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Stock
bruceats_equities_lastsale_itch_v1_0.stock = {}

-- Size: Stock
bruceats_equities_lastsale_itch_v1_0.stock.size = 8

-- Display: Stock
bruceats_equities_lastsale_itch_v1_0.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
bruceats_equities_lastsale_itch_v1_0.stock.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bruceats_equities_lastsale_itch_v1_0.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
bruceats_equities_lastsale_itch_v1_0.timestamp = {}

-- Size: Timestamp
bruceats_equities_lastsale_itch_v1_0.timestamp.size = 8

-- Display: Timestamp
bruceats_equities_lastsale_itch_v1_0.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
bruceats_equities_lastsale_itch_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bruceats_equities_lastsale_itch_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Stock Locate
bruceats_equities_lastsale_itch_v1_0.stock_locate = {}

-- Size: Stock Locate
bruceats_equities_lastsale_itch_v1_0.stock_locate.size = 2

-- Display: Stock Locate
bruceats_equities_lastsale_itch_v1_0.stock_locate.display = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
bruceats_equities_lastsale_itch_v1_0.stock_locate.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.stock_locate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bruceats_equities_lastsale_itch_v1_0.stock_locate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.stock_locate, range, value, display)

  return offset + length, value
end

-- Trade Cancel Message
bruceats_equities_lastsale_itch_v1_0.trade_cancel_message = {}

-- Size: Trade Cancel Message
bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.size =
  bruceats_equities_lastsale_itch_v1_0.stock_locate.size + 
  bruceats_equities_lastsale_itch_v1_0.timestamp.size + 
  bruceats_equities_lastsale_itch_v1_0.stock.size + 
  bruceats_equities_lastsale_itch_v1_0.match_id.size + 
  bruceats_equities_lastsale_itch_v1_0.price.size + 
  bruceats_equities_lastsale_itch_v1_0.size.size

-- Display: Trade Cancel Message
bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = bruceats_equities_lastsale_itch_v1_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = bruceats_equities_lastsale_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = bruceats_equities_lastsale_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = bruceats_equities_lastsale_itch_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bruceats_equities_lastsale_itch_v1_0.price.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = bruceats_equities_lastsale_itch_v1_0.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.trade_cancel_message, buffer(offset, 0))
    local index = bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
bruceats_equities_lastsale_itch_v1_0.trade_report_message = {}

-- Size: Trade Report Message
bruceats_equities_lastsale_itch_v1_0.trade_report_message.size =
  bruceats_equities_lastsale_itch_v1_0.stock_locate.size + 
  bruceats_equities_lastsale_itch_v1_0.timestamp.size + 
  bruceats_equities_lastsale_itch_v1_0.stock.size + 
  bruceats_equities_lastsale_itch_v1_0.match_id.size + 
  bruceats_equities_lastsale_itch_v1_0.price.size + 
  bruceats_equities_lastsale_itch_v1_0.size.size

-- Display: Trade Report Message
bruceats_equities_lastsale_itch_v1_0.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
bruceats_equities_lastsale_itch_v1_0.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = bruceats_equities_lastsale_itch_v1_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = bruceats_equities_lastsale_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = bruceats_equities_lastsale_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = bruceats_equities_lastsale_itch_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bruceats_equities_lastsale_itch_v1_0.price.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = bruceats_equities_lastsale_itch_v1_0.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
bruceats_equities_lastsale_itch_v1_0.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.trade_report_message, buffer(offset, 0))
    local index = bruceats_equities_lastsale_itch_v1_0.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bruceats_equities_lastsale_itch_v1_0.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bruceats_equities_lastsale_itch_v1_0.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Action
bruceats_equities_lastsale_itch_v1_0.reg_sho_action = {}

-- Size: Reg Sho Action
bruceats_equities_lastsale_itch_v1_0.reg_sho_action.size = 1

-- Display: Reg Sho Action
bruceats_equities_lastsale_itch_v1_0.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Place (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Reg Sho Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
bruceats_equities_lastsale_itch_v1_0.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bruceats_equities_lastsale_itch_v1_0.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reg Sho Short Sale Price Test Restricted Indicator
bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator
bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.size =
  bruceats_equities_lastsale_itch_v1_0.stock_locate.size + 
  bruceats_equities_lastsale_itch_v1_0.timestamp.size + 
  bruceats_equities_lastsale_itch_v1_0.stock.size + 
  bruceats_equities_lastsale_itch_v1_0.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator
bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator
bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = bruceats_equities_lastsale_itch_v1_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = bruceats_equities_lastsale_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = bruceats_equities_lastsale_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = bruceats_equities_lastsale_itch_v1_0.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator
bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_short_sale_price_test_restricted_indicator then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.reg_sho_short_sale_price_test_restricted_indicator, buffer(offset, 0))
    local index = bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.fields(buffer, offset, packet, parent)
  end
end

-- Trading State
bruceats_equities_lastsale_itch_v1_0.trading_state = {}

-- Size: Trading State
bruceats_equities_lastsale_itch_v1_0.trading_state.size = 1

-- Display: Trading State
bruceats_equities_lastsale_itch_v1_0.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
bruceats_equities_lastsale_itch_v1_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bruceats_equities_lastsale_itch_v1_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Stock Trading Action
bruceats_equities_lastsale_itch_v1_0.stock_trading_action = {}

-- Size: Stock Trading Action
bruceats_equities_lastsale_itch_v1_0.stock_trading_action.size =
  bruceats_equities_lastsale_itch_v1_0.stock_locate.size + 
  bruceats_equities_lastsale_itch_v1_0.timestamp.size + 
  bruceats_equities_lastsale_itch_v1_0.stock.size + 
  bruceats_equities_lastsale_itch_v1_0.trading_state.size

-- Display: Stock Trading Action
bruceats_equities_lastsale_itch_v1_0.stock_trading_action.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action
bruceats_equities_lastsale_itch_v1_0.stock_trading_action.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = bruceats_equities_lastsale_itch_v1_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = bruceats_equities_lastsale_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = bruceats_equities_lastsale_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alphanumeric
  index, trading_state = bruceats_equities_lastsale_itch_v1_0.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action
bruceats_equities_lastsale_itch_v1_0.stock_trading_action.dissect = function(buffer, offset, packet, parent)
  if show.stock_trading_action then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.stock_trading_action, buffer(offset, 0))
    local index = bruceats_equities_lastsale_itch_v1_0.stock_trading_action.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bruceats_equities_lastsale_itch_v1_0.stock_trading_action.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bruceats_equities_lastsale_itch_v1_0.stock_trading_action.fields(buffer, offset, packet, parent)
  end
end

-- Authenticity
bruceats_equities_lastsale_itch_v1_0.authenticity = {}

-- Size: Authenticity
bruceats_equities_lastsale_itch_v1_0.authenticity.size = 1

-- Display: Authenticity
bruceats_equities_lastsale_itch_v1_0.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
bruceats_equities_lastsale_itch_v1_0.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bruceats_equities_lastsale_itch_v1_0.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Round Lot Size
bruceats_equities_lastsale_itch_v1_0.round_lot_size = {}

-- Size: Round Lot Size
bruceats_equities_lastsale_itch_v1_0.round_lot_size.size = 4

-- Display: Round Lot Size
bruceats_equities_lastsale_itch_v1_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
bruceats_equities_lastsale_itch_v1_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bruceats_equities_lastsale_itch_v1_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Market Category
bruceats_equities_lastsale_itch_v1_0.market_category = {}

-- Size: Market Category
bruceats_equities_lastsale_itch_v1_0.market_category.size = 1

-- Display: Market Category
bruceats_equities_lastsale_itch_v1_0.market_category.display = function(value)
  if value == "A" then
    return "Market Category: Nyse American (A)"
  end
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Market Category: Nasdaq (Q)"
  end
  if value == "V" then
    return "Market Category: Investors Exchange Llc (V)"
  end
  if value == "Z" then
    return "Market Category: Cboe Bzx (Z)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
bruceats_equities_lastsale_itch_v1_0.market_category.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bruceats_equities_lastsale_itch_v1_0.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Stock Directory
bruceats_equities_lastsale_itch_v1_0.stock_directory = {}

-- Size: Stock Directory
bruceats_equities_lastsale_itch_v1_0.stock_directory.size =
  bruceats_equities_lastsale_itch_v1_0.stock_locate.size + 
  bruceats_equities_lastsale_itch_v1_0.timestamp.size + 
  bruceats_equities_lastsale_itch_v1_0.stock.size + 
  bruceats_equities_lastsale_itch_v1_0.market_category.size + 
  bruceats_equities_lastsale_itch_v1_0.round_lot_size.size + 
  bruceats_equities_lastsale_itch_v1_0.authenticity.size

-- Display: Stock Directory
bruceats_equities_lastsale_itch_v1_0.stock_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory
bruceats_equities_lastsale_itch_v1_0.stock_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = bruceats_equities_lastsale_itch_v1_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = bruceats_equities_lastsale_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = bruceats_equities_lastsale_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = bruceats_equities_lastsale_itch_v1_0.market_category.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = bruceats_equities_lastsale_itch_v1_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Authenticity: Alphanumeric
  index, authenticity = bruceats_equities_lastsale_itch_v1_0.authenticity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory
bruceats_equities_lastsale_itch_v1_0.stock_directory.dissect = function(buffer, offset, packet, parent)
  if show.stock_directory then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.stock_directory, buffer(offset, 0))
    local index = bruceats_equities_lastsale_itch_v1_0.stock_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bruceats_equities_lastsale_itch_v1_0.stock_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bruceats_equities_lastsale_itch_v1_0.stock_directory.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
bruceats_equities_lastsale_itch_v1_0.event_code = {}

-- Size: Event Code
bruceats_equities_lastsale_itch_v1_0.event_code.size = 1

-- Display: Event Code
bruceats_equities_lastsale_itch_v1_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Transmissions (O)"
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
    return "Event Code: End Of Transmissions (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
bruceats_equities_lastsale_itch_v1_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bruceats_equities_lastsale_itch_v1_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
bruceats_equities_lastsale_itch_v1_0.system_event_message = {}

-- Size: System Event Message
bruceats_equities_lastsale_itch_v1_0.system_event_message.size =
  bruceats_equities_lastsale_itch_v1_0.stock_locate.size + 
  bruceats_equities_lastsale_itch_v1_0.timestamp.size + 
  bruceats_equities_lastsale_itch_v1_0.event_code.size

-- Display: System Event Message
bruceats_equities_lastsale_itch_v1_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
bruceats_equities_lastsale_itch_v1_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = bruceats_equities_lastsale_itch_v1_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = bruceats_equities_lastsale_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alphanumeric
  index, event_code = bruceats_equities_lastsale_itch_v1_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
bruceats_equities_lastsale_itch_v1_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = bruceats_equities_lastsale_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bruceats_equities_lastsale_itch_v1_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bruceats_equities_lastsale_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bruceats_equities_lastsale_itch_v1_0.payload = {}

-- Size: Payload
bruceats_equities_lastsale_itch_v1_0.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return bruceats_equities_lastsale_itch_v1_0.system_event_message.size
  end
  -- Size of Stock Directory
  if message_type == "R" then
    return bruceats_equities_lastsale_itch_v1_0.stock_directory.size
  end
  -- Size of Stock Trading Action
  if message_type == "H" then
    return bruceats_equities_lastsale_itch_v1_0.stock_trading_action.size
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator
  if message_type == "Y" then
    return bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.size
  end
  -- Size of Trade Report Message
  if message_type == "T" then
    return bruceats_equities_lastsale_itch_v1_0.trade_report_message.size
  end
  -- Size of Trade Cancel Message
  if message_type == "X" then
    return bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.size
  end

  return 0
end

-- Display: Payload
bruceats_equities_lastsale_itch_v1_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
bruceats_equities_lastsale_itch_v1_0.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return bruceats_equities_lastsale_itch_v1_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory
  if message_type == "R" then
    return bruceats_equities_lastsale_itch_v1_0.stock_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action
  if message_type == "H" then
    return bruceats_equities_lastsale_itch_v1_0.stock_trading_action.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator
  if message_type == "Y" then
    return bruceats_equities_lastsale_itch_v1_0.reg_sho_short_sale_price_test_restricted_indicator.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return bruceats_equities_lastsale_itch_v1_0.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "X" then
    return bruceats_equities_lastsale_itch_v1_0.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
bruceats_equities_lastsale_itch_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return bruceats_equities_lastsale_itch_v1_0.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = bruceats_equities_lastsale_itch_v1_0.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = bruceats_equities_lastsale_itch_v1_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.payload, range, display)

  return bruceats_equities_lastsale_itch_v1_0.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
bruceats_equities_lastsale_itch_v1_0.message_type = {}

-- Size: Message Type
bruceats_equities_lastsale_itch_v1_0.message_type.size = 1

-- Display: Message Type
bruceats_equities_lastsale_itch_v1_0.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory (R)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator (Y)"
  end
  if value == "T" then
    return "Message Type: Trade Report Message (T)"
  end
  if value == "X" then
    return "Message Type: Trade Cancel Message (X)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
bruceats_equities_lastsale_itch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bruceats_equities_lastsale_itch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
bruceats_equities_lastsale_itch_v1_0.message_length = {}

-- Size: Message Length
bruceats_equities_lastsale_itch_v1_0.message_length.size = 2

-- Display: Message Length
bruceats_equities_lastsale_itch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bruceats_equities_lastsale_itch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bruceats_equities_lastsale_itch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
bruceats_equities_lastsale_itch_v1_0.message_header = {}

-- Size: Message Header
bruceats_equities_lastsale_itch_v1_0.message_header.size =
  bruceats_equities_lastsale_itch_v1_0.message_length.size + 
  bruceats_equities_lastsale_itch_v1_0.message_type.size

-- Display: Message Header
bruceats_equities_lastsale_itch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bruceats_equities_lastsale_itch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = bruceats_equities_lastsale_itch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 6 values
  index, message_type = bruceats_equities_lastsale_itch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bruceats_equities_lastsale_itch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.message_header, buffer(offset, 0))
    local index = bruceats_equities_lastsale_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bruceats_equities_lastsale_itch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bruceats_equities_lastsale_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bruceats_equities_lastsale_itch_v1_0.message = {}

-- Display: Message
bruceats_equities_lastsale_itch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bruceats_equities_lastsale_itch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bruceats_equities_lastsale_itch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = bruceats_equities_lastsale_itch_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
bruceats_equities_lastsale_itch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.message, buffer(offset, 0))
    local current = bruceats_equities_lastsale_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = bruceats_equities_lastsale_itch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bruceats_equities_lastsale_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
bruceats_equities_lastsale_itch_v1_0.message_count = {}

-- Size: Message Count
bruceats_equities_lastsale_itch_v1_0.message_count.size = 2

-- Display: Message Count
bruceats_equities_lastsale_itch_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
bruceats_equities_lastsale_itch_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bruceats_equities_lastsale_itch_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
bruceats_equities_lastsale_itch_v1_0.sequence_number = {}

-- Size: Sequence Number
bruceats_equities_lastsale_itch_v1_0.sequence_number.size = 8

-- Display: Sequence Number
bruceats_equities_lastsale_itch_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bruceats_equities_lastsale_itch_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bruceats_equities_lastsale_itch_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
bruceats_equities_lastsale_itch_v1_0.session = {}

-- Size: Session
bruceats_equities_lastsale_itch_v1_0.session.size = 10

-- Display: Session
bruceats_equities_lastsale_itch_v1_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
bruceats_equities_lastsale_itch_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = bruceats_equities_lastsale_itch_v1_0.session.size
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

  local display = bruceats_equities_lastsale_itch_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
bruceats_equities_lastsale_itch_v1_0.packet_header = {}

-- Size: Packet Header
bruceats_equities_lastsale_itch_v1_0.packet_header.size =
  bruceats_equities_lastsale_itch_v1_0.session.size + 
  bruceats_equities_lastsale_itch_v1_0.sequence_number.size + 
  bruceats_equities_lastsale_itch_v1_0.message_count.size

-- Display: Packet Header
bruceats_equities_lastsale_itch_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
bruceats_equities_lastsale_itch_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = bruceats_equities_lastsale_itch_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = bruceats_equities_lastsale_itch_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = bruceats_equities_lastsale_itch_v1_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
bruceats_equities_lastsale_itch_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bruceats_equities_lastsale_itch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = bruceats_equities_lastsale_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bruceats_equities_lastsale_itch_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bruceats_equities_lastsale_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bruceats_equities_lastsale_itch_v1_0.packet = {}

-- Dissect Packet
bruceats_equities_lastsale_itch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = bruceats_equities_lastsale_itch_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = bruceats_equities_lastsale_itch_v1_0.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bruceats_equities_lastsale_itch_v1_0.init()
end

-- Dissector for BruceAts Equities LastSale Itch 1.0
function omi_bruceats_equities_lastsale_itch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_bruceats_equities_lastsale_itch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_bruceats_equities_lastsale_itch_v1_0, buffer(), omi_bruceats_equities_lastsale_itch_v1_0.description, "("..buffer:len().." Bytes)")
  return bruceats_equities_lastsale_itch_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_bruceats_equities_lastsale_itch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
bruceats_equities_lastsale_itch_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for BruceAts Equities LastSale Itch 1.0
local function omi_bruceats_equities_lastsale_itch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bruceats_equities_lastsale_itch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bruceats_equities_lastsale_itch_v1_0
  omi_bruceats_equities_lastsale_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for BruceAts Equities LastSale Itch 1.0
omi_bruceats_equities_lastsale_itch_v1_0:register_heuristic("udp", omi_bruceats_equities_lastsale_itch_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Bruce Markets
--   Version: 1.0
--   Date: Saturday, March 1, 2025
--   Specification: Bruce_Last_Sale.pdf
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
