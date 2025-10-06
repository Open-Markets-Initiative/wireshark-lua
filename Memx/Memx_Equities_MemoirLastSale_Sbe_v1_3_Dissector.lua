-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities MemoirLastSale Sbe 1.3 Protocol
local omi_memx_equities_memoirlastsale_sbe_v1_3 = Proto("Memx.Equities.MemoirLastSale.Sbe.v1.3.Lua", "Memx Equities MemoirLastSale Sbe 1.3")

-- Protocol table
local memx_equities_memoirlastsale_sbe_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Equities MemoirLastSale Sbe 1.3 Fields
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "memx.equities.memoirlastsale.sbe.v1.3.blocklength", ftypes.UINT16)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.common_header = ProtoField.new("Common Header", "memx.equities.memoirlastsale.sbe.v1.3.commonheader", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_1 = ProtoField.new("Corrected Sale Condition 1", "memx.equities.memoirlastsale.sbe.v1.3.correctedsalecondition1", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_2 = ProtoField.new("Corrected Sale Condition 2", "memx.equities.memoirlastsale.sbe.v1.3.correctedsalecondition2", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_3 = ProtoField.new("Corrected Sale Condition 3", "memx.equities.memoirlastsale.sbe.v1.3.correctedsalecondition3", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_4 = ProtoField.new("Corrected Sale Condition 4", "memx.equities.memoirlastsale.sbe.v1.3.correctedsalecondition4", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "memx.equities.memoirlastsale.sbe.v1.3.correctedtradeprice", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_trade_qty = ProtoField.new("Corrected Trade Qty", "memx.equities.memoirlastsale.sbe.v1.3.correctedtradeqty", ftypes.UINT32)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.header_length = ProtoField.new("Header Length", "memx.equities.memoirlastsale.sbe.v1.3.headerlength", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.equities.memoirlastsale.sbe.v1.3.istestsymbol", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.last_price = ProtoField.new("Last Price", "memx.equities.memoirlastsale.sbe.v1.3.lastprice", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.message = ProtoField.new("Message", "memx.equities.memoirlastsale.sbe.v1.3.message", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "memx.equities.memoirlastsale.sbe.v1.3.messagecount", ftypes.UINT16)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "memx.equities.memoirlastsale.sbe.v1.3.messagelength", ftypes.UINT16)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.message_type = ProtoField.new("Message Type", "memx.equities.memoirlastsale.sbe.v1.3.messagetype", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.mpv = ProtoField.new("Mpv", "memx.equities.memoirlastsale.sbe.v1.3.mpv", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_1 = ProtoField.new("Original Sale Condition 1", "memx.equities.memoirlastsale.sbe.v1.3.originalsalecondition1", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_2 = ProtoField.new("Original Sale Condition 2", "memx.equities.memoirlastsale.sbe.v1.3.originalsalecondition2", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_3 = ProtoField.new("Original Sale Condition 3", "memx.equities.memoirlastsale.sbe.v1.3.originalsalecondition3", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_4 = ProtoField.new("Original Sale Condition 4", "memx.equities.memoirlastsale.sbe.v1.3.originalsalecondition4", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_trade_price = ProtoField.new("Original Trade Price", "memx.equities.memoirlastsale.sbe.v1.3.originaltradeprice", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_trade_qty = ProtoField.new("Original Trade Qty", "memx.equities.memoirlastsale.sbe.v1.3.originaltradeqty", ftypes.UINT32)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.packet = ProtoField.new("Packet", "memx.equities.memoirlastsale.sbe.v1.3.packet", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.payload = ProtoField.new("Payload", "memx.equities.memoirlastsale.sbe.v1.3.payload", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.round_lot = ProtoField.new("Round Lot", "memx.equities.memoirlastsale.sbe.v1.3.roundlot", ftypes.UINT32)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sale_condition_1 = ProtoField.new("Sale Condition 1", "memx.equities.memoirlastsale.sbe.v1.3.salecondition1", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sale_condition_2 = ProtoField.new("Sale Condition 2", "memx.equities.memoirlastsale.sbe.v1.3.salecondition2", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sale_condition_3 = ProtoField.new("Sale Condition 3", "memx.equities.memoirlastsale.sbe.v1.3.salecondition3", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sale_condition_4 = ProtoField.new("Sale Condition 4", "memx.equities.memoirlastsale.sbe.v1.3.salecondition4", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memoirlastsale.sbe.v1.3.sbeheader", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memoirlastsale.sbe.v1.3.sbemessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memoirlastsale.sbe.v1.3.schemaid", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.security_id = ProtoField.new("Security Id", "memx.equities.memoirlastsale.sbe.v1.3.securityid", ftypes.UINT16)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.security_trading_status = ProtoField.new("Security Trading Status", "memx.equities.memoirlastsale.sbe.v1.3.securitytradingstatus", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "memx.equities.memoirlastsale.sbe.v1.3.securitytradingstatusreason", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "memx.equities.memoirlastsale.sbe.v1.3.sequencenumber", ftypes.UINT64)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memoirlastsale.sbe.v1.3.sequencedmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.equities.memoirlastsale.sbe.v1.3.sequencedmessages", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.session_id = ProtoField.new("Session Id", "memx.equities.memoirlastsale.sbe.v1.3.sessionid", ftypes.UINT64)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "memx.equities.memoirlastsale.sbe.v1.3.shortsalerestriction", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "memx.equities.memoirlastsale.sbe.v1.3.symbol", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memoirlastsale.sbe.v1.3.symbolsfx", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "memx.equities.memoirlastsale.sbe.v1.3.templateid", ftypes.UINT8)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "memx.equities.memoirlastsale.sbe.v1.3.timestamp", ftypes.UINT64)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_id = ProtoField.new("Trade Id", "memx.equities.memoirlastsale.sbe.v1.3.tradeid", ftypes.UINT64)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_price = ProtoField.new("Trade Price", "memx.equities.memoirlastsale.sbe.v1.3.tradeprice", ftypes.DOUBLE)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_qty = ProtoField.new("Trade Qty", "memx.equities.memoirlastsale.sbe.v1.3.tradeqty", ftypes.UINT32)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "memx.equities.memoirlastsale.sbe.v1.3.tradingsession", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.version = ProtoField.new("Version", "memx.equities.memoirlastsale.sbe.v1.3.version", ftypes.UINT16)

-- Memx Equities MemoirLastSale Sbe 1.3 messages
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.equities.memoirlastsale.sbe.v1.3.instrumentdirectorymessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "memx.equities.memoirlastsale.sbe.v1.3.regshorestrictionmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "memx.equities.memoirlastsale.sbe.v1.3.securitytradingstatusmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "memx.equities.memoirlastsale.sbe.v1.3.tradecancelmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_correct_message = ProtoField.new("Trade Correct Message", "memx.equities.memoirlastsale.sbe.v1.3.tradecorrectmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_report_message = ProtoField.new("Trade Report Message", "memx.equities.memoirlastsale.sbe.v1.3.tradereportmessage", ftypes.STRING)
omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "memx.equities.memoirlastsale.sbe.v1.3.tradingsessionstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx Equities MemoirLastSale Sbe 1.3 Element Dissection Options
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

-- Register Memx Equities MemoirLastSale Sbe 1.3 Show Options
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_security_trading_status_message = Pref.bool("Show Security Trading Status Message", show.security_trading_status_message, "Parse and add Security Trading Status Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_correct_message = Pref.bool("Show Trade Correct Message", show.trade_correct_message, "Parse and add Trade Correct Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_memx_equities_memoirlastsale_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_common_header then
    show.common_header = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_common_header
    changed = true
  end
  if show.instrument_directory_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_message then
    show.message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_packet then
    show.packet = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.reg_sho_restriction_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.sbe_header ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sbe_header then
    show.sbe_header = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.security_trading_status_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_security_trading_status_message then
    show.security_trading_status_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_security_trading_status_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sequenced_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_cancel_message
    changed = true
  end
  if show.trade_correct_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_correct_message then
    show.trade_correct_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_correct_message
    changed = true
  end
  if show.trade_report_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_report_message then
    show.trade_report_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_session_status_message ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_payload then
    show.payload = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_memx_equities_memoirlastsale_sbe_v1_3.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities MemoirLastSale Sbe 1.3
-----------------------------------------------------------------------

-- Corrected Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4 = {}

-- Size: Corrected Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.size = 1

-- Display: Corrected Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_4, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3 = {}

-- Size: Corrected Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.size = 1

-- Display: Corrected Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_3, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2 = {}

-- Size: Corrected Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.size = 1

-- Display: Corrected Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_2, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1 = {}

-- Size: Corrected Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.size = 1

-- Display: Corrected Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_sale_condition_1, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price = {}

-- Size: Corrected Trade Price
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Price
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.translate(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_qty = {}

-- Size: Corrected Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_qty.size = 4

-- Display: Corrected Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_qty.display = function(value)
  return "Corrected Trade Qty: "..value
end

-- Dissect: Corrected Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.corrected_trade_qty, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_4 = {}

-- Size: Original Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_4.size = 1

-- Display: Original Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_4.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_4, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_3 = {}

-- Size: Original Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_3.size = 1

-- Display: Original Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_3.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_3, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_2 = {}

-- Size: Original Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_2.size = 1

-- Display: Original Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_2.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_2, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_1 = {}

-- Size: Original Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_1.size = 1

-- Display: Original Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_1.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_sale_condition_1, range, value, display)

  return offset + length, value
end

-- Original Trade Price
memx_equities_memoirlastsale_sbe_v1_3.original_trade_price = {}

-- Size: Original Trade Price
memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.size = 8

-- Display: Original Trade Price
memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Price
memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.translate(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.original_trade_qty = {}

-- Size: Original Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.original_trade_qty.size = 4

-- Display: Original Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.original_trade_qty.display = function(value)
  return "Original Trade Qty: "..value
end

-- Dissect: Original Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.original_trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.original_trade_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.original_trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.original_trade_qty, range, value, display)

  return offset + length, value
end

-- Trade Id
memx_equities_memoirlastsale_sbe_v1_3.trade_id = {}

-- Size: Trade Id
memx_equities_memoirlastsale_sbe_v1_3.trade_id.size = 8

-- Display: Trade Id
memx_equities_memoirlastsale_sbe_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
memx_equities_memoirlastsale_sbe_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirlastsale_sbe_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Security Id
memx_equities_memoirlastsale_sbe_v1_3.security_id = {}

-- Size: Security Id
memx_equities_memoirlastsale_sbe_v1_3.security_id.size = 2

-- Display: Security Id
memx_equities_memoirlastsale_sbe_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
memx_equities_memoirlastsale_sbe_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Timestamp
memx_equities_memoirlastsale_sbe_v1_3.timestamp = {}

-- Size: Timestamp
memx_equities_memoirlastsale_sbe_v1_3.timestamp.size = 8

-- Display: Timestamp
memx_equities_memoirlastsale_sbe_v1_3.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
memx_equities_memoirlastsale_sbe_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirlastsale_sbe_v1_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message = {}

-- Calculate size of: Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.timestamp.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.security_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.trade_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.original_trade_qty.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_1.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_2.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_3.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_4.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_qty.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.size

  return index
end

-- Display: Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirlastsale_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Qty: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_qty = memx_equities_memoirlastsale_sbe_v1_3.original_trade_qty.dissect(buffer, index, packet, parent)

  -- Original Trade Price: 8 Byte Signed Fixed Width Integer
  index, original_trade_price = memx_equities_memoirlastsale_sbe_v1_3.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 1: 1 Byte Ascii String Enum with 1 values
  index, original_sale_condition_1 = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_1.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 2: 1 Byte Ascii String Enum with 2 values
  index, original_sale_condition_2 = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_2.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 3: 1 Byte Ascii String Enum with 2 values
  index, original_sale_condition_3 = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_3.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 4: 1 Byte Ascii String Enum with 4 values
  index, original_sale_condition_4 = memx_equities_memoirlastsale_sbe_v1_3.original_sale_condition_4.dissect(buffer, index, packet, parent)

  -- Corrected Trade Qty: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_qty = memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_qty.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: 8 Byte Signed Fixed Width Integer
  index, corrected_trade_price = memx_equities_memoirlastsale_sbe_v1_3.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 1: 1 Byte Ascii String Enum with 1 values
  index, corrected_sale_condition_1 = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_1.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 2: 1 Byte Ascii String Enum with 2 values
  index, corrected_sale_condition_2 = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_2.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 3: 1 Byte Ascii String Enum with 2 values
  index, corrected_sale_condition_3 = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_3.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 4: 1 Byte Ascii String Enum with 4 values
  index, corrected_sale_condition_4 = memx_equities_memoirlastsale_sbe_v1_3.corrected_sale_condition_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correct Message
memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_correct_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_correct_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.fields(buffer, offset, packet, parent)
  end
end

-- Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4 = {}

-- Size: Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.size = 1

-- Display: Sale Condition 4
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sale_condition_4, range, value, display)

  return offset + length, value
end

-- Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3 = {}

-- Size: Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.size = 1

-- Display: Sale Condition 3
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sale_condition_3, range, value, display)

  return offset + length, value
end

-- Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2 = {}

-- Size: Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.size = 1

-- Display: Sale Condition 2
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sale_condition_2, range, value, display)

  return offset + length, value
end

-- Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1 = {}

-- Size: Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.size = 1

-- Display: Sale Condition 1
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sale_condition_1, range, value, display)

  return offset + length, value
end

-- Last Price
memx_equities_memoirlastsale_sbe_v1_3.last_price = {}

-- Size: Last Price
memx_equities_memoirlastsale_sbe_v1_3.last_price.size = 8

-- Display: Last Price
memx_equities_memoirlastsale_sbe_v1_3.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
memx_equities_memoirlastsale_sbe_v1_3.last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
memx_equities_memoirlastsale_sbe_v1_3.last_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirlastsale_sbe_v1_3.last_price.translate(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_3.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.last_price, range, value, display)

  return offset + length, value
end

-- Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.trade_qty = {}

-- Size: Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.trade_qty.size = 4

-- Display: Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.trade_qty.display = function(value)
  return "Trade Qty: "..value
end

-- Dissect: Trade Qty
memx_equities_memoirlastsale_sbe_v1_3.trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.trade_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_qty, range, value, display)

  return offset + length, value
end

-- Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message = {}

-- Calculate size of: Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.timestamp.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.security_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.trade_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.trade_qty.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.last_price.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.size

  return index
end

-- Display: Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirlastsale_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Qty: 4 Byte Unsigned Fixed Width Integer
  index, trade_qty = memx_equities_memoirlastsale_sbe_v1_3.trade_qty.dissect(buffer, index, packet, parent)

  -- Last Price: 8 Byte Signed Fixed Width Integer
  index, last_price = memx_equities_memoirlastsale_sbe_v1_3.last_price.dissect(buffer, index, packet, parent)

  -- Sale Condition 1: 1 Byte Ascii String Enum with 1 values
  index, sale_condition_1 = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.dissect(buffer, index, packet, parent)

  -- Sale Condition 2: 1 Byte Ascii String Enum with 2 values
  index, sale_condition_2 = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.dissect(buffer, index, packet, parent)

  -- Sale Condition 3: 1 Byte Ascii String Enum with 2 values
  index, sale_condition_3 = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_4 = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_cancel_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price
memx_equities_memoirlastsale_sbe_v1_3.trade_price = {}

-- Size: Trade Price
memx_equities_memoirlastsale_sbe_v1_3.trade_price.size = 8

-- Display: Trade Price
memx_equities_memoirlastsale_sbe_v1_3.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
memx_equities_memoirlastsale_sbe_v1_3.trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
memx_equities_memoirlastsale_sbe_v1_3.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirlastsale_sbe_v1_3.trade_price.translate(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_3.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Report Message
memx_equities_memoirlastsale_sbe_v1_3.trade_report_message = {}

-- Calculate size of: Trade Report Message
memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.timestamp.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.security_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.trade_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.trade_qty.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.trade_price.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.size

  return index
end

-- Display: Trade Report Message
memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirlastsale_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Qty: 4 Byte Unsigned Fixed Width Integer
  index, trade_qty = memx_equities_memoirlastsale_sbe_v1_3.trade_qty.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = memx_equities_memoirlastsale_sbe_v1_3.trade_price.dissect(buffer, index, packet, parent)

  -- Sale Condition 1: 1 Byte Ascii String Enum with 1 values
  index, sale_condition_1 = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_1.dissect(buffer, index, packet, parent)

  -- Sale Condition 2: 1 Byte Ascii String Enum with 2 values
  index, sale_condition_2 = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_2.dissect(buffer, index, packet, parent)

  -- Sale Condition 3: 1 Byte Ascii String Enum with 2 values
  index, sale_condition_3 = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_3.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_4 = memx_equities_memoirlastsale_sbe_v1_3.sale_condition_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trade_report_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
memx_equities_memoirlastsale_sbe_v1_3.trading_session = {}

-- Size: Trading Session
memx_equities_memoirlastsale_sbe_v1_3.trading_session.size = 1

-- Display: Trading Session
memx_equities_memoirlastsale_sbe_v1_3.trading_session.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message = {}

-- Calculate size of: Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.timestamp.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.trading_session.size

  return index
end

-- Display: Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Ascii String Enum with 4 values
  index, trading_session = memx_equities_memoirlastsale_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.trading_session_status_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Reason
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_reason = {}

-- Size: Security Trading Status Reason
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_reason.size = 1

-- Display: Security Trading Status Reason
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_reason.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Security Trading Status
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status = {}

-- Size: Security Trading Status
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status.size = 1

-- Display: Security Trading Status
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.security_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirlastsale_sbe_v1_3.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message = {}

-- Calculate size of: Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.timestamp.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.security_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.security_trading_status.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_reason.size

  return index
end

-- Display: Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Ascii String Enum with 4 values
  index, security_trading_status = memx_equities_memoirlastsale_sbe_v1_3.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status Reason: 1 Byte Ascii String Enum with 3 values
  index, security_trading_status_reason = memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.security_trading_status_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Restriction
memx_equities_memoirlastsale_sbe_v1_3.short_sale_restriction = {}

-- Size: Short Sale Restriction
memx_equities_memoirlastsale_sbe_v1_3.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
memx_equities_memoirlastsale_sbe_v1_3.short_sale_restriction.display = function(value)
  if value == 0 then
    return "Short Sale Restriction: False (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: True (1)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
memx_equities_memoirlastsale_sbe_v1_3.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message = {}

-- Calculate size of: Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.timestamp.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.security_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.short_sale_restriction.size

  return index
end

-- Display: Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, short_sale_restriction = memx_equities_memoirlastsale_sbe_v1_3.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_restriction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Mpv
memx_equities_memoirlastsale_sbe_v1_3.mpv = {}

-- Size: Mpv
memx_equities_memoirlastsale_sbe_v1_3.mpv.size = 8

-- Display: Mpv
memx_equities_memoirlastsale_sbe_v1_3.mpv.display = function(value)
  return "Mpv: "..value
end

-- Translate: Mpv
memx_equities_memoirlastsale_sbe_v1_3.mpv.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mpv
memx_equities_memoirlastsale_sbe_v1_3.mpv.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.mpv.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirlastsale_sbe_v1_3.mpv.translate(raw)
  local display = memx_equities_memoirlastsale_sbe_v1_3.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.mpv, range, value, display)

  return offset + length, value
end

-- Is Test Symbol
memx_equities_memoirlastsale_sbe_v1_3.is_test_symbol = {}

-- Size: Is Test Symbol
memx_equities_memoirlastsale_sbe_v1_3.is_test_symbol.size = 1

-- Display: Is Test Symbol
memx_equities_memoirlastsale_sbe_v1_3.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
memx_equities_memoirlastsale_sbe_v1_3.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Round Lot
memx_equities_memoirlastsale_sbe_v1_3.round_lot = {}

-- Size: Round Lot
memx_equities_memoirlastsale_sbe_v1_3.round_lot.size = 4

-- Display: Round Lot
memx_equities_memoirlastsale_sbe_v1_3.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
memx_equities_memoirlastsale_sbe_v1_3.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.round_lot.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
memx_equities_memoirlastsale_sbe_v1_3.symbol_sfx = {}

-- Size: Symbol Sfx
memx_equities_memoirlastsale_sbe_v1_3.symbol_sfx.size = 6

-- Display: Symbol Sfx
memx_equities_memoirlastsale_sbe_v1_3.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
memx_equities_memoirlastsale_sbe_v1_3.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.symbol_sfx.size
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

  local display = memx_equities_memoirlastsale_sbe_v1_3.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Symbol
memx_equities_memoirlastsale_sbe_v1_3.symbol = {}

-- Size: Symbol
memx_equities_memoirlastsale_sbe_v1_3.symbol.size = 6

-- Display: Symbol
memx_equities_memoirlastsale_sbe_v1_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_equities_memoirlastsale_sbe_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.symbol.size
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

  local display = memx_equities_memoirlastsale_sbe_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message = {}

-- Calculate size of: Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.timestamp.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.security_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.symbol.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.symbol_sfx.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.round_lot.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.is_test_symbol.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.mpv.size

  return index
end

-- Display: Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirlastsale_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirlastsale_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memoirlastsale_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memoirlastsale_sbe_v1_3.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Round Lot: 4 Byte Unsigned Fixed Width Integer
  index, round_lot = memx_equities_memoirlastsale_sbe_v1_3.round_lot.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, is_test_symbol = memx_equities_memoirlastsale_sbe_v1_3.is_test_symbol.dissect(buffer, index, packet, parent)

  -- Mpv: 8 Byte Signed Fixed Width Integer
  index, mpv = memx_equities_memoirlastsale_sbe_v1_3.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_equities_memoirlastsale_sbe_v1_3.payload = {}

-- Calculate runtime size of: Payload
memx_equities_memoirlastsale_sbe_v1_3.payload.size = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.size(buffer, offset)
  end
  -- Size of Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.size(buffer, offset)
  end
  -- Size of Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.size(buffer, offset)
  end
  -- Size of Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.size(buffer, offset)
  end
  -- Size of Trade Report Message
  if template_id == 10 then
    return memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if template_id == 11 then
    return memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.size(buffer, offset)
  end
  -- Size of Trade Correct Message
  if template_id == 12 then
    return memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
memx_equities_memoirlastsale_sbe_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_equities_memoirlastsale_sbe_v1_3.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirlastsale_sbe_v1_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirlastsale_sbe_v1_3.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirlastsale_sbe_v1_3.security_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirlastsale_sbe_v1_3.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if template_id == 10 then
    return memx_equities_memoirlastsale_sbe_v1_3.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if template_id == 11 then
    return memx_equities_memoirlastsale_sbe_v1_3.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correct Message
  if template_id == 12 then
    return memx_equities_memoirlastsale_sbe_v1_3.trade_correct_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_equities_memoirlastsale_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_equities_memoirlastsale_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirlastsale_sbe_v1_3.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirlastsale_sbe_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.payload, range, display)

  return memx_equities_memoirlastsale_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_equities_memoirlastsale_sbe_v1_3.version = {}

-- Size: Version
memx_equities_memoirlastsale_sbe_v1_3.version.size = 2

-- Display: Version
memx_equities_memoirlastsale_sbe_v1_3.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
memx_equities_memoirlastsale_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_equities_memoirlastsale_sbe_v1_3.schema_id = {}

-- Size: Schema Id
memx_equities_memoirlastsale_sbe_v1_3.schema_id.size = 1

-- Display: Schema Id
memx_equities_memoirlastsale_sbe_v1_3.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
memx_equities_memoirlastsale_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_equities_memoirlastsale_sbe_v1_3.template_id = {}

-- Size: Template Id
memx_equities_memoirlastsale_sbe_v1_3.template_id.size = 1

-- Display: Template Id
memx_equities_memoirlastsale_sbe_v1_3.template_id.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_equities_memoirlastsale_sbe_v1_3.block_length = {}

-- Size: Block Length
memx_equities_memoirlastsale_sbe_v1_3.block_length.size = 2

-- Display: Block Length
memx_equities_memoirlastsale_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_equities_memoirlastsale_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_equities_memoirlastsale_sbe_v1_3.sbe_header = {}

-- Calculate size of: Sbe Header
memx_equities_memoirlastsale_sbe_v1_3.sbe_header.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.block_length.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.template_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.schema_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.version.size

  return index
end

-- Display: Sbe Header
memx_equities_memoirlastsale_sbe_v1_3.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_equities_memoirlastsale_sbe_v1_3.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_equities_memoirlastsale_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, template_id = memx_equities_memoirlastsale_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_equities_memoirlastsale_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_equities_memoirlastsale_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_equities_memoirlastsale_sbe_v1_3.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sbe_header, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_equities_memoirlastsale_sbe_v1_3.sbe_message = {}

-- Calculate size of: Sbe Message
memx_equities_memoirlastsale_sbe_v1_3.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sbe_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_equities_memoirlastsale_sbe_v1_3.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_equities_memoirlastsale_sbe_v1_3.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_equities_memoirlastsale_sbe_v1_3.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_equities_memoirlastsale_sbe_v1_3.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 7 branches
  index = memx_equities_memoirlastsale_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_equities_memoirlastsale_sbe_v1_3.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_equities_memoirlastsale_sbe_v1_3.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sbe_message, range, display)
  end

  return memx_equities_memoirlastsale_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent)
end

-- Message Length
memx_equities_memoirlastsale_sbe_v1_3.message_length = {}

-- Size: Message Length
memx_equities_memoirlastsale_sbe_v1_3.message_length.size = 2

-- Display: Message Length
memx_equities_memoirlastsale_sbe_v1_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_equities_memoirlastsale_sbe_v1_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
memx_equities_memoirlastsale_sbe_v1_3.message = {}

-- Calculate size of: Message
memx_equities_memoirlastsale_sbe_v1_3.message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.message_length.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Message
memx_equities_memoirlastsale_sbe_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_equities_memoirlastsale_sbe_v1_3.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_equities_memoirlastsale_sbe_v1_3.message_length.dissect(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memoirlastsale_sbe_v1_3.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
memx_equities_memoirlastsale_sbe_v1_3.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = memx_equities_memoirlastsale_sbe_v1_3.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.message, range, display)
  end

  return memx_equities_memoirlastsale_sbe_v1_3.message.fields(buffer, offset, packet, parent)
end

-- Message Count
memx_equities_memoirlastsale_sbe_v1_3.message_count = {}

-- Size: Message Count
memx_equities_memoirlastsale_sbe_v1_3.message_count.size = 2

-- Display: Message Count
memx_equities_memoirlastsale_sbe_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_equities_memoirlastsale_sbe_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
memx_equities_memoirlastsale_sbe_v1_3.sequenced_message = {}

-- Size Of: Sequenced Message
memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_equities_memoirlastsale_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = memx_equities_memoirlastsale_sbe_v1_3.message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sequenced_message, range, display)
  end

  return memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages = {}

-- Calculate runtime size of: Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirlastsale_sbe_v1_3.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sequenced_messages, range, display)

  return memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
memx_equities_memoirlastsale_sbe_v1_3.sequence_number = {}

-- Size: Sequence Number
memx_equities_memoirlastsale_sbe_v1_3.sequence_number.size = 8

-- Display: Sequence Number
memx_equities_memoirlastsale_sbe_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_equities_memoirlastsale_sbe_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirlastsale_sbe_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
memx_equities_memoirlastsale_sbe_v1_3.session_id = {}

-- Size: Session Id
memx_equities_memoirlastsale_sbe_v1_3.session_id.size = 8

-- Display: Session Id
memx_equities_memoirlastsale_sbe_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_equities_memoirlastsale_sbe_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirlastsale_sbe_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
memx_equities_memoirlastsale_sbe_v1_3.header_length = {}

-- Size: Header Length
memx_equities_memoirlastsale_sbe_v1_3.header_length.size = 1

-- Display: Header Length
memx_equities_memoirlastsale_sbe_v1_3.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_equities_memoirlastsale_sbe_v1_3.header_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_equities_memoirlastsale_sbe_v1_3.message_type = {}

-- Size: Message Type
memx_equities_memoirlastsale_sbe_v1_3.message_type.size = 1

-- Display: Message Type
memx_equities_memoirlastsale_sbe_v1_3.message_type.display = function(value)
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
memx_equities_memoirlastsale_sbe_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirlastsale_sbe_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirlastsale_sbe_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_equities_memoirlastsale_sbe_v1_3.common_header = {}

-- Calculate size of: Common Header
memx_equities_memoirlastsale_sbe_v1_3.common_header.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirlastsale_sbe_v1_3.message_type.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.header_length.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.session_id.size

  index = index + memx_equities_memoirlastsale_sbe_v1_3.sequence_number.size

  return index
end

-- Display: Common Header
memx_equities_memoirlastsale_sbe_v1_3.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_equities_memoirlastsale_sbe_v1_3.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_equities_memoirlastsale_sbe_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_equities_memoirlastsale_sbe_v1_3.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memoirlastsale_sbe_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_equities_memoirlastsale_sbe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_equities_memoirlastsale_sbe_v1_3.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3.fields.common_header, buffer(offset, 0))
    local index = memx_equities_memoirlastsale_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirlastsale_sbe_v1_3.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirlastsale_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_equities_memoirlastsale_sbe_v1_3.packet = {}

-- Dissect Packet
memx_equities_memoirlastsale_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_equities_memoirlastsale_sbe_v1_3.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = memx_equities_memoirlastsale_sbe_v1_3.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_equities_memoirlastsale_sbe_v1_3.init()
end

-- Dissector for Memx Equities MemoirLastSale Sbe 1.3
function omi_memx_equities_memoirlastsale_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_equities_memoirlastsale_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_equities_memoirlastsale_sbe_v1_3, buffer(), omi_memx_equities_memoirlastsale_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return memx_equities_memoirlastsale_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_memx_equities_memoirlastsale_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_equities_memoirlastsale_sbe_v1_3.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
memx_equities_memoirlastsale_sbe_v1_3.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(25, 1):uint()

  if value == 4 then
    return true
  end

  return false
end

-- Verify Version Field
memx_equities_memoirlastsale_sbe_v1_3.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(26, 2):uint()

  if value == 259 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Equities MemoirLastSale Sbe 1.3
local function omi_memx_equities_memoirlastsale_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_equities_memoirlastsale_sbe_v1_3.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not memx_equities_memoirlastsale_sbe_v1_3.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_equities_memoirlastsale_sbe_v1_3.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_equities_memoirlastsale_sbe_v1_3
  omi_memx_equities_memoirlastsale_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities MemoirLastSale Sbe 1.3
omi_memx_equities_memoirlastsale_sbe_v1_3:register_heuristic("udp", omi_memx_equities_memoirlastsale_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.3
--   Date: Monday, April 5, 2021
--   Specification: MEMOIR Last Sale Feed-v1_3.pdf
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
