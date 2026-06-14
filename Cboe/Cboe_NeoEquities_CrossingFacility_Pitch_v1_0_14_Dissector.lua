-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Protocol
local omi_cboe_neoequities_crossingfacility_pitch_v1_0_14 = Proto("Omi.Cboe.NeoEquities.CrossingFacility.Pitch.v1.0.14", "Cboe NeoEquities CrossingFacility Pitch 1.0.14")

-- Protocol table
local cboe_neoequities_crossingfacility_pitch_v1_0_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Fields
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.active_market_maker = ProtoField.new("Active Market Maker", "cboe.neoequities.crossingfacility.pitch.v1.0.14.activemarketmaker", ftypes.UINT16)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "cboe.neoequities.crossingfacility.pitch.v1.0.14.allowedbooktypes", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.auction = ProtoField.new("Auction", "cboe.neoequities.crossingfacility.pitch.v1.0.14.auction", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.buy_broker_id = ProtoField.new("Buy Broker Id", "cboe.neoequities.crossingfacility.pitch.v1.0.14.buybrokerid", ftypes.UINT16)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.bypass = ProtoField.new("Bypass", "cboe.neoequities.crossingfacility.pitch.v1.0.14.bypass", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.closing_eligible = ProtoField.new("Closing Eligible", "cboe.neoequities.crossingfacility.pitch.v1.0.14.closingeligible", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.neoequities.crossingfacility.pitch.v1.0.14.correctedprice", ftypes.DOUBLE)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_quantity = ProtoField.new("Corrected Quantity", "cboe.neoequities.crossingfacility.pitch.v1.0.14.correctedquantity", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_settlement_date = ProtoField.new("Corrected Settlement Date", "cboe.neoequities.crossingfacility.pitch.v1.0.14.correctedsettlementdate", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_settlement_type = ProtoField.new("Corrected Settlement Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.correctedsettlementtype", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.count = ProtoField.new("Count", "cboe.neoequities.crossingfacility.pitch.v1.0.14.count", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.cross_type = ProtoField.new("Cross Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.crosstype", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.crossing_facility = ProtoField.new("Crossing Facility", "cboe.neoequities.crossingfacility.pitch.v1.0.14.crossingfacility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.currency = ProtoField.new("Currency", "cboe.neoequities.crossingfacility.pitch.v1.0.14.currency", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.execution_id = ProtoField.new("Execution Id", "cboe.neoequities.crossingfacility.pitch.v1.0.14.executionid", ftypes.UINT64)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.full_name = ProtoField.new("Full Name", "cboe.neoequities.crossingfacility.pitch.v1.0.14.fullname", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.halt_reason = ProtoField.new("Halt Reason", "cboe.neoequities.crossingfacility.pitch.v1.0.14.haltreason", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.instrument_flags = ProtoField.new("Instrument Flags", "cboe.neoequities.crossingfacility.pitch.v1.0.14.instrumentflags", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.length = ProtoField.new("Length", "cboe.neoequities.crossingfacility.pitch.v1.0.14.length", ftypes.UINT16)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.lot_size = ProtoField.new("Lot Size", "cboe.neoequities.crossingfacility.pitch.v1.0.14.lotsize", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message = ProtoField.new("Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.message", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_header = ProtoField.new("Message Header", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messageheader", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_length = ProtoField.new("Message Length", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messagelength", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_type = ProtoField.new("Message Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messagetype", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neod = ProtoField.new("Neod", "cboe.neoequities.crossingfacility.pitch.v1.0.14.neod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neol = ProtoField.new("Neol", "cboe.neoequities.crossingfacility.pitch.v1.0.14.neol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neon = ProtoField.new("Neon", "cboe.neoequities.crossingfacility.pitch.v1.0.14.neon", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.odd_lot_allowed = ProtoField.new("Odd Lot Allowed", "cboe.neoequities.crossingfacility.pitch.v1.0.14.oddlotallowed", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.order_book_type = ProtoField.new("Order Book Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.orderbooktype", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_price = ProtoField.new("Original Price", "cboe.neoequities.crossingfacility.pitch.v1.0.14.originalprice", ftypes.DOUBLE)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_quantity = ProtoField.new("Original Quantity", "cboe.neoequities.crossingfacility.pitch.v1.0.14.originalquantity", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_settlement_date = ProtoField.new("Original Settlement Date", "cboe.neoequities.crossingfacility.pitch.v1.0.14.originalsettlementdate", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_settlement_type = ProtoField.new("Original Settlement Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.originalsettlementtype", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.packet = ProtoField.new("Packet", "cboe.neoequities.crossingfacility.pitch.v1.0.14.packet", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.packet_header = ProtoField.new("Packet Header", "cboe.neoequities.crossingfacility.pitch.v1.0.14.packetheader", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.previous_close = ProtoField.new("Previous Close", "cboe.neoequities.crossingfacility.pitch.v1.0.14.previousclose", ftypes.DOUBLE)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.price = ProtoField.new("Price", "cboe.neoequities.crossingfacility.pitch.v1.0.14.price", ftypes.DOUBLE)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.quantity = ProtoField.new("Quantity", "cboe.neoequities.crossingfacility.pitch.v1.0.14.quantity", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.neoequities.crossingfacility.pitch.v1.0.14.reserved1", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.reserved_4 = ProtoField.new("Reserved 4", "cboe.neoequities.crossingfacility.pitch.v1.0.14.reserved4", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.security_type = ProtoField.new("Security Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.securitytype", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.segment = ProtoField.new("Segment", "cboe.neoequities.crossingfacility.pitch.v1.0.14.segment", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sell_broker_id = ProtoField.new("Sell Broker Id", "cboe.neoequities.crossingfacility.pitch.v1.0.14.sellbrokerid", ftypes.UINT16)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sequence = ProtoField.new("Sequence", "cboe.neoequities.crossingfacility.pitch.v1.0.14.sequence", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.settlement_date = ProtoField.new("Settlement Date", "cboe.neoequities.crossingfacility.pitch.v1.0.14.settlementdate", ftypes.UINT32)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.settlement_type = ProtoField.new("Settlement Type", "cboe.neoequities.crossingfacility.pitch.v1.0.14.settlementtype", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sst = ProtoField.new("Sst", "cboe.neoequities.crossingfacility.pitch.v1.0.14.sst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.symbol = ProtoField.new("Symbol", "cboe.neoequities.crossingfacility.pitch.v1.0.14.symbol", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.timestamp = ProtoField.new("Timestamp", "cboe.neoequities.crossingfacility.pitch.v1.0.14.timestamp", ftypes.UINT64)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradeflags", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_status = ProtoField.new("Trading Status", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradingstatus", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_sub_status = ProtoField.new("Trading Sub Status", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradingsubstatus", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unit = ProtoField.new("Unit", "cboe.neoequities.crossingfacility.pitch.v1.0.14.unit", ftypes.UINT8)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_3 = ProtoField.new("Unused 3", "cboe.neoequities.crossingfacility.pitch.v1.0.14.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_6 = ProtoField.new("Unused 6", "cboe.neoequities.crossingfacility.pitch.v1.0.14.unused6", ftypes.UINT8, nil, base.DEC, 0xFC)

-- Cboe NeoEquities Pitch CrossingFacility 1.0.14 Application Messages
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.endofsessionmessage", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.instrumentdirectorymessage", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradebreakmessage", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradecorrectionmessage", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_message = ProtoField.new("Trade Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.trademessage", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.tradingstatusmessage", ftypes.STRING)
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.neoequities.crossingfacility.pitch.v1.0.14.unitclearmessage", ftypes.STRING)

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 generated fields
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_index = ProtoField.new("Message Index", "cboe.neoequities.crossingfacility.pitch.v1.0.14.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Element Dissection Options
show.allowed_book_types = true
show.application_messages = true
show.instrument_flags = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.trade_flags = true
show.message_index = true

-- Register Cboe NeoEquities CrossingFacility Pitch 1.0.14 Show Options
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_instrument_flags = Pref.bool("Show Instrument Flags", show.instrument_flags, "Parse and add Instrument Flags to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs_changed()

  -- Check if preferences have changed
  if show.allowed_book_types ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_allowed_book_types then
    show.allowed_book_types = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_allowed_book_types
  end
  if show.application_messages ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_application_messages then
    show.application_messages = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_application_messages
  end
  if show.instrument_flags ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_instrument_flags then
    show.instrument_flags = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_instrument_flags
  end
  if show.message ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message then
    show.message = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message
  end
  if show.message_header ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message_header then
    show.message_header = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_packet then
    show.packet = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_packet_header then
    show.packet_header = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_packet_header
  end
  if show.trade_flags ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_trade_flags then
    show.trade_flags = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_trade_flags
  end
  if show.message_index ~= omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message_index then
    show.message_index = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.prefs.show_message_index
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
-- Cboe NeoEquities CrossingFacility Pitch 1.0.14 Fields
-----------------------------------------------------------------------

-- Active Market Maker
cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker = {}

-- Size: Active Market Maker
cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.size = 2

-- Display: Active Market Maker
cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.display = function(value)
  return "Active Market Maker: "..value
end

-- Dissect: Active Market Maker
cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.active_market_maker, range, value, display)

  return offset + length, value
end

-- Buy Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id = {}

-- Size: Buy Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.size = 2

-- Display: Buy Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.display = function(value)
  return "Buy Broker Id: "..value
end

-- Dissect: Buy Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.buy_broker_id, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price = {}

-- Size: Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.size = 8

-- Display: Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.translate(raw)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity = {}

-- Size: Corrected Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.size = 4

-- Display: Corrected Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.display = function(value)
  return "Corrected Quantity: "..value
end

-- Dissect: Corrected Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_quantity, range, value, display)

  return offset + length, value
end

-- Corrected Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date = {}

-- Size: Corrected Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.size = 4

-- Display: Corrected Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.display = function(value)
  return "Corrected Settlement Date: "..value
end

-- Dissect: Corrected Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_settlement_date, range, value, display)

  return offset + length, value
end

-- Corrected Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type = {}

-- Size: Corrected Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.size = 1

-- Display: Corrected Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.display = function(value)
  return "Corrected Settlement Type: "..value
end

-- Dissect: Corrected Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.corrected_settlement_type, range, value, display)

  return offset + length, value
end

-- Count
cboe_neoequities_crossingfacility_pitch_v1_0_14.count = {}

-- Size: Count
cboe_neoequities_crossingfacility_pitch_v1_0_14.count.size = 1

-- Display: Count
cboe_neoequities_crossingfacility_pitch_v1_0_14.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_neoequities_crossingfacility_pitch_v1_0_14.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.count, range, value, display)

  return offset + length, value
end

-- Cross Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type = {}

-- Size: Cross Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.size = 1

-- Display: Cross Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.display = function(value)
  if value == 0 then
    return "Cross Type: None (0)"
  end
  if value == 5 then
    return "Cross Type: Internal Cross (5)"
  end
  if value == 11 then
    return "Cross Type: Basis Cross (11)"
  end
  if value == 12 then
    return "Cross Type: Contingent Cross (12)"
  end
  if value == 14 then
    return "Cross Type: Vwap Cross (14)"
  end
  if value == 15 then
    return "Cross Type: Regular Cross (15)"
  end
  if value == 18 then
    return "Cross Type: Derivative Cross (18)"
  end
  if value == 19 then
    return "Cross Type: Closing Price Publication (19)"
  end
  if value == 20 then
    return "Cross Type: Net Asset Value Nav (20)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
cboe_neoequities_crossingfacility_pitch_v1_0_14.currency = {}

-- Size: Currency
cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.size = 3

-- Display: Currency
cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.currency, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id = {}

-- Size: Execution Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size = 8

-- Display: Execution Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Full Name
cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name = {}

-- Size: Full Name
cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.size = 120

-- Display: Full Name
cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.display = function(value)
  return "Full Name: "..value
end

-- Dissect: Full Name
cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.full_name, range, value, display)

  return offset + length, value
end

-- Halt Reason
cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason = {}

-- Size: Halt Reason
cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.size = 1

-- Display: Halt Reason
cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.display = function(value)
  if value == " " then
    return "Halt Reason: None (<whitespace>)"
  end
  if value == "B" then
    return "Halt Reason: Business (B)"
  end
  if value == "C" then
    return "Halt Reason: Cease Trading Order (C)"
  end
  if value == "I" then
    return "Halt Reason: Ipo (I)"
  end
  if value == "R" then
    return "Halt Reason: Regulatory (R)"
  end
  if value == "S" then
    return "Halt Reason: Suspension (S)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.length = {}

-- Size: Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.length.size = 2

-- Display: Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.length, range, value, display)

  return offset + length, value
end

-- Lot Size
cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size = {}

-- Size: Lot Size
cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.size = 4

-- Display: Lot Size
cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length = {}

-- Size: Message Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.size = 1

-- Display: Message Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type = {}

-- Size: Message Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.size = 1

-- Display: Message Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.display = function(value)
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x60 then
    return "Message Type: Instrument Directory Message (0x60)"
  end
  if value == 0x61 then
    return "Message Type: Trading Status Message (0x61)"
  end
  if value == 0x67 then
    return "Message Type: Trade Message (0x67)"
  end
  if value == 0x68 then
    return "Message Type: Trade Break Message (0x68)"
  end
  if value == 0x69 then
    return "Message Type: Trade Correction Message (0x69)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Book Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type = {}

-- Size: Order Book Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size = 1

-- Display: Order Book Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.display = function(value)
  if value == 0 then
    return "Order Book Type: All Books (0)"
  end
  if value == 3 then
    return "Order Book Type: Neol (3)"
  end
  if value == 4 then
    return "Order Book Type: Neon (4)"
  end
  if value == 5 then
    return "Order Book Type: Neod (5)"
  end
  if value == 6 then
    return "Order Book Type: Crossing Facility (6)"
  end
  if value == 7 then
    return "Order Book Type: Sst (7)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price = {}

-- Size: Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.size = 8

-- Display: Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Original Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.translate(raw)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity = {}

-- Size: Original Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.size = 4

-- Display: Original Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.display = function(value)
  return "Original Quantity: "..value
end

-- Dissect: Original Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_quantity, range, value, display)

  return offset + length, value
end

-- Original Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date = {}

-- Size: Original Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.size = 4

-- Display: Original Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.display = function(value)
  return "Original Settlement Date: "..value
end

-- Dissect: Original Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_settlement_date, range, value, display)

  return offset + length, value
end

-- Original Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type = {}

-- Size: Original Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.size = 1

-- Display: Original Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.display = function(value)
  return "Original Settlement Type: "..value
end

-- Dissect: Original Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.original_settlement_type, range, value, display)

  return offset + length, value
end

-- Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close = {}

-- Size: Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.size = 8

-- Display: Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.display = function(value)
  return "Previous Close: "..value
end

-- Translate: Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Previous Close
cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.translate(raw)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.previous_close, range, value, display)

  return offset + length, value
end

-- Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price = {}

-- Size: Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price.size = 8

-- Display: Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_neoequities_crossingfacility_pitch_v1_0_14.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_neoequities_crossingfacility_pitch_v1_0_14.price.translate(raw)
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity = {}

-- Size: Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.size = 4

-- Display: Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1 = {}

-- Size: Reserved 1
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.size = 1

-- Display: Reserved 1
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4 = {}

-- Size: Reserved 4
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.size = 4

-- Display: Reserved 4
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Security Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type = {}

-- Size: Security Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.size = 1

-- Display: Security Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.display = function(value)
  if value == 1 then
    return "Security Type: Equity (1)"
  end
  if value == 2 then
    return "Security Type: Debt (2)"
  end
  if value == 3 then
    return "Security Type: Closed End Fund (3)"
  end
  if value == 4 then
    return "Security Type: Depositary Receipt (4)"
  end
  if value == 5 then
    return "Security Type: Exchange Traded Fund (5)"
  end
  if value == 6 then
    return "Security Type: Foreign Listed Security (6)"
  end
  if value == 7 then
    return "Security Type: Structured Product (7)"
  end
  if value == 8 then
    return "Security Type: Unit (8)"
  end
  if value == 9 then
    return "Security Type: Warrant (9)"
  end
  if value == 52 then
    return "Security Type: Unlisted Security (52)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.security_type, range, value, display)

  return offset + length, value
end

-- Segment
cboe_neoequities_crossingfacility_pitch_v1_0_14.segment = {}

-- Size: Segment
cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.size = 6

-- Display: Segment
cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.display = function(value)
  if value == "CBOECA" then
    return "Segment: Cboe Canada Securities (CBOECA)"
  end
  if value == "TSX" then
    return "Segment: Tsx Securities (TSX)"
  end
  if value == "TSXV" then
    return "Segment: Tsxv Securities (TSXV)"
  end
  if value == "CSE" then
    return "Segment: Cse Securities (CSE)"
  end
  if value == "NEOC" then
    return "Segment: Neo Connect Securities (NEOC)"
  end
  if value == "FOTS" then
    return "Segment: Foreign Other Traded Securities (FOTS)"
  end

  return "Segment: Unknown("..value..")"
end

-- Dissect: Segment
cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.segment, range, value, display)

  return offset + length, value
end

-- Sell Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id = {}

-- Size: Sell Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.size = 2

-- Display: Sell Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.display = function(value)
  return "Sell Broker Id: "..value
end

-- Dissect: Sell Broker Id
cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sell_broker_id, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence = {}

-- Size: Sequence
cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.size = 4

-- Display: Sequence
cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date = {}

-- Size: Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.size = 4

-- Display: Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.display = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type = {}

-- Size: Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.size = 1

-- Display: Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.display = function(value)
  if value == 0 then
    return "Settlement Type: No Special Settlement Terms Specified (0)"
  end
  if value == 1 then
    return "Settlement Type: Cash (1)"
  end
  if value == 6 then
    return "Settlement Type: Future (6)"
  end
  if value == 11 then
    return "Settlement Type: Nonnet (11)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol = {}

-- Size: Symbol
cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size = 14

-- Display: Symbol
cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp = {}

-- Size: Timestamp
cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size = 8

-- Display: Timestamp
cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status = {}

-- Size: Trading Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.size = 1

-- Display: Trading Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.display = function(value)
  if value == "A" then
    return "Trading Status: Accepting (A)"
  end
  if value == "F" then
    return "Trading Status: Halted Full (F)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "M" then
    return "Trading Status: Delayed Closing (M)"
  end
  if value == "O" then
    return "Trading Status: Preclose (O)"
  end
  if value == "P" then
    return "Trading Status: Post Close (P)"
  end
  if value == "S" then
    return "Trading Status: Trading Suspended (S)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end
  if value == "X" then
    return "Trading Status: Extended Trading (X)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trading Sub Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status = {}

-- Size: Trading Sub Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.size = 1

-- Display: Trading Sub Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.display = function(value)
  if value == " " then
    return "Trading Sub Status: None (<whitespace>)"
  end
  if value == "C" then
    return "Trading Sub Status: Closing Offset (C)"
  end
  if value == "D" then
    return "Trading Sub Status: Delayed (D)"
  end
  if value == "I" then
    return "Trading Sub Status: Imbalance (I)"
  end
  if value == "O" then
    return "Trading Sub Status: Halt Lift Schedule For Opening (O)"
  end
  if value == "R" then
    return "Trading Sub Status: Halt Lift Schedule For Re Opening (R)"
  end

  return "Trading Sub Status: Unknown("..value..")"
end

-- Dissect: Trading Sub Status
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_sub_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit = {}

-- Size: Unit
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.size = 1

-- Display: Unit
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe NeoEquities CrossingFacility Pitch 1.0.14
-----------------------------------------------------------------------

-- End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message = {}

-- Size: End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.size

-- Display: End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 4: Binary
  index, reserved_4 = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message = {}

-- Size: Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size

-- Display: Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Type: Binary
  index, order_book_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Original Quantity: Binary
  index, original_quantity = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: Binary Price
  index, original_price = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.dissect(buffer, index, packet, parent)

  -- Original Settlement Type: Binary
  index, original_settlement_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_type.dissect(buffer, index, packet, parent)

  -- Original Settlement Date: Binary Date
  index, original_settlement_date = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_settlement_date.dissect(buffer, index, packet, parent)

  -- Corrected Quantity: Binary
  index, corrected_quantity = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Price: Binary Price
  index, corrected_price = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_price.dissect(buffer, index, packet, parent)

  -- Corrected Settlement Type: Binary
  index, corrected_settlement_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_type.dissect(buffer, index, packet, parent)

  -- Corrected Settlement Date: Binary Date
  index, corrected_settlement_date = cboe_neoequities_crossingfacility_pitch_v1_0_14.corrected_settlement_date.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_correction_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message = {}

-- Size: Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size

-- Display: Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Type: Binary
  index, order_book_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Original Quantity: Binary
  index, original_quantity = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: Binary Price
  index, original_price = cboe_neoequities_crossingfacility_pitch_v1_0_14.original_price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags = {}

-- Size: Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.size = 1

-- Display: Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bypass flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Bypass"
  end
  -- Is Auction flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Auction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.bits = function(range, value, packet, parent)

  -- Bypass: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.bypass, range, value)

  -- Auction: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.auction, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_6, range, value)
end

-- Dissect: Trade Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_flags, range, display)

  if show.trade_flags then
    cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message = {}

-- Size: Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.price.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.size

-- Display: Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Type: Binary
  index, order_book_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_neoequities_crossingfacility_pitch_v1_0_14.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Price
  index, price = cboe_neoequities_crossingfacility_pitch_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.execution_id.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: Binary
  index, buy_broker_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: Binary
  index, sell_broker_id = cboe_neoequities_crossingfacility_pitch_v1_0_14.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Binary
  index, cross_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.cross_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_flags.dissect(buffer, index, packet, parent)

  -- Settlement Type: Binary
  index, settlement_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlement Date: Binary Date
  index, settlement_date = cboe_neoequities_crossingfacility_pitch_v1_0_14.settlement_date.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trade_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message = {}

-- Size: Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.size

-- Display: Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Type: Binary
  index, order_book_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.order_book_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status.dissect(buffer, index, packet, parent)

  -- Trading Sub Status: Alphanumeric
  index, trading_sub_status = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_sub_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: Alphanumeric
  index, halt_reason = cboe_neoequities_crossingfacility_pitch_v1_0_14.halt_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags = {}

-- Size: Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.size = 1

-- Display: Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Odd Lot Allowed flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Odd Lot Allowed"
  end
  -- Is Closing Eligible flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Closing Eligible"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.bits = function(range, value, packet, parent)

  -- Odd Lot Allowed: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.odd_lot_allowed, range, value)

  -- Closing Eligible: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.closing_eligible, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_6, range, value)
end

-- Dissect: Instrument Flags
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.instrument_flags, range, display)

  if show.instrument_flags then
    cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types = {}

-- Size: Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.size = 1

-- Display: Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Neol flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Neol"
  end
  -- Is Neon flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Neon"
  end
  -- Is Neod flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Neod"
  end
  -- Is Crossing Facility flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Crossing Facility"
  end
  -- Is Sst flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Sst"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.bits = function(range, value, packet, parent)

  -- Unused 3: 3 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unused_3, range, value)

  -- Neol: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neol, range, value)

  -- Neon: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neon, range, value)

  -- Neod: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.neod, range, value)

  -- Crossing Facility: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.crossing_facility, range, value)

  -- Sst: 1 Bit
  parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.sst, range, value)
end

-- Dissect: Allowed Book Types
cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message = {}

-- Size: Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.size

-- Display: Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary Time
  index, timestamp = cboe_neoequities_crossingfacility_pitch_v1_0_14.timestamp.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 6 fields
  index, allowed_book_types = cboe_neoequities_crossingfacility_pitch_v1_0_14.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_neoequities_crossingfacility_pitch_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Segment: Alphanumeric
  index, segment = cboe_neoequities_crossingfacility_pitch_v1_0_14.segment.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_neoequities_crossingfacility_pitch_v1_0_14.currency.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = cboe_neoequities_crossingfacility_pitch_v1_0_14.lot_size.dissect(buffer, index, packet, parent)

  -- Full Name: Alphanumeric
  index, full_name = cboe_neoequities_crossingfacility_pitch_v1_0_14.full_name.dissect(buffer, index, packet, parent)

  -- Active Market Maker: Binary
  index, active_market_maker = cboe_neoequities_crossingfacility_pitch_v1_0_14.active_market_maker.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.security_type.dissect(buffer, index, packet, parent)

  -- Instrument Flags: Struct of 3 fields
  index, instrument_flags = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_flags.dissect(buffer, index, packet, parent)

  -- Previous Close: Binary Price
  index, previous_close = cboe_neoequities_crossingfacility_pitch_v1_0_14.previous_close.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.instrument_directory_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.size

-- Display: Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 4: Binary
  index, reserved_4 = cboe_neoequities_crossingfacility_pitch_v1_0_14.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_neoequities_crossingfacility_pitch_v1_0_14.payload = {}

-- Dissect: Payload
cboe_neoequities_crossingfacility_pitch_v1_0_14.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x60 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x61 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x67 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x68 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == 0x69 then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header = {}

-- Size: Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.size

-- Display: Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_header, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message = {}

-- Read runtime size of: Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_neoequities_crossingfacility_pitch_v1_0_14.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_neoequities_crossingfacility_pitch_v1_0_14.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_neoequities_crossingfacility_pitch_v1_0_14.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_neoequities_crossingfacility_pitch_v1_0_14.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.message, buffer(offset, 0))
    local current = cboe_neoequities_crossingfacility_pitch_v1_0_14.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_neoequities_crossingfacility_pitch_v1_0_14.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_neoequities_crossingfacility_pitch_v1_0_14.messages = {}

-- Dissect: Messages
cboe_neoequities_crossingfacility_pitch_v1_0_14.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_neoequities_crossingfacility_pitch_v1_0_14.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header = {}

-- Size: Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.size =
  cboe_neoequities_crossingfacility_pitch_v1_0_14.length.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.count.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.size + 
  cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.size

-- Display: Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_neoequities_crossingfacility_pitch_v1_0_14.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_neoequities_crossingfacility_pitch_v1_0_14.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_neoequities_crossingfacility_pitch_v1_0_14.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_neoequities_crossingfacility_pitch_v1_0_14.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.fields.packet_header, buffer(offset, 0))
    local index = cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet = {}

-- Verify required size of Udp packet
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.size
end

-- Dissect Packet
cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_neoequities_crossingfacility_pitch_v1_0_14.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_neoequities_crossingfacility_pitch_v1_0_14.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.init()
end

-- Dissector for Cboe NeoEquities CrossingFacility Pitch 1.0.14
function omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_neoequities_crossingfacility_pitch_v1_0_14, buffer(), omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.description, "("..buffer:len().." Bytes)")
  return cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe NeoEquities CrossingFacility Pitch 1.0.14 (Udp)
local function omi_cboe_neoequities_crossingfacility_pitch_v1_0_14_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_neoequities_crossingfacility_pitch_v1_0_14.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_neoequities_crossingfacility_pitch_v1_0_14
  omi_cboe_neoequities_crossingfacility_pitch_v1_0_14.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe NeoEquities CrossingFacility Pitch 1.0.14
omi_cboe_neoequities_crossingfacility_pitch_v1_0_14:register_heuristic("udp", omi_cboe_neoequities_crossingfacility_pitch_v1_0_14_udp_heuristic)

-- Register Cboe NeoEquities CrossingFacility Pitch 1.0.14 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_neoequities_crossingfacility_pitch_v1_0_14)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.14
--   Date: Monday, February 9, 2026
--   Specification: Cboe Canada Equities Multicast PITCH Specification (2026-05-28).pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
