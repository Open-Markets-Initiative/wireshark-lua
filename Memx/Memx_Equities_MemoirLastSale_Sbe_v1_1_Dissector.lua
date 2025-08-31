-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities MemoirLastSale Sbe 1.1 Protocol
local omi_memx_equities_memoirlastsale_sbe_v1_1 = Proto("Memx.Equities.MemoirLastSale.Sbe.v1.1.Lua", "Memx Equities MemoirLastSale Sbe 1.1")

-- Component Tables
local show = {}
local format = {}
local memx_equities_memoirlastsale_sbe_v1_1_display = {}
local memx_equities_memoirlastsale_sbe_v1_1_dissect = {}
local memx_equities_memoirlastsale_sbe_v1_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Equities MemoirLastSale Sbe 1.1 Fields
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.block_length = ProtoField.new("Block Length", "memx.equities.memoirlastsale.sbe.v1.1.blocklength", ftypes.UINT16)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.common_header = ProtoField.new("Common Header", "memx.equities.memoirlastsale.sbe.v1.1.commonheader", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_sale_condition_1 = ProtoField.new("Corrected Sale Condition 1", "memx.equities.memoirlastsale.sbe.v1.1.correctedsalecondition1", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_sale_condition_2 = ProtoField.new("Corrected Sale Condition 2", "memx.equities.memoirlastsale.sbe.v1.1.correctedsalecondition2", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_sale_condition_3 = ProtoField.new("Corrected Sale Condition 3", "memx.equities.memoirlastsale.sbe.v1.1.correctedsalecondition3", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_sale_condition_4 = ProtoField.new("Corrected Sale Condition 4", "memx.equities.memoirlastsale.sbe.v1.1.correctedsalecondition4", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "memx.equities.memoirlastsale.sbe.v1.1.correctedtradeprice", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_trade_qty = ProtoField.new("Corrected Trade Qty", "memx.equities.memoirlastsale.sbe.v1.1.correctedtradeqty", ftypes.UINT32)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.header_length = ProtoField.new("Header Length", "memx.equities.memoirlastsale.sbe.v1.1.headerlength", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.equities.memoirlastsale.sbe.v1.1.istestsymbol", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.last_price = ProtoField.new("Last Price", "memx.equities.memoirlastsale.sbe.v1.1.lastprice", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.message = ProtoField.new("Message", "memx.equities.memoirlastsale.sbe.v1.1.message", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.message_count = ProtoField.new("Message Count", "memx.equities.memoirlastsale.sbe.v1.1.messagecount", ftypes.UINT16)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.message_length = ProtoField.new("Message Length", "memx.equities.memoirlastsale.sbe.v1.1.messagelength", ftypes.UINT16)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.message_type = ProtoField.new("Message Type", "memx.equities.memoirlastsale.sbe.v1.1.messagetype", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.mpv = ProtoField.new("Mpv", "memx.equities.memoirlastsale.sbe.v1.1.mpv", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_sale_condition_1 = ProtoField.new("Original Sale Condition 1", "memx.equities.memoirlastsale.sbe.v1.1.originalsalecondition1", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_sale_condition_2 = ProtoField.new("Original Sale Condition 2", "memx.equities.memoirlastsale.sbe.v1.1.originalsalecondition2", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_sale_condition_3 = ProtoField.new("Original Sale Condition 3", "memx.equities.memoirlastsale.sbe.v1.1.originalsalecondition3", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_sale_condition_4 = ProtoField.new("Original Sale Condition 4", "memx.equities.memoirlastsale.sbe.v1.1.originalsalecondition4", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_trade_price = ProtoField.new("Original Trade Price", "memx.equities.memoirlastsale.sbe.v1.1.originaltradeprice", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_trade_qty = ProtoField.new("Original Trade Qty", "memx.equities.memoirlastsale.sbe.v1.1.originaltradeqty", ftypes.UINT32)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.packet = ProtoField.new("Packet", "memx.equities.memoirlastsale.sbe.v1.1.packet", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.payload = ProtoField.new("Payload", "memx.equities.memoirlastsale.sbe.v1.1.payload", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.round_lot = ProtoField.new("Round Lot", "memx.equities.memoirlastsale.sbe.v1.1.roundlot", ftypes.UINT32)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sale_condition_1 = ProtoField.new("Sale Condition 1", "memx.equities.memoirlastsale.sbe.v1.1.salecondition1", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sale_condition_2 = ProtoField.new("Sale Condition 2", "memx.equities.memoirlastsale.sbe.v1.1.salecondition2", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sale_condition_3 = ProtoField.new("Sale Condition 3", "memx.equities.memoirlastsale.sbe.v1.1.salecondition3", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sale_condition_4 = ProtoField.new("Sale Condition 4", "memx.equities.memoirlastsale.sbe.v1.1.salecondition4", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memoirlastsale.sbe.v1.1.sbeheader", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memoirlastsale.sbe.v1.1.sbemessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memoirlastsale.sbe.v1.1.schemaid", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.security_id = ProtoField.new("Security Id", "memx.equities.memoirlastsale.sbe.v1.1.securityid", ftypes.UINT16)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.security_trading_status = ProtoField.new("Security Trading Status", "memx.equities.memoirlastsale.sbe.v1.1.securitytradingstatus", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "memx.equities.memoirlastsale.sbe.v1.1.securitytradingstatusreason", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "memx.equities.memoirlastsale.sbe.v1.1.sequencenumber", ftypes.UINT64)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memoirlastsale.sbe.v1.1.sequencedmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.equities.memoirlastsale.sbe.v1.1.sequencedmessages", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.session_id = ProtoField.new("Session Id", "memx.equities.memoirlastsale.sbe.v1.1.sessionid", ftypes.UINT64)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "memx.equities.memoirlastsale.sbe.v1.1.shortsalerestriction", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.symbol = ProtoField.new("Symbol", "memx.equities.memoirlastsale.sbe.v1.1.symbol", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memoirlastsale.sbe.v1.1.symbolsfx", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.template_id = ProtoField.new("Template Id", "memx.equities.memoirlastsale.sbe.v1.1.templateid", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.timestamp = ProtoField.new("Timestamp", "memx.equities.memoirlastsale.sbe.v1.1.timestamp", ftypes.UINT64)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_id = ProtoField.new("Trade Id", "memx.equities.memoirlastsale.sbe.v1.1.tradeid", ftypes.UINT64)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_price = ProtoField.new("Trade Price", "memx.equities.memoirlastsale.sbe.v1.1.tradeprice", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_qty = ProtoField.new("Trade Qty", "memx.equities.memoirlastsale.sbe.v1.1.tradeqty", ftypes.UINT32)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trading_session = ProtoField.new("Trading Session", "memx.equities.memoirlastsale.sbe.v1.1.tradingsession", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.version = ProtoField.new("Version", "memx.equities.memoirlastsale.sbe.v1.1.version", ftypes.UINT16)

-- Memx Equities MemoirLastSale Sbe 1.1 messages
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.equities.memoirlastsale.sbe.v1.1.instrumentdirectorymessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "memx.equities.memoirlastsale.sbe.v1.1.regshorestrictionmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "memx.equities.memoirlastsale.sbe.v1.1.securitytradingstatusmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "memx.equities.memoirlastsale.sbe.v1.1.tradecancelmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_correct_message = ProtoField.new("Trade Correct Message", "memx.equities.memoirlastsale.sbe.v1.1.tradecorrectmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_report_message = ProtoField.new("Trade Report Message", "memx.equities.memoirlastsale.sbe.v1.1.tradereportmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "memx.equities.memoirlastsale.sbe.v1.1.tradingsessionstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Memx Equities MemoirLastSale Sbe 1.1 Element Dissection Options
show.common_header = true
show.instrument_directory_message = true
show.message = true
show.packet = true
show.reg_sho_restriction_message = true
show.sbe_header = true
show.sbe_message = true
show.security_trading_status_message = true
show.sequenced_message = true
show.trade_cancel_message = true
show.trade_correct_message = true
show.trade_report_message = true
show.trading_session_status_message = true
show.payload = false
show.sequenced_messages = false

-- Register Memx Equities MemoirLastSale Sbe 1.1 Show Options
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_security_trading_status_message = Pref.bool("Show Security Trading Status Message", show.security_trading_status_message, "Parse and add Security Trading Status Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_correct_message = Pref.bool("Show Trade Correct Message", show.trade_correct_message, "Parse and add Trade Correct Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_memx_equities_memoirlastsale_sbe_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_common_header then
    show.common_header = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_common_header
    changed = true
  end
  if show.instrument_directory_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_message then
    show.message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_packet then
    show.packet = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_packet
    changed = true
  end
  if show.reg_sho_restriction_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.sbe_header ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sbe_header then
    show.sbe_header = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sbe_message then
    show.sbe_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sbe_message
    changed = true
  end
  if show.security_trading_status_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_security_trading_status_message then
    show.security_trading_status_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_security_trading_status_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sequenced_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_cancel_message
    changed = true
  end
  if show.trade_correct_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_correct_message then
    show.trade_correct_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_correct_message
    changed = true
  end
  if show.trade_report_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_report_message then
    show.trade_report_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_session_status_message ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_payload then
    show.payload = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_memx_equities_memoirlastsale_sbe_v1_1.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities MemoirLastSale Sbe 1.1
-----------------------------------------------------------------------

-- Size: Corrected Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_4 = 1

-- Display: Corrected Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_1_display.corrected_sale_condition_4 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_sale_condition_4 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_4
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.corrected_sale_condition_4(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_sale_condition_4, range, value, display)

  return offset + length, value
end

-- Size: Corrected Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_3 = 1

-- Display: Corrected Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_1_display.corrected_sale_condition_3 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_sale_condition_3 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_3
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.corrected_sale_condition_3(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_sale_condition_3, range, value, display)

  return offset + length, value
end

-- Size: Corrected Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_2 = 1

-- Display: Corrected Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_1_display.corrected_sale_condition_2 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_sale_condition_2 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_2
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.corrected_sale_condition_2(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_sale_condition_2, range, value, display)

  return offset + length, value
end

-- Size: Corrected Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_1 = 1

-- Display: Corrected Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_1_display.corrected_sale_condition_1 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_sale_condition_1 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_1
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.corrected_sale_condition_1(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_sale_condition_1, range, value, display)

  return offset + length, value
end

-- Size: Corrected Trade Price
memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_trade_price = 8

-- Display: Corrected Trade Price
memx_equities_memoirlastsale_sbe_v1_1_display.corrected_trade_price = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
translate.corrected_trade_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Price
memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_trade_price = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_trade_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.corrected_trade_price(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.corrected_trade_price(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Size: Corrected Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_trade_qty = 4

-- Display: Corrected Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_display.corrected_trade_qty = function(value)
  return "Corrected Trade Qty: "..value
end

-- Dissect: Corrected Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_trade_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_trade_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.corrected_trade_qty(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.corrected_trade_qty, range, value, display)

  return offset + length, value
end

-- Size: Original Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_4 = 1

-- Display: Original Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_1_display.original_sale_condition_4 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.original_sale_condition_4 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_4
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.original_sale_condition_4(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_sale_condition_4, range, value, display)

  return offset + length, value
end

-- Size: Original Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_3 = 1

-- Display: Original Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_1_display.original_sale_condition_3 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.original_sale_condition_3 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_3
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.original_sale_condition_3(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_sale_condition_3, range, value, display)

  return offset + length, value
end

-- Size: Original Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_2 = 1

-- Display: Original Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_1_display.original_sale_condition_2 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.original_sale_condition_2 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_2
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.original_sale_condition_2(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_sale_condition_2, range, value, display)

  return offset + length, value
end

-- Size: Original Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_1 = 1

-- Display: Original Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_1_display.original_sale_condition_1 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.original_sale_condition_1 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_1
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.original_sale_condition_1(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_sale_condition_1, range, value, display)

  return offset + length, value
end

-- Size: Original Trade Price
memx_equities_memoirlastsale_sbe_v1_1_size_of.original_trade_price = 8

-- Display: Original Trade Price
memx_equities_memoirlastsale_sbe_v1_1_display.original_trade_price = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
translate.original_trade_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Price
memx_equities_memoirlastsale_sbe_v1_1_dissect.original_trade_price = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.original_trade_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.original_trade_price(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.original_trade_price(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Size: Original Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_size_of.original_trade_qty = 4

-- Display: Original Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_display.original_trade_qty = function(value)
  return "Original Trade Qty: "..value
end

-- Dissect: Original Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_dissect.original_trade_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.original_trade_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.original_trade_qty(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.original_trade_qty, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_id = 8

-- Display: Trade Id
memx_equities_memoirlastsale_sbe_v1_1_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Security Id
memx_equities_memoirlastsale_sbe_v1_1_size_of.security_id = 2

-- Display: Security Id
memx_equities_memoirlastsale_sbe_v1_1_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
memx_equities_memoirlastsale_sbe_v1_1_dissect.security_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.security_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.security_id(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp = 8

-- Display: Timestamp
memx_equities_memoirlastsale_sbe_v1_1_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
memx_equities_memoirlastsale_sbe_v1_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_correct_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.security_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.original_trade_qty

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.original_trade_price

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_1

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_2

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_3

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.original_sale_condition_4

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_trade_qty

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_trade_price

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_1

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_2

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_3

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.corrected_sale_condition_4

  return index
end

-- Display: Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_1_display.trade_correct_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_correct_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_id(buffer, index, packet, parent)

  -- Original Trade Qty: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_qty = memx_equities_memoirlastsale_sbe_v1_1_dissect.original_trade_qty(buffer, index, packet, parent)

  -- Original Trade Price: 8 Byte Signed Fixed Width Integer
  index, original_trade_price = memx_equities_memoirlastsale_sbe_v1_1_dissect.original_trade_price(buffer, index, packet, parent)

  -- Original Sale Condition 1: 1 Byte Ascii String Enum with 1 values
  index, original_sale_condition_1 = memx_equities_memoirlastsale_sbe_v1_1_dissect.original_sale_condition_1(buffer, index, packet, parent)

  -- Original Sale Condition 2: 1 Byte Ascii String Enum with 2 values
  index, original_sale_condition_2 = memx_equities_memoirlastsale_sbe_v1_1_dissect.original_sale_condition_2(buffer, index, packet, parent)

  -- Original Sale Condition 3: 1 Byte Ascii String Enum with 2 values
  index, original_sale_condition_3 = memx_equities_memoirlastsale_sbe_v1_1_dissect.original_sale_condition_3(buffer, index, packet, parent)

  -- Original Sale Condition 4: 1 Byte Ascii String Enum with 4 values
  index, original_sale_condition_4 = memx_equities_memoirlastsale_sbe_v1_1_dissect.original_sale_condition_4(buffer, index, packet, parent)

  -- Corrected Trade Qty: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_qty = memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_trade_qty(buffer, index, packet, parent)

  -- Corrected Trade Price: 8 Byte Signed Fixed Width Integer
  index, corrected_trade_price = memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_trade_price(buffer, index, packet, parent)

  -- Corrected Sale Condition 1: 1 Byte Ascii String Enum with 1 values
  index, corrected_sale_condition_1 = memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_sale_condition_1(buffer, index, packet, parent)

  -- Corrected Sale Condition 2: 1 Byte Ascii String Enum with 2 values
  index, corrected_sale_condition_2 = memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_sale_condition_2(buffer, index, packet, parent)

  -- Corrected Sale Condition 3: 1 Byte Ascii String Enum with 2 values
  index, corrected_sale_condition_3 = memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_sale_condition_3(buffer, index, packet, parent)

  -- Corrected Sale Condition 4: 1 Byte Ascii String Enum with 4 values
  index, corrected_sale_condition_4 = memx_equities_memoirlastsale_sbe_v1_1_dissect.corrected_sale_condition_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_correct_message = function(buffer, offset, packet, parent)
  if show.trade_correct_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_correct_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_correct_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.trade_correct_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_correct_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_4 = 1

-- Display: Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_1_display.sale_condition_4 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_4 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_4
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.sale_condition_4(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sale_condition_4, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_3 = 1

-- Display: Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_1_display.sale_condition_3 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_3 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_3
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.sale_condition_3(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sale_condition_3, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_2 = 1

-- Display: Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_1_display.sale_condition_2 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_2 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_2
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.sale_condition_2(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sale_condition_2, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_1 = 1

-- Display: Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_1_display.sale_condition_1 = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_1 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_1
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.sale_condition_1(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sale_condition_1, range, value, display)

  return offset + length, value
end

-- Size: Last Price
memx_equities_memoirlastsale_sbe_v1_1_size_of.last_price = 8

-- Display: Last Price
memx_equities_memoirlastsale_sbe_v1_1_display.last_price = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
translate.last_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
memx_equities_memoirlastsale_sbe_v1_1_dissect.last_price = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.last_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.last_price(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.last_price(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_qty = 4

-- Display: Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_display.trade_qty = function(value)
  return "Trade Qty: "..value
end

-- Dissect: Trade Qty
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.trade_qty(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.security_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_qty

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.last_price

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_1

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_2

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_3

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_4

  return index
end

-- Display: Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_1_display.trade_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_id(buffer, index, packet, parent)

  -- Trade Qty: 4 Byte Unsigned Fixed Width Integer
  index, trade_qty = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_qty(buffer, index, packet, parent)

  -- Last Price: 8 Byte Signed Fixed Width Integer
  index, last_price = memx_equities_memoirlastsale_sbe_v1_1_dissect.last_price(buffer, index, packet, parent)

  -- Sale Condition 1: 1 Byte Ascii String Enum with 1 values
  index, sale_condition_1 = memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_1(buffer, index, packet, parent)

  -- Sale Condition 2: 1 Byte Ascii String Enum with 2 values
  index, sale_condition_2 = memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_2(buffer, index, packet, parent)

  -- Sale Condition 3: 1 Byte Ascii String Enum with 2 values
  index, sale_condition_3 = memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_3(buffer, index, packet, parent)

  -- Sale Condition 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_4 = memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_cancel_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.trade_cancel_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Price
memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_price = 8

-- Display: Trade Price
memx_equities_memoirlastsale_sbe_v1_1_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
translate.trade_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.trade_price(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_report_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.security_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_qty

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_price

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_1

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_2

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_3

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sale_condition_4

  return index
end

-- Display: Trade Report Message
memx_equities_memoirlastsale_sbe_v1_1_display.trade_report_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_id(buffer, index, packet, parent)

  -- Trade Qty: 4 Byte Unsigned Fixed Width Integer
  index, trade_qty = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_qty(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_price(buffer, index, packet, parent)

  -- Sale Condition 1: 1 Byte Ascii String Enum with 1 values
  index, sale_condition_1 = memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_1(buffer, index, packet, parent)

  -- Sale Condition 2: 1 Byte Ascii String Enum with 2 values
  index, sale_condition_2 = memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_2(buffer, index, packet, parent)

  -- Sale Condition 3: 1 Byte Ascii String Enum with 2 values
  index, sale_condition_3 = memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_3(buffer, index, packet, parent)

  -- Sale Condition 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_4 = memx_equities_memoirlastsale_sbe_v1_1_dissect.sale_condition_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_report_message = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trade_report_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_report_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.trade_report_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_report_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trading Session
memx_equities_memoirlastsale_sbe_v1_1_size_of.trading_session = 1

-- Display: Trading Session
memx_equities_memoirlastsale_sbe_v1_1_display.trading_session = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.trading_session = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.trading_session
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.trading_session(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.trading_session_status_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.trading_session

  return index
end

-- Display: Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_1_display.trading_session_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.trading_session_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Ascii String Enum with 4 values
  index, trading_session = memx_equities_memoirlastsale_sbe_v1_1_dissect.trading_session(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.trading_session_status_message = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.trading_session_status_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.trading_session_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.trading_session_status_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.trading_session_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Security Trading Status Reason
memx_equities_memoirlastsale_sbe_v1_1_size_of.security_trading_status_reason = 1

-- Display: Security Trading Status Reason
memx_equities_memoirlastsale_sbe_v1_1_display.security_trading_status_reason = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status_reason = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.security_trading_status_reason
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.security_trading_status_reason(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Size: Security Trading Status
memx_equities_memoirlastsale_sbe_v1_1_size_of.security_trading_status = 1

-- Display: Security Trading Status
memx_equities_memoirlastsale_sbe_v1_1_display.security_trading_status = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.security_trading_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.security_trading_status_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.security_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.security_trading_status

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.security_trading_status_reason

  return index
end

-- Display: Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_1_display.security_trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_id(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Ascii String Enum with 4 values
  index, security_trading_status = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status(buffer, index, packet, parent)

  -- Security Trading Status Reason: 1 Byte Ascii String Enum with 3 values
  index, security_trading_status_reason = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status_message = function(buffer, offset, packet, parent)
  if show.security_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.security_trading_status_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.security_trading_status_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Short Sale Restriction
memx_equities_memoirlastsale_sbe_v1_1_size_of.short_sale_restriction = 1

-- Display: Short Sale Restriction
memx_equities_memoirlastsale_sbe_v1_1_display.short_sale_restriction = function(value)
  if value == 0 then
    return "Short Sale Restriction: False (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: True (1)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
memx_equities_memoirlastsale_sbe_v1_1_dissect.short_sale_restriction = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.short_sale_restriction
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.short_sale_restriction(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.reg_sho_restriction_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.security_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.short_sale_restriction

  return index
end

-- Display: Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_1_display.reg_sho_restriction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.reg_sho_restriction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_id(buffer, index, packet, parent)

  -- Short Sale Restriction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, short_sale_restriction = memx_equities_memoirlastsale_sbe_v1_1_dissect.short_sale_restriction(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.reg_sho_restriction_message = function(buffer, offset, packet, parent)
  if show.reg_sho_restriction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.reg_sho_restriction_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Mpv
memx_equities_memoirlastsale_sbe_v1_1_size_of.mpv = 8

-- Display: Mpv
memx_equities_memoirlastsale_sbe_v1_1_display.mpv = function(value)
  return "Mpv: "..value
end

-- Translate: Mpv
translate.mpv = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mpv
memx_equities_memoirlastsale_sbe_v1_1_dissect.mpv = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.mpv
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.mpv(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.mpv(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Is Test Symbol
memx_equities_memoirlastsale_sbe_v1_1_size_of.is_test_symbol = 1

-- Display: Is Test Symbol
memx_equities_memoirlastsale_sbe_v1_1_display.is_test_symbol = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
memx_equities_memoirlastsale_sbe_v1_1_dissect.is_test_symbol = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.is_test_symbol
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.is_test_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
memx_equities_memoirlastsale_sbe_v1_1_size_of.round_lot = 4

-- Display: Round Lot
memx_equities_memoirlastsale_sbe_v1_1_display.round_lot = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
memx_equities_memoirlastsale_sbe_v1_1_dissect.round_lot = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.round_lot
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.round_lot(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Symbol Sfx
memx_equities_memoirlastsale_sbe_v1_1_size_of.symbol_sfx = 6

-- Display: Symbol Sfx
memx_equities_memoirlastsale_sbe_v1_1_display.symbol_sfx = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
memx_equities_memoirlastsale_sbe_v1_1_dissect.symbol_sfx = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.symbol_sfx
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

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.symbol_sfx(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Size: Symbol
memx_equities_memoirlastsale_sbe_v1_1_size_of.symbol = 6

-- Display: Symbol
memx_equities_memoirlastsale_sbe_v1_1_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_equities_memoirlastsale_sbe_v1_1_dissect.symbol = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.symbol
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

  local display = memx_equities_memoirlastsale_sbe_v1_1_display.symbol(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.instrument_directory_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.timestamp

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.security_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.symbol

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.symbol_sfx

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.round_lot

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.is_test_symbol

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.mpv

  return index
end

-- Display: Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_1_display.instrument_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.instrument_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.security_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memoirlastsale_sbe_v1_1_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memoirlastsale_sbe_v1_1_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Round Lot: 4 Byte Unsigned Fixed Width Integer
  index, round_lot = memx_equities_memoirlastsale_sbe_v1_1_dissect.round_lot(buffer, index, packet, parent)

  -- Is Test Symbol: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, is_test_symbol = memx_equities_memoirlastsale_sbe_v1_1_dissect.is_test_symbol(buffer, index, packet, parent)

  -- Mpv: 8 Byte Signed Fixed Width Integer
  index, mpv = memx_equities_memoirlastsale_sbe_v1_1_dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.instrument_directory_message = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.instrument_directory_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.instrument_directory_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.instrument_directory_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.instrument_directory_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
memx_equities_memoirlastsale_sbe_v1_1_size_of.payload = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirlastsale_sbe_v1_1_size_of.instrument_directory_message(buffer, offset)
  end
  -- Size of Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirlastsale_sbe_v1_1_size_of.reg_sho_restriction_message(buffer, offset)
  end
  -- Size of Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirlastsale_sbe_v1_1_size_of.security_trading_status_message(buffer, offset)
  end
  -- Size of Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirlastsale_sbe_v1_1_size_of.trading_session_status_message(buffer, offset)
  end
  -- Size of Trade Report Message
  if template_id == 10 then
    return memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_report_message(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if template_id == 11 then
    return memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_cancel_message(buffer, offset)
  end
  -- Size of Trade Correct Message
  if template_id == 12 then
    return memx_equities_memoirlastsale_sbe_v1_1_size_of.trade_correct_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
memx_equities_memoirlastsale_sbe_v1_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_equities_memoirlastsale_sbe_v1_1_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.instrument_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.reg_sho_restriction_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.security_trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.trading_session_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if template_id == 10 then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if template_id == 11 then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correct Message
  if template_id == 12 then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.trade_correct_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_equities_memoirlastsale_sbe_v1_1_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirlastsale_sbe_v1_1_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.payload(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.payload, range, display)

  return memx_equities_memoirlastsale_sbe_v1_1_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
memx_equities_memoirlastsale_sbe_v1_1_size_of.version = 2

-- Display: Version
memx_equities_memoirlastsale_sbe_v1_1_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
memx_equities_memoirlastsale_sbe_v1_1_dissect.version = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.version(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
memx_equities_memoirlastsale_sbe_v1_1_size_of.schema_id = 1

-- Display: Schema Id
memx_equities_memoirlastsale_sbe_v1_1_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
memx_equities_memoirlastsale_sbe_v1_1_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
memx_equities_memoirlastsale_sbe_v1_1_size_of.template_id = 1

-- Display: Template Id
memx_equities_memoirlastsale_sbe_v1_1_display.template_id = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.template_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.template_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.template_id(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
memx_equities_memoirlastsale_sbe_v1_1_size_of.block_length = 2

-- Display: Block Length
memx_equities_memoirlastsale_sbe_v1_1_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_equities_memoirlastsale_sbe_v1_1_dissect.block_length = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.block_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.block_length(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sbe Header
memx_equities_memoirlastsale_sbe_v1_1_size_of.sbe_header = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.block_length

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.template_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.schema_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.version

  return index
end

-- Display: Sbe Header
memx_equities_memoirlastsale_sbe_v1_1_display.sbe_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_equities_memoirlastsale_sbe_v1_1_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, template_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_equities_memoirlastsale_sbe_v1_1_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_header = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sbe_header, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.sbe_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_header_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Sbe Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.sbe_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sbe_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_equities_memoirlastsale_sbe_v1_1_display.sbe_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 7 branches
  index = memx_equities_memoirlastsale_sbe_v1_1_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.sbe_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.sbe_message(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sbe_message, range, display)
  end

  return memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Length
memx_equities_memoirlastsale_sbe_v1_1_size_of.message_length = 2

-- Display: Message Length
memx_equities_memoirlastsale_sbe_v1_1_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_equities_memoirlastsale_sbe_v1_1_dissect.message_length = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.message_length(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.message_length

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sbe_message(buffer, offset + index)

  return index
end

-- Display: Message
memx_equities_memoirlastsale_sbe_v1_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_equities_memoirlastsale_sbe_v1_1_dissect.message_length(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memoirlastsale_sbe_v1_1_dissect.sbe_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.message(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.message, range, display)
  end

  return memx_equities_memoirlastsale_sbe_v1_1_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Message Count
memx_equities_memoirlastsale_sbe_v1_1_size_of.message_count = 2

-- Display: Message Count
memx_equities_memoirlastsale_sbe_v1_1_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_equities_memoirlastsale_sbe_v1_1_dissect.message_count = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.message_count(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size Of: Sequenced Message
memx_equities_memoirlastsale_sbe_v1_1_size_of.sequenced_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_equities_memoirlastsale_sbe_v1_1_display.sequenced_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_equities_memoirlastsale_sbe_v1_1_dissect.message_count(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = memx_equities_memoirlastsale_sbe_v1_1_dissect.message(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.sequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.sequenced_message(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sequenced_message, range, display)
  end

  return memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_1_size_of.sequenced_messages = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirlastsale_sbe_v1_1_size_of.sequenced_message(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_1_display.sequenced_messages = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_messages_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_messages = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_messages_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirlastsale_sbe_v1_1_size_of.sequenced_messages(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.sequenced_messages(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sequenced_messages, range, display)

  return memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_messages_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Sequence Number
memx_equities_memoirlastsale_sbe_v1_1_size_of.sequence_number = 8

-- Display: Sequence Number
memx_equities_memoirlastsale_sbe_v1_1_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_equities_memoirlastsale_sbe_v1_1_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session Id
memx_equities_memoirlastsale_sbe_v1_1_size_of.session_id = 8

-- Display: Session Id
memx_equities_memoirlastsale_sbe_v1_1_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_equities_memoirlastsale_sbe_v1_1_dissect.session_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.session_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.session_id(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Header Length
memx_equities_memoirlastsale_sbe_v1_1_size_of.header_length = 1

-- Display: Header Length
memx_equities_memoirlastsale_sbe_v1_1_display.header_length = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_equities_memoirlastsale_sbe_v1_1_dissect.header_length = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.header_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.header_length(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.header_length, range, value, display)

  return offset + length, value
end

-- Size: Message Type
memx_equities_memoirlastsale_sbe_v1_1_size_of.message_type = 1

-- Display: Message Type
memx_equities_memoirlastsale_sbe_v1_1_display.message_type = function(value)
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
memx_equities_memoirlastsale_sbe_v1_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Common Header
memx_equities_memoirlastsale_sbe_v1_1_size_of.common_header = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.message_type

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.header_length

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.session_id

  index = index + memx_equities_memoirlastsale_sbe_v1_1_size_of.sequence_number

  return index
end

-- Display: Common Header
memx_equities_memoirlastsale_sbe_v1_1_display.common_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_equities_memoirlastsale_sbe_v1_1_dissect.common_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_equities_memoirlastsale_sbe_v1_1_dissect.message_type(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_equities_memoirlastsale_sbe_v1_1_dissect.header_length(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memoirlastsale_sbe_v1_1_dissect.session_id(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_equities_memoirlastsale_sbe_v1_1_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_equities_memoirlastsale_sbe_v1_1_dissect.common_header = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1.fields.common_header, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_1_dissect.common_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_1_display.common_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_1_dissect.common_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
memx_equities_memoirlastsale_sbe_v1_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_equities_memoirlastsale_sbe_v1_1_dissect.common_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = memx_equities_memoirlastsale_sbe_v1_1_dissect.sequenced_messages(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_equities_memoirlastsale_sbe_v1_1.init()
end

-- Dissector for Memx Equities MemoirLastSale Sbe 1.1
function omi_memx_equities_memoirlastsale_sbe_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_equities_memoirlastsale_sbe_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_1, buffer(), omi_memx_equities_memoirlastsale_sbe_v1_1.description, "("..buffer:len().." Bytes)")
  return memx_equities_memoirlastsale_sbe_v1_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_memx_equities_memoirlastsale_sbe_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_memx_equities_memoirlastsale_sbe_v1_1_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(25, 1):uint()

  if value == 4 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(26, 2):uint()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Equities MemoirLastSale Sbe 1.1
local function omi_memx_equities_memoirlastsale_sbe_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_memx_equities_memoirlastsale_sbe_v1_1_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_equities_memoirlastsale_sbe_v1_1
  omi_memx_equities_memoirlastsale_sbe_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities MemoirLastSale Sbe 1.1
omi_memx_equities_memoirlastsale_sbe_v1_1:register_heuristic("udp", omi_memx_equities_memoirlastsale_sbe_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.1
--   Date: Monday, July 27, 2020
--   Specification: MEMOIR Last Sale Feed-v1_1.pdf
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
