-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Bbo Itch 2.1 Protocol
local omi_nasdaq_psxequities_bbo_itch_v2_1 = Proto("Nasdaq.PsxEquities.Bbo.Itch.v2.1.Lua", "Nasdaq PsxEquities Bbo Itch 2.1")

-- Protocol table
local nasdaq_psxequities_bbo_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Bbo Itch 2.1 Fields
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.bbo.itch.v2.1.authenticity", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.bbo_security_class = ProtoField.new("Bbo Security Class", "nasdaq.psxequities.bbo.itch.v2.1.bbosecurityclass", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.best_bid_price = ProtoField.new("Best Bid Price", "nasdaq.psxequities.bbo.itch.v2.1.bestbidprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.best_bid_size = ProtoField.new("Best Bid Size", "nasdaq.psxequities.bbo.itch.v2.1.bestbidsize", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.best_offer_price = ProtoField.new("Best Offer Price", "nasdaq.psxequities.bbo.itch.v2.1.bestofferprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.best_offer_size = ProtoField.new("Best Offer Size", "nasdaq.psxequities.bbo.itch.v2.1.bestoffersize", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psxequities.bbo.itch.v2.1.breachedlevel", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.psxequities.bbo.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.bbo.itch.v2.1.etpflag", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.bbo.itch.v2.1.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.bbo.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.bbo.itch.v2.1.financialstatusindicator", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.bbo.itch.v2.1.inverseindicator", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.bbo.itch.v2.1.ipoflag", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.bbo.itch.v2.1.issueclassification", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.psxequities.bbo.itch.v2.1.issuesubtype", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psxequities.bbo.itch.v2.1.level1", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psxequities.bbo.itch.v2.1.level2", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psxequities.bbo.itch.v2.1.level3", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.bbo.itch.v2.1.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.bbo.itch.v2.1.marketcategory", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.market_code = ProtoField.new("Market Code", "nasdaq.psxequities.bbo.itch.v2.1.marketcode", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.psxequities.bbo.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.psxequities.bbo.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.bbo.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.psxequities.bbo.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.bbo.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psxequities.bbo.itch.v2.1.operationalhaltaction", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.bbo.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.bbo.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.reason = ProtoField.new("Reason", "nasdaq.psxequities.bbo.itch.v2.1.reason", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.bbo.itch.v2.1.regshoaction", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.bbo.itch.v2.1.roundlotsize", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.bbo.itch.v2.1.roundlotsonly", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.security_class = ProtoField.new("Security Class", "nasdaq.psxequities.bbo.itch.v2.1.securityclass", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.bbo.itch.v2.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.psxequities.bbo.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.bbo.itch.v2.1.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.bbo.itch.v2.1.stock", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.bbo.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.bbo.itch.v2.1.trackingnumber", ftypes.UINT16)

-- Nasdaq PsxEquities Itch Bbo 2.1 Application Messages
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psxequities.bbo.itch.v2.1.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.psxequities.bbo.itch.v2.1.mwcbstatusmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psxequities.bbo.itch.v2.1.operationalhaltmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.quotation_message = ProtoField.new("Quotation Message", "nasdaq.psxequities.bbo.itch.v2.1.quotationmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.bbo.itch.v2.1.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.bbo.itch.v2.1.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psxequities.bbo.itch.v2.1.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.bbo.itch.v2.1.systemeventmessage", ftypes.STRING)

-- Nasdaq PsxEquities Bbo Itch 2.1 generated fields
omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.psxequities.bbo.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities Bbo Itch 2.1 Element Dissection Options
show.message = true
show.message_header = true
show.application_messages = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq PsxEquities Bbo Itch 2.1 Show Options
omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Timestamp Display Preferences
nasdaq_psxequities_bbo_itch_v2_1.timestamp_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_psxequities_bbo_itch_v2_1.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_nasdaq_psxequities_bbo_itch_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message then
    show.message = omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message_index then
    show.message_index = omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.show_message_index
  end

  -- Check Timestamp preferences
  if nasdaq_psxequities_bbo_itch_v2_1.timestamp_format ~= omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.timestamp_format then
    nasdaq_psxequities_bbo_itch_v2_1.timestamp_format = omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.timestamp_format
  end
  if nasdaq_psxequities_bbo_itch_v2_1.utc_offset_hours ~= omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.utc_offset_hours then
    nasdaq_psxequities_bbo_itch_v2_1.utc_offset_hours = omi_nasdaq_psxequities_bbo_itch_v2_1.prefs.utc_offset_hours
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
-- Nasdaq PsxEquities Bbo Itch 2.1 Fields
-----------------------------------------------------------------------

-- Authenticity
nasdaq_psxequities_bbo_itch_v2_1.authenticity = {}

-- Size: Authenticity
nasdaq_psxequities_bbo_itch_v2_1.authenticity.size = 1

-- Display: Authenticity
nasdaq_psxequities_bbo_itch_v2_1.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_bbo_itch_v2_1.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Bbo Security Class
nasdaq_psxequities_bbo_itch_v2_1.bbo_security_class = {}

-- Size: Bbo Security Class
nasdaq_psxequities_bbo_itch_v2_1.bbo_security_class.size = 1

-- Display: Bbo Security Class
nasdaq_psxequities_bbo_itch_v2_1.bbo_security_class.display = function(value)
  if value == "Q" then
    return "Bbo Security Class: Nasdaq Listed Issue (Q)"
  end
  if value == "N" then
    return "Bbo Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Bbo Security Class: Nyse American (A)"
  end
  if value == "P" then
    return "Bbo Security Class: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Bbo Security Class: Bats (Z)"
  end
  if value == "V" then
    return "Bbo Security Class: Investors Exchange Llc (V)"
  end

  return "Bbo Security Class: Unknown("..value..")"
end

-- Dissect: Bbo Security Class
nasdaq_psxequities_bbo_itch_v2_1.bbo_security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.bbo_security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.bbo_security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.bbo_security_class, range, value, display)

  return offset + length, value
end

-- Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1.best_bid_price = {}

-- Size: Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.size = 4

-- Display: Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1.best_bid_size = {}

-- Size: Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1.best_bid_size.size = 4

-- Display: Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1.best_offer_price = {}

-- Size: Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.size = 4

-- Display: Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.display = function(value)
  return "Best Offer Price: "..value
end

-- Translate: Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1.best_offer_size = {}

-- Size: Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1.best_offer_size.size = 4

-- Display: Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_psxequities_bbo_itch_v2_1.breached_level = {}

-- Size: Breached Level
nasdaq_psxequities_bbo_itch_v2_1.breached_level.size = 1

-- Display: Breached Level
nasdaq_psxequities_bbo_itch_v2_1.breached_level.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_psxequities_bbo_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_psxequities_bbo_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_psxequities_bbo_itch_v2_1.current_trading_state.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_psxequities_bbo_itch_v2_1.etp_flag = {}

-- Size: Etp Flag
nasdaq_psxequities_bbo_itch_v2_1.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_psxequities_bbo_itch_v2_1.etp_flag.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_psxequities_bbo_itch_v2_1.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_psxequities_bbo_itch_v2_1.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_bbo_itch_v2_1.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_bbo_itch_v2_1.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_bbo_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_psxequities_bbo_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_bbo_itch_v2_1.event_code.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_bbo_itch_v2_1.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_bbo_itch_v2_1.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_bbo_itch_v2_1.financial_status_indicator.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_psxequities_bbo_itch_v2_1.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_psxequities_bbo_itch_v2_1.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_psxequities_bbo_itch_v2_1.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_bbo_itch_v2_1.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_psxequities_bbo_itch_v2_1.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_psxequities_bbo_itch_v2_1.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_psxequities_bbo_itch_v2_1.ipo_flag.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_psxequities_bbo_itch_v2_1.issue_classification = {}

-- Size: Issue Classification
nasdaq_psxequities_bbo_itch_v2_1.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_psxequities_bbo_itch_v2_1.issue_classification.display = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
nasdaq_psxequities_bbo_itch_v2_1.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_psxequities_bbo_itch_v2_1.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_psxequities_bbo_itch_v2_1.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_psxequities_bbo_itch_v2_1.issue_subtype.display = function(value)
  return "Issue Subtype: "..value
end

-- Dissect: Issue Subtype
nasdaq_psxequities_bbo_itch_v2_1.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.issue_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_itch_v2_1.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_psxequities_bbo_itch_v2_1.level_1 = {}

-- Size: Level 1
nasdaq_psxequities_bbo_itch_v2_1.level_1.size = 8

-- Display: Level 1
nasdaq_psxequities_bbo_itch_v2_1.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_psxequities_bbo_itch_v2_1.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psxequities_bbo_itch_v2_1.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_bbo_itch_v2_1.level_1.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_psxequities_bbo_itch_v2_1.level_2 = {}

-- Size: Level 2
nasdaq_psxequities_bbo_itch_v2_1.level_2.size = 8

-- Display: Level 2
nasdaq_psxequities_bbo_itch_v2_1.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_psxequities_bbo_itch_v2_1.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psxequities_bbo_itch_v2_1.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_bbo_itch_v2_1.level_2.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_psxequities_bbo_itch_v2_1.level_3 = {}

-- Size: Level 3
nasdaq_psxequities_bbo_itch_v2_1.level_3.size = 8

-- Display: Level 3
nasdaq_psxequities_bbo_itch_v2_1.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_psxequities_bbo_itch_v2_1.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psxequities_bbo_itch_v2_1.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_bbo_itch_v2_1.level_3.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.level_3, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_psxequities_bbo_itch_v2_1.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_psxequities_bbo_itch_v2_1.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_bbo_itch_v2_1.luld_reference_price_tier.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_bbo_itch_v2_1.market_category = {}

-- Size: Market Category
nasdaq_psxequities_bbo_itch_v2_1.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_bbo_itch_v2_1.market_category.display = function(value)
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
    return "Market Category: Nyse American (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Bzx (Z)"
  end
  if value == "V" then
    return "Market Category: Investors Exchange Llc (V)"
  end
  if value == " " then
    return "Market Category: Na (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_psxequities_bbo_itch_v2_1.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_psxequities_bbo_itch_v2_1.market_code = {}

-- Size: Market Code
nasdaq_psxequities_bbo_itch_v2_1.market_code.size = 1

-- Display: Market Code
nasdaq_psxequities_bbo_itch_v2_1.market_code.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.market_code, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_psxequities_bbo_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_psxequities_bbo_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_psxequities_bbo_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_psxequities_bbo_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_psxequities_bbo_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_psxequities_bbo_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_psxequities_bbo_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_psxequities_bbo_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_psxequities_bbo_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_psxequities_bbo_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_bbo_itch_v2_1.message_type.display = function(value)
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psxequities_bbo_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_action.display = function(value)
  if value == "H" then
    return "Operational Halt Action: Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_psxequities_bbo_itch_v2_1.reason = {}

-- Size: Reason
nasdaq_psxequities_bbo_itch_v2_1.reason.size = 4

-- Display: Reason
nasdaq_psxequities_bbo_itch_v2_1.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_psxequities_bbo_itch_v2_1.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_itch_v2_1.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_action.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_bbo_itch_v2_1.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_bbo_itch_v2_1.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_psxequities_bbo_itch_v2_1.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_bbo_itch_v2_1.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_bbo_itch_v2_1.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_bbo_itch_v2_1.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_bbo_itch_v2_1.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: Odd Mixed Allowed (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_bbo_itch_v2_1.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_psxequities_bbo_itch_v2_1.security_class = {}

-- Size: Security Class
nasdaq_psxequities_bbo_itch_v2_1.security_class.size = 1

-- Display: Security Class
nasdaq_psxequities_bbo_itch_v2_1.security_class.display = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq Listed Issue (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse American (A)"
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
nasdaq_psxequities_bbo_itch_v2_1.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_bbo_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_bbo_itch_v2_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_psxequities_bbo_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_bbo_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_bbo_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_bbo_itch_v2_1.session = {}

-- Size: Session
nasdaq_psxequities_bbo_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_psxequities_bbo_itch_v2_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_bbo_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.session.size
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

  local display = nasdaq_psxequities_bbo_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_psxequities_bbo_itch_v2_1.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_bbo_itch_v2_1.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_bbo_itch_v2_1.short_sale_threshold_indicator.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_bbo_itch_v2_1.stock = {}

-- Size: Stock
nasdaq_psxequities_bbo_itch_v2_1.stock.size = 8

-- Display: Stock
nasdaq_psxequities_bbo_itch_v2_1.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_bbo_itch_v2_1.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_itch_v2_1.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_bbo_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_bbo_itch_v2_1.timestamp.size = 6

-- Display: Timestamp
nasdaq_psxequities_bbo_itch_v2_1.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_psxequities_bbo_itch_v2_1.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_psxequities_bbo_itch_v2_1.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_psxequities_bbo_itch_v2_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_bbo_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_psxequities_bbo_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_psxequities_bbo_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities Bbo Itch 2.1
-----------------------------------------------------------------------

-- Quotation Message
nasdaq_psxequities_bbo_itch_v2_1.quotation_message = {}

-- Size: Quotation Message
nasdaq_psxequities_bbo_itch_v2_1.quotation_message.size =
  nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1.bbo_security_class.size + 
  nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.size + 
  nasdaq_psxequities_bbo_itch_v2_1.best_bid_size.size + 
  nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.size + 
  nasdaq_psxequities_bbo_itch_v2_1.best_offer_size.size

-- Display: Quotation Message
nasdaq_psxequities_bbo_itch_v2_1.quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotation Message
nasdaq_psxequities_bbo_itch_v2_1.quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_bbo_itch_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Bbo Security Class: Alpha
  index, bbo_security_class = nasdaq_psxequities_bbo_itch_v2_1.bbo_security_class.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price (4)
  index, best_bid_price = nasdaq_psxequities_bbo_itch_v2_1.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Integer
  index, best_bid_size = nasdaq_psxequities_bbo_itch_v2_1.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Offer Price: Price (4)
  index, best_offer_price = nasdaq_psxequities_bbo_itch_v2_1.best_offer_price.dissect(buffer, index, packet, parent)

  -- Best Offer Size: Integer
  index, best_offer_size = nasdaq_psxequities_bbo_itch_v2_1.best_offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotation Message
nasdaq_psxequities_bbo_itch_v2_1.quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.quotation_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Message
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message.size =
  nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1.market_code.size + 
  nasdaq_psxequities_bbo_itch_v2_1.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_bbo_itch_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_psxequities_bbo_itch_v2_1.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_psxequities_bbo_itch_v2_1.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message = {}

-- Size: Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message.size =
  nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1.breached_level.size

-- Display: Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: Alpha
  index, breached_level = nasdaq_psxequities_bbo_itch_v2_1.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.mwcb_status_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message.size =
  nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1.level_1.size + 
  nasdaq_psxequities_bbo_itch_v2_1.level_2.size + 
  nasdaq_psxequities_bbo_itch_v2_1.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_psxequities_bbo_itch_v2_1.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_psxequities_bbo_itch_v2_1.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_psxequities_bbo_itch_v2_1.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_bbo_itch_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_psxequities_bbo_itch_v2_1.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message.size =
  nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1.security_class.size + 
  nasdaq_psxequities_bbo_itch_v2_1.current_trading_state.size + 
  nasdaq_psxequities_bbo_itch_v2_1.reason.size

-- Display: Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_bbo_itch_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Security Class: Alpha
  index, security_class = nasdaq_psxequities_bbo_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_psxequities_bbo_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_psxequities_bbo_itch_v2_1.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message.size =
  nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1.market_category.size + 
  nasdaq_psxequities_bbo_itch_v2_1.financial_status_indicator.size + 
  nasdaq_psxequities_bbo_itch_v2_1.round_lot_size.size + 
  nasdaq_psxequities_bbo_itch_v2_1.round_lots_only.size + 
  nasdaq_psxequities_bbo_itch_v2_1.issue_classification.size + 
  nasdaq_psxequities_bbo_itch_v2_1.issue_subtype.size + 
  nasdaq_psxequities_bbo_itch_v2_1.authenticity.size + 
  nasdaq_psxequities_bbo_itch_v2_1.short_sale_threshold_indicator.size + 
  nasdaq_psxequities_bbo_itch_v2_1.ipo_flag.size + 
  nasdaq_psxequities_bbo_itch_v2_1.luld_reference_price_tier.size + 
  nasdaq_psxequities_bbo_itch_v2_1.etp_flag.size + 
  nasdaq_psxequities_bbo_itch_v2_1.etp_leverage_factor.size + 
  nasdaq_psxequities_bbo_itch_v2_1.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_bbo_itch_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_psxequities_bbo_itch_v2_1.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_psxequities_bbo_itch_v2_1.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_psxequities_bbo_itch_v2_1.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_psxequities_bbo_itch_v2_1.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_psxequities_bbo_itch_v2_1.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Subtype: Alpha
  index, issue_subtype = nasdaq_psxequities_bbo_itch_v2_1.issue_subtype.dissect(buffer, index, packet, parent)

  -- Authenticity: Alpha
  index, authenticity = nasdaq_psxequities_bbo_itch_v2_1.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alpha
  index, short_sale_threshold_indicator = nasdaq_psxequities_bbo_itch_v2_1.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alpha
  index, ipo_flag = nasdaq_psxequities_bbo_itch_v2_1.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alpha
  index, luld_reference_price_tier = nasdaq_psxequities_bbo_itch_v2_1.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alpha
  index, etp_flag = nasdaq_psxequities_bbo_itch_v2_1.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_psxequities_bbo_itch_v2_1.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alpha
  index, inverse_indicator = nasdaq_psxequities_bbo_itch_v2_1.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_bbo_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_bbo_itch_v2_1.system_event_message.size =
  nasdaq_psxequities_bbo_itch_v2_1.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_psxequities_bbo_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_bbo_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_psxequities_bbo_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_bbo_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_bbo_itch_v2_1.payload = {}

-- Dissect: Payload
nasdaq_psxequities_bbo_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_bbo_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_bbo_itch_v2_1.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_bbo_itch_v2_1.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_bbo_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_bbo_itch_v2_1.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Message
  if message_type == "W" then
    return nasdaq_psxequities_bbo_itch_v2_1.mwcb_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_psxequities_bbo_itch_v2_1.operational_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quotation Message
  if message_type == "Q" then
    return nasdaq_psxequities_bbo_itch_v2_1.quotation_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_psxequities_bbo_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_psxequities_bbo_itch_v2_1.message_header.size =
  nasdaq_psxequities_bbo_itch_v2_1.message_length.size + 
  nasdaq_psxequities_bbo_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_psxequities_bbo_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_bbo_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_psxequities_bbo_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = nasdaq_psxequities_bbo_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_bbo_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_psxequities_bbo_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_psxequities_bbo_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_psxequities_bbo_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_bbo_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_psxequities_bbo_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 8 branches
  index = nasdaq_psxequities_bbo_itch_v2_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_bbo_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_psxequities_bbo_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_psxequities_bbo_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_psxequities_bbo_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_bbo_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_psxequities_bbo_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_psxequities_bbo_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
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
    offset = nasdaq_psxequities_bbo_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_psxequities_bbo_itch_v2_1.packet_header = {}

-- Size: Packet Header
nasdaq_psxequities_bbo_itch_v2_1.packet_header.size =
  nasdaq_psxequities_bbo_itch_v2_1.session.size + 
  nasdaq_psxequities_bbo_itch_v2_1.sequence_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1.message_count.size

-- Display: Packet Header
nasdaq_psxequities_bbo_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_bbo_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_bbo_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_psxequities_bbo_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_psxequities_bbo_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_bbo_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_psxequities_bbo_itch_v2_1.packet = {}

-- Dissect Packet
nasdaq_psxequities_bbo_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_bbo_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_psxequities_bbo_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_bbo_itch_v2_1.init()
end

-- Dissector for Nasdaq PsxEquities Bbo Itch 2.1
function omi_nasdaq_psxequities_bbo_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_bbo_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1, buffer(), omi_nasdaq_psxequities_bbo_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_bbo_itch_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_psxequities_bbo_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_psxequities_bbo_itch_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities Bbo Itch 2.1
local function omi_nasdaq_psxequities_bbo_itch_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_bbo_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_bbo_itch_v2_1
  omi_nasdaq_psxequities_bbo_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities Bbo Itch 2.1
omi_nasdaq_psxequities_bbo_itch_v2_1:register_heuristic("udp", omi_nasdaq_psxequities_bbo_itch_v2_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 2.1
--   Date: Friday, August 2, 2024
--   Specification: PSXbboSpecification2.1.pdf
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
