-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicEquities LastSale Itch 1.2.9 Protocol
local omi_nasdaq_nordicequities_lastsale_itch_v1_2_9 = Proto("Omi.Nasdaq.NordicEquities.LastSale.Itch.v1.2.9", "Nasdaq NordicEquities LastSale Itch 1.2.9")

-- Protocol table
local nasdaq_nordicequities_lastsale_itch_v1_2_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicEquities LastSale Itch 1.2.9 Fields
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.adjusted_closing_price = ProtoField.new("Adjusted Closing Price", "nasdaq.nordicequities.lastsale.itch.v1.2.9.adjustedclosingprice", ftypes.DOUBLE)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.agreement_date = ProtoField.new("Agreement Date", "nasdaq.nordicequities.lastsale.itch.v1.2.9.agreementdate", ftypes.UINT32)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.agreement_time = ProtoField.new("Agreement Time", "nasdaq.nordicequities.lastsale.itch.v1.2.9.agreementtime", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.execution_date = ProtoField.new("Execution Date", "nasdaq.nordicequities.lastsale.itch.v1.2.9.executiondate", ftypes.UINT32)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.execution_time = ProtoField.new("Execution Time", "nasdaq.nordicequities.lastsale.itch.v1.2.9.executiontime", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.instrument_identification_code = ProtoField.new("Instrument Identification Code", "nasdaq.nordicequities.lastsale.itch.v1.2.9.instrumentidentificationcode", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.instrument_identification_code_type = ProtoField.new("Instrument Identification Code Type", "nasdaq.nordicequities.lastsale.itch.v1.2.9.instrumentidentificationcodetype", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message = ProtoField.new("Message", "nasdaq.nordicequities.lastsale.itch.v1.2.9.message", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_count = ProtoField.new("Message Count", "nasdaq.nordicequities.lastsale.itch.v1.2.9.messagecount", ftypes.UINT16)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_header = ProtoField.new("Message Header", "nasdaq.nordicequities.lastsale.itch.v1.2.9.messageheader", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_length = ProtoField.new("Message Length", "nasdaq.nordicequities.lastsale.itch.v1.2.9.messagelength", ftypes.UINT16)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_type = ProtoField.new("Message Type", "nasdaq.nordicequities.lastsale.itch.v1.2.9.messagetype", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.mmt_trade_flags = ProtoField.new("Mmt Trade Flags", "nasdaq.nordicequities.lastsale.itch.v1.2.9.mmttradeflags", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.mpid_buyer = ProtoField.new("Mpid Buyer", "nasdaq.nordicequities.lastsale.itch.v1.2.9.mpidbuyer", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.mpid_seller = ProtoField.new("Mpid Seller", "nasdaq.nordicequities.lastsale.itch.v1.2.9.mpidseller", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.notation_of_the_quantity_in_measurement_unit = ProtoField.new("Notation Of The Quantity In Measurement Unit", "nasdaq.nordicequities.lastsale.itch.v1.2.9.notationofthequantityinmeasurementunit", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.notional_amount = ProtoField.new("Notional Amount", "nasdaq.nordicequities.lastsale.itch.v1.2.9.notionalamount", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.notional_amount_fraction = ProtoField.new("Notional Amount Fraction", "nasdaq.nordicequities.lastsale.itch.v1.2.9.notionalamountfraction", ftypes.UINT8)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.notional_currency = ProtoField.new("Notional Currency", "nasdaq.nordicequities.lastsale.itch.v1.2.9.notionalcurrency", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.order_book = ProtoField.new("Order Book", "nasdaq.nordicequities.lastsale.itch.v1.2.9.orderbook", ftypes.UINT32)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_currency = ProtoField.new("Price Currency", "nasdaq.nordicequities.lastsale.itch.v1.2.9.pricecurrency", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_fraction = ProtoField.new("Price Fraction", "nasdaq.nordicequities.lastsale.itch.v1.2.9.pricefraction", ftypes.UINT8)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_integer_18_n_8 = ProtoField.new("Price Integer 18 N 8", "nasdaq.nordicequities.lastsale.itch.v1.2.9.priceinteger18n8", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_notation = ProtoField.new("Price Notation", "nasdaq.nordicequities.lastsale.itch.v1.2.9.pricenotation", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_price_68 = ProtoField.new("Price Price 68", "nasdaq.nordicequities.lastsale.itch.v1.2.9.priceprice68", ftypes.DOUBLE)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_fraction = ProtoField.new("Quantity Fraction", "nasdaq.nordicequities.lastsale.itch.v1.2.9.quantityfraction", ftypes.UINT8)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_in_measurement_unit = ProtoField.new("Quantity In Measurement Unit", "nasdaq.nordicequities.lastsale.itch.v1.2.9.quantityinmeasurementunit", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_in_measurement_unit_fraction = ProtoField.new("Quantity In Measurement Unit Fraction", "nasdaq.nordicequities.lastsale.itch.v1.2.9.quantityinmeasurementunitfraction", ftypes.UINT8)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_integer_18_n_8 = ProtoField.new("Quantity Integer 18 N 8", "nasdaq.nordicequities.lastsale.itch.v1.2.9.quantityinteger18n8", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_integer_8 = ProtoField.new("Quantity Integer 8", "nasdaq.nordicequities.lastsale.itch.v1.2.9.quantityinteger8", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nordicequities.lastsale.itch.v1.2.9.sequencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.session = ProtoField.new("Session", "nasdaq.nordicequities.lastsale.itch.v1.2.9.session", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.third_country_trading_venue_of_execution = ProtoField.new("Third Country Trading Venue Of Execution", "nasdaq.nordicequities.lastsale.itch.v1.2.9.thirdcountrytradingvenueofexecution", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nordicequities.lastsale.itch.v1.2.9.timestamp", ftypes.UINT64)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nordicequities.lastsale.itch.v1.2.9.trackingnumber", ftypes.UINT16)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.trade_type = ProtoField.new("Trade Type", "nasdaq.nordicequities.lastsale.itch.v1.2.9.tradetype", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.transaction_identifier_code = ProtoField.new("Transaction Identifier Code", "nasdaq.nordicequities.lastsale.itch.v1.2.9.transactionidentifiercode", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.transaction_to_be_cleared = ProtoField.new("Transaction To Be Cleared", "nasdaq.nordicequities.lastsale.itch.v1.2.9.transactiontobecleared", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.type = ProtoField.new("Type", "nasdaq.nordicequities.lastsale.itch.v1.2.9.type", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "nasdaq.nordicequities.lastsale.itch.v1.2.9.venueofexecution", ftypes.STRING)

-- Nasdaq NordicEquities LastSale Itch 1.2.9 Headers
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.packet = ProtoField.new("Packet", "nasdaq.nordicequities.lastsale.itch.v1.2.9.packet", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.lastsale.itch.v1.2.9.packetheader", ftypes.STRING)

-- Nasdaq NordicEquities LastSale 1.2.9 Application Messages
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.adjusted_closing_price_message = ProtoField.new("Adjusted Closing Price Message", "nasdaq.nordicequities.lastsale.itch.v1.2.9.adjustedclosingpricemessage", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.on_exchange_trade_message = ProtoField.new("On Exchange Trade Message", "nasdaq.nordicequities.lastsale.itch.v1.2.9.onexchangetrademessage", ftypes.STRING)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.otc_trade_message = ProtoField.new("Otc Trade Message", "nasdaq.nordicequities.lastsale.itch.v1.2.9.otctrademessage", ftypes.STRING)

-- Nasdaq NordicEquities LastSale Itch 1.2.9 generated fields
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_index = ProtoField.new("Message Index", "nasdaq.nordicequities.lastsale.itch.v1.2.9.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nasdaq NordicEquities LastSale Itch 1.2.9 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nordicequities_lastsale_itch_v1_2_9.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NordicEquities LastSale Itch 1.2.9 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nasdaq NordicEquities LastSale Itch 1.2.9 Show Options
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_headers then
    show.headers = omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_structs then
    show.structs = omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_indexes then
    show.indexes = omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.show_indexes
  end
  if nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp_format ~= omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.timestamp_format then
    nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp_format = omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.timestamp_format
  end
  if nasdaq_nordicequities_lastsale_itch_v1_2_9.utc_offset_hours ~= omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.utc_offset_hours then
    nasdaq_nordicequities_lastsale_itch_v1_2_9.utc_offset_hours = omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.prefs.utc_offset_hours
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
-- Nasdaq NordicEquities LastSale Itch 1.2.9 Fields
-----------------------------------------------------------------------

-- Adjusted Closing Price
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price = {}

-- Size: Adjusted Closing Price
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.size = 8

-- Display: Adjusted Closing Price
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.display = function(value)
  return "Adjusted Closing Price: "..value
end

-- Translate: Adjusted Closing Price
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Adjusted Closing Price
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.translate(raw)
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Agreement Date
nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date = {}

-- Size: Agreement Date
nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.size = 4

-- Display: Agreement Date
nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Agreement Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Agreement Date
nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.agreement_date, range, value, display)

  return offset + length, value
end

-- Agreement Time
nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time = {}

-- Size: Agreement Time
nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.size = 8

-- Display: Agreement Time
nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.display = function(value)
  local nanoseconds = (value % UInt64(1000000000)):tonumber()
  local clock = (value / UInt64(1000000000)):tonumber()
  local hour = math.floor(clock / 10000)
  local minute = math.floor(clock / 100) % 100
  local second = clock % 100
  return string.format("Agreement Time: %02d:%02d:%02d.%09d", hour, minute, second, nanoseconds)
end
-- Dissect: Agreement Time
nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.agreement_time, range, value, display)

  return offset + length, value
end

-- Execution Date
nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_date = {}

-- Size: Execution Date
nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_date.size = 4

-- Display: Execution Date
nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Execution Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Execution Date
nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.execution_date, range, value, display)

  return offset + length, value
end

-- Execution Time
nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_time = {}

-- Size: Execution Time
nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_time.size = 8

-- Display: Execution Time
nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_time.display = function(value)
  local nanoseconds = (value % UInt64(1000000000)):tonumber()
  local clock = (value / UInt64(1000000000)):tonumber()
  local hour = math.floor(clock / 10000)
  local minute = math.floor(clock / 100) % 100
  local second = clock % 100
  return string.format("Execution Time: %02d:%02d:%02d.%09d", hour, minute, second, nanoseconds)
end
-- Dissect: Execution Time
nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.execution_time, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code
nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code = {}

-- Size: Instrument Identification Code
nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code.size = 12

-- Display: Instrument Identification Code
nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code.display = function(value)
  return "Instrument Identification Code: "..value
end

-- Dissect: Instrument Identification Code
nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.instrument_identification_code, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code_type = {}

-- Size: Instrument Identification Code Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code_type.size = 4

-- Display: Instrument Identification Code Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code_type.display = function(value)
  if value == "ISIN" then
    return "Instrument Identification Code Type: Isin Code (ISIN)"
  end
  if value == "OTHR" then
    return "Instrument Identification Code Type: Other Identifier (OTHR)"
  end

  return "Instrument Identification Code Type: Unknown("..value..")"
end

-- Dissect: Instrument Identification Code Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.instrument_identification_code_type, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_count = {}

-- Size: Message Count
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_count.size = 2

-- Display: Message Count
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_length = {}

-- Size: Message Length
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_length.size = 2

-- Display: Message Length
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_type = {}

-- Size: Message Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_type.size = 1

-- Display: Message Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_type.display = function(value)
  if value == "G" then
    return "Message Type: Adjusted Closing Price Message (G)"
  end
  if value == "T" then
    return "Message Type: On Exchange Trade Message (T)"
  end
  if value == "Z" then
    return "Message Type: Otc Trade Message (Z)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mmt Trade Flags
nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags = {}

-- Size: Mmt Trade Flags
nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.size = 14

-- Display: Mmt Trade Flags
nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.display = function(value)
  return "Mmt Trade Flags: "..value
end

-- Dissect: Mmt Trade Flags
nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.mmt_trade_flags, range, value, display)

  return offset + length, value
end

-- Mpid Buyer
nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_buyer = {}

-- Size: Mpid Buyer
nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_buyer.size = 4

-- Display: Mpid Buyer
nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_buyer.display = function(value)
  return "Mpid Buyer: "..value
end

-- Dissect: Mpid Buyer
nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_buyer.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_buyer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_buyer.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.mpid_buyer, range, value, display)

  return offset + length, value
end

-- Mpid Seller
nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_seller = {}

-- Size: Mpid Seller
nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_seller.size = 4

-- Display: Mpid Seller
nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_seller.display = function(value)
  return "Mpid Seller: "..value
end

-- Dissect: Mpid Seller
nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_seller.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_seller.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_seller.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.mpid_seller, range, value, display)

  return offset + length, value
end

-- Notation Of The Quantity In Measurement Unit
nasdaq_nordicequities_lastsale_itch_v1_2_9.notation_of_the_quantity_in_measurement_unit = {}

-- Size: Notation Of The Quantity In Measurement Unit
nasdaq_nordicequities_lastsale_itch_v1_2_9.notation_of_the_quantity_in_measurement_unit.size = 25

-- Display: Notation Of The Quantity In Measurement Unit
nasdaq_nordicequities_lastsale_itch_v1_2_9.notation_of_the_quantity_in_measurement_unit.display = function(value)
  return "Notation Of The Quantity In Measurement Unit: "..value
end

-- Dissect: Notation Of The Quantity In Measurement Unit
nasdaq_nordicequities_lastsale_itch_v1_2_9.notation_of_the_quantity_in_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.notation_of_the_quantity_in_measurement_unit.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.notation_of_the_quantity_in_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.notation_of_the_quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- Notional Amount
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount = {}

-- Size: Notional Amount
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount.size = 8

-- Display: Notional Amount
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Notional Amount Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount_fraction = {}

-- Size: Notional Amount Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount_fraction.size = 1

-- Display: Notional Amount Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount_fraction.display = function(value)
  return "Notional Amount Fraction: "..value
end

-- Dissect: Notional Amount Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount_fraction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount_fraction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.notional_amount_fraction, range, value, display)

  return offset + length, value
end

-- Notional Currency
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_currency = {}

-- Size: Notional Currency
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_currency.size = 3

-- Display: Notional Currency
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Order Book
nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book = {}

-- Size: Order Book
nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.size = 4

-- Display: Order Book
nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.display = function(value)
  return "Order Book: "..value
end

-- Dissect: Order Book
nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.order_book, range, value, display)

  return offset + length, value
end

-- Price Currency
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_currency = {}

-- Size: Price Currency
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_currency.size = 3

-- Display: Price Currency
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_fraction = {}

-- Size: Price Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_fraction.size = 1

-- Display: Price Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_fraction.display = function(value)
  return "Price Fraction: "..value
end

-- Dissect: Price Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_fraction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_fraction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_fraction, range, value, display)

  return offset + length, value
end

-- Price Integer 18 N 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_integer_18_n_8 = {}

-- Size: Price Integer 18 N 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_integer_18_n_8.size = 8

-- Display: Price Integer 18 N 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_integer_18_n_8.display = function(value)
  return "Price Integer 18 N 8: "..value
end

-- Dissect: Price Integer 18 N 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_integer_18_n_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_integer_18_n_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_integer_18_n_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_integer_18_n_8, range, value, display)

  return offset + length, value
end

-- Price Notation
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_notation = {}

-- Size: Price Notation
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_notation.size = 4

-- Display: Price Notation
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_notation.display = function(value)
  if value == "MONE" then
    return "Price Notation: Monetary Value (MONE)"
  end
  if value == "PERC" then
    return "Price Notation: Percentage (PERC)"
  end
  if value == "YIEL" then
    return "Price Notation: Yield (YIEL)"
  end
  if value == "BAPO" then
    return "Price Notation: Basis Points (BAPO)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Price Price 68
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68 = {}

-- Size: Price Price 68
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.size = 8

-- Display: Price Price 68
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.display = function(value)
  return "Price Price 68: "..value
end

-- Translate: Price Price 68
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price Price 68
nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.translate(raw)
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.price_price_68, range, value, display)

  return offset + length, value
end

-- Quantity Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_fraction = {}

-- Size: Quantity Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_fraction.size = 1

-- Display: Quantity Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_fraction.display = function(value)
  return "Quantity Fraction: "..value
end

-- Dissect: Quantity Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_fraction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_fraction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_fraction, range, value, display)

  return offset + length, value
end

-- Quantity In Measurement Unit
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit = {}

-- Size: Quantity In Measurement Unit
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit.size = 8

-- Display: Quantity In Measurement Unit
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit.display = function(value)
  return "Quantity In Measurement Unit: "..value
end

-- Dissect: Quantity In Measurement Unit
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- Quantity In Measurement Unit Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit_fraction = {}

-- Size: Quantity In Measurement Unit Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit_fraction.size = 1

-- Display: Quantity In Measurement Unit Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit_fraction.display = function(value)
  return "Quantity In Measurement Unit Fraction: "..value
end

-- Dissect: Quantity In Measurement Unit Fraction
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit_fraction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit_fraction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_in_measurement_unit_fraction, range, value, display)

  return offset + length, value
end

-- Quantity Integer 18 N 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_18_n_8 = {}

-- Size: Quantity Integer 18 N 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_18_n_8.size = 8

-- Display: Quantity Integer 18 N 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_18_n_8.display = function(value)
  return "Quantity Integer 18 N 8: "..value
end

-- Dissect: Quantity Integer 18 N 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_18_n_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_18_n_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_18_n_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_integer_18_n_8, range, value, display)

  return offset + length, value
end

-- Quantity Integer 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_8 = {}

-- Size: Quantity Integer 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_8.size = 8

-- Display: Quantity Integer 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_8.display = function(value)
  return "Quantity Integer 8: "..value
end

-- Dissect: Quantity Integer 8
nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.quantity_integer_8, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nordicequities_lastsale_itch_v1_2_9.sequence_number = {}

-- Size: Sequence Number
nasdaq_nordicequities_lastsale_itch_v1_2_9.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nordicequities_lastsale_itch_v1_2_9.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nordicequities_lastsale_itch_v1_2_9.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nordicequities_lastsale_itch_v1_2_9.session = {}

-- Size: Session
nasdaq_nordicequities_lastsale_itch_v1_2_9.session.size = 10

-- Display: Session
nasdaq_nordicequities_lastsale_itch_v1_2_9.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nordicequities_lastsale_itch_v1_2_9.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.session.size
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

  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.session, range, value, display)

  return offset + length, value
end

-- Third Country Trading Venue Of Execution
nasdaq_nordicequities_lastsale_itch_v1_2_9.third_country_trading_venue_of_execution = {}

-- Size: Third Country Trading Venue Of Execution
nasdaq_nordicequities_lastsale_itch_v1_2_9.third_country_trading_venue_of_execution.size = 4

-- Display: Third Country Trading Venue Of Execution
nasdaq_nordicequities_lastsale_itch_v1_2_9.third_country_trading_venue_of_execution.display = function(value)
  return "Third Country Trading Venue Of Execution: "..value
end

-- Dissect: Third Country Trading Venue Of Execution
nasdaq_nordicequities_lastsale_itch_v1_2_9.third_country_trading_venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.third_country_trading_venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.third_country_trading_venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.third_country_trading_venue_of_execution, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp = {}

-- Size: Timestamp
nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.size = 8

-- Display: Timestamp
nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nordicequities_lastsale_itch_v1_2_9.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number = {}

-- Size: Tracking Number
nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trade Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type = {}

-- Size: Trade Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.size = 1

-- Display: Trade Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.display = function(value)
  if value == "1" then
    return "Trade Type: Standard Trade (1)"
  end
  if value == "2" then
    return "Trade Type: Non Standard Settlement (2)"
  end
  if value == "3" then
    return "Trade Type: Exchange Granted Trade (3)"
  end
  if value == "5" then
    return "Trade Type: Portfolio Trade (5)"
  end
  if value == "6" then
    return "Trade Type: Volume Weighted Average Price Trade (6)"
  end
  if value == "8" then
    return "Trade Type: Pre Opening Trade (8)"
  end
  if value == "D" then
    return "Trade Type: Standard Routed Trade (D)"
  end
  if value == "E" then
    return "Trade Type: Standard Routed Dark Trade (E)"
  end
  if value == "F" then
    return "Trade Type: Standard Dark Trade (F)"
  end
  if value == "G" then
    return "Trade Type: Standard Auction On Demand Trade (G)"
  end
  if value == "H" then
    return "Trade Type: Standard Trade At Closing Trade (H)"
  end
  if value == "I" then
    return "Trade Type: Contingent Trade (I)"
  end
  if value == "9" then
    return "Trade Type: Otc Standard Trade (9)"
  end
  if value == "A" then
    return "Trade Type: Otc Non Standard Trade (A)"
  end
  if value == "B" then
    return "Trade Type: Si Standard Trade (B)"
  end
  if value == "C" then
    return "Trade Type: Si Non Standard Trade (C)"
  end
  if value == "O" then
    return "Trade Type: Otc Loan Payment (O)"
  end
  if value == "P" then
    return "Trade Type: Otc Primary Transaction (P)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Transaction Identifier Code
nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code = {}

-- Size: Transaction Identifier Code
nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.size = 10

-- Display: Transaction Identifier Code
nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.display = function(value)
  return "Transaction Identifier Code: "..value
end

-- Dissect: Transaction Identifier Code
nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.transaction_identifier_code, range, value, display)

  return offset + length, value
end

-- Transaction To Be Cleared
nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared = {}

-- Size: Transaction To Be Cleared
nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.size = 1

-- Display: Transaction To Be Cleared
nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.display = function(value)
  if value == "Y" then
    return "Transaction To Be Cleared: Yes (Y)"
  end
  if value == "N" then
    return "Transaction To Be Cleared: No (N)"
  end

  return "Transaction To Be Cleared: Unknown("..value..")"
end

-- Dissect: Transaction To Be Cleared
nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.transaction_to_be_cleared, range, value, display)

  return offset + length, value
end

-- Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.type = {}

-- Size: Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.type.size = 4

-- Display: Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.type.display = function(value)
  if value == "EUAE" then
    return "Type: Eua (EUAE)"
  end
  if value == "CERE" then
    return "Type: Cer (CERE)"
  end
  if value == "ERUE" then
    return "Type: Eru (ERUE)"
  end
  if value == "EUAA" then
    return "Type: Euaa (EUAA)"
  end
  if value == "OTHR" then
    return "Type: Other (OTHR)"
  end

  return "Type: Unknown("..value..")"
end

-- Dissect: Type
nasdaq_nordicequities_lastsale_itch_v1_2_9.type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.type, range, value, display)

  return offset + length, value
end

-- Venue Of Execution
nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution = {}

-- Size: Venue Of Execution
nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.size = 4

-- Display: Venue Of Execution
nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.display = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.venue_of_execution, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicEquities LastSale Itch 1.2.9
-----------------------------------------------------------------------

-- Otc Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message = {}

-- Size: Otc Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message.size =
  nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code_type.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.price_integer_18_n_8.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.price_fraction.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.price_notation.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.price_currency.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_18_n_8.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_fraction.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.notation_of_the_quantity_in_measurement_unit.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit_fraction.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount_fraction.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_currency.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.type.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.third_country_trading_venue_of_execution.size

-- Display: Otc Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Otc Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code Type: Alpha
  index, instrument_identification_code_type = nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code_type.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: Alpha-numeric
  index, instrument_identification_code = nasdaq_nordicequities_lastsale_itch_v1_2_9.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Agreement Date: Date
  index, agreement_date = nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.dissect(buffer, index, packet, parent)

  -- Agreement Time: Time
  index, agreement_time = nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.dissect(buffer, index, packet, parent)

  -- Price Integer 18 N 8: Integer (18/n)
  index, price_integer_18_n_8 = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_integer_18_n_8.dissect(buffer, index, packet, parent)

  -- Price Fraction: Integer
  index, price_fraction = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_fraction.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_notation.dissect(buffer, index, packet, parent)

  -- Price Currency: Alpha-numeric
  index, price_currency = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_currency.dissect(buffer, index, packet, parent)

  -- Quantity Integer 18 N 8: Integer (18/n)
  index, quantity_integer_18_n_8 = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_18_n_8.dissect(buffer, index, packet, parent)

  -- Quantity Fraction: Integer
  index, quantity_fraction = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_fraction.dissect(buffer, index, packet, parent)

  -- Notation Of The Quantity In Measurement Unit: Alpha-numeric
  index, notation_of_the_quantity_in_measurement_unit = nasdaq_nordicequities_lastsale_itch_v1_2_9.notation_of_the_quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Quantity In Measurement Unit: Integer (18/n)
  index, quantity_in_measurement_unit = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Quantity In Measurement Unit Fraction: Integer
  index, quantity_in_measurement_unit_fraction = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_in_measurement_unit_fraction.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha-numeric
  index, venue_of_execution = nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Notional Amount: Integer (18/17)
  index, notional_amount = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Amount Fraction: Integer
  index, notional_amount_fraction = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_amount_fraction.dissect(buffer, index, packet, parent)

  -- Notional Currency: Alpha-numeric
  index, notional_currency = nasdaq_nordicequities_lastsale_itch_v1_2_9.notional_currency.dissect(buffer, index, packet, parent)

  -- Type: Alpha-numeric
  index, type = nasdaq_nordicequities_lastsale_itch_v1_2_9.type.dissect(buffer, index, packet, parent)

  -- Transaction Identifier Code: Alpha-numeric
  index, transaction_identifier_code = nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.dissect(buffer, index, packet, parent)

  -- Mmt Trade Flags: Alpha-numeric
  index, mmt_trade_flags = nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.dissect(buffer, index, packet, parent)

  -- Transaction To Be Cleared: Alpha
  index, transaction_to_be_cleared = nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha-numeric
  index, trade_type = nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.dissect(buffer, index, packet, parent)

  -- Third Country Trading Venue Of Execution: Alpha-numeric
  index, third_country_trading_venue_of_execution = nasdaq_nordicequities_lastsale_itch_v1_2_9.third_country_trading_venue_of_execution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Otc Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.otc_trade_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- On Exchange Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message = {}

-- Size: On Exchange Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message.size =
  nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_date.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_time.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_8.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_buyer.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_seller.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.size

-- Display: On Exchange Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: On Exchange Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.dissect(buffer, index, packet, parent)

  -- Execution Date: Date
  index, execution_date = nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_date.dissect(buffer, index, packet, parent)

  -- Execution Time: Time
  index, execution_time = nasdaq_nordicequities_lastsale_itch_v1_2_9.execution_time.dissect(buffer, index, packet, parent)

  -- Agreement Date: Date
  index, agreement_date = nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_date.dissect(buffer, index, packet, parent)

  -- Agreement Time: Time
  index, agreement_time = nasdaq_nordicequities_lastsale_itch_v1_2_9.agreement_time.dissect(buffer, index, packet, parent)

  -- Price Price 68: Price (6)
  index, price_price_68 = nasdaq_nordicequities_lastsale_itch_v1_2_9.price_price_68.dissect(buffer, index, packet, parent)

  -- Quantity Integer 8: Integer
  index, quantity_integer_8 = nasdaq_nordicequities_lastsale_itch_v1_2_9.quantity_integer_8.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha-numeric
  index, venue_of_execution = nasdaq_nordicequities_lastsale_itch_v1_2_9.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Transaction Identifier Code: Alpha-numeric
  index, transaction_identifier_code = nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_identifier_code.dissect(buffer, index, packet, parent)

  -- Mmt Trade Flags: Alpha-numeric
  index, mmt_trade_flags = nasdaq_nordicequities_lastsale_itch_v1_2_9.mmt_trade_flags.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha-numeric
  index, trade_type = nasdaq_nordicequities_lastsale_itch_v1_2_9.trade_type.dissect(buffer, index, packet, parent)

  -- Mpid Buyer: Alpha-numeric
  index, mpid_buyer = nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_buyer.dissect(buffer, index, packet, parent)

  -- Mpid Seller: Alpha-numeric
  index, mpid_seller = nasdaq_nordicequities_lastsale_itch_v1_2_9.mpid_seller.dissect(buffer, index, packet, parent)

  -- Transaction To Be Cleared: Alpha
  index, transaction_to_be_cleared = nasdaq_nordicequities_lastsale_itch_v1_2_9.transaction_to_be_cleared.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: On Exchange Trade Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.on_exchange_trade_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Adjusted Closing Price Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message = {}

-- Size: Adjusted Closing Price Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message.size =
  nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.size

-- Display: Adjusted Closing Price Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adjusted Closing Price Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_lastsale_itch_v1_2_9.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_lastsale_itch_v1_2_9.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_lastsale_itch_v1_2_9.order_book.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price (6)
  index, adjusted_closing_price = nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Adjusted Closing Price Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.adjusted_closing_price_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nordicequities_lastsale_itch_v1_2_9.payload = {}

-- Dissect: Payload
nasdaq_nordicequities_lastsale_itch_v1_2_9.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Adjusted Closing Price Message
  if message_type == "G" then
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.adjusted_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect On Exchange Trade Message
  if message_type == "T" then
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.on_exchange_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Otc Trade Message
  if message_type == "Z" then
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.otc_trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header = {}

-- Size: Message Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header.size =
  nasdaq_nordicequities_lastsale_itch_v1_2_9.message_length.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.message_type.size

-- Display: Message Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 3 values
  index, message_type = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.message = {}

-- Read runtime size of: Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 3 branches
  index = nasdaq_nordicequities_lastsale_itch_v1_2_9.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nordicequities_lastsale_itch_v1_2_9.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nordicequities_lastsale_itch_v1_2_9.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.message, buffer(offset, 0))
    local current = nasdaq_nordicequities_lastsale_itch_v1_2_9.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_lastsale_itch_v1_2_9.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nordicequities_lastsale_itch_v1_2_9.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicequities_lastsale_itch_v1_2_9.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicequities_lastsale_itch_v1_2_9.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nordicequities_lastsale_itch_v1_2_9.heartbeat = {}

-- Display: Heartbeat
nasdaq_nordicequities_lastsale_itch_v1_2_9.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nordicequities_lastsale_itch_v1_2_9.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nordicequities_lastsale_itch_v1_2_9.messages = {}

-- Dissect: Messages
nasdaq_nordicequities_lastsale_itch_v1_2_9.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nordicequities_lastsale_itch_v1_2_9.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header = {}

-- Size: Packet Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.size =
  nasdaq_nordicequities_lastsale_itch_v1_2_9.session.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.sequence_number.size + 
  nasdaq_nordicequities_lastsale_itch_v1_2_9.message_count.size

-- Display: Packet Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nordicequities_lastsale_itch_v1_2_9.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nordicequities_lastsale_itch_v1_2_9.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nordicequities_lastsale_itch_v1_2_9.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nordicequities_lastsale_itch_v1_2_9.packet = {}

-- Verify required size of Udp packet
nasdaq_nordicequities_lastsale_itch_v1_2_9.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.size
end

-- Dissect Packet
nasdaq_nordicequities_lastsale_itch_v1_2_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nordicequities_lastsale_itch_v1_2_9.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nordicequities_lastsale_itch_v1_2_9.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.init()
end

-- Dissector for Nasdaq NordicEquities LastSale Itch 1.2.9
function omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9, buffer(), omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.description, "("..buffer:len().." Bytes)")
  return nasdaq_nordicequities_lastsale_itch_v1_2_9.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NordicEquities LastSale Itch 1.2.9 (Udp)
local function omi_nasdaq_nordicequities_lastsale_itch_v1_2_9_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_lastsale_itch_v1_2_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_lastsale_itch_v1_2_9
  omi_nasdaq_nordicequities_lastsale_itch_v1_2_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NordicEquities LastSale Itch 1.2.9
omi_nasdaq_nordicequities_lastsale_itch_v1_2_9:register_heuristic("udp", omi_nasdaq_nordicequities_lastsale_itch_v1_2_9_udp_heuristic)

-- Register Nasdaq NordicEquities LastSale Itch 1.2.9 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nordicequities_lastsale_itch_v1_2_9)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.2.9
--   Date: Friday, July 18, 2025
--   Specification: Nasdaq Nordic INET Equity Last Sale NLS (1.2.9).pdf
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
