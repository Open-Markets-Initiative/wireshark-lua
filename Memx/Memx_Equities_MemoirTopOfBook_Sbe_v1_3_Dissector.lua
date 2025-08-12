-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities MemoirTopOfBook Sbe 1.3 Protocol
local memx_equities_memoirtopofbook_sbe_v1_3 = Proto("Memx.Equities.MemoirTopOfBook.Sbe.v1.3.Lua", "Memx Equities MemoirTopOfBook Sbe 1.3")

-- Component Tables
local show = {}
local format = {}
local memx_equities_memoirtopofbook_sbe_v1_3_display = {}
local memx_equities_memoirtopofbook_sbe_v1_3_dissect = {}
local memx_equities_memoirtopofbook_sbe_v1_3_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Equities MemoirTopOfBook Sbe 1.3 Fields
memx_equities_memoirtopofbook_sbe_v1_3.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "memx.equities.memoirtopofbook.sbe.v1.3.asofsequencenumber", ftypes.UINT64)
memx_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_message = ProtoField.new("Best Bid Message", "memx.equities.memoirtopofbook.sbe.v1.3.bestbidmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_offer_message = ProtoField.new("Best Bid Offer Message", "memx.equities.memoirtopofbook.sbe.v1.3.bestbidoffermessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_short_message = ProtoField.new("Best Bid Short Message", "memx.equities.memoirtopofbook.sbe.v1.3.bestbidshortmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.best_offer_message = ProtoField.new("Best Offer Message", "memx.equities.memoirtopofbook.sbe.v1.3.bestoffermessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.best_offer_short_message = ProtoField.new("Best Offer Short Message", "memx.equities.memoirtopofbook.sbe.v1.3.bestoffershortmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.bid_price = ProtoField.new("Bid Price", "memx.equities.memoirtopofbook.sbe.v1.3.bidprice", ftypes.DOUBLE)
memx_equities_memoirtopofbook_sbe_v1_3.fields.bid_price_short = ProtoField.new("Bid Price Short", "memx.equities.memoirtopofbook.sbe.v1.3.bidpriceshort", ftypes.DOUBLE)
memx_equities_memoirtopofbook_sbe_v1_3.fields.bid_size = ProtoField.new("Bid Size", "memx.equities.memoirtopofbook.sbe.v1.3.bidsize", ftypes.UINT32)
memx_equities_memoirtopofbook_sbe_v1_3.fields.bid_size_short = ProtoField.new("Bid Size Short", "memx.equities.memoirtopofbook.sbe.v1.3.bidsizeshort", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "memx.equities.memoirtopofbook.sbe.v1.3.blocklength", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_3.fields.clear_book_message = ProtoField.new("Clear Book Message", "memx.equities.memoirtopofbook.sbe.v1.3.clearbookmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.common_header = ProtoField.new("Common Header", "memx.equities.memoirtopofbook.sbe.v1.3.commonheader", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.header_length = ProtoField.new("Header Length", "memx.equities.memoirtopofbook.sbe.v1.3.headerlength", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.equities.memoirtopofbook.sbe.v1.3.instrumentdirectorymessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.equities.memoirtopofbook.sbe.v1.3.istestsymbol", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_3.fields.message = ProtoField.new("Message", "memx.equities.memoirtopofbook.sbe.v1.3.message", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "memx.equities.memoirtopofbook.sbe.v1.3.messagecount", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "memx.equities.memoirtopofbook.sbe.v1.3.messagelength", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_3.fields.message_type = ProtoField.new("Message Type", "memx.equities.memoirtopofbook.sbe.v1.3.messagetype", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_3.fields.mpv = ProtoField.new("Mpv", "memx.equities.memoirtopofbook.sbe.v1.3.mpv", ftypes.DOUBLE)
memx_equities_memoirtopofbook_sbe_v1_3.fields.offer_price = ProtoField.new("Offer Price", "memx.equities.memoirtopofbook.sbe.v1.3.offerprice", ftypes.DOUBLE)
memx_equities_memoirtopofbook_sbe_v1_3.fields.offer_price_short = ProtoField.new("Offer Price Short", "memx.equities.memoirtopofbook.sbe.v1.3.offerpriceshort", ftypes.DOUBLE)
memx_equities_memoirtopofbook_sbe_v1_3.fields.offer_size = ProtoField.new("Offer size", "memx.equities.memoirtopofbook.sbe.v1.3.offersize", ftypes.UINT32)
memx_equities_memoirtopofbook_sbe_v1_3.fields.offer_size_uint_16 = ProtoField.new("Offer Size uint 16", "memx.equities.memoirtopofbook.sbe.v1.3.offersizeuint16", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_3.fields.packet = ProtoField.new("Packet", "memx.equities.memoirtopofbook.sbe.v1.3.packet", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.payload = ProtoField.new("Payload", "memx.equities.memoirtopofbook.sbe.v1.3.payload", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "memx.equities.memoirtopofbook.sbe.v1.3.regshorestrictionmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.round_lot = ProtoField.new("Round Lot", "memx.equities.memoirtopofbook.sbe.v1.3.roundlot", ftypes.UINT32)
memx_equities_memoirtopofbook_sbe_v1_3.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memoirtopofbook.sbe.v1.3.sbeheader", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memoirtopofbook.sbe.v1.3.sbemessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memoirtopofbook.sbe.v1.3.schemaid", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_3.fields.security_id = ProtoField.new("Security Id", "memx.equities.memoirtopofbook.sbe.v1.3.securityid", ftypes.UINT16)
memx_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status = ProtoField.new("Security Trading Status", "memx.equities.memoirtopofbook.sbe.v1.3.securitytradingstatus", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "memx.equities.memoirtopofbook.sbe.v1.3.securitytradingstatusmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "memx.equities.memoirtopofbook.sbe.v1.3.securitytradingstatusreason", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "memx.equities.memoirtopofbook.sbe.v1.3.sequencenumber", ftypes.UINT64)
memx_equities_memoirtopofbook_sbe_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memoirtopofbook.sbe.v1.3.sequencedmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.equities.memoirtopofbook.sbe.v1.3.sequencedmessages", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.session_id = ProtoField.new("Session Id", "memx.equities.memoirtopofbook.sbe.v1.3.sessionid", ftypes.UINT64)
memx_equities_memoirtopofbook_sbe_v1_3.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "memx.equities.memoirtopofbook.sbe.v1.3.shortsalerestriction", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_3.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "memx.equities.memoirtopofbook.sbe.v1.3.snapshotcompletemessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "memx.equities.memoirtopofbook.sbe.v1.3.symbol", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memoirtopofbook.sbe.v1.3.symbolsfx", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "memx.equities.memoirtopofbook.sbe.v1.3.templateid", ftypes.UINT8)
memx_equities_memoirtopofbook_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "memx.equities.memoirtopofbook.sbe.v1.3.timestamp", ftypes.UINT64)
memx_equities_memoirtopofbook_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "memx.equities.memoirtopofbook.sbe.v1.3.tradingsession", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "memx.equities.memoirtopofbook.sbe.v1.3.tradingsessionstatusmessage", ftypes.STRING)
memx_equities_memoirtopofbook_sbe_v1_3.fields.version = ProtoField.new("Version", "memx.equities.memoirtopofbook.sbe.v1.3.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Memx Equities MemoirTopOfBook Sbe 1.3 Element Dissection Options
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

-- Register Memx Equities MemoirTopOfBook Sbe 1.3 Show Options
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_message = Pref.bool("Show Best Bid Message", show.best_bid_message, "Parse and add Best Bid Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_offer_message = Pref.bool("Show Best Bid Offer Message", show.best_bid_offer_message, "Parse and add Best Bid Offer Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_short_message = Pref.bool("Show Best Bid Short Message", show.best_bid_short_message, "Parse and add Best Bid Short Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_message = Pref.bool("Show Best Offer Message", show.best_offer_message, "Parse and add Best Offer Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_short_message = Pref.bool("Show Best Offer Short Message", show.best_offer_short_message, "Parse and add Best Offer Short Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_security_trading_status_message = Pref.bool("Show Security Trading Status Message", show.security_trading_status_message, "Parse and add Security Trading Status Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function memx_equities_memoirtopofbook_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.best_bid_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_message then
    show.best_bid_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_message
    changed = true
  end
  if show.best_bid_offer_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_offer_message then
    show.best_bid_offer_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_offer_message
    changed = true
  end
  if show.best_bid_short_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_short_message then
    show.best_bid_short_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_short_message
    changed = true
  end
  if show.best_offer_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_message then
    show.best_offer_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_message
    changed = true
  end
  if show.best_offer_short_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_short_message then
    show.best_offer_short_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_short_message
    changed = true
  end
  if show.clear_book_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_clear_book_message then
    show.clear_book_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_common_header then
    show.common_header = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_common_header
    changed = true
  end
  if show.instrument_directory_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_instrument_directory_message then
    show.instrument_directory_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_message then
    show.message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_message
    changed = true
  end
  if show.packet ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_packet then
    show.packet = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.reg_sho_restriction_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.sbe_header ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_header then
    show.sbe_header = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.security_trading_status_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_security_trading_status_message then
    show.security_trading_status_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_security_trading_status_message
    changed = true
  end
  if show.sequenced_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_message then
    show.sequenced_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.trading_session_status_message ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_trading_session_status_message then
    show.trading_session_status_message = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_payload then
    show.payload = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_messages then
    show.sequenced_messages = memx_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities MemoirTopOfBook Sbe 1.3
-----------------------------------------------------------------------

-- Size: Security Id
memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id = 2

-- Display: Security Id
memx_equities_memoirtopofbook_sbe_v1_3_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.security_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp = 8

-- Display: Timestamp
memx_equities_memoirtopofbook_sbe_v1_3_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.clear_book_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  return index
end

-- Display: Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_3_display.clear_book_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.clear_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.clear_book_message = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.clear_book_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.clear_book_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.clear_book_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.clear_book_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Offer Price Short
memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_price_short = 2

-- Display: Offer Price Short
memx_equities_memoirtopofbook_sbe_v1_3_display.offer_price_short = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
translate.offer_price_short = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_price_short = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_price_short
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.offer_price_short(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.offer_price_short(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Size: Offer Size uint 16
memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_size_uint_16 = 2

-- Display: Offer Size uint 16
memx_equities_memoirtopofbook_sbe_v1_3_display.offer_size_uint_16 = function(value)
  return "Offer Size uint 16: "..value
end

-- Dissect: Offer Size uint 16
memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_size_uint_16 = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_size_uint_16
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.offer_size_uint_16(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.offer_size_uint_16, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_offer_short_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_size_uint_16

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_price_short

  return index
end

-- Display: Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_3_display.best_offer_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  -- Offer Size uint 16: 2 Byte Unsigned Fixed Width Integer
  index, offer_size_uint_16 = memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_size_uint_16(buffer, index, packet, parent)

  -- Offer Price Short: 2 Byte Signed Fixed Width Integer
  index, offer_price_short = memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_price_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_short_message = function(buffer, offset, packet, parent)
  if show.best_offer_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.best_offer_short_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_short_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.best_offer_short_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_short_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Bid Price Short
memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_price_short = 2

-- Display: Bid Price Short
memx_equities_memoirtopofbook_sbe_v1_3_display.bid_price_short = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
translate.bid_price_short = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_price_short = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_price_short
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.bid_price_short(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.bid_price_short(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Short
memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_size_short = 2

-- Display: Bid Size Short
memx_equities_memoirtopofbook_sbe_v1_3_display.bid_size_short = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_size_short = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.bid_size_short(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_bid_short_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_size_short

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_price_short

  return index
end

-- Display: Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_3_display.best_bid_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  -- Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_short = memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_size_short(buffer, index, packet, parent)

  -- Bid Price Short: 2 Byte Signed Fixed Width Integer
  index, bid_price_short = memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_price_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_short_message = function(buffer, offset, packet, parent)
  if show.best_bid_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_short_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_short_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.best_bid_short_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_short_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Offer Price
memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_price = 8

-- Display: Offer Price
memx_equities_memoirtopofbook_sbe_v1_3_display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
translate.offer_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price
memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_price = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.offer_price(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.offer_price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Size: Offer size
memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_size = 4

-- Display: Offer size
memx_equities_memoirtopofbook_sbe_v1_3_display.offer_size = function(value)
  return "Offer size: "..value
end

-- Dissect: Offer size
memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_size = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.offer_size(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_offer_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_size

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_price

  return index
end

-- Display: Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_3_display.best_offer_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  -- Offer size: 4 Byte Unsigned Fixed Width Integer
  index, offer_size = memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_size(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Signed Fixed Width Integer
  index, offer_price = memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_message = function(buffer, offset, packet, parent)
  if show.best_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.best_offer_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.best_offer_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Bid Price
memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_price = 8

-- Display: Bid Price
memx_equities_memoirtopofbook_sbe_v1_3_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.bid_price(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_size = 4

-- Display: Bid Size
memx_equities_memoirtopofbook_sbe_v1_3_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_bid_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_size

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_price

  return index
end

-- Display: Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_3_display.best_bid_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_size(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Signed Fixed Width Integer
  index, bid_price = memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_message = function(buffer, offset, packet, parent)
  if show.best_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.best_bid_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_bid_offer_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_size

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.bid_price

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_size

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.offer_price

  return index
end

-- Display: Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_3_display.best_bid_offer_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_size(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Signed Fixed Width Integer
  index, bid_price = memx_equities_memoirtopofbook_sbe_v1_3_dissect.bid_price(buffer, index, packet, parent)

  -- Offer size: 4 Byte Unsigned Fixed Width Integer
  index, offer_size = memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_size(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Signed Fixed Width Integer
  index, offer_price = memx_equities_memoirtopofbook_sbe_v1_3_dissect.offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_offer_message = function(buffer, offset, packet, parent)
  if show.best_bid_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_offer_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_offer_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.best_bid_offer_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_offer_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trading Session
memx_equities_memoirtopofbook_sbe_v1_3_size_of.trading_session = 1

-- Display: Trading Session
memx_equities_memoirtopofbook_sbe_v1_3_display.trading_session = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_3_dissect.trading_session = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.trading_session
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.trading_session(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.trading_session_status_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.trading_session

  return index
end

-- Display: Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_3_display.trading_session_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.trading_session_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Ascii String Enum with 4 values
  index, trading_session = memx_equities_memoirtopofbook_sbe_v1_3_dissect.trading_session(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.trading_session_status_message = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.trading_session_status_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.trading_session_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.trading_session_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.trading_session_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: As Of Sequence Number
memx_equities_memoirtopofbook_sbe_v1_3_size_of.as_of_sequence_number = 8

-- Display: As Of Sequence Number
memx_equities_memoirtopofbook_sbe_v1_3_display.as_of_sequence_number = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
memx_equities_memoirtopofbook_sbe_v1_3_dissect.as_of_sequence_number = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.as_of_sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.as_of_sequence_number(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.snapshot_complete_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.as_of_sequence_number

  return index
end

-- Display: Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_3_display.snapshot_complete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.snapshot_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- As Of Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, as_of_sequence_number = memx_equities_memoirtopofbook_sbe_v1_3_dissect.as_of_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.snapshot_complete_message = function(buffer, offset, packet, parent)
  if show.snapshot_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.snapshot_complete_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.snapshot_complete_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.snapshot_complete_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.snapshot_complete_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Security Trading Status Reason
memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_trading_status_reason = 1

-- Display: Security Trading Status Reason
memx_equities_memoirtopofbook_sbe_v1_3_display.security_trading_status_reason = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status_reason = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_trading_status_reason
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.security_trading_status_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Size: Security Trading Status
memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_trading_status = 1

-- Display: Security Trading Status
memx_equities_memoirtopofbook_sbe_v1_3_display.security_trading_status = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_trading_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_trading_status_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_trading_status

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_trading_status_reason

  return index
end

-- Display: Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_3_display.security_trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Ascii String Enum with 4 values
  index, security_trading_status = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status(buffer, index, packet, parent)

  -- Security Trading Status Reason: 1 Byte Ascii String Enum with 3 values
  index, security_trading_status_reason = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status_message = function(buffer, offset, packet, parent)
  if show.security_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.security_trading_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Short Sale Restriction
memx_equities_memoirtopofbook_sbe_v1_3_size_of.short_sale_restriction = 1

-- Display: Short Sale Restriction
memx_equities_memoirtopofbook_sbe_v1_3_display.short_sale_restriction = function(value)
  if value == 0 then
    return "Short Sale Restriction: False (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: True (1)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
memx_equities_memoirtopofbook_sbe_v1_3_dissect.short_sale_restriction = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.short_sale_restriction
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.short_sale_restriction(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.reg_sho_restriction_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.short_sale_restriction

  return index
end

-- Display: Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_3_display.reg_sho_restriction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.reg_sho_restriction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  -- Short Sale Restriction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, short_sale_restriction = memx_equities_memoirtopofbook_sbe_v1_3_dissect.short_sale_restriction(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.reg_sho_restriction_message = function(buffer, offset, packet, parent)
  if show.reg_sho_restriction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.reg_sho_restriction_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Mpv
memx_equities_memoirtopofbook_sbe_v1_3_size_of.mpv = 8

-- Display: Mpv
memx_equities_memoirtopofbook_sbe_v1_3_display.mpv = function(value)
  return "Mpv: "..value
end

-- Translate: Mpv
translate.mpv = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mpv
memx_equities_memoirtopofbook_sbe_v1_3_dissect.mpv = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.mpv
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.mpv(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.mpv(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.mpv, range, value, display)

  return offset + length, value
end

-- Size: Is Test Symbol
memx_equities_memoirtopofbook_sbe_v1_3_size_of.is_test_symbol = 1

-- Display: Is Test Symbol
memx_equities_memoirtopofbook_sbe_v1_3_display.is_test_symbol = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
memx_equities_memoirtopofbook_sbe_v1_3_dissect.is_test_symbol = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.is_test_symbol
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.is_test_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Size: Round Lot
memx_equities_memoirtopofbook_sbe_v1_3_size_of.round_lot = 4

-- Display: Round Lot
memx_equities_memoirtopofbook_sbe_v1_3_display.round_lot = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
memx_equities_memoirtopofbook_sbe_v1_3_dissect.round_lot = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.round_lot
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.round_lot(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Size: Symbol Sfx
memx_equities_memoirtopofbook_sbe_v1_3_size_of.symbol_sfx = 6

-- Display: Symbol Sfx
memx_equities_memoirtopofbook_sbe_v1_3_display.symbol_sfx = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
memx_equities_memoirtopofbook_sbe_v1_3_dissect.symbol_sfx = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.symbol_sfx
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

  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.symbol_sfx(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Size: Symbol
memx_equities_memoirtopofbook_sbe_v1_3_size_of.symbol = 6

-- Display: Symbol
memx_equities_memoirtopofbook_sbe_v1_3_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_equities_memoirtopofbook_sbe_v1_3_dissect.symbol = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.symbol
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

  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.instrument_directory_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.timestamp

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.symbol

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.symbol_sfx

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.round_lot

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.is_test_symbol

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.mpv

  return index
end

-- Display: Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_3_display.instrument_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.instrument_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memoirtopofbook_sbe_v1_3_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memoirtopofbook_sbe_v1_3_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Round Lot: 4 Byte Unsigned Fixed Width Integer
  index, round_lot = memx_equities_memoirtopofbook_sbe_v1_3_dissect.round_lot(buffer, index, packet, parent)

  -- Is Test Symbol: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, is_test_symbol = memx_equities_memoirtopofbook_sbe_v1_3_dissect.is_test_symbol(buffer, index, packet, parent)

  -- Mpv: 8 Byte Signed Fixed Width Integer
  index, mpv = memx_equities_memoirtopofbook_sbe_v1_3_dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.instrument_directory_message = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.instrument_directory_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.instrument_directory_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.instrument_directory_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
memx_equities_memoirtopofbook_sbe_v1_3_size_of.payload = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.instrument_directory_message(buffer, offset)
  end
  -- Size of Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.reg_sho_restriction_message(buffer, offset)
  end
  -- Size of Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.security_trading_status_message(buffer, offset)
  end
  -- Size of Snapshot Complete Message
  if template_id == 4 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.snapshot_complete_message(buffer, offset)
  end
  -- Size of Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.trading_session_status_message(buffer, offset)
  end
  -- Size of Best Bid Offer Message
  if template_id == 10 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_bid_offer_message(buffer, offset)
  end
  -- Size of Best Bid Message
  if template_id == 11 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_bid_message(buffer, offset)
  end
  -- Size of Best Offer Message
  if template_id == 12 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_offer_message(buffer, offset)
  end
  -- Size of Best Bid Short Message
  if template_id == 13 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_bid_short_message(buffer, offset)
  end
  -- Size of Best Offer Short Message
  if template_id == 14 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.best_offer_short_message(buffer, offset)
  end
  -- Size of Clear Book Message
  if template_id == 15 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.clear_book_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
memx_equities_memoirtopofbook_sbe_v1_3_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_equities_memoirtopofbook_sbe_v1_3_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.instrument_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.reg_sho_restriction_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.security_trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 4 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.snapshot_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.trading_session_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Offer Message
  if template_id == 10 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Message
  if template_id == 11 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Message
  if template_id == 12 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Short Message
  if template_id == 13 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_bid_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Short Message
  if template_id == 14 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.best_offer_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 15 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.clear_book_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_equities_memoirtopofbook_sbe_v1_3_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirtopofbook_sbe_v1_3_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.payload(buffer, packet, parent)
  local element = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.payload, range, display)

  return memx_equities_memoirtopofbook_sbe_v1_3_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
memx_equities_memoirtopofbook_sbe_v1_3_size_of.version = 2

-- Display: Version
memx_equities_memoirtopofbook_sbe_v1_3_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
memx_equities_memoirtopofbook_sbe_v1_3_dissect.version = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.version(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
memx_equities_memoirtopofbook_sbe_v1_3_size_of.schema_id = 1

-- Display: Schema Id
memx_equities_memoirtopofbook_sbe_v1_3_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
memx_equities_memoirtopofbook_sbe_v1_3_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
memx_equities_memoirtopofbook_sbe_v1_3_size_of.template_id = 1

-- Display: Template Id
memx_equities_memoirtopofbook_sbe_v1_3_display.template_id = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_3_dissect.template_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.template_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.template_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
memx_equities_memoirtopofbook_sbe_v1_3_size_of.block_length = 2

-- Display: Block Length
memx_equities_memoirtopofbook_sbe_v1_3_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_equities_memoirtopofbook_sbe_v1_3_dissect.block_length = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.block_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.block_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sbe Header
memx_equities_memoirtopofbook_sbe_v1_3_size_of.sbe_header = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.block_length

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.template_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.schema_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.version

  return index
end

-- Display: Sbe Header
memx_equities_memoirtopofbook_sbe_v1_3_display.sbe_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_equities_memoirtopofbook_sbe_v1_3_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, template_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_equities_memoirtopofbook_sbe_v1_3_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_header = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.sbe_header, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.sbe_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_header_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Sbe Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.sbe_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.sbe_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_equities_memoirtopofbook_sbe_v1_3_display.sbe_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 11 branches
  index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.sbe_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.sbe_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.sbe_message, range, display)
  end

  return memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Length
memx_equities_memoirtopofbook_sbe_v1_3_size_of.message_length = 2

-- Display: Message Length
memx_equities_memoirtopofbook_sbe_v1_3_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_equities_memoirtopofbook_sbe_v1_3_dissect.message_length = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.message_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.message_length

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.sbe_message(buffer, offset + index)

  return index
end

-- Display: Message
memx_equities_memoirtopofbook_sbe_v1_3_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_equities_memoirtopofbook_sbe_v1_3_dissect.message_length(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memoirtopofbook_sbe_v1_3_dissect.sbe_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.message, range, display)
  end

  return memx_equities_memoirtopofbook_sbe_v1_3_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Message Count
memx_equities_memoirtopofbook_sbe_v1_3_size_of.message_count = 2

-- Display: Message Count
memx_equities_memoirtopofbook_sbe_v1_3_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_equities_memoirtopofbook_sbe_v1_3_dissect.message_count = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.message_count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size Of: Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_3_size_of.sequenced_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_3_display.sequenced_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_equities_memoirtopofbook_sbe_v1_3_dissect.message_count(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.message(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.sequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.sequenced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.sequenced_message, range, display)
  end

  return memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_3_size_of.sequenced_messages = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirtopofbook_sbe_v1_3_size_of.sequenced_message(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_3_display.sequenced_messages = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_messages_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_messages = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_messages_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirtopofbook_sbe_v1_3_size_of.sequenced_messages(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.sequenced_messages(buffer, packet, parent)
  local element = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.sequenced_messages, range, display)

  return memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_messages_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Sequence Number
memx_equities_memoirtopofbook_sbe_v1_3_size_of.sequence_number = 8

-- Display: Sequence Number
memx_equities_memoirtopofbook_sbe_v1_3_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session Id
memx_equities_memoirtopofbook_sbe_v1_3_size_of.session_id = 8

-- Display: Session Id
memx_equities_memoirtopofbook_sbe_v1_3_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_equities_memoirtopofbook_sbe_v1_3_dissect.session_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.session_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.session_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Header Length
memx_equities_memoirtopofbook_sbe_v1_3_size_of.header_length = 1

-- Display: Header Length
memx_equities_memoirtopofbook_sbe_v1_3_display.header_length = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_equities_memoirtopofbook_sbe_v1_3_dissect.header_length = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.header_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.header_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.header_length, range, value, display)

  return offset + length, value
end

-- Size: Message Type
memx_equities_memoirtopofbook_sbe_v1_3_size_of.message_type = 1

-- Display: Message Type
memx_equities_memoirtopofbook_sbe_v1_3_display.message_type = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_3_dissect.message_type = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_3_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_3_display.message_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Common Header
memx_equities_memoirtopofbook_sbe_v1_3_size_of.common_header = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.message_type

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.header_length

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.session_id

  index = index + memx_equities_memoirtopofbook_sbe_v1_3_size_of.sequence_number

  return index
end

-- Display: Common Header
memx_equities_memoirtopofbook_sbe_v1_3_display.common_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_equities_memoirtopofbook_sbe_v1_3_dissect.common_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_equities_memoirtopofbook_sbe_v1_3_dissect.message_type(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_equities_memoirtopofbook_sbe_v1_3_dissect.header_length(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memoirtopofbook_sbe_v1_3_dissect.session_id(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_equities_memoirtopofbook_sbe_v1_3_dissect.common_header = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(memx_equities_memoirtopofbook_sbe_v1_3.fields.common_header, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.common_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_3_display.common_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_3_dissect.common_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
memx_equities_memoirtopofbook_sbe_v1_3_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_equities_memoirtopofbook_sbe_v1_3_dissect.common_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = memx_equities_memoirtopofbook_sbe_v1_3_dissect.sequenced_messages(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function memx_equities_memoirtopofbook_sbe_v1_3.init()
end

-- Dissector for Memx Equities MemoirTopOfBook Sbe 1.3
function memx_equities_memoirtopofbook_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = memx_equities_memoirtopofbook_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(memx_equities_memoirtopofbook_sbe_v1_3, buffer(), memx_equities_memoirtopofbook_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return memx_equities_memoirtopofbook_sbe_v1_3_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, memx_equities_memoirtopofbook_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.memx_equities_memoirtopofbook_sbe_v1_3_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(25, 1):uint()

  if value == 3 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(26, 2):uint()

  if value == 259 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Equities MemoirTopOfBook Sbe 1.3
local function memx_equities_memoirtopofbook_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.memx_equities_memoirtopofbook_sbe_v1_3_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = memx_equities_memoirtopofbook_sbe_v1_3
  memx_equities_memoirtopofbook_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities MemoirTopOfBook Sbe 1.3
memx_equities_memoirtopofbook_sbe_v1_3:register_heuristic("udp", memx_equities_memoirtopofbook_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.3
--   Date: Monday, April 5, 2021
--   Specification: MEMOIR Top of Book Feed-v1_3.pdf
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
