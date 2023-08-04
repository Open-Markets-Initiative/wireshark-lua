-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Psx Bbo Itch 2.1 Protocol
local nasdaq_psx_bbo_itch_v2_1 = Proto("Nasdaq.Psx.Bbo.Itch.v2.1.Lua", "Nasdaq Psx Bbo Itch 2.1")

-- Component Tables
local show = {}
local format = {}
local nasdaq_psx_bbo_itch_v2_1_display = {}
local nasdaq_psx_bbo_itch_v2_1_dissect = {}
local nasdaq_psx_bbo_itch_v2_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Psx Bbo Itch 2.1 Fields
nasdaq_psx_bbo_itch_v2_1.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psx.bbo.itch.v2.1.authenticity", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psx.bbo.itch.v2.1.breachedlevel", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.count = ProtoField.new("Count", "nasdaq.psx.bbo.itch.v2.1.count", ftypes.UINT16)
nasdaq_psx_bbo_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.psx.bbo.itch.v2.1.currenttradingstate", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psx.bbo.itch.v2.1.etpflag", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psx.bbo.itch.v2.1.etpleveragefactor", ftypes.UINT32)
nasdaq_psx_bbo_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.psx.bbo.itch.v2.1.eventcode", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psx.bbo.itch.v2.1.financialstatusindicator", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psx.bbo.itch.v2.1.inverseindicator", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psx.bbo.itch.v2.1.ipoflag", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psx.bbo.itch.v2.1.issueclassification", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psx.bbo.itch.v2.1.issuesubtype", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.length = ProtoField.new("Length", "nasdaq.psx.bbo.itch.v2.1.length", ftypes.UINT16)
nasdaq_psx_bbo_itch_v2_1.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psx.bbo.itch.v2.1.level1", ftypes.DOUBLE)
nasdaq_psx_bbo_itch_v2_1.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psx.bbo.itch.v2.1.level2", ftypes.DOUBLE)
nasdaq_psx_bbo_itch_v2_1.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psx.bbo.itch.v2.1.level3", ftypes.DOUBLE)
nasdaq_psx_bbo_itch_v2_1.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psx.bbo.itch.v2.1.luldreferencepricetier", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.psx.bbo.itch.v2.1.marketcategory", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.market_code = ProtoField.new("Market Code", "nasdaq.psx.bbo.itch.v2.1.marketcode", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.psx.bbo.itch.v2.1.message", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.psx.bbo.itch.v2.1.messageheader", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.psx.bbo.itch.v2.1.messagetype", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psx.bbo.itch.v2.1.mwcbdeclinelevelmessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.psx.bbo.itch.v2.1.mwcbstatusmessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.nasdaq_best_bid = ProtoField.new("Nasdaq Best Bid", "nasdaq.psx.bbo.itch.v2.1.nasdaqbestbid", ftypes.DOUBLE)
nasdaq_psx_bbo_itch_v2_1.fields.next_shares_quotation_message = ProtoField.new("Next Shares Quotation Message", "nasdaq.psx.bbo.itch.v2.1.nextsharesquotationmessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.next_shares_symbol = ProtoField.new("Next Shares Symbol", "nasdaq.psx.bbo.itch.v2.1.nextsharessymbol", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psx.bbo.itch.v2.1.operationalhaltaction", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psx.bbo.itch.v2.1.operationalhaltmessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.psx.bbo.itch.v2.1.packet", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psx.bbo.itch.v2.1.packetheader", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.payload = ProtoField.new("Payload", "nasdaq.psx.bbo.itch.v2.1.payload", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.psx_best_bid_price = ProtoField.new("Psx Best Bid Price", "nasdaq.psx.bbo.itch.v2.1.psxbestbidprice", ftypes.DOUBLE)
nasdaq_psx_bbo_itch_v2_1.fields.psx_best_bid_size = ProtoField.new("Psx Best Bid Size", "nasdaq.psx.bbo.itch.v2.1.psxbestbidsize", ftypes.UINT32)
nasdaq_psx_bbo_itch_v2_1.fields.psx_best_offer_price = ProtoField.new("Psx Best Offer Price", "nasdaq.psx.bbo.itch.v2.1.psxbestofferprice", ftypes.DOUBLE)
nasdaq_psx_bbo_itch_v2_1.fields.psx_best_offer_size = ProtoField.new("Psx Best Offer Size", "nasdaq.psx.bbo.itch.v2.1.psxbestoffersize", ftypes.UINT32)
nasdaq_psx_bbo_itch_v2_1.fields.quotation_message = ProtoField.new("Quotation Message", "nasdaq.psx.bbo.itch.v2.1.quotationmessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.reason = ProtoField.new("Reason", "nasdaq.psx.bbo.itch.v2.1.reason", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psx.bbo.itch.v2.1.regshoaction", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psx.bbo.itch.v2.1.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psx.bbo.itch.v2.1.roundlotsize", ftypes.UINT32)
nasdaq_psx_bbo_itch_v2_1.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psx.bbo.itch.v2.1.roundlotsonly", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.security_class = ProtoField.new("Security Class", "nasdaq.psx.bbo.itch.v2.1.securityclass", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.sequence = ProtoField.new("Sequence", "nasdaq.psx.bbo.itch.v2.1.sequence", ftypes.UINT64)
nasdaq_psx_bbo_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.psx.bbo.itch.v2.1.session", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psx.bbo.itch.v2.1.shortsalethresholdindicator", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.stock = ProtoField.new("Stock", "nasdaq.psx.bbo.itch.v2.1.stock", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psx.bbo.itch.v2.1.stockdirectorymessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psx.bbo.itch.v2.1.stocktradingactionmessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psx.bbo.itch.v2.1.systemeventmessage", ftypes.STRING)
nasdaq_psx_bbo_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psx.bbo.itch.v2.1.timestamp", ftypes.UINT64)
nasdaq_psx_bbo_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psx.bbo.itch.v2.1.trackingnumber", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Psx Bbo Itch 2.1 Element Dissection Options
show.message = true
show.message_header = true
show.mwcb_decline_level_message = true
show.mwcb_status_message = true
show.next_shares_quotation_message = true
show.operational_halt_message = true
show.packet = true
show.packet_header = true
show.quotation_message = true
show.reg_sho_short_sale_price_test_restricted_indicator_message = true
show.stock_directory_message = true
show.stock_trading_action_message = true
show.system_event_message = true
show.payload = false

-- Register Nasdaq Psx Bbo Itch 2.1 Show Options
nasdaq_psx_bbo_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_mwcb_decline_level_message = Pref.bool("Show Mwcb Decline Level Message", show.mwcb_decline_level_message, "Parse and add Mwcb Decline Level Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_mwcb_status_message = Pref.bool("Show Mwcb Status Message", show.mwcb_status_message, "Parse and add Mwcb Status Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_next_shares_quotation_message = Pref.bool("Show Next Shares Quotation Message", show.next_shares_quotation_message, "Parse and add Next Shares Quotation Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_operational_halt_message = Pref.bool("Show Operational Halt Message", show.operational_halt_message, "Parse and add Operational Halt Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_quotation_message = Pref.bool("Show Quotation Message", show.quotation_message, "Parse and add Quotation Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_stock_trading_action_message = Pref.bool("Show Stock Trading Action Message", show.stock_trading_action_message, "Parse and add Stock Trading Action Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_psx_bbo_itch_v2_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_psx_bbo_itch_v2_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_message then
    show.message = nasdaq_psx_bbo_itch_v2_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_message_header then
    show.message_header = nasdaq_psx_bbo_itch_v2_1.prefs.show_message_header
    changed = true
  end
  if show.mwcb_decline_level_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_mwcb_decline_level_message then
    show.mwcb_decline_level_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_mwcb_decline_level_message
    changed = true
  end
  if show.mwcb_status_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_mwcb_status_message then
    show.mwcb_status_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_mwcb_status_message
    changed = true
  end
  if show.next_shares_quotation_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_next_shares_quotation_message then
    show.next_shares_quotation_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_next_shares_quotation_message
    changed = true
  end
  if show.operational_halt_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_operational_halt_message then
    show.operational_halt_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_operational_halt_message
    changed = true
  end
  if show.packet ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_packet then
    show.packet = nasdaq_psx_bbo_itch_v2_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_packet_header then
    show.packet_header = nasdaq_psx_bbo_itch_v2_1.prefs.show_packet_header
    changed = true
  end
  if show.quotation_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_quotation_message then
    show.quotation_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_quotation_message
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.stock_directory_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_stock_directory_message then
    show.stock_directory_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_stock_directory_message
    changed = true
  end
  if show.stock_trading_action_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_stock_trading_action_message then
    show.stock_trading_action_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_stock_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_system_event_message then
    show.system_event_message = nasdaq_psx_bbo_itch_v2_1.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_psx_bbo_itch_v2_1.prefs.show_payload then
    show.payload = nasdaq_psx_bbo_itch_v2_1.prefs.show_payload
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
-- Dissect Nasdaq Psx Bbo Itch 2.1
-----------------------------------------------------------------------

-- Size: Nasdaq Best Bid
nasdaq_psx_bbo_itch_v2_1_size_of.nasdaq_best_bid = 4

-- Display: Nasdaq Best Bid
nasdaq_psx_bbo_itch_v2_1_display.nasdaq_best_bid = function(value)
  return "Nasdaq Best Bid: "..value
end

-- Translate: Nasdaq Best Bid
translate.nasdaq_best_bid = function(raw)
  return raw/10000
end

-- Dissect: Nasdaq Best Bid
nasdaq_psx_bbo_itch_v2_1_dissect.nasdaq_best_bid = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.nasdaq_best_bid
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.nasdaq_best_bid(raw)
  local display = nasdaq_psx_bbo_itch_v2_1_display.nasdaq_best_bid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.nasdaq_best_bid, range, value, display)

  return offset + length, value
end

-- Size: Security Class
nasdaq_psx_bbo_itch_v2_1_size_of.security_class = 1

-- Display: Security Class
nasdaq_psx_bbo_itch_v2_1_display.security_class = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq Listed Issue (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse Mkt (A)"
  end
  if value == "P" then
    return "Security Class: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Security Class: Bats (Z)"
  end
  if value == "V" then
    return "Security Class: Iexg (V)"
  end
  if value == " " then
    return "Security Class: Na (<whitespace>)"
  end

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_psx_bbo_itch_v2_1_dissect.security_class = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.security_class
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.security_class(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.security_class, range, value, display)

  return offset + length, value
end

-- Size: Next Shares Symbol
nasdaq_psx_bbo_itch_v2_1_size_of.next_shares_symbol = 8

-- Display: Next Shares Symbol
nasdaq_psx_bbo_itch_v2_1_display.next_shares_symbol = function(value)
  return "Next Shares Symbol: "..value
end

-- Dissect: Next Shares Symbol
nasdaq_psx_bbo_itch_v2_1_dissect.next_shares_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.next_shares_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psx_bbo_itch_v2_1_display.next_shares_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.next_shares_symbol, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_psx_bbo_itch_v2_1_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_psx_bbo_itch_v2_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_psx_bbo_itch_v2_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psx_bbo_itch_v2_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Tracking Number
nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number = 2

-- Display: Tracking Number
nasdaq_psx_bbo_itch_v2_1_display.tracking_number = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psx_bbo_itch_v2_1_display.tracking_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Next Shares Quotation Message
nasdaq_psx_bbo_itch_v2_1_size_of.next_shares_quotation_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.next_shares_symbol

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.security_class

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.nasdaq_best_bid

  return index
end

-- Display: Next Shares Quotation Message
nasdaq_psx_bbo_itch_v2_1_display.next_shares_quotation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Next Shares Quotation Message
nasdaq_psx_bbo_itch_v2_1_dissect.next_shares_quotation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Next Shares Symbol: 8 Byte Ascii String
  index, next_shares_symbol = nasdaq_psx_bbo_itch_v2_1_dissect.next_shares_symbol(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 7 values
  index, security_class = nasdaq_psx_bbo_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Nasdaq Best Bid: 4 Byte Unsigned Fixed Width Integer
  index, nasdaq_best_bid = nasdaq_psx_bbo_itch_v2_1_dissect.nasdaq_best_bid(buffer, index, packet, parent)

  return index
end

-- Dissect: Next Shares Quotation Message
nasdaq_psx_bbo_itch_v2_1_dissect.next_shares_quotation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.next_shares_quotation_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.next_shares_quotation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.next_shares_quotation_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.next_shares_quotation_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.next_shares_quotation_message_fields(buffer, offset, packet, parent)
end

-- Size: Psx Best Offer Size
nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_offer_size = 4

-- Display: Psx Best Offer Size
nasdaq_psx_bbo_itch_v2_1_display.psx_best_offer_size = function(value)
  return "Psx Best Offer Size: "..value
end

-- Dissect: Psx Best Offer Size
nasdaq_psx_bbo_itch_v2_1_dissect.psx_best_offer_size = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_offer_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psx_bbo_itch_v2_1_display.psx_best_offer_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.psx_best_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Psx Best Offer Price
nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_offer_price = 4

-- Display: Psx Best Offer Price
nasdaq_psx_bbo_itch_v2_1_display.psx_best_offer_price = function(value)
  return "Psx Best Offer Price: "..value
end

-- Translate: Psx Best Offer Price
translate.psx_best_offer_price = function(raw)
  return raw/10000
end

-- Dissect: Psx Best Offer Price
nasdaq_psx_bbo_itch_v2_1_dissect.psx_best_offer_price = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_offer_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.psx_best_offer_price(raw)
  local display = nasdaq_psx_bbo_itch_v2_1_display.psx_best_offer_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.psx_best_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Psx Best Bid Size
nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_bid_size = 4

-- Display: Psx Best Bid Size
nasdaq_psx_bbo_itch_v2_1_display.psx_best_bid_size = function(value)
  return "Psx Best Bid Size: "..value
end

-- Dissect: Psx Best Bid Size
nasdaq_psx_bbo_itch_v2_1_dissect.psx_best_bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psx_bbo_itch_v2_1_display.psx_best_bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.psx_best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Psx Best Bid Price
nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_bid_price = 4

-- Display: Psx Best Bid Price
nasdaq_psx_bbo_itch_v2_1_display.psx_best_bid_price = function(value)
  return "Psx Best Bid Price: "..value
end

-- Translate: Psx Best Bid Price
translate.psx_best_bid_price = function(raw)
  return raw/10000
end

-- Dissect: Psx Best Bid Price
nasdaq_psx_bbo_itch_v2_1_dissect.psx_best_bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_bid_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.psx_best_bid_price(raw)
  local display = nasdaq_psx_bbo_itch_v2_1_display.psx_best_bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.psx_best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Stock
nasdaq_psx_bbo_itch_v2_1_size_of.stock = 8

-- Display: Stock
nasdaq_psx_bbo_itch_v2_1_display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psx_bbo_itch_v2_1_dissect.stock = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.stock
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psx_bbo_itch_v2_1_display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.stock, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quotation Message
nasdaq_psx_bbo_itch_v2_1_size_of.quotation_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.stock

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.security_class

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_bid_price

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_bid_size

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_offer_price

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.psx_best_offer_size

  return index
end

-- Display: Quotation Message
nasdaq_psx_bbo_itch_v2_1_display.quotation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quotation Message
nasdaq_psx_bbo_itch_v2_1_dissect.quotation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psx_bbo_itch_v2_1_dissect.stock(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 7 values
  index, security_class = nasdaq_psx_bbo_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Psx Best Bid Price: 4 Byte Unsigned Fixed Width Integer
  index, psx_best_bid_price = nasdaq_psx_bbo_itch_v2_1_dissect.psx_best_bid_price(buffer, index, packet, parent)

  -- Psx Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, psx_best_bid_size = nasdaq_psx_bbo_itch_v2_1_dissect.psx_best_bid_size(buffer, index, packet, parent)

  -- Psx Best Offer Price: 4 Byte Unsigned Fixed Width Integer
  index, psx_best_offer_price = nasdaq_psx_bbo_itch_v2_1_dissect.psx_best_offer_price(buffer, index, packet, parent)

  -- Psx Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, psx_best_offer_size = nasdaq_psx_bbo_itch_v2_1_dissect.psx_best_offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotation Message
nasdaq_psx_bbo_itch_v2_1_dissect.quotation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quotation_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.quotation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.quotation_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.quotation_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.quotation_message_fields(buffer, offset, packet, parent)
end

-- Size: Operational Halt Action
nasdaq_psx_bbo_itch_v2_1_size_of.operational_halt_action = 1

-- Display: Operational Halt Action
nasdaq_psx_bbo_itch_v2_1_display.operational_halt_action = function(value)
  if value == "H" then
    return "Operational Halt Action: Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_psx_bbo_itch_v2_1_dissect.operational_halt_action = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.operational_halt_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.operational_halt_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Size: Market Code
nasdaq_psx_bbo_itch_v2_1_size_of.market_code = 1

-- Display: Market Code
nasdaq_psx_bbo_itch_v2_1_display.market_code = function(value)
  if value == "Q" then
    return "Market Code: Nasdaq (Q)"
  end
  if value == "B" then
    return "Market Code: Bx (B)"
  end
  if value == "X" then
    return "Market Code: Psx (X)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_psx_bbo_itch_v2_1_dissect.market_code = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.market_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.market_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Operational Halt Message
nasdaq_psx_bbo_itch_v2_1_size_of.operational_halt_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.stock

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.market_code

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.operational_halt_action

  return index
end

-- Display: Operational Halt Message
nasdaq_psx_bbo_itch_v2_1_display.operational_halt_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_psx_bbo_itch_v2_1_dissect.operational_halt_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psx_bbo_itch_v2_1_dissect.stock(buffer, index, packet, parent)

  -- Market Code: 1 Byte Ascii String Enum with 3 values
  index, market_code = nasdaq_psx_bbo_itch_v2_1_dissect.market_code(buffer, index, packet, parent)

  -- Operational Halt Action: 1 Byte Ascii String Enum with 2 values
  index, operational_halt_action = nasdaq_psx_bbo_itch_v2_1_dissect.operational_halt_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_psx_bbo_itch_v2_1_dissect.operational_halt_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.operational_halt_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.operational_halt_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.operational_halt_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.operational_halt_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.operational_halt_message_fields(buffer, offset, packet, parent)
end

-- Size: Breached Level
nasdaq_psx_bbo_itch_v2_1_size_of.breached_level = 1

-- Display: Breached Level
nasdaq_psx_bbo_itch_v2_1_display.breached_level = function(value)
  if value == "1" then
    return "Breached Level: Level 1 (1)"
  end
  if value == "2" then
    return "Breached Level: Level 2 (2)"
  end
  if value == "3" then
    return "Breached Level: Level 3 (3)"
  end

  return "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
nasdaq_psx_bbo_itch_v2_1_dissect.breached_level = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.breached_level
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.breached_level(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Status Message
nasdaq_psx_bbo_itch_v2_1_size_of.mwcb_status_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.breached_level

  return index
end

-- Display: Mwcb Status Message
nasdaq_psx_bbo_itch_v2_1_display.mwcb_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_psx_bbo_itch_v2_1_dissect.mwcb_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = nasdaq_psx_bbo_itch_v2_1_dissect.breached_level(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_psx_bbo_itch_v2_1_dissect.mwcb_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mwcb_status_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.mwcb_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.mwcb_status_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.mwcb_status_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.mwcb_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Level 3
nasdaq_psx_bbo_itch_v2_1_size_of.level_3 = 8

-- Display: Level 3
nasdaq_psx_bbo_itch_v2_1_display.level_3 = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
translate.level_3 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psx_bbo_itch_v2_1_dissect.level_3 = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.level_3
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_3(raw)
  local display = nasdaq_psx_bbo_itch_v2_1_display.level_3(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.level_3, range, value, display)

  return offset + length, value
end

-- Size: Level 2
nasdaq_psx_bbo_itch_v2_1_size_of.level_2 = 8

-- Display: Level 2
nasdaq_psx_bbo_itch_v2_1_display.level_2 = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
translate.level_2 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psx_bbo_itch_v2_1_dissect.level_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.level_2
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_2(raw)
  local display = nasdaq_psx_bbo_itch_v2_1_display.level_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.level_2, range, value, display)

  return offset + length, value
end

-- Size: Level 1
nasdaq_psx_bbo_itch_v2_1_size_of.level_1 = 8

-- Display: Level 1
nasdaq_psx_bbo_itch_v2_1_display.level_1 = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
translate.level_1 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psx_bbo_itch_v2_1_dissect.level_1 = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.level_1
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_1(raw)
  local display = nasdaq_psx_bbo_itch_v2_1_display.level_1(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.level_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Decline Level Message
nasdaq_psx_bbo_itch_v2_1_size_of.mwcb_decline_level_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.level_1

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.level_2

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.level_3

  return index
end

-- Display: Mwcb Decline Level Message
nasdaq_psx_bbo_itch_v2_1_display.mwcb_decline_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psx_bbo_itch_v2_1_dissect.mwcb_decline_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Level 1: 8 Byte Unsigned Fixed Width Integer
  index, level_1 = nasdaq_psx_bbo_itch_v2_1_dissect.level_1(buffer, index, packet, parent)

  -- Level 2: 8 Byte Unsigned Fixed Width Integer
  index, level_2 = nasdaq_psx_bbo_itch_v2_1_dissect.level_2(buffer, index, packet, parent)

  -- Level 3: 8 Byte Unsigned Fixed Width Integer
  index, level_3 = nasdaq_psx_bbo_itch_v2_1_dissect.level_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psx_bbo_itch_v2_1_dissect.mwcb_decline_level_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mwcb_decline_level_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.mwcb_decline_level_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.mwcb_decline_level_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.mwcb_decline_level_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.mwcb_decline_level_message_fields(buffer, offset, packet, parent)
end

-- Size: Reg Sho Action
nasdaq_psx_bbo_itch_v2_1_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
nasdaq_psx_bbo_itch_v2_1_display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Test Restriction Remains (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_psx_bbo_itch_v2_1_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psx_bbo_itch_v2_1_size_of.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.stock

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.reg_sho_action

  return index
end

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psx_bbo_itch_v2_1_display.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psx_bbo_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psx_bbo_itch_v2_1_dissect.stock(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_psx_bbo_itch_v2_1_dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psx_bbo_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, parent)
end

-- Size: Reason
nasdaq_psx_bbo_itch_v2_1_size_of.reason = 4

-- Display: Reason
nasdaq_psx_bbo_itch_v2_1_display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_psx_bbo_itch_v2_1_dissect.reason = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psx_bbo_itch_v2_1_display.reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Current Trading State
nasdaq_psx_bbo_itch_v2_1_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_psx_bbo_itch_v2_1_display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halted (H)"
  end
  if value == "P" then
    return "Current Trading State: Paused (P)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only Period (Q)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_psx_bbo_itch_v2_1_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Trading Action Message
nasdaq_psx_bbo_itch_v2_1_size_of.stock_trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.stock

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.security_class

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.current_trading_state

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.reason

  return index
end

-- Display: Stock Trading Action Message
nasdaq_psx_bbo_itch_v2_1_display.stock_trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psx_bbo_itch_v2_1_dissect.stock_trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psx_bbo_itch_v2_1_dissect.stock(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 7 values
  index, security_class = nasdaq_psx_bbo_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index, current_trading_state = nasdaq_psx_bbo_itch_v2_1_dissect.current_trading_state(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = nasdaq_psx_bbo_itch_v2_1_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psx_bbo_itch_v2_1_dissect.stock_trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_trading_action_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.stock_trading_action_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.stock_trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.stock_trading_action_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.stock_trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Inverse Indicator
nasdaq_psx_bbo_itch_v2_1_size_of.inverse_indicator = 1

-- Display: Inverse Indicator
nasdaq_psx_bbo_itch_v2_1_display.inverse_indicator = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psx_bbo_itch_v2_1_dissect.inverse_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.inverse_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.inverse_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Size: Etp Leverage Factor
nasdaq_psx_bbo_itch_v2_1_size_of.etp_leverage_factor = 4

-- Display: Etp Leverage Factor
nasdaq_psx_bbo_itch_v2_1_display.etp_leverage_factor = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psx_bbo_itch_v2_1_dissect.etp_leverage_factor = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.etp_leverage_factor
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psx_bbo_itch_v2_1_display.etp_leverage_factor(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Size: Etp Flag
nasdaq_psx_bbo_itch_v2_1_size_of.etp_flag = 1

-- Display: Etp Flag
nasdaq_psx_bbo_itch_v2_1_display.etp_flag = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Na (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_psx_bbo_itch_v2_1_dissect.etp_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.etp_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.etp_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Size: Luld Reference Price Tier
nasdaq_psx_bbo_itch_v2_1_size_of.luld_reference_price_tier = 1

-- Display: Luld Reference Price Tier
nasdaq_psx_bbo_itch_v2_1_display.luld_reference_price_tier = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Na (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_psx_bbo_itch_v2_1_dissect.luld_reference_price_tier = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.luld_reference_price_tier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.luld_reference_price_tier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Flag
nasdaq_psx_bbo_itch_v2_1_size_of.ipo_flag = 1

-- Display: Ipo Flag
nasdaq_psx_bbo_itch_v2_1_display.ipo_flag = function(value)
  if value == "Y" then
    return "Ipo Flag: Nasdaq Listed Instrument (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Nasdaq Listed Instrument (N)"
  end
  if value == " " then
    return "Ipo Flag: Na (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_psx_bbo_itch_v2_1_dissect.ipo_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.ipo_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.ipo_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Threshold Indicator
nasdaq_psx_bbo_itch_v2_1_size_of.short_sale_threshold_indicator = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psx_bbo_itch_v2_1_display.short_sale_threshold_indicator = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Na (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_psx_bbo_itch_v2_1_dissect.short_sale_threshold_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.short_sale_threshold_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.short_sale_threshold_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Size: Authenticity
nasdaq_psx_bbo_itch_v2_1_size_of.authenticity = 1

-- Display: Authenticity
nasdaq_psx_bbo_itch_v2_1_display.authenticity = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psx_bbo_itch_v2_1_dissect.authenticity = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.authenticity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.authenticity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Size: Issue Sub Type
nasdaq_psx_bbo_itch_v2_1_size_of.issue_sub_type = 2

-- Display: Issue Sub Type
nasdaq_psx_bbo_itch_v2_1_display.issue_sub_type = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_psx_bbo_itch_v2_1_dissect.issue_sub_type = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.issue_sub_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psx_bbo_itch_v2_1_display.issue_sub_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Issue Classification
nasdaq_psx_bbo_itch_v2_1_size_of.issue_classification = 1

-- Display: Issue Classification
nasdaq_psx_bbo_itch_v2_1_display.issue_classification = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
nasdaq_psx_bbo_itch_v2_1_dissect.issue_classification = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.issue_classification
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.issue_classification(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Size: Round Lots Only
nasdaq_psx_bbo_itch_v2_1_size_of.round_lots_only = 1

-- Display: Round Lots Only
nasdaq_psx_bbo_itch_v2_1_display.round_lots_only = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: Odd Mixed Allowed (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psx_bbo_itch_v2_1_dissect.round_lots_only = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.round_lots_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.round_lots_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
nasdaq_psx_bbo_itch_v2_1_size_of.round_lot_size = 4

-- Display: Round Lot Size
nasdaq_psx_bbo_itch_v2_1_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psx_bbo_itch_v2_1_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psx_bbo_itch_v2_1_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
nasdaq_psx_bbo_itch_v2_1_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
nasdaq_psx_bbo_itch_v2_1_display.financial_status_indicator = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "S" then
    return "Financial Status Indicator: Suspended (S)"
  end
  if value == "G" then
    return "Financial Status Indicator: Deficient And Bankrupt (G)"
  end
  if value == "H" then
    return "Financial Status Indicator: Deficient And Delinquent (H)"
  end
  if value == "J" then
    return "Financial Status Indicator: Delinquent And Bankrupt (J)"
  end
  if value == "K" then
    return "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)"
  end
  if value == "C" then
    return "Financial Status Indicator: Creations And Redemptions Suspended (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Na (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_psx_bbo_itch_v2_1_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Category
nasdaq_psx_bbo_itch_v2_1_size_of.market_category = 1

-- Display: Market Category
nasdaq_psx_bbo_itch_v2_1_display.market_category = function(value)
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Amex (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Bzx (Z)"
  end
  if value == "V" then
    return "Market Category: Investors Exchange (V)"
  end
  if value == " " then
    return "Market Category: Na (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_psx_bbo_itch_v2_1_dissect.market_category = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.market_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.market_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.market_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Directory Message
nasdaq_psx_bbo_itch_v2_1_size_of.stock_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.stock

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.market_category

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.financial_status_indicator

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.round_lot_size

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.round_lots_only

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.issue_classification

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.issue_sub_type

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.authenticity

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.short_sale_threshold_indicator

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.ipo_flag

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.luld_reference_price_tier

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.etp_flag

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.etp_leverage_factor

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.inverse_indicator

  return index
end

-- Display: Stock Directory Message
nasdaq_psx_bbo_itch_v2_1_display.stock_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psx_bbo_itch_v2_1_dissect.stock_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psx_bbo_itch_v2_1_dissect.stock(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_psx_bbo_itch_v2_1_dissect.market_category(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_psx_bbo_itch_v2_1_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_psx_bbo_itch_v2_1_dissect.round_lot_size(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_psx_bbo_itch_v2_1_dissect.round_lots_only(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String
  index, issue_classification = nasdaq_psx_bbo_itch_v2_1_dissect.issue_classification(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String
  index, issue_sub_type = nasdaq_psx_bbo_itch_v2_1_dissect.issue_sub_type(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_psx_bbo_itch_v2_1_dissect.authenticity(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_psx_bbo_itch_v2_1_dissect.short_sale_threshold_indicator(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_psx_bbo_itch_v2_1_dissect.ipo_flag(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_psx_bbo_itch_v2_1_dissect.luld_reference_price_tier(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_psx_bbo_itch_v2_1_dissect.etp_flag(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_psx_bbo_itch_v2_1_dissect.etp_leverage_factor(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_psx_bbo_itch_v2_1_dissect.inverse_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psx_bbo_itch_v2_1_dissect.stock_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_directory_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.stock_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.stock_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.stock_directory_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.stock_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
nasdaq_psx_bbo_itch_v2_1_size_of.event_code = 1

-- Display: Event Code
nasdaq_psx_bbo_itch_v2_1_display.event_code = function(value)
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
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psx_bbo_itch_v2_1_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_psx_bbo_itch_v2_1_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_psx_bbo_itch_v2_1_display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psx_bbo_itch_v2_1_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psx_bbo_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psx_bbo_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_psx_bbo_itch_v2_1_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psx_bbo_itch_v2_1_dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.system_event_message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
nasdaq_psx_bbo_itch_v2_1_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.system_event_message(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.stock_directory_message(buffer, offset)
  end
  -- Size of Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.stock_trading_action_message(buffer, offset)
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
  end
  -- Size of Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.mwcb_decline_level_message(buffer, offset)
  end
  -- Size of Mwcb Status Message
  if message_type == "W" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.mwcb_status_message(buffer, offset)
  end
  -- Size of Operational Halt Message
  if message_type == "h" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.operational_halt_message(buffer, offset)
  end
  -- Size of Quotation Message
  if message_type == "Q" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.quotation_message(buffer, offset)
  end
  -- Size of Next Shares Quotation Message
  if message_type == "A" then
    return nasdaq_psx_bbo_itch_v2_1_size_of.next_shares_quotation_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_psx_bbo_itch_v2_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_psx_bbo_itch_v2_1_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.stock_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.stock_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.mwcb_decline_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Message
  if message_type == "W" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.mwcb_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.operational_halt_message(buffer, offset, packet, parent)
  end
  -- Dissect Quotation Message
  if message_type == "Q" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.quotation_message(buffer, offset, packet, parent)
  end
  -- Dissect Next Shares Quotation Message
  if message_type == "A" then
    return nasdaq_psx_bbo_itch_v2_1_dissect.next_shares_quotation_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_psx_bbo_itch_v2_1_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_psx_bbo_itch_v2_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_psx_bbo_itch_v2_1_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_psx_bbo_itch_v2_1_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.payload, range, display)

  return nasdaq_psx_bbo_itch_v2_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_psx_bbo_itch_v2_1_size_of.message_type = 1

-- Display: Message Type
nasdaq_psx_bbo_itch_v2_1_display.message_type = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Status Message (W)"
  end
  if value == "h" then
    return "Message Type: Operational Halt Message (h)"
  end
  if value == "Q" then
    return "Message Type: Quotation Message (Q)"
  end
  if value == "A" then
    return "Message Type: Next Shares Quotation Message (A)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psx_bbo_itch_v2_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_psx_bbo_itch_v2_1_size_of.length = 2

-- Display: Length
nasdaq_psx_bbo_itch_v2_1_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_psx_bbo_itch_v2_1_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psx_bbo_itch_v2_1_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_psx_bbo_itch_v2_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.length

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_psx_bbo_itch_v2_1_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psx_bbo_itch_v2_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_psx_bbo_itch_v2_1_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 9 values
  index, message_type = nasdaq_psx_bbo_itch_v2_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psx_bbo_itch_v2_1_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.message_header, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
nasdaq_psx_bbo_itch_v2_1_size_of.message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nasdaq_psx_bbo_itch_v2_1_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nasdaq_psx_bbo_itch_v2_1_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_psx_bbo_itch_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 9 branches
  index = nasdaq_psx_bbo_itch_v2_1_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psx_bbo_itch_v2_1_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.message, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
nasdaq_psx_bbo_itch_v2_1_size_of.count = 2

-- Display: Count
nasdaq_psx_bbo_itch_v2_1_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_psx_bbo_itch_v2_1_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psx_bbo_itch_v2_1_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_psx_bbo_itch_v2_1_size_of.sequence = 8

-- Display: Sequence
nasdaq_psx_bbo_itch_v2_1_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_psx_bbo_itch_v2_1_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psx_bbo_itch_v2_1_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_psx_bbo_itch_v2_1_size_of.session = 10

-- Display: Session
nasdaq_psx_bbo_itch_v2_1_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_psx_bbo_itch_v2_1_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_psx_bbo_itch_v2_1_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psx_bbo_itch_v2_1_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_bbo_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_psx_bbo_itch_v2_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.session

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.sequence

  index = index + nasdaq_psx_bbo_itch_v2_1_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_psx_bbo_itch_v2_1_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psx_bbo_itch_v2_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psx_bbo_itch_v2_1_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_psx_bbo_itch_v2_1_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_psx_bbo_itch_v2_1_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_psx_bbo_itch_v2_1_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nasdaq_psx_bbo_itch_v2_1_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_psx_bbo_itch_v2_1_display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_bbo_itch_v2_1.fields.packet_header, range, display)
  end

  return nasdaq_psx_bbo_itch_v2_1_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nasdaq_psx_bbo_itch_v2_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psx_bbo_itch_v2_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = nasdaq_psx_bbo_itch_v2_1_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_psx_bbo_itch_v2_1.init()
end

-- Dissector for Nasdaq Psx Bbo Itch 2.1
function nasdaq_psx_bbo_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_psx_bbo_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_psx_bbo_itch_v2_1, buffer(), nasdaq_psx_bbo_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_psx_bbo_itch_v2_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_psx_bbo_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_psx_bbo_itch_v2_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Psx Bbo Itch 2.1
local function nasdaq_psx_bbo_itch_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_psx_bbo_itch_v2_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_psx_bbo_itch_v2_1
  nasdaq_psx_bbo_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Psx Bbo Itch 2.1
nasdaq_psx_bbo_itch_v2_1:register_heuristic("udp", nasdaq_psx_bbo_itch_v2_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 2.1
--   Date: Thursday, May 3, 2018
--   Specification: PSXbboSpecification2.1.pdf
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
