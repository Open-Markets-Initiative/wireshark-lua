-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Opra Recipient Obi 4.0 Protocol
local siac_opra_recipient_obi_v4_0 = Proto("Siac.Opra.Recipient.Obi.v4.0.Lua", "Siac Opra Recipient Obi 4.0")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Opra Recipient Obi 4.0 Fields
siac_opra_recipient_obi_v4_0.fields.administrative_message = ProtoField.new("Administrative Message", "siac.opra.recipient.obi.v4.0.administrativemessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.bbo_indicator = ProtoField.new("Bbo Indicator", "siac.opra.recipient.obi.v4.0.bboindicator", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.bid_index_value = ProtoField.new("Bid Index Value", "siac.opra.recipient.obi.v4.0.bidindexvalue", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.bid_price = ProtoField.new("Bid Price", "siac.opra.recipient.obi.v4.0.bidprice", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.bid_price_short = ProtoField.new("Bid Price Short", "siac.opra.recipient.obi.v4.0.bidpriceshort", ftypes.INT16)
siac_opra_recipient_obi_v4_0.fields.bid_size = ProtoField.new("Bid Size", "siac.opra.recipient.obi.v4.0.bidsize", ftypes.UINT32)
siac_opra_recipient_obi_v4_0.fields.bid_size_short = ProtoField.new("Bid Size Short", "siac.opra.recipient.obi.v4.0.bidsizeshort", ftypes.UINT16)
siac_opra_recipient_obi_v4_0.fields.block_checksum = ProtoField.new("Block Checksum", "siac.opra.recipient.obi.v4.0.blockchecksum", ftypes.UINT16)
siac_opra_recipient_obi_v4_0.fields.block_header = ProtoField.new("Block Header", "siac.opra.recipient.obi.v4.0.blockheader", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.opra.recipient.obi.v4.0.blocksequencenumber", ftypes.UINT32)
siac_opra_recipient_obi_v4_0.fields.block_size = ProtoField.new("Block Size", "siac.opra.recipient.obi.v4.0.blocksize", ftypes.UINT16)
siac_opra_recipient_obi_v4_0.fields.block_timestamp = ProtoField.new("Block Timestamp", "siac.opra.recipient.obi.v4.0.blocktimestamp", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.control_message = ProtoField.new("Control Message", "siac.opra.recipient.obi.v4.0.controlmessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.opra.recipient.obi.v4.0.datafeedindicator", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.equity_and_index_end_of_day_summary_message = ProtoField.new("Equity And Index End Of Day Summary Message", "siac.opra.recipient.obi.v4.0.equityandindexendofdaysummarymessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.equity_and_index_last_sale_message = ProtoField.new("Equity And Index Last Sale Message", "siac.opra.recipient.obi.v4.0.equityandindexlastsalemessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.high_price = ProtoField.new("High Price", "siac.opra.recipient.obi.v4.0.highprice", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.index_value = ProtoField.new("Index Value", "siac.opra.recipient.obi.v4.0.indexvalue", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.index_value_denominator_code = ProtoField.new("Index Value Denominator Code", "siac.opra.recipient.obi.v4.0.indexvaluedenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.last_price = ProtoField.new("Last Price", "siac.opra.recipient.obi.v4.0.lastprice", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.long_equity_and_index_quote_message = ProtoField.new("Long Equity And Index Quote Message", "siac.opra.recipient.obi.v4.0.longequityandindexquotemessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.low_price = ProtoField.new("Low Price", "siac.opra.recipient.obi.v4.0.lowprice", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.message = ProtoField.new("Message", "siac.opra.recipient.obi.v4.0.message", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.message_category = ProtoField.new("Message Category", "siac.opra.recipient.obi.v4.0.messagecategory", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.message_data = ProtoField.new("Message Data", "siac.opra.recipient.obi.v4.0.messagedata", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.message_data_length = ProtoField.new("Message Data Length", "siac.opra.recipient.obi.v4.0.messagedatalength", ftypes.UINT16)
siac_opra_recipient_obi_v4_0.fields.message_indicator = ProtoField.new("Message Indicator", "siac.opra.recipient.obi.v4.0.messageindicator", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.message_type = ProtoField.new("Message Type", "siac.opra.recipient.obi.v4.0.messagetype", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.opra.recipient.obi.v4.0.messagesinblock", ftypes.UINT8)
siac_opra_recipient_obi_v4_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.opra.recipient.obi.v4.0.nanoseconds", ftypes.UINT32)
siac_opra_recipient_obi_v4_0.fields.net_change = ProtoField.new("Net Change", "siac.opra.recipient.obi.v4.0.netchange", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.offer_index_value = ProtoField.new("Offer Index Value", "siac.opra.recipient.obi.v4.0.offerindexvalue", ftypes.INT64)
siac_opra_recipient_obi_v4_0.fields.offer_price = ProtoField.new("Offer Price", "siac.opra.recipient.obi.v4.0.offerprice", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.offer_price_short = ProtoField.new("Offer Price Short", "siac.opra.recipient.obi.v4.0.offerpriceshort", ftypes.INT16)
siac_opra_recipient_obi_v4_0.fields.offer_size = ProtoField.new("Offer Size", "siac.opra.recipient.obi.v4.0.offersize", ftypes.UINT32)
siac_opra_recipient_obi_v4_0.fields.offer_size_short = ProtoField.new("Offer Size Short", "siac.opra.recipient.obi.v4.0.offersizeshort", ftypes.UINT16)
siac_opra_recipient_obi_v4_0.fields.open_interest_message = ProtoField.new("Open Interest Message", "siac.opra.recipient.obi.v4.0.openinterestmessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.open_interest_volume = ProtoField.new("Open Interest Volume", "siac.opra.recipient.obi.v4.0.openinterestvolume", ftypes.UINT32)
siac_opra_recipient_obi_v4_0.fields.open_price = ProtoField.new("Open Price", "siac.opra.recipient.obi.v4.0.openprice", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.packet = ProtoField.new("Packet", "siac.opra.recipient.obi.v4.0.packet", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.participant_id = ProtoField.new("Participant Id", "siac.opra.recipient.obi.v4.0.participantid", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.payload = ProtoField.new("Payload", "siac.opra.recipient.obi.v4.0.payload", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.premium_price = ProtoField.new("Premium Price", "siac.opra.recipient.obi.v4.0.premiumprice", ftypes.INT32)
siac_opra_recipient_obi_v4_0.fields.premium_price_denominator_code = ProtoField.new("Premium Price Denominator Code", "siac.opra.recipient.obi.v4.0.premiumpricedenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.reserved_1 = ProtoField.new("Reserved 1", "siac.opra.recipient.obi.v4.0.reserved1", ftypes.BYTES)
siac_opra_recipient_obi_v4_0.fields.reserved_4 = ProtoField.new("Reserved 4", "siac.opra.recipient.obi.v4.0.reserved4", ftypes.BYTES)
siac_opra_recipient_obi_v4_0.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.opra.recipient.obi.v4.0.retransmissionindicator", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.seconds = ProtoField.new("Seconds", "siac.opra.recipient.obi.v4.0.seconds", ftypes.UINT32)
siac_opra_recipient_obi_v4_0.fields.security_symbol = ProtoField.new("Security Symbol", "siac.opra.recipient.obi.v4.0.securitysymbol", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "siac.opra.recipient.obi.v4.0.securitysymbolshort", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.session_indicator = ProtoField.new("Session Indicator", "siac.opra.recipient.obi.v4.0.sessionindicator", ftypes.UINT8)
siac_opra_recipient_obi_v4_0.fields.short_equity_and_index_quote_message = ProtoField.new("Short Equity And Index Quote Message", "siac.opra.recipient.obi.v4.0.shortequityandindexquotemessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.strike_price = ProtoField.new("Strike Price", "siac.opra.recipient.obi.v4.0.strikeprice", ftypes.UINT32)
siac_opra_recipient_obi_v4_0.fields.strike_price_denominator_code = ProtoField.new("Strike Price Denominator Code", "siac.opra.recipient.obi.v4.0.strikepricedenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.strike_price_short = ProtoField.new("Strike Price Short", "siac.opra.recipient.obi.v4.0.strikepriceshort", ftypes.UINT16)
siac_opra_recipient_obi_v4_0.fields.trade_identifier = ProtoField.new("Trade Identifier", "siac.opra.recipient.obi.v4.0.tradeidentifier", ftypes.UINT32)
siac_opra_recipient_obi_v4_0.fields.transaction_id = ProtoField.new("Transaction Id", "siac.opra.recipient.obi.v4.0.transactionid", ftypes.UINT64)
siac_opra_recipient_obi_v4_0.fields.underlying_price = ProtoField.new("Underlying Price", "siac.opra.recipient.obi.v4.0.underlyingprice", ftypes.INT64)
siac_opra_recipient_obi_v4_0.fields.underlying_price_denominator_code = ProtoField.new("Underlying Price Denominator Code", "siac.opra.recipient.obi.v4.0.underlyingpricedenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.underlying_value_bid_and_offer_message = ProtoField.new("Underlying Value Bid And Offer Message", "siac.opra.recipient.obi.v4.0.underlyingvaluebidandoffermessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.underlying_value_last_sale_message = ProtoField.new("Underlying Value Last Sale Message", "siac.opra.recipient.obi.v4.0.underlyingvaluelastsalemessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.underlying_value_message = ProtoField.new("Underlying Value Message", "siac.opra.recipient.obi.v4.0.underlyingvaluemessage", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.underlying_value_message_payload = ProtoField.new("Underlying Value Message Payload", "siac.opra.recipient.obi.v4.0.underlyingvaluemessagepayload", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.underlying_value_message_type = ProtoField.new("Underlying Value Message Type", "siac.opra.recipient.obi.v4.0.underlyingvaluemessagetype", ftypes.STRING)
siac_opra_recipient_obi_v4_0.fields.version = ProtoField.new("Version", "siac.opra.recipient.obi.v4.0.version", ftypes.UINT8)
siac_opra_recipient_obi_v4_0.fields.volume = ProtoField.new("Volume", "siac.opra.recipient.obi.v4.0.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Siac Opra Recipient Obi 4.0 Element Dissection Options
show.administrative_message = true
show.block_header = true
show.block_timestamp = true
show.control_message = true
show.equity_and_index_end_of_day_summary_message = true
show.equity_and_index_last_sale_message = true
show.long_equity_and_index_quote_message = true
show.message = true
show.open_interest_message = true
show.packet = true
show.short_equity_and_index_quote_message = true
show.underlying_value_bid_and_offer_message = true
show.underlying_value_last_sale_message = true
show.underlying_value_message = true
show.payload = false
show.underlying_value_message_payload = false

-- Register Siac Opra Recipient Obi 4.0 Show Options
siac_opra_recipient_obi_v4_0.prefs.show_administrative_message = Pref.bool("Show Administrative Message", show.administrative_message, "Parse and add Administrative Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_block_timestamp = Pref.bool("Show Block Timestamp", show.block_timestamp, "Parse and add Block Timestamp to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_control_message = Pref.bool("Show Control Message", show.control_message, "Parse and add Control Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_equity_and_index_end_of_day_summary_message = Pref.bool("Show Equity And Index End Of Day Summary Message", show.equity_and_index_end_of_day_summary_message, "Parse and add Equity And Index End Of Day Summary Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_equity_and_index_last_sale_message = Pref.bool("Show Equity And Index Last Sale Message", show.equity_and_index_last_sale_message, "Parse and add Equity And Index Last Sale Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_long_equity_and_index_quote_message = Pref.bool("Show Long Equity And Index Quote Message", show.long_equity_and_index_quote_message, "Parse and add Long Equity And Index Quote Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_short_equity_and_index_quote_message = Pref.bool("Show Short Equity And Index Quote Message", show.short_equity_and_index_quote_message, "Parse and add Short Equity And Index Quote Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_bid_and_offer_message = Pref.bool("Show Underlying Value Bid And Offer Message", show.underlying_value_bid_and_offer_message, "Parse and add Underlying Value Bid And Offer Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_last_sale_message = Pref.bool("Show Underlying Value Last Sale Message", show.underlying_value_last_sale_message, "Parse and add Underlying Value Last Sale Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_message = Pref.bool("Show Underlying Value Message", show.underlying_value_message, "Parse and add Underlying Value Message to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_message_payload = Pref.bool("Show Underlying Value Message Payload", show.underlying_value_message_payload, "Parse and add Underlying Value Message Payload to protocol tree")

-- Handle changed preferences
function siac_opra_recipient_obi_v4_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.administrative_message ~= siac_opra_recipient_obi_v4_0.prefs.show_administrative_message then
    show.administrative_message = siac_opra_recipient_obi_v4_0.prefs.show_administrative_message
    changed = true
  end
  if show.block_header ~= siac_opra_recipient_obi_v4_0.prefs.show_block_header then
    show.block_header = siac_opra_recipient_obi_v4_0.prefs.show_block_header
    changed = true
  end
  if show.block_timestamp ~= siac_opra_recipient_obi_v4_0.prefs.show_block_timestamp then
    show.block_timestamp = siac_opra_recipient_obi_v4_0.prefs.show_block_timestamp
    changed = true
  end
  if show.control_message ~= siac_opra_recipient_obi_v4_0.prefs.show_control_message then
    show.control_message = siac_opra_recipient_obi_v4_0.prefs.show_control_message
    changed = true
  end
  if show.equity_and_index_end_of_day_summary_message ~= siac_opra_recipient_obi_v4_0.prefs.show_equity_and_index_end_of_day_summary_message then
    show.equity_and_index_end_of_day_summary_message = siac_opra_recipient_obi_v4_0.prefs.show_equity_and_index_end_of_day_summary_message
    changed = true
  end
  if show.equity_and_index_last_sale_message ~= siac_opra_recipient_obi_v4_0.prefs.show_equity_and_index_last_sale_message then
    show.equity_and_index_last_sale_message = siac_opra_recipient_obi_v4_0.prefs.show_equity_and_index_last_sale_message
    changed = true
  end
  if show.long_equity_and_index_quote_message ~= siac_opra_recipient_obi_v4_0.prefs.show_long_equity_and_index_quote_message then
    show.long_equity_and_index_quote_message = siac_opra_recipient_obi_v4_0.prefs.show_long_equity_and_index_quote_message
    changed = true
  end
  if show.message ~= siac_opra_recipient_obi_v4_0.prefs.show_message then
    show.message = siac_opra_recipient_obi_v4_0.prefs.show_message
    changed = true
  end
  if show.open_interest_message ~= siac_opra_recipient_obi_v4_0.prefs.show_open_interest_message then
    show.open_interest_message = siac_opra_recipient_obi_v4_0.prefs.show_open_interest_message
    changed = true
  end
  if show.packet ~= siac_opra_recipient_obi_v4_0.prefs.show_packet then
    show.packet = siac_opra_recipient_obi_v4_0.prefs.show_packet
    changed = true
  end
  if show.short_equity_and_index_quote_message ~= siac_opra_recipient_obi_v4_0.prefs.show_short_equity_and_index_quote_message then
    show.short_equity_and_index_quote_message = siac_opra_recipient_obi_v4_0.prefs.show_short_equity_and_index_quote_message
    changed = true
  end
  if show.underlying_value_bid_and_offer_message ~= siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_bid_and_offer_message then
    show.underlying_value_bid_and_offer_message = siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_bid_and_offer_message
    changed = true
  end
  if show.underlying_value_last_sale_message ~= siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_last_sale_message then
    show.underlying_value_last_sale_message = siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_last_sale_message
    changed = true
  end
  if show.underlying_value_message ~= siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_message then
    show.underlying_value_message = siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_message
    changed = true
  end
  if show.payload ~= siac_opra_recipient_obi_v4_0.prefs.show_payload then
    show.payload = siac_opra_recipient_obi_v4_0.prefs.show_payload
    changed = true
  end
  if show.underlying_value_message_payload ~= siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_message_payload then
    show.underlying_value_message_payload = siac_opra_recipient_obi_v4_0.prefs.show_underlying_value_message_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Siac Opra Recipient Obi 4.0
-----------------------------------------------------------------------

-- Size: Offer Index Value
size_of.offer_index_value = 8

-- Display: Offer Index Value
display.offer_index_value = function(value)
  return "Offer Index Value: "..value
end

-- Dissect: Offer Index Value
dissect.offer_index_value = function(buffer, offset, packet, parent)
  local length = size_of.offer_index_value
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.offer_index_value(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.offer_index_value, range, value, display)

  return offset + length, value
end

-- Size: Bid Index Value
size_of.bid_index_value = 4

-- Display: Bid Index Value
display.bid_index_value = function(value)
  return "Bid Index Value: "..value
end

-- Dissect: Bid Index Value
dissect.bid_index_value = function(buffer, offset, packet, parent)
  local length = size_of.bid_index_value
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.bid_index_value(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.bid_index_value, range, value, display)

  return offset + length, value
end

-- Size: Index Value Denominator Code
size_of.index_value_denominator_code = 1

-- Display: Index Value Denominator Code
display.index_value_denominator_code = function(value)
  if value == "A" then
    return "Index Value Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Index Value Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Index Value Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Index Value Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Index Value Denominator Code: Hundred Thousand (E)"
  end
  if value == "F" then
    return "Index Value Denominator Code: Million (F)"
  end
  if value == "G" then
    return "Index Value Denominator Code: Ten Million (G)"
  end
  if value == "I" then
    return "Index Value Denominator Code: No Fraction (I)"
  end

  return "Index Value Denominator Code: Unknown("..value..")"
end

-- Dissect: Index Value Denominator Code
dissect.index_value_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.index_value_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.index_value_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.index_value_denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
size_of.reserved_1 = 1

-- Display: Reserved 1
display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
size_of.security_symbol = 5

-- Display: Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Transaction Id
size_of.transaction_id = 8

-- Display: Transaction Id
display.transaction_id = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
dissect.transaction_id = function(buffer, offset, packet, parent)
  local length = size_of.transaction_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.transaction_id(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Message Indicator
size_of.message_indicator = 1

-- Display: Message Indicator
display.message_indicator = function(value)
  return "Message Indicator: "..value
end

-- Dissect: Message Indicator
dissect.message_indicator = function(buffer, offset, packet, parent)
  local length = size_of.message_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.message_indicator, range, value, display)

  return offset + length, value
end

-- Display: Underlying Value Bid And Offer Message
display.underlying_value_bid_and_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Value Bid And Offer Message
dissect.underlying_value_bid_and_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Index Value Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, index_value_denominator_code = dissect.index_value_denominator_code(buffer, index, packet, parent)

  -- Bid Index Value: 4 Byte Signed Fixed Width Integer
  index, bid_index_value = dissect.bid_index_value(buffer, index, packet, parent)

  -- Offer Index Value: 8 Byte Signed Fixed Width Integer
  index, offer_index_value = dissect.offer_index_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Bid And Offer Message
dissect.underlying_value_bid_and_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_value_bid_and_offer_message then
    local range = buffer(offset, 28)
    local display = display.underlying_value_bid_and_offer_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.underlying_value_bid_and_offer_message, range, display)
  end

  return dissect.underlying_value_bid_and_offer_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 4
size_of.reserved_4 = 4

-- Display: Reserved 4
display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Index Value
size_of.index_value = 4

-- Display: Index Value
display.index_value = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
dissect.index_value = function(buffer, offset, packet, parent)
  local length = size_of.index_value
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.index_value(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.index_value, range, value, display)

  return offset + length, value
end

-- Display: Underlying Value Last Sale Message
display.underlying_value_last_sale_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Value Last Sale Message
dissect.underlying_value_last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Index Value Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, index_value_denominator_code = dissect.index_value_denominator_code(buffer, index, packet, parent)

  -- Index Value: 4 Byte Signed Fixed Width Integer
  index, index_value = dissect.index_value(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = dissect.reserved_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Last Sale Message
dissect.underlying_value_last_sale_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_value_last_sale_message then
    local range = buffer(offset, 24)
    local display = display.underlying_value_last_sale_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.underlying_value_last_sale_message, range, display)
  end

  return dissect.underlying_value_last_sale_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Underlying Value Message Payload
size_of.underlying_value_message_payload = function(buffer, offset, underlying_value_message_type)
  -- Size of Underlying Value Last Sale Message
  if underlying_value_message_type == " " then
    return 24
  end
  -- Size of Underlying Value Bid And Offer Message
  if underlying_value_message_type == "I" then
    return 28
  end

  return 0
end

-- Display: Underlying Value Message Payload
display.underlying_value_message_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Underlying Value Message Payload
dissect.underlying_value_message_payload_branches = function(buffer, offset, packet, parent, underlying_value_message_type)
  -- Dissect Underlying Value Last Sale Message
  if underlying_value_message_type == " " then
    return dissect.underlying_value_last_sale_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value Bid And Offer Message
  if underlying_value_message_type == "I" then
    return dissect.underlying_value_bid_and_offer_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Underlying Value Message Payload
dissect.underlying_value_message_payload = function(buffer, offset, packet, parent, underlying_value_message_type)
  if not show.underlying_value_message_payload then
    return dissect.underlying_value_message_payload_branches(buffer, offset, packet, parent, underlying_value_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.underlying_value_message_payload(buffer, offset, underlying_value_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.underlying_value_message_payload(buffer, packet, parent)
  local element = parent:add(siac_opra_recipient_obi_v4_0.fields.underlying_value_message_payload, range, display)

  return dissect.underlying_value_message_payload_branches(buffer, offset, packet, parent, underlying_value_message_type)
end

-- Size: Underlying Value Message Type
size_of.underlying_value_message_type = 1

-- Display: Underlying Value Message Type
display.underlying_value_message_type = function(value)
  if value == " " then
    return "Underlying Value Message Type: Underlying Value Last Sale Message (<whitespace>)"
  end
  if value == "I" then
    return "Underlying Value Message Type: Underlying Value Bid And Offer Message (I)"
  end

  return "Underlying Value Message Type: Unknown("..value..")"
end

-- Dissect: Underlying Value Message Type
dissect.underlying_value_message_type = function(buffer, offset, packet, parent)
  local length = size_of.underlying_value_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_value_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.underlying_value_message_type, range, value, display)

  return offset + length, value
end

-- Calculate runtime size: Underlying Value Message
size_of.underlying_value_message = function(buffer, offset)
  local index = 0

  index = index + 1

  -- Calculate runtime size of Underlying Value Message Payload field
  local underlying_value_message_payload_offset = offset + index
  local underlying_value_message_payload_type = buffer(underlying_value_message_payload_offset - 1, 1):string()
  index = index + size_of.underlying_value_message_payload(buffer, underlying_value_message_payload_offset, underlying_value_message_payload_type)

  return index
end

-- Display: Underlying Value Message
display.underlying_value_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Value Message
dissect.underlying_value_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Value Message Type: 1 Byte Ascii String Enum with 2 values
  index, underlying_value_message_type = dissect.underlying_value_message_type(buffer, index, packet, parent)

  -- Underlying Value Message Payload: Runtime Type with 2 branches
  index = dissect.underlying_value_message_payload(buffer, index, packet, parent, underlying_value_message_type)

  return index
end

-- Dissect: Underlying Value Message
dissect.underlying_value_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_value_message then
    local length = size_of.underlying_value_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_value_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.underlying_value_message, range, display)
  end

  return dissect.underlying_value_message_fields(buffer, offset, packet, parent)
end

-- Display: Message Data
display.message_data = function(value)
  return "Message Data: "..value
end

-- Dissect runtime sized field: Message Data
dissect.message_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.message_data(value, buffer, offset, packet, parent, size)

  parent:add(siac_opra_recipient_obi_v4_0.fields.message_data, range, value, display)

  return offset + size
end

-- Size: Message Data Length
size_of.message_data_length = 2

-- Display: Message Data Length
display.message_data_length = function(value)
  return "Message Data Length: "..value
end

-- Dissect: Message Data Length
dissect.message_data_length = function(buffer, offset, packet, parent)
  local length = size_of.message_data_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_data_length(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.message_data_length, range, value, display)

  return offset + length, value
end

-- Calculate runtime size: Control Message
size_of.control_message = function(buffer, offset)
  local index = 0

  index = index + 11

  -- Parse runtime size of: Message Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Control Message
display.control_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Control Message
dissect.control_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type
  index, control_message_type = dissect.control_message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Message Data Length: 2 Byte Unsigned Fixed Width Integer
  index, message_data_length = dissect.message_data_length(buffer, index, packet, parent)

  -- Message Data: 1 Byte Ascii String
  index = dissect.message_data(buffer, index, packet, parent, message_data_length)

  return index
end

-- Dissect: Control Message
dissect.control_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.control_message then
    local length = size_of.control_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.control_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.control_message, range, display)
  end

  return dissect.control_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate runtime size: Administrative Message
size_of.administrative_message = function(buffer, offset)
  local index = 0

  index = index + 12

  -- Parse runtime size of: Message Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Administrative Message
display.administrative_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Administrative Message
dissect.administrative_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Message Data Length: 2 Byte Unsigned Fixed Width Integer
  index, message_data_length = dissect.message_data_length(buffer, index, packet, parent)

  -- Message Data: 1 Byte Ascii String
  index = dissect.message_data(buffer, index, packet, parent, message_data_length)

  return index
end

-- Dissect: Administrative Message
dissect.administrative_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.administrative_message then
    local length = size_of.administrative_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.administrative_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.administrative_message, range, display)
  end

  return dissect.administrative_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size Short
size_of.offer_size_short = 2

-- Display: Offer Size Short
display.offer_size_short = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
dissect.offer_size_short = function(buffer, offset, packet, parent)
  local length = size_of.offer_size_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.offer_size_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Size: Offer Price Short
size_of.offer_price_short = 2

-- Display: Offer Price Short
display.offer_price_short = function(value)
  return "Offer Price Short: "..value
end

-- Dissect: Offer Price Short
dissect.offer_price_short = function(buffer, offset, packet, parent)
  local length = size_of.offer_price_short
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.offer_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Short
size_of.bid_size_short = 2

-- Display: Bid Size Short
display.bid_size_short = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
dissect.bid_size_short = function(buffer, offset, packet, parent)
  local length = size_of.bid_size_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bid_size_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Short
size_of.bid_price_short = 2

-- Display: Bid Price Short
display.bid_price_short = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
dissect.bid_price_short = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_short
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.bid_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Short
size_of.strike_price_short = 2

-- Display: Strike Price Short
display.strike_price_short = function(value)
  return "Strike Price Short: "..value
end

-- Dissect: Strike Price Short
dissect.strike_price_short = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.strike_price_short, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol Short
size_of.security_symbol_short = 4

-- Display: Security Symbol Short
display.security_symbol_short = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
dissect.security_symbol_short = function(buffer, offset, packet, parent)
  local length = size_of.security_symbol_short
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_symbol_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Size: Bbo Indicator
size_of.bbo_indicator = 1

-- Display: Bbo Indicator
display.bbo_indicator = function(value)
  if value == "A" then
    return "Bbo Indicator: No Best Bid Change Or Best Offer Change (A)"
  end
  if value == "B" then
    return "Bbo Indicator: No Best Bid Change Quote Contains Best Offer (B)"
  end
  if value == "C" then
    return "Bbo Indicator: No Best Bid Change Best Offer Appendage (C)"
  end
  if value == "D" then
    return "Bbo Indicator: No Best Bid Change No Best Offer (D)"
  end
  if value == "E" then
    return "Bbo Indicator: Quote Contains Best Bid No Best Offer Change (E)"
  end
  if value == "F" then
    return "Bbo Indicator: Quote Contains Best Bid Quote Contains Best Offer (F)"
  end
  if value == "G" then
    return "Bbo Indicator: Quote Contains Best Bid Best Offer Appendage (G)"
  end
  if value == "H" then
    return "Bbo Indicator: Quote Contains Best Bid No Best Offer (H)"
  end
  if value == "I" then
    return "Bbo Indicator: No Best Bid No Best Offer Change (I)"
  end
  if value == "J" then
    return "Bbo Indicator: No Best Bid Quote Contains Best Offer (J)"
  end
  if value == "K" then
    return "Bbo Indicator: No Best Bid Best Offer Appendage (K)"
  end
  if value == "L" then
    return "Bbo Indicator: No Best Bid No Best Offer (L)"
  end
  if value == "M" then
    return "Bbo Indicator: Best Bid Appendage No Best Offer Change (M)"
  end
  if value == "N" then
    return "Bbo Indicator: Best Bid Appendage Quote Contains Best Offer (N)"
  end
  if value == "O" then
    return "Bbo Indicator: Best Bid Appendage Best Offer Appendage (O)"
  end
  if value == "P" then
    return "Bbo Indicator: Best Bid Appendage No Best Offer (P)"
  end
  if value == " " then
    return "Bbo Indicator: Not Included In The Bbo (<whitespace>)"
  end

  return "Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Bbo Indicator
dissect.bbo_indicator = function(buffer, offset, packet, parent)
  local length = size_of.bbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bbo_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.bbo_indicator, range, value, display)

  return offset + length, value
end

-- Display: Short Equity And Index Quote Message
display.short_equity_and_index_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Equity And Index Quote Message
dissect.short_equity_and_index_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type
  index, quote_message_type = dissect.quote_message_type(buffer, index, packet, parent)

  -- Bbo Indicator: 1 Byte Ascii String Enum with 17 values
  index, bbo_indicator = dissect.bbo_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Security Symbol Short: 4 Byte Ascii String
  index, security_symbol_short = dissect.security_symbol_short(buffer, index, packet, parent)

  -- Expiration Block
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Short: 2 Byte Unsigned Fixed Width Integer
  index, strike_price_short = dissect.strike_price_short(buffer, index, packet, parent)

  -- Bid Price Short: 2 Byte Signed Fixed Width Integer
  index, bid_price_short = dissect.bid_price_short(buffer, index, packet, parent)

  -- Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_short = dissect.bid_size_short(buffer, index, packet, parent)

  -- Offer Price Short: 2 Byte Signed Fixed Width Integer
  index, offer_price_short = dissect.offer_price_short(buffer, index, packet, parent)

  -- Offer Size Short: 2 Byte Unsigned Fixed Width Integer
  index, offer_size_short = dissect.offer_size_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Equity And Index Quote Message
dissect.short_equity_and_index_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_equity_and_index_quote_message then
    local range = buffer(offset, 23)
    local display = display.short_equity_and_index_quote_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.short_equity_and_index_quote_message, range, display)
  end

  return dissect.short_equity_and_index_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size
size_of.offer_size = 4

-- Display: Offer Size
display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local length = size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Offer Price
size_of.offer_price = 4

-- Display: Offer Price
display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Dissect: Offer Price
dissect.offer_price = function(buffer, offset, packet, parent)
  local length = size_of.offer_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.offer_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
size_of.bid_price = 4

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = size_of.bid_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Premium Price Denominator Code
size_of.premium_price_denominator_code = 1

-- Display: Premium Price Denominator Code
display.premium_price_denominator_code = function(value)
  if value == "A" then
    return "Premium Price Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Premium Price Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Premium Price Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Premium Price Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Premium Price Denominator Code: Hundred Thousand (E)"
  end
  if value == "F" then
    return "Premium Price Denominator Code: Million (F)"
  end
  if value == "G" then
    return "Premium Price Denominator Code: Ten Million (G)"
  end
  if value == "I" then
    return "Premium Price Denominator Code: No Fraction (I)"
  end

  return "Premium Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Premium Price Denominator Code
dissect.premium_price_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.premium_price_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.premium_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.premium_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
size_of.strike_price = 4

-- Display: Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = size_of.strike_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Denominator Code
size_of.strike_price_denominator_code = 1

-- Display: Strike Price Denominator Code
display.strike_price_denominator_code = function(value)
  if value == "A" then
    return "Strike Price Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Strike Price Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Strike Price Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Strike Price Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Strike Price Denominator Code: Hundred Thousand (E)"
  end
  if value == "I" then
    return "Strike Price Denominator Code: No Fraction (I)"
  end

  return "Strike Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Strike Price Denominator Code
dissect.strike_price_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strike_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.strike_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Display: Long Equity And Index Quote Message
display.long_equity_and_index_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Equity And Index Quote Message
dissect.long_equity_and_index_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type
  index, quote_message_type = dissect.quote_message_type(buffer, index, packet, parent)

  -- Bbo Indicator: 1 Byte Ascii String Enum with 17 values
  index, bbo_indicator = dissect.bbo_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Block
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String Enum with 6 values
  index, strike_price_denominator_code = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, premium_price_denominator_code = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Price: 4 Byte Signed Fixed Width Integer
  index, offer_price = dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Equity And Index Quote Message
dissect.long_equity_and_index_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_equity_and_index_quote_message then
    local range = buffer(offset, 37)
    local display = display.long_equity_and_index_quote_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.long_equity_and_index_quote_message, range, display)
  end

  return dissect.long_equity_and_index_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Price
size_of.underlying_price = 8

-- Display: Underlying Price
display.underlying_price = function(value)
  return "Underlying Price: "..value
end

-- Dissect: Underlying Price
dissect.underlying_price = function(buffer, offset, packet, parent)
  local length = size_of.underlying_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.underlying_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.underlying_price, range, value, display)

  return offset + length, value
end

-- Size: Underlying Price Denominator Code
size_of.underlying_price_denominator_code = 1

-- Display: Underlying Price Denominator Code
display.underlying_price_denominator_code = function(value)
  if value == "A" then
    return "Underlying Price Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Underlying Price Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Underlying Price Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Underlying Price Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Underlying Price Denominator Code: Hundred Thousand (E)"
  end
  if value == "F" then
    return "Underlying Price Denominator Code: Million (F)"
  end
  if value == "G" then
    return "Underlying Price Denominator Code: Ten Million (G)"
  end
  if value == "H" then
    return "Underlying Price Denominator Code: Hundred Million (H)"
  end
  if value == "I" then
    return "Underlying Price Denominator Code: No Fraction (I)"
  end

  return "Underlying Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Underlying Price Denominator Code
dissect.underlying_price_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.underlying_price_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.underlying_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Net Change
size_of.net_change = 4

-- Display: Net Change
display.net_change = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
dissect.net_change = function(buffer, offset, packet, parent)
  local length = size_of.net_change
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.net_change(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.net_change, range, value, display)

  return offset + length, value
end

-- Size: Last Price
size_of.last_price = 4

-- Display: Last Price
display.last_price = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
dissect.last_price = function(buffer, offset, packet, parent)
  local length = size_of.last_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.last_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price
size_of.low_price = 4

-- Display: Low Price
display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local length = size_of.low_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
size_of.high_price = 4

-- Display: High Price
display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local length = size_of.high_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price
size_of.open_price = 4

-- Display: Open Price
display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
dissect.open_price = function(buffer, offset, packet, parent)
  local length = size_of.open_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.open_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Open Interest Volume
size_of.open_interest_volume = 4

-- Display: Open Interest Volume
display.open_interest_volume = function(value)
  return "Open Interest Volume: "..value
end

-- Dissect: Open Interest Volume
dissect.open_interest_volume = function(buffer, offset, packet, parent)
  local length = size_of.open_interest_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.open_interest_volume(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.open_interest_volume, range, value, display)

  return offset + length, value
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.volume, range, value, display)

  return offset + length, value
end

-- Display: Equity And Index End Of Day Summary Message
display.equity_and_index_end_of_day_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity And Index End Of Day Summary Message
dissect.equity_and_index_end_of_day_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Block
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String Enum with 6 values
  index, strike_price_denominator_code = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Open Interest Volume: 4 Byte Unsigned Fixed Width Integer
  index, open_interest_volume = dissect.open_interest_volume(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, premium_price_denominator_code = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Open Price: 4 Byte Signed Fixed Width Integer
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- High Price: 4 Byte Signed Fixed Width Integer
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Signed Fixed Width Integer
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Last Price: 4 Byte Signed Fixed Width Integer
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Net Change: 4 Byte Signed Fixed Width Integer
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Underlying Price Denominator Code: 1 Byte Ascii String Enum with 9 values
  index, underlying_price_denominator_code = dissect.underlying_price_denominator_code(buffer, index, packet, parent)

  -- Underlying Price: 8 Byte Signed Fixed Width Integer
  index, underlying_price = dissect.underlying_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Offer Price: 4 Byte Signed Fixed Width Integer
  index, offer_price = dissect.offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index End Of Day Summary Message
dissect.equity_and_index_end_of_day_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equity_and_index_end_of_day_summary_message then
    local range = buffer(offset, 67)
    local display = display.equity_and_index_end_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.equity_and_index_end_of_day_summary_message, range, display)
  end

  return dissect.equity_and_index_end_of_day_summary_message_fields(buffer, offset, packet, parent)
end

-- Display: Open Interest Message
display.open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Interest Message
dissect.open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Block
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String Enum with 6 values
  index, strike_price_denominator_code = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Open Interest Volume: 4 Byte Unsigned Fixed Width Integer
  index, open_interest_volume = dissect.open_interest_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
dissect.open_interest_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_interest_message then
    local range = buffer(offset, 25)
    local display = display.open_interest_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.open_interest_message, range, display)
  end

  return dissect.open_interest_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Identifier
size_of.trade_identifier = 4

-- Display: Trade Identifier
display.trade_identifier = function(value)
  return "Trade Identifier: "..value
end

-- Dissect: Trade Identifier
dissect.trade_identifier = function(buffer, offset, packet, parent)
  local length = size_of.trade_identifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_identifier(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.trade_identifier, range, value, display)

  return offset + length, value
end

-- Size: Premium Price
size_of.premium_price = 4

-- Display: Premium Price
display.premium_price = function(value)
  return "Premium Price: "..value
end

-- Dissect: Premium Price
dissect.premium_price = function(buffer, offset, packet, parent)
  local length = size_of.premium_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.premium_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.premium_price, range, value, display)

  return offset + length, value
end

-- Display: Equity And Index Last Sale Message
display.equity_and_index_last_sale_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity And Index Last Sale Message
dissect.equity_and_index_last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type
  index, trade_message_type = dissect.trade_message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 8 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Block
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String Enum with 6 values
  index, strike_price_denominator_code = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, premium_price_denominator_code = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Premium Price: 4 Byte Signed Fixed Width Integer
  index, premium_price = dissect.premium_price(buffer, index, packet, parent)

  -- Trade Identifier: 4 Byte Unsigned Fixed Width Integer
  index, trade_identifier = dissect.trade_identifier(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = dissect.reserved_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index Last Sale Message
dissect.equity_and_index_last_sale_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equity_and_index_last_sale_message then
    local range = buffer(offset, 37)
    local display = display.equity_and_index_last_sale_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.equity_and_index_last_sale_message, range, display)
  end

  return dissect.equity_and_index_last_sale_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_category)
  -- Size of Equity And Index Last Sale Message
  if message_category == "a" then
    return 37
  end
  -- Size of Open Interest Message
  if message_category == "d" then
    return 25
  end
  -- Size of Equity And Index End Of Day Summary Message
  if message_category == "f" then
    return 67
  end
  -- Size of Long Equity And Index Quote Message
  if message_category == "k" then
    return 37
  end
  -- Size of Short Equity And Index Quote Message
  if message_category == "q" then
    return 23
  end
  -- Size of Administrative Message
  if message_category == "C" then
    return size_of.administrative_message(buffer, offset)
  end
  -- Size of Control Message
  if message_category == "H" then
    return size_of.control_message(buffer, offset)
  end
  -- Size of Underlying Value Message
  if message_category == "Y" then
    return size_of.underlying_value_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Equity And Index Last Sale Message
  if message_category == "a" then
    return dissect.equity_and_index_last_sale_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_category == "d" then
    return dissect.open_interest_message(buffer, offset, packet, parent)
  end
  -- Dissect Equity And Index End Of Day Summary Message
  if message_category == "f" then
    return dissect.equity_and_index_end_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Equity And Index Quote Message
  if message_category == "k" then
    return dissect.long_equity_and_index_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Equity And Index Quote Message
  if message_category == "q" then
    return dissect.short_equity_and_index_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Administrative Message
  if message_category == "C" then
    return dissect.administrative_message(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if message_category == "H" then
    return dissect.control_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value Message
  if message_category == "Y" then
    return dissect.underlying_value_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(siac_opra_recipient_obi_v4_0.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
size_of.message_category = 1

-- Display: Message Category
display.message_category = function(value)
  if value == "a" then
    return "Message Category: Equity And Index Last Sale Message (a)"
  end
  if value == "d" then
    return "Message Category: Open Interest Message (d)"
  end
  if value == "f" then
    return "Message Category: Equity And Index End Of Day Summary Message (f)"
  end
  if value == "k" then
    return "Message Category: Long Equity And Index Quote Message (k)"
  end
  if value == "q" then
    return "Message Category: Short Equity And Index Quote Message (q)"
  end
  if value == "C" then
    return "Message Category: Administrative Message (C)"
  end
  if value == "H" then
    return "Message Category: Control Message (H)"
  end
  if value == "Y" then
    return "Message Category: Underlying Value Message (Y)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
dissect.message_category = function(buffer, offset, packet, parent)
  local length = size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_category(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.message_category, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
size_of.participant_id = 1

-- Display: Participant Id
display.participant_id = function(value)
  if value == "A" then
    return "Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Participant Id: Boston Options Exchange (B)"
  end
  if value == "C" then
    return "Participant Id: Cboe Options Exchange (C)"
  end
  if value == "D" then
    return "Participant Id: Miax Emerald (D)"
  end
  if value == "E" then
    return "Participant Id: Cboe Edgx Options (E)"
  end
  if value == "H" then
    return "Participant Id: Nasdaq Gemx (H)"
  end
  if value == "I" then
    return "Participant Id: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Participant Id: Nasdaq Mrx (J)"
  end
  if value == "M" then
    return "Participant Id: Miami International Securities Exchange (M)"
  end
  if value == "N" then
    return "Participant Id: Nyse Arca (N)"
  end
  if value == "O" then
    return "Participant Id: Options Price Reporting Authority (O)"
  end
  if value == "P" then
    return "Participant Id: Miax Pearl (P)"
  end
  if value == "Q" then
    return "Participant Id: Nasdaq Options Market (Q)"
  end
  if value == "T" then
    return "Participant Id: Nasdaq Bx Options (T)"
  end
  if value == "W" then
    return "Participant Id: Cboe C 2 Options (W)"
  end
  if value == "X" then
    return "Participant Id: Nasdaq Phlx (X)"
  end
  if value == "Z" then
    return "Participant Id: Cboe Bzx Options Exchange (Z)"
  end

  return "Participant Id: Unknown("..value..")"
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local length = size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 2

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 8 values
  index, message_category = dissect.message_category(buffer, index, packet, parent)

  -- Payload: Runtime Type with 8 branches
  index = dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Block Checksum
size_of.block_checksum = 2

-- Display: Block Checksum
display.block_checksum = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
dissect.block_checksum = function(buffer, offset, packet, parent)
  local length = size_of.block_checksum
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_checksum(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
size_of.nanoseconds = 4

-- Display: Nanoseconds
display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Seconds
size_of.seconds = 4

-- Display: Seconds
display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
dissect.seconds = function(buffer, offset, packet, parent)
  local length = size_of.seconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.seconds(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.seconds, range, value, display)

  return offset + length, value
end

-- Display: Block Timestamp
display.block_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Timestamp
dissect.block_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Timestamp
dissect.block_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.block_timestamp then
    local range = buffer(offset, 8)
    local display = display.block_timestamp(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.block_timestamp, range, display)
  end

  return dissect.block_timestamp_fields(buffer, offset, packet, parent)
end

-- Size: Messages In Block
size_of.messages_in_block = 1

-- Display: Messages In Block
display.messages_in_block = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
dissect.messages_in_block = function(buffer, offset, packet, parent)
  local length = size_of.messages_in_block
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.messages_in_block(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Size: Block Sequence Number
size_of.block_sequence_number = 4

-- Display: Block Sequence Number
display.block_sequence_number = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
dissect.block_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.block_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_sequence_number(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session Indicator
size_of.session_indicator = 1

-- Display: Session Indicator
display.session_indicator = function(value)
  if value == 0 then
    return "Session Indicator: Regular (0)"
  end
  if value == 88 then
    return "Session Indicator: Pre Market (88)"
  end

  return "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
dissect.session_indicator = function(buffer, offset, packet, parent)
  local length = size_of.session_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Indicator
size_of.retransmission_indicator = 1

-- Display: Retransmission Indicator
display.retransmission_indicator = function(value)
  return "Retransmission Indicator: "..value
end

-- Dissect: Retransmission Indicator
dissect.retransmission_indicator = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.retransmission_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Size: Data Feed Indicator
size_of.data_feed_indicator = 1

-- Display: Data Feed Indicator
display.data_feed_indicator = function(value)
  return "Data Feed Indicator: "..value
end

-- Dissect: Data Feed Indicator
dissect.data_feed_indicator = function(buffer, offset, packet, parent)
  local length = size_of.data_feed_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.data_feed_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.data_feed_indicator, range, value, display)

  return offset + length, value
end

-- Size: Block Size
size_of.block_size = 2

-- Display: Block Size
display.block_size = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
dissect.block_size = function(buffer, offset, packet, parent)
  local length = size_of.block_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_size(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.block_size, range, value, display)

  return offset + length, value
end

-- Size: Version
size_of.version = 1

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v4_0.fields.version, range, value, display)

  return offset + length, value
end

-- Display: Block Header
display.block_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Header
dissect.block_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  -- Block Size: 2 Byte Unsigned Fixed Width Integer
  index, block_size = dissect.block_size(buffer, index, packet, parent)

  -- Data Feed Indicator: 1 Byte Ascii String Static
  index, data_feed_indicator = dissect.data_feed_indicator(buffer, index, packet, parent)

  -- Retransmission Indicator: 1 Byte Ascii String
  index, retransmission_indicator = dissect.retransmission_indicator(buffer, index, packet, parent)

  -- Session Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, session_indicator = dissect.session_indicator(buffer, index, packet, parent)

  -- Block Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, block_sequence_number = dissect.block_sequence_number(buffer, index, packet, parent)

  -- Messages In Block: 1 Byte Unsigned Fixed Width Integer
  index, messages_in_block = dissect.messages_in_block(buffer, index, packet, parent)

  -- Block Timestamp: Struct of 2 fields
  index, block_timestamp = dissect.block_timestamp(buffer, index, packet, parent)

  -- Block Checksum: 2 Byte Unsigned Fixed Width Integer
  index, block_checksum = dissect.block_checksum(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
dissect.block_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.block_header then
    local range = buffer(offset, 21)
    local display = display.block_header(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v4_0.fields.block_header, range, display)
  end

  return dissect.block_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 9 fields
  index, block_header = dissect.block_header(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):le_uint()

  -- Message: Struct of 3 fields
  for i = 1, messages_in_block do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function siac_opra_recipient_obi_v4_0.init()
end

-- Dissector for Siac Opra Recipient Obi 4.0
function siac_opra_recipient_obi_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = siac_opra_recipient_obi_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(siac_opra_recipient_obi_v4_0, buffer(), siac_opra_recipient_obi_v4_0.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, siac_opra_recipient_obi_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.siac_opra_recipient_obi_v4_0_packet_size = function(buffer)

  return true
end

-- Verify Version Field
verify.version = function(buffer)
  if 5 == buffer(0, 1):le_uint() then
    return true
  end

  return false
end

-- Verify Data Feed Indicator Field
verify.data_feed_indicator = function(buffer)
  if O == buffer(3, 1):string() then
    return true
  end

  return false
end

-- Dissector Heuristic for Siac Opra Recipient Obi 4.0
local function siac_opra_recipient_obi_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.siac_opra_recipient_obi_v4_0_packet_size(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Verify Data Feed Indicator
  if not verify.data_feed_indicator(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = siac_opra_recipient_obi_v4_0
  siac_opra_recipient_obi_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Opra Recipient Obi 4.0
siac_opra_recipient_obi_v4_0:register_heuristic("udp", siac_opra_recipient_obi_v4_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Securities Industry Automation Corporation
--   Version: 4.0
--   Date: Friday, January 17, 2020
--   Specification: 5e21df9b4c5acfe5355bd118_OPRA_Binary_DR_Spec_Version_4.0_01172020_v1.pdf
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
