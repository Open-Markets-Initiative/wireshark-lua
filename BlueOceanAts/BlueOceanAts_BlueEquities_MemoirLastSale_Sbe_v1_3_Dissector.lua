-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3 Protocol
local omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3 = Proto("Omi.BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3", "BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3")

-- Protocol table
local blueoceanats_blueequities_memoirlastsale_sbe_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3 Fields
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.blocklength", ftypes.UINT16)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.common_header = ProtoField.new("Common Header", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.commonheader", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_1 = ProtoField.new("Corrected Sale Condition 1", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.correctedsalecondition1", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_2 = ProtoField.new("Corrected Sale Condition 2", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.correctedsalecondition2", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_3 = ProtoField.new("Corrected Sale Condition 3", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.correctedsalecondition3", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_4 = ProtoField.new("Corrected Sale Condition 4", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.correctedsalecondition4", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.correctedtradeprice", ftypes.DOUBLE)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_trade_qty = ProtoField.new("Corrected Trade Qty", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.correctedtradeqty", ftypes.UINT32)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.header_length = ProtoField.new("Header Length", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.headerlength", ftypes.UINT8)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.istestsymbol", ftypes.UINT8)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.last_price = ProtoField.new("Last Price", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.lastprice", ftypes.DOUBLE)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message = ProtoField.new("Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.message", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.messagecount", ftypes.UINT16)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.messagelength", ftypes.UINT16)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message_type = ProtoField.new("Message Type", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.messagetype", ftypes.UINT8)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.mpv = ProtoField.new("Mpv", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.mpv", ftypes.DOUBLE)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_1 = ProtoField.new("Original Sale Condition 1", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.originalsalecondition1", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_2 = ProtoField.new("Original Sale Condition 2", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.originalsalecondition2", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_3 = ProtoField.new("Original Sale Condition 3", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.originalsalecondition3", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_4 = ProtoField.new("Original Sale Condition 4", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.originalsalecondition4", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_trade_price = ProtoField.new("Original Trade Price", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.originaltradeprice", ftypes.DOUBLE)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_trade_qty = ProtoField.new("Original Trade Qty", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.originaltradeqty", ftypes.UINT32)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.packet = ProtoField.new("Packet", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.packet", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.round_lot = ProtoField.new("Round Lot", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.roundlot", ftypes.UINT32)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sale_condition_1 = ProtoField.new("Sale Condition 1", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.salecondition1", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sale_condition_2 = ProtoField.new("Sale Condition 2", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.salecondition2", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sale_condition_3 = ProtoField.new("Sale Condition 3", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.salecondition3", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sale_condition_4 = ProtoField.new("Sale Condition 4", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.salecondition4", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sbe_header = ProtoField.new("Sbe Header", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.sbeheader", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.sbemessage", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.schemaid", ftypes.UINT8)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.security_id = ProtoField.new("Security Id", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securityid", ftypes.UINT16)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.security_trading_status = ProtoField.new("Security Trading Status", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securitytradingstatus", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securitytradingstatusreason", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.sequencenumber", ftypes.UINT64)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.sequencedmessage", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.session_id = ProtoField.new("Session Id", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.sessionid", ftypes.UINT64)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.shortsalerestriction", ftypes.UINT8)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.symbol", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.symbolsfx", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.templateid", ftypes.UINT8)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.timestamp", ftypes.UINT64)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_id = ProtoField.new("Trade Id", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradeid", ftypes.UINT64)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_price = ProtoField.new("Trade Price", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradeprice", ftypes.DOUBLE)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_qty = ProtoField.new("Trade Qty", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradeqty", ftypes.UINT32)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradingsession", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.version = ProtoField.new("Version", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.version", ftypes.UINT16)

-- BlueOceanAts BlueEquities MemoirLastSale 1.3 Application Messages
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.instrumentdirectorymessage", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.regshorestrictionmessage", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securitytradingstatusmessage", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradecancelmessage", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_correct_message = ProtoField.new("Trade Correct Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradecorrectmessage", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_report_message = ProtoField.new("Trade Report Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradereportmessage", ftypes.STRING)
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradingsessionstatusmessage", ftypes.STRING)

-- BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3 generated fields
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message_index = ProtoField.new("Message Index", "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3 Element Dissection Options
show.headers = true
show.application_messages = true
show.structs = true
show.indexes = true

-- Register BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3 Show Options
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_application_messages then
    show.application_messages = omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_application_messages
  end
  if show.headers ~= omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_headers then
    show.headers = omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_headers
  end
  if show.structs ~= omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_structs then
    show.structs = omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_structs
  end
  if show.indexes ~= omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_indexes then
    show.indexes = omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3 Fields
-----------------------------------------------------------------------

-- Block Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.block_length = {}

-- Size: Block Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.block_length.size = 2

-- Display: Block Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1 = {}

-- Size: Corrected Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.size = 1

-- Display: Corrected Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Corrected Sale Condition 1: No Value"
  end

  if value == "@" then
    return "Corrected Sale Condition 1: Regular (@)"
  end

  return "Corrected Sale Condition 1: Unknown("..value..")"
end

-- Dissect: Corrected Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_1, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2 = {}

-- Size: Corrected Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.size = 1

-- Display: Corrected Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Corrected Sale Condition 2: No Value"
  end

  if value == "F" then
    return "Corrected Sale Condition 2: Intermarket Sweep (F)"
  end
  if value == " " then
    return "Corrected Sale Condition 2: Not Applicable (<whitespace>)"
  end

  return "Corrected Sale Condition 2: Unknown("..value..")"
end

-- Dissect: Corrected Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_2, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3 = {}

-- Size: Corrected Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.size = 1

-- Display: Corrected Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Corrected Sale Condition 3: No Value"
  end

  if value == "T" then
    return "Corrected Sale Condition 3: Form T (T)"
  end
  if value == " " then
    return "Corrected Sale Condition 3: Not Applicable (<whitespace>)"
  end

  return "Corrected Sale Condition 3: Unknown("..value..")"
end

-- Dissect: Corrected Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_3, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4 = {}

-- Size: Corrected Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.size = 1

-- Display: Corrected Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Corrected Sale Condition 4: No Value"
  end

  if value == "H" then
    return "Corrected Sale Condition 4: Price Variation (H)"
  end
  if value == "I" then
    return "Corrected Sale Condition 4: Odd Lot (I)"
  end
  if value == "X" then
    return "Corrected Sale Condition 4: Cross (X)"
  end
  if value == " " then
    return "Corrected Sale Condition 4: Not Applicable (<whitespace>)"
  end

  return "Corrected Sale Condition 4: Unknown("..value..")"
end

-- Dissect: Corrected Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_4, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price = {}

-- Size: Corrected Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.translate(raw)
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_qty = {}

-- Size: Corrected Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_qty.size = 4

-- Display: Corrected Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_qty.display = function(value)
  return "Corrected Trade Qty: "..value
end

-- Dissect: Corrected Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.corrected_trade_qty, range, value, display)

  return offset + length, value
end

-- Header Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.header_length = {}

-- Size: Header Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.header_length.size = 1

-- Display: Header Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.header_length.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.header_length, range, value, display)

  return offset + length, value
end

-- Is Test Symbol
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.is_test_symbol = {}

-- Size: Is Test Symbol
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.is_test_symbol.size = 1

-- Display: Is Test Symbol
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Last Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price = {}

-- Size: Last Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.size = 8

-- Display: Last Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.translate(raw)
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.last_price, range, value, display)

  return offset + length, value
end

-- Message Count
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_count = {}

-- Size: Message Count
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_count.size = 2

-- Display: Message Count
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_length = {}

-- Size: Message Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_length.size = 2

-- Display: Message Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_type = {}

-- Size: Message Type
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_type.size = 1

-- Display: Message Type
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_type.display = function(value)
  if value == 0 then
    return "Message Type: Heartbeat Message (0)"
  end
  if value == 1 then
    return "Message Type: Session Shutdown Message (1)"
  end
  if value == 2 then
    return "Message Type: Sequenced Message (2)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv = {}

-- Size: Mpv
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.size = 8

-- Display: Mpv
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.display = function(value)
  return "Mpv: "..value
end

-- Translate: Mpv
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mpv
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.translate(raw)
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.mpv, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_1 = {}

-- Size: Original Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_1.size = 1

-- Display: Original Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_1.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Original Sale Condition 1: No Value"
  end

  if value == "@" then
    return "Original Sale Condition 1: Regular (@)"
  end

  return "Original Sale Condition 1: Unknown("..value..")"
end

-- Dissect: Original Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_1, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_2 = {}

-- Size: Original Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_2.size = 1

-- Display: Original Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_2.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Original Sale Condition 2: No Value"
  end

  if value == "F" then
    return "Original Sale Condition 2: Intermarket Sweep (F)"
  end
  if value == " " then
    return "Original Sale Condition 2: Not Applicable (<whitespace>)"
  end

  return "Original Sale Condition 2: Unknown("..value..")"
end

-- Dissect: Original Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_2, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_3 = {}

-- Size: Original Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_3.size = 1

-- Display: Original Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_3.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Original Sale Condition 3: No Value"
  end

  if value == "T" then
    return "Original Sale Condition 3: Form T (T)"
  end
  if value == " " then
    return "Original Sale Condition 3: Not Applicable (<whitespace>)"
  end

  return "Original Sale Condition 3: Unknown("..value..")"
end

-- Dissect: Original Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_3, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_4 = {}

-- Size: Original Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_4.size = 1

-- Display: Original Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_4.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Original Sale Condition 4: No Value"
  end

  if value == "H" then
    return "Original Sale Condition 4: Price Variation (H)"
  end
  if value == "I" then
    return "Original Sale Condition 4: Odd Lot (I)"
  end
  if value == "X" then
    return "Original Sale Condition 4: Cross (X)"
  end
  if value == " " then
    return "Original Sale Condition 4: Not Applicable (<whitespace>)"
  end

  return "Original Sale Condition 4: Unknown("..value..")"
end

-- Dissect: Original Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_4, range, value, display)

  return offset + length, value
end

-- Original Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price = {}

-- Size: Original Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.size = 8

-- Display: Original Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.translate(raw)
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_qty = {}

-- Size: Original Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_qty.size = 4

-- Display: Original Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_qty.display = function(value)
  return "Original Trade Qty: "..value
end

-- Dissect: Original Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.original_trade_qty, range, value, display)

  return offset + length, value
end

-- Round Lot
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.round_lot = {}

-- Size: Round Lot
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.round_lot.size = 4

-- Display: Round Lot
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.round_lot.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1 = {}

-- Size: Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.size = 1

-- Display: Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sale Condition 1: No Value"
  end

  if value == "@" then
    return "Sale Condition 1: Regular (@)"
  end

  return "Sale Condition 1: Unknown("..value..")"
end

-- Dissect: Sale Condition 1
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sale_condition_1, range, value, display)

  return offset + length, value
end

-- Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2 = {}

-- Size: Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.size = 1

-- Display: Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sale Condition 2: No Value"
  end

  if value == "F" then
    return "Sale Condition 2: Intermarket Sweep (F)"
  end
  if value == " " then
    return "Sale Condition 2: Not Applicable (<whitespace>)"
  end

  return "Sale Condition 2: Unknown("..value..")"
end

-- Dissect: Sale Condition 2
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sale_condition_2, range, value, display)

  return offset + length, value
end

-- Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3 = {}

-- Size: Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.size = 1

-- Display: Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sale Condition 3: No Value"
  end

  if value == "T" then
    return "Sale Condition 3: Form T (T)"
  end
  if value == " " then
    return "Sale Condition 3: Not Applicable (<whitespace>)"
  end

  return "Sale Condition 3: Unknown("..value..")"
end

-- Dissect: Sale Condition 3
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sale_condition_3, range, value, display)

  return offset + length, value
end

-- Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4 = {}

-- Size: Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.size = 1

-- Display: Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sale Condition 4: No Value"
  end

  if value == "H" then
    return "Sale Condition 4: Price Variation (H)"
  end
  if value == "I" then
    return "Sale Condition 4: Odd Lot (I)"
  end
  if value == "X" then
    return "Sale Condition 4: Cross (X)"
  end
  if value == " " then
    return "Sale Condition 4: Not Applicable (<whitespace>)"
  end

  return "Sale Condition 4: Unknown("..value..")"
end

-- Dissect: Sale Condition 4
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sale_condition_4, range, value, display)

  return offset + length, value
end

-- Schema Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.schema_id = {}

-- Size: Schema Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.schema_id.size = 1

-- Display: Schema Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.schema_id.display = function(value)
  if value == 4 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id = {}

-- Size: Security Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.size = 2

-- Display: Security Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Trading Status
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status = {}

-- Size: Security Trading Status
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status.size = 1

-- Display: Security Trading Status
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Trading Status: No Value"
  end

  if value == "H" then
    return "Security Trading Status: Halted (H)"
  end
  if value == "P" then
    return "Security Trading Status: Paused (P)"
  end
  if value == "Q" then
    return "Security Trading Status: Quoting (Q)"
  end
  if value == "T" then
    return "Security Trading Status: Trading (T)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Reason
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_reason = {}

-- Size: Security Trading Status Reason
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_reason.size = 1

-- Display: Security Trading Status Reason
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Trading Status Reason: No Value"
  end

  if value == "X" then
    return "Security Trading Status Reason: None (X)"
  end
  if value == "R" then
    return "Security Trading Status Reason: Regulatory (R)"
  end
  if value == "A" then
    return "Security Trading Status Reason: Administrative (A)"
  end

  return "Security Trading Status Reason: Unknown("..value..")"
end

-- Dissect: Security Trading Status Reason
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Sequence Number
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequence_number = {}

-- Size: Sequence Number
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequence_number.size = 8

-- Display: Sequence Number
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.session_id = {}

-- Size: Session Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.session_id.size = 8

-- Display: Session Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.short_sale_restriction = {}

-- Size: Short Sale Restriction
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.short_sale_restriction.display = function(value)
  if value == 0 then
    return "Short Sale Restriction: False (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: True (1)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Symbol
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol = {}

-- Size: Symbol
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol.size = 6

-- Display: Symbol
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol.size
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

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol_sfx = {}

-- Size: Symbol Sfx
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol_sfx.size = 6

-- Display: Symbol Sfx
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol_sfx.size
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

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Template Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.template_id = {}

-- Size: Template Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.template_id.size = 1

-- Display: Template Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Instrument Directory Message (1)"
  end
  if value == 2 then
    return "Template Id: Reg Sho Restriction Message (2)"
  end
  if value == 3 then
    return "Template Id: Security Trading Status Message (3)"
  end
  if value == 5 then
    return "Template Id: Trading Session Status Message (5)"
  end
  if value == 10 then
    return "Template Id: Trade Report Message (10)"
  end
  if value == 11 then
    return "Template Id: Trade Cancel Message (11)"
  end
  if value == 12 then
    return "Template Id: Trade Correct Message (12)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Timestamp
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp = {}

-- Size: Timestamp
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size = 8

-- Display: Timestamp
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id = {}

-- Size: Trade Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.size = 8

-- Display: Trade Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price = {}

-- Size: Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.size = 8

-- Display: Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.translate(raw)
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty = {}

-- Size: Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.size = 4

-- Display: Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.display = function(value)
  return "Trade Qty: "..value
end

-- Dissect: Trade Qty
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_qty, range, value, display)

  return offset + length, value
end

-- Trading Session
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session = {}

-- Size: Trading Session
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session.size = 1

-- Display: Trading Session
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trading Session: No Value"
  end

  if value == "1" then
    return "Trading Session: Opening (1)"
  end
  if value == "2" then
    return "Trading Session: Trading (2)"
  end
  if value == "3" then
    return "Trading Session: Post Trading (3)"
  end
  if value == "4" then
    return "Trading Session: Closed (4)"
  end

  return "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Version
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.version = {}

-- Size: Version
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.version.size = 2

-- Display: Version
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.version.display = function(value)
  if value == 259 then
    return "Version: Version 1.3"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3
-----------------------------------------------------------------------

-- Trade Correct Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message = {}

-- Size: Trade Correct Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_qty.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_1.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_2.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_3.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_4.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_qty.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.size

-- Display: Trade Correct Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correct Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Qty: uint32
  index, original_trade_qty = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_qty.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price
  index, original_trade_price = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 1: SCSettlementType
  index, original_sale_condition_1 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_1.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 2: SCTradeThroughExemptionType
  index, original_sale_condition_2 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_2.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 3: SCExtendedHoursOrSoldType
  index, original_sale_condition_3 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_3.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 4: SCSROTradeDetailType
  index, original_sale_condition_4 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.original_sale_condition_4.dissect(buffer, index, packet, parent)

  -- Corrected Trade Qty: uint32
  index, corrected_trade_qty = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_qty.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price
  index, corrected_trade_price = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 1: SCSettlementType
  index, corrected_sale_condition_1 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 2: SCTradeThroughExemptionType
  index, corrected_sale_condition_2 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 3: SCExtendedHoursOrSoldType
  index, corrected_sale_condition_3 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 4: SCSROTradeDetailType
  index, corrected_sale_condition_4 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correct Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_correct_message, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message = {}

-- Size: Trade Cancel Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.size

-- Display: Trade Cancel Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Qty: uint32
  index, trade_qty = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.dissect(buffer, index, packet, parent)

  -- Last Price: Price
  index, last_price = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.last_price.dissect(buffer, index, packet, parent)

  -- Sale Condition 1: SCSettlementType
  index, sale_condition_1 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.dissect(buffer, index, packet, parent)

  -- Sale Condition 2: SCTradeThroughExemptionType
  index, sale_condition_2 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.dissect(buffer, index, packet, parent)

  -- Sale Condition 3: SCExtendedHoursOrSoldType
  index, sale_condition_3 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: SCSROTradeDetailType
  index, sale_condition_4 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_cancel_message, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message = {}

-- Size: Trade Report Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.size

-- Display: Trade Report Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Qty: uint32
  index, trade_qty = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_qty.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_price.dissect(buffer, index, packet, parent)

  -- Sale Condition 1: SCSettlementType
  index, sale_condition_1 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_1.dissect(buffer, index, packet, parent)

  -- Sale Condition 2: SCTradeThroughExemptionType
  index, sale_condition_2 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_2.dissect(buffer, index, packet, parent)

  -- Sale Condition 3: SCExtendedHoursOrSoldType
  index, sale_condition_3 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_3.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: SCSROTradeDetailType
  index, sale_condition_4 = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sale_condition_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trade_report_message, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message = {}

-- Size: Trading Session Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session.size

-- Display: Trading Session Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: TradingSessionType
  index, trading_session = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.trading_session_status_message, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message = {}

-- Size: Security Trading Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_reason.size

-- Display: Security Trading Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatusType
  index, security_trading_status = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status Reason: SecurityTradingStatusReasonType
  index, security_trading_status_reason = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.security_trading_status_message, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Restriction Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.short_sale_restriction.size

-- Display: Reg Sho Restriction Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: BooleanType
  index, short_sale_restriction = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Directory Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message = {}

-- Size: Instrument Directory Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol_sfx.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.round_lot.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.is_test_symbol.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.size

-- Display: Instrument Directory Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: InstrumentDirectorySymbol
  index, symbol = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: InstrumentDirectorySymbolSfx
  index, symbol_sfx = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Round Lot: uint32
  index, round_lot = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.round_lot.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: BooleanType
  index, is_test_symbol = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.is_test_symbol.dissect(buffer, index, packet, parent)

  -- Mpv: Price
  index, mpv = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.payload = {}

-- Dissect: Payload
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.security_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if template_id == 10 then
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if template_id == 11 then
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correct Message
  if template_id == 12 then
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.trade_correct_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sbe Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header = {}

-- Size: Sbe Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.block_length.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.template_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.schema_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.version.size

-- Display: Sbe Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, template_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sbe_header, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_message = {}

-- Display: Sbe Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 7 branches
  index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sbe_message, buffer(offset, 0))
    local current = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message = {}

-- Display: Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_length.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.message, buffer(offset, 0))
    local current = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequenced Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message = {}

-- Calculate size of: Sequenced Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_count.size

  -- Parse runtime size of: Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end

-- Dissect: Sequenced Message
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.sequenced_message, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Messages
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_messages = {}

-- Dissect: Sequenced Messages
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Common Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header = {}

-- Size: Common Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.size =
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_type.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.header_length.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.session_id.size + 
  blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequence_number.size

-- Display: Common Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.fields.common_header, buffer(offset, 0))
    local index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.packet = {}

-- Verify required size of Udp packet
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.packet.requiredsize = function(buffer)
  return buffer:len() >= blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.size
end

-- Dissect Packet
blueoceanats_blueequities_memoirlastsale_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = blueoceanats_blueequities_memoirlastsale_sbe_v1_3.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.init()
end

-- Dissector for BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3
function omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3, buffer(), omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return blueoceanats_blueequities_memoirlastsale_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3 (Udp)
local function omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not blueoceanats_blueequities_memoirlastsale_sbe_v1_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3
  omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3
omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3:register_heuristic("udp", omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3_udp_heuristic)

-- Register BlueOceanAts BlueEquities MemoirLastSale Sbe 1.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_blueoceanats_blueequities_memoirlastsale_sbe_v1_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Blue Ocean Technologies
--   Version: 1.3
--   Date: Monday, January 1, 2024
--   Specification: MEMOIR Last Sale Feed (v1.3).pdf
--   Specification: Blue Ocean ATS UDP Protocol.pdf
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
