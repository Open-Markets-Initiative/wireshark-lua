-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities MemoirTopOfBook Sbe 1.1 Protocol
local memx_equities_memoirtopofbook_sbe_v1_1 = Proto("Memx.Equities.MemoirTopOfBook.Sbe.v1.1.Lua", "Memx Equities MemoirTopOfBook Sbe 1.1")

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

-- Memx Equities MemoirTopOfBook Sbe 1.1 Fields
memx_equities_memoirtopofbook_sbe_v1_1.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "memx.equities.memoirtopofbook.sbe.v1.1.asofsequencenumber", ftypes.UINT64)
memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_message = ProtoField.new("Best Bid Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestbidmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_offer_message = ProtoField.new("Best Bid Offer Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestbidoffermessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_short_message = ProtoField.new("Best Bid Short Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestbidshortmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.best_offer_message = ProtoField.new("Best Offer Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestoffermessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.best_offer_short_message = ProtoField.new("Best Offer Short Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestoffershortmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_price = ProtoField.new("Bid Price", "memx.equities.memoirtopofbook.sbe.v1.1.bidprice", ftypes.INT64)
memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_size = ProtoField.new("Bid Size", "memx.equities.memoirtopofbook.sbe.v1.1.bidsize", ftypes.UINT32)
memx_equities_memoirtopofbook_sbe_v1_1.fields.block_length = ProtoField.new("Block Length", "memx.equities.memoirtopofbook.sbe.v1.1.blocklength", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_1.fields.clear_book_message = ProtoField.new("Clear Book Message", "memx.equities.memoirtopofbook.sbe.v1.1.clearbookmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.common_header = ProtoField.new("Common Header", "memx.equities.memoirtopofbook.sbe.v1.1.commonheader", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.header_length = ProtoField.new("Header Length", "memx.equities.memoirtopofbook.sbe.v1.1.headerlength", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_1.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.equities.memoirtopofbook.sbe.v1.1.instrumentdirectorymessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.equities.memoirtopofbook.sbe.v1.1.istestsymbol", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_1.fields.message = ProtoField.new("Message", "memx.equities.memoirtopofbook.sbe.v1.1.message", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.message_count = ProtoField.new("Message Count", "memx.equities.memoirtopofbook.sbe.v1.1.messagecount", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_1.fields.message_length = ProtoField.new("Message Length", "memx.equities.memoirtopofbook.sbe.v1.1.messagelength", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_1.fields.message_type = ProtoField.new("Message Type", "memx.equities.memoirtopofbook.sbe.v1.1.messagetype", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_1.fields.mpv = ProtoField.new("Mpv", "memx.equities.memoirtopofbook.sbe.v1.1.mpv", ftypes.INT64)
memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_price = ProtoField.new("Offer Price", "memx.equities.memoirtopofbook.sbe.v1.1.offerprice", ftypes.INT64)
memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_size = ProtoField.new("Offer Size", "memx.equities.memoirtopofbook.sbe.v1.1.offersize", ftypes.UINT32)
memx_equities_memoirtopofbook_sbe_v1_1.fields.packet = ProtoField.new("Packet", "memx.equities.memoirtopofbook.sbe.v1.1.packet", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.payload = ProtoField.new("Payload", "memx.equities.memoirtopofbook.sbe.v1.1.payload", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "memx.equities.memoirtopofbook.sbe.v1.1.regshorestrictionmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.round_lot = ProtoField.new("Round Lot", "memx.equities.memoirtopofbook.sbe.v1.1.roundlot", ftypes.UINT32)
memx_equities_memoirtopofbook_sbe_v1_1.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memoirtopofbook.sbe.v1.1.sbeheader", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memoirtopofbook.sbe.v1.1.sbemessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memoirtopofbook.sbe.v1.1.schemaid", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_1.fields.security_id = ProtoField.new("Security Id", "memx.equities.memoirtopofbook.sbe.v1.1.securityid", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status = ProtoField.new("Security Trading Status", "memx.equities.memoirtopofbook.sbe.v1.1.securitytradingstatus", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "memx.equities.memoirtopofbook.sbe.v1.1.securitytradingstatusmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "memx.equities.memoirtopofbook.sbe.v1.1.securitytradingstatusreason", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "memx.equities.memoirtopofbook.sbe.v1.1.sequencenumber", ftypes.UINT64)
memx_equities_memoirtopofbook_sbe_v1_1.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memoirtopofbook.sbe.v1.1.sequencedmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.equities.memoirtopofbook.sbe.v1.1.sequencedmessages", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.session_id = ProtoField.new("Session Id", "memx.equities.memoirtopofbook.sbe.v1.1.sessionid", ftypes.UINT64)
memx_equities_memoirtopofbook_sbe_v1_1.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "memx.equities.memoirtopofbook.sbe.v1.1.shortsalerestriction", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_1.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "memx.equities.memoirtopofbook.sbe.v1.1.snapshotcompletemessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.symbol = ProtoField.new("Symbol", "memx.equities.memoirtopofbook.sbe.v1.1.symbol", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memoirtopofbook.sbe.v1.1.symbolsfx", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.template_id = ProtoField.new("Template Id", "memx.equities.memoirtopofbook.sbe.v1.1.templateid", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_1.fields.timestamp = ProtoField.new("Timestamp", "memx.equities.memoirtopofbook.sbe.v1.1.timestamp", ftypes.UINT64)
memx_equities_memoirtopofbook_sbe_v1_1.fields.trading_session = ProtoField.new("Trading Session", "memx.equities.memoirtopofbook.sbe.v1.1.tradingsession", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "memx.equities.memoirtopofbook.sbe.v1.1.tradingsessionstatusmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_1.fields.version = ProtoField.new("Version", "memx.equities.memoirtopofbook.sbe.v1.1.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Memx Equities MemoirTopOfBook Sbe 1.1 Element Dissection Options
show.best_bid_message = true
show.best_bid_offer_message = true
show.best_bid_short_message = true
show.best_offer_message = true
show.best_offer_short_message = true
show.clear_book_message = true
show.common_header = true
show.instrument_directory_message = true
show.message = true
show.packet = true
show.reg_sho_restriction_message = true
show.sbe_header = true
show.sbe_message = true
show.security_trading_status_message = true
show.sequenced_message = true
show.snapshot_complete_message = true
show.trading_session_status_message = true
show.payload = false
show.sequenced_messages = false

-- Register Memx Equities MemoirTopOfBook Sbe 1.1 Show Options
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_message = Pref.bool("Show Best Bid Message", show.best_bid_message, "Parse and add Best Bid Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_offer_message = Pref.bool("Show Best Bid Offer Message", show.best_bid_offer_message, "Parse and add Best Bid Offer Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_short_message = Pref.bool("Show Best Bid Short Message", show.best_bid_short_message, "Parse and add Best Bid Short Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_message = Pref.bool("Show Best Offer Message", show.best_offer_message, "Parse and add Best Offer Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_short_message = Pref.bool("Show Best Offer Short Message", show.best_offer_short_message, "Parse and add Best Offer Short Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_security_trading_status_message = Pref.bool("Show Security Trading Status Message", show.security_trading_status_message, "Parse and add Security Trading Status Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function memx_equities_memoirtopofbook_sbe_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.best_bid_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_message then
    show.best_bid_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_message
    changed = true
  end
  if show.best_bid_offer_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_offer_message then
    show.best_bid_offer_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_offer_message
    changed = true
  end
  if show.best_bid_short_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_short_message then
    show.best_bid_short_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_short_message
    changed = true
  end
  if show.best_offer_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_message then
    show.best_offer_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_message
    changed = true
  end
  if show.best_offer_short_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_short_message then
    show.best_offer_short_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_short_message
    changed = true
  end
  if show.clear_book_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_clear_book_message then
    show.clear_book_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_common_header then
    show.common_header = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_common_header
    changed = true
  end
  if show.instrument_directory_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_instrument_directory_message then
    show.instrument_directory_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_message then
    show.message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_message
    changed = true
  end
  if show.packet ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_packet then
    show.packet = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_packet
    changed = true
  end
  if show.reg_sho_restriction_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.sbe_header ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_header then
    show.sbe_header = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_message then
    show.sbe_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_message
    changed = true
  end
  if show.security_trading_status_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_security_trading_status_message then
    show.security_trading_status_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_security_trading_status_message
    changed = true
  end
  if show.sequenced_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_message then
    show.sequenced_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.trading_session_status_message ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_trading_session_status_message then
    show.trading_session_status_message = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_payload then
    show.payload = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_messages then
    show.sequenced_messages = memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities MemoirTopOfBook Sbe 1.1
-----------------------------------------------------------------------

-- Size: Security Id
size_of.security_id = 2

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local length = size_of.security_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
size_of.timestamp = 8

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Clear Book Message
size_of.clear_book_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  return index
end

-- Display: Clear Book Message
display.clear_book_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clear Book Message
dissect.clear_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
dissect.clear_book_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.clear_book_message then
    local length = size_of.clear_book_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.clear_book_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.clear_book_message, range, display)
  end

  return dissect.clear_book_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Price
size_of.offer_price = 8

-- Display: Offer Price
display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Dissect: Offer Price
dissect.offer_price = function(buffer, offset, packet, parent)
  local length = size_of.offer_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.offer_price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_price, range, value, display)

  return offset + length, value
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
  local value = range:uint()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Offer Short Message
size_of.best_offer_short_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  index = index + size_of.offer_size

  index = index + size_of.offer_price

  return index
end

-- Display: Best Offer Short Message
display.best_offer_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Offer Short Message
dissect.best_offer_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Signed Fixed Width Integer
  index, offer_price = dissect.offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Short Message
dissect.best_offer_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_offer_short_message then
    local length = size_of.best_offer_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_offer_short_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.best_offer_short_message, range, display)
  end

  return dissect.best_offer_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Bid Price
size_of.bid_price = 8

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = size_of.bid_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_price, range, value, display)

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
  local value = range:uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Bid Short Message
size_of.best_bid_short_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  index = index + size_of.bid_size

  index = index + size_of.bid_price

  return index
end

-- Display: Best Bid Short Message
display.best_bid_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid Short Message
dissect.best_bid_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Signed Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Short Message
dissect.best_bid_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_short_message then
    local length = size_of.best_bid_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_short_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_short_message, range, display)
  end

  return dissect.best_bid_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Best Offer Message
size_of.best_offer_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  index = index + size_of.offer_size

  index = index + size_of.offer_price

  return index
end

-- Display: Best Offer Message
display.best_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Offer Message
dissect.best_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Signed Fixed Width Integer
  index, offer_price = dissect.offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Message
dissect.best_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_offer_message then
    local length = size_of.best_offer_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_offer_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.best_offer_message, range, display)
  end

  return dissect.best_offer_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Best Bid Message
size_of.best_bid_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  index = index + size_of.bid_size

  index = index + size_of.bid_price

  return index
end

-- Display: Best Bid Message
display.best_bid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid Message
dissect.best_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Signed Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Message
dissect.best_bid_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_message then
    local length = size_of.best_bid_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_message, range, display)
  end

  return dissect.best_bid_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Best Bid Offer Message
size_of.best_bid_offer_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  index = index + size_of.bid_size

  index = index + size_of.bid_price

  index = index + size_of.offer_size

  index = index + size_of.offer_price

  return index
end

-- Display: Best Bid Offer Message
display.best_bid_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid Offer Message
dissect.best_bid_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Signed Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Signed Fixed Width Integer
  index, offer_price = dissect.offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Offer Message
dissect.best_bid_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_offer_message then
    local length = size_of.best_bid_offer_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_offer_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_offer_message, range, display)
  end

  return dissect.best_bid_offer_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Session
size_of.trading_session = 1

-- Display: Trading Session
display.trading_session = function(value)
  return "Trading Session: "..value
end

-- Dissect: Trading Session
dissect.trading_session = function(buffer, offset, packet, parent)
  local length = size_of.trading_session
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_session(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Session Status Message
size_of.trading_session_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.trading_session

  return index
end

-- Display: Trading Session Status Message
display.trading_session_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Session Status Message
dissect.trading_session_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Ascii String
  index, trading_session = dissect.trading_session(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
dissect.trading_session_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_session_status_message then
    local length = size_of.trading_session_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trading_session_status_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.trading_session_status_message, range, display)
  end

  return dissect.trading_session_status_message_fields(buffer, offset, packet, parent)
end

-- Size: As Of Sequence Number
size_of.as_of_sequence_number = 8

-- Display: As Of Sequence Number
display.as_of_sequence_number = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
dissect.as_of_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.as_of_sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.as_of_sequence_number(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Complete Message
size_of.snapshot_complete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.as_of_sequence_number

  return index
end

-- Display: Snapshot Complete Message
display.snapshot_complete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
dissect.snapshot_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- As Of Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, as_of_sequence_number = dissect.as_of_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
dissect.snapshot_complete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_complete_message then
    local length = size_of.snapshot_complete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_complete_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.snapshot_complete_message, range, display)
  end

  return dissect.snapshot_complete_message_fields(buffer, offset, packet, parent)
end

-- Size: Security Trading Status Reason
size_of.security_trading_status_reason = 1

-- Display: Security Trading Status Reason
display.security_trading_status_reason = function(value)
  return "Security Trading Status Reason: "..value
end

-- Dissect: Security Trading Status Reason
dissect.security_trading_status_reason = function(buffer, offset, packet, parent)
  local length = size_of.security_trading_status_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_trading_status_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Size: Security Trading Status
size_of.security_trading_status = 1

-- Display: Security Trading Status
display.security_trading_status = function(value)
  return "Security Trading Status: "..value
end

-- Dissect: Security Trading Status
dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Trading Status Message
size_of.security_trading_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  index = index + size_of.security_trading_status

  index = index + size_of.security_trading_status_reason

  return index
end

-- Display: Security Trading Status Message
display.security_trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Trading Status Message
dissect.security_trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Ascii String
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  -- Security Trading Status Reason: 1 Byte Ascii String
  index, security_trading_status_reason = dissect.security_trading_status_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
dissect.security_trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_trading_status_message then
    local length = size_of.security_trading_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_trading_status_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status_message, range, display)
  end

  return dissect.security_trading_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Short Sale Restriction
size_of.short_sale_restriction = 1

-- Display: Short Sale Restriction
display.short_sale_restriction = function(value)
  return "Short Sale Restriction: "..value
end

-- Dissect: Short Sale Restriction
dissect.short_sale_restriction = function(buffer, offset, packet, parent)
  local length = size_of.short_sale_restriction
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.short_sale_restriction(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Restriction Message
size_of.reg_sho_restriction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  index = index + size_of.short_sale_restriction

  return index
end

-- Display: Reg Sho Restriction Message
display.reg_sho_restriction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
dissect.reg_sho_restriction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Short Sale Restriction: 1 Byte Unsigned Fixed Width Integer
  index, short_sale_restriction = dissect.short_sale_restriction(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
dissect.reg_sho_restriction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reg_sho_restriction_message then
    local length = size_of.reg_sho_restriction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reg_sho_restriction_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.reg_sho_restriction_message, range, display)
  end

  return dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
end

-- Size: Mpv
size_of.mpv = 8

-- Display: Mpv
display.mpv = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
dissect.mpv = function(buffer, offset, packet, parent)
  local length = size_of.mpv
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.mpv(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Is Test Symbol
size_of.is_test_symbol = 1

-- Display: Is Test Symbol
display.is_test_symbol = function(value)
  return "Is Test Symbol: "..value
end

-- Dissect: Is Test Symbol
dissect.is_test_symbol = function(buffer, offset, packet, parent)
  local length = size_of.is_test_symbol
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.is_test_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
size_of.round_lot = 4

-- Display: Round Lot
display.round_lot = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
dissect.round_lot = function(buffer, offset, packet, parent)
  local length = size_of.round_lot
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.round_lot(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Symbol Sfx
size_of.symbol_sfx = 6

-- Display: Symbol Sfx
display.symbol_sfx = function(value)
  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
dissect.symbol_sfx = function(buffer, offset, packet, parent)
  local length = size_of.symbol_sfx
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol_sfx(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 6

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Directory Message
size_of.instrument_directory_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.security_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.round_lot

  index = index + size_of.is_test_symbol

  index = index + size_of.mpv

  return index
end

-- Display: Instrument Directory Message
display.instrument_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Directory Message
dissect.instrument_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Round Lot: 4 Byte Unsigned Fixed Width Integer
  index, round_lot = dissect.round_lot(buffer, index, packet, parent)

  -- Is Test Symbol: 1 Byte Unsigned Fixed Width Integer
  index, is_test_symbol = dissect.is_test_symbol(buffer, index, packet, parent)

  -- Mpv: 8 Byte Signed Fixed Width Integer
  index, mpv = dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
dissect.instrument_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_directory_message then
    local length = size_of.instrument_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_directory_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.instrument_directory_message, range, display)
  end

  return dissect.instrument_directory_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return size_of.instrument_directory_message(buffer, offset)
  end
  -- Size of Reg Sho Restriction Message
  if template_id == 2 then
    return size_of.reg_sho_restriction_message(buffer, offset)
  end
  -- Size of Security Trading Status Message
  if template_id == 3 then
    return size_of.security_trading_status_message(buffer, offset)
  end
  -- Size of Snapshot Complete Message
  if template_id == 4 then
    return size_of.snapshot_complete_message(buffer, offset)
  end
  -- Size of Trading Session Status Message
  if template_id == 5 then
    return size_of.trading_session_status_message(buffer, offset)
  end
  -- Size of Best Bid Offer Message
  if template_id == 10 then
    return size_of.best_bid_offer_message(buffer, offset)
  end
  -- Size of Best Bid Message
  if template_id == 11 then
    return size_of.best_bid_message(buffer, offset)
  end
  -- Size of Best Offer Message
  if template_id == 12 then
    return size_of.best_offer_message(buffer, offset)
  end
  -- Size of Best Bid Short Message
  if template_id == 13 then
    return size_of.best_bid_short_message(buffer, offset)
  end
  -- Size of Best Offer Short Message
  if template_id == 14 then
    return size_of.best_offer_short_message(buffer, offset)
  end
  -- Size of Clear Book Message
  if template_id == 15 then
    return size_of.clear_book_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return dissect.instrument_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return dissect.reg_sho_restriction_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return dissect.security_trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 4 then
    return dissect.snapshot_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return dissect.trading_session_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Offer Message
  if template_id == 10 then
    return dissect.best_bid_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Message
  if template_id == 11 then
    return dissect.best_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Message
  if template_id == 12 then
    return dissect.best_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Short Message
  if template_id == 13 then
    return dissect.best_bid_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Short Message
  if template_id == 14 then
    return dissect.best_offer_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 15 then
    return dissect.clear_book_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
size_of.version = 2

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
size_of.schema_id = 1

-- Display: Schema Id
display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
dissect.schema_id = function(buffer, offset, packet, parent)
  local length = size_of.schema_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.schema_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 1

-- Display: Template Id
display.template_id = function(value)
  if value == 1 then
    return "Template Id: Instrument Directory Message (1)"
  end
  if value == 2 then
    return "Template Id: Reg Sho Restriction Message (2)"
  end
  if value == 3 then
    return "Template Id: Security Trading Status Message (3)"
  end
  if value == 4 then
    return "Template Id: Snapshot Complete Message (4)"
  end
  if value == 5 then
    return "Template Id: Trading Session Status Message (5)"
  end
  if value == 10 then
    return "Template Id: Best Bid Offer Message (10)"
  end
  if value == 11 then
    return "Template Id: Best Bid Message (11)"
  end
  if value == 12 then
    return "Template Id: Best Offer Message (12)"
  end
  if value == 13 then
    return "Template Id: Best Bid Short Message (13)"
  end
  if value == 14 then
    return "Template Id: Best Offer Short Message (14)"
  end
  if value == 15 then
    return "Template Id: Clear Book Message (15)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
size_of.block_length = 2

-- Display: Block Length
display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
dissect.block_length = function(buffer, offset, packet, parent)
  local length = size_of.block_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sbe Header
size_of.sbe_header = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.template_id

  index = index + size_of.schema_id

  index = index + size_of.version

  return index
end

-- Display: Sbe Header
display.sbe_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Header
dissect.sbe_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
dissect.sbe_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sbe_header then
    local length = size_of.sbe_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sbe_header(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.sbe_header, range, display)
  end

  return dissect.sbe_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sbe Message
size_of.sbe_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sbe_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
display.sbe_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Message
dissect.sbe_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = dissect.sbe_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 11 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
dissect.sbe_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = size_of.sbe_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sbe_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.sbe_message, range, display)
  end

  return dissect.sbe_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_length

  index = index + size_of.sbe_message(buffer, offset + index)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = dissect.sbe_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Message Count
size_of.message_count = 2

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local length = size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size Of: Sequenced Message
size_of.sequenced_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
display.sequenced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Message
dissect.sequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = dissect.message_count(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
dissect.sequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = size_of.sequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sequenced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.sequenced_message, range, display)
  end

  return dissect.sequenced_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Sequenced Messages
size_of.sequenced_messages = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return size_of.sequenced_message(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
display.sequenced_messages = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
dissect.sequenced_messages_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return dissect.sequenced_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
dissect.sequenced_messages = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return dissect.sequenced_messages_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.sequenced_messages(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.sequenced_messages(buffer, packet, parent)
  local element = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.sequenced_messages, range, display)

  return dissect.sequenced_messages_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Sequence Number
size_of.sequence_number = 8

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session Id
size_of.session_id = 8

-- Display: Session Id
display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
dissect.session_id = function(buffer, offset, packet, parent)
  local length = size_of.session_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Header Length
size_of.header_length = 1

-- Display: Header Length
display.header_length = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
dissect.header_length = function(buffer, offset, packet, parent)
  local length = size_of.header_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.header_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.header_length, range, value, display)

  return offset + length, value
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Common Header
size_of.common_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_type

  index = index + size_of.header_length

  index = index + size_of.session_id

  index = index + size_of.sequence_number

  return index
end

-- Display: Common Header
display.common_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Common Header
dissect.common_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = dissect.header_length(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
dissect.common_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.common_header then
    local length = size_of.common_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.common_header(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_1.fields.common_header, range, display)
  end

  return dissect.common_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = dissect.common_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = dissect.sequenced_messages(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function memx_equities_memoirtopofbook_sbe_v1_1.init()
end

-- Dissector for Memx Equities MemoirTopOfBook Sbe 1.1
function memx_equities_memoirtopofbook_sbe_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = memx_equities_memoirtopofbook_sbe_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(memx_equities_memoirtopofbook_sbe_v1_1, buffer(), memx_equities_memoirtopofbook_sbe_v1_1.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, memx_equities_memoirtopofbook_sbe_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.memx_equities_memoirtopofbook_sbe_v1_1_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 3 == buffer(25, 1):uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 1 == buffer(26, 2):uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Equities MemoirTopOfBook Sbe 1.1
local function memx_equities_memoirtopofbook_sbe_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.memx_equities_memoirtopofbook_sbe_v1_1_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = memx_equities_memoirtopofbook_sbe_v1_1
  memx_equities_memoirtopofbook_sbe_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities MemoirTopOfBook Sbe 1.1
memx_equities_memoirtopofbook_sbe_v1_1:register_heuristic("udp", memx_equities_memoirtopofbook_sbe_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.1
--   Date: Monday, July 27, 2020
--   Specification: MEMOIR Top of Book Feed-v1_1.pdf
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
