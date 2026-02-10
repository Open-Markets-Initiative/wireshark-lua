-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities MemoirTopOfBook Sbe 1.1 Protocol
local omi_memx_equities_memoirtopofbook_sbe_v1_1 = Proto("Memx.Equities.MemoirTopOfBook.Sbe.v1.1.Lua", "Memx Equities MemoirTopOfBook Sbe 1.1")

-- Protocol table
local memx_equities_memoirtopofbook_sbe_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Equities MemoirTopOfBook Sbe 1.1 Fields
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "memx.equities.memoirtopofbook.sbe.v1.1.asofsequencenumber", ftypes.UINT64)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_price = ProtoField.new("Bid Price", "memx.equities.memoirtopofbook.sbe.v1.1.bidprice", ftypes.DOUBLE)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_price_short = ProtoField.new("Bid Price Short", "memx.equities.memoirtopofbook.sbe.v1.1.bidpriceshort", ftypes.DOUBLE)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_size = ProtoField.new("Bid Size", "memx.equities.memoirtopofbook.sbe.v1.1.bidsize", ftypes.UINT32)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_size_short = ProtoField.new("Bid Size Short", "memx.equities.memoirtopofbook.sbe.v1.1.bidsizeshort", ftypes.UINT16)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.block_length = ProtoField.new("Block Length", "memx.equities.memoirtopofbook.sbe.v1.1.blocklength", ftypes.UINT16)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.common_header = ProtoField.new("Common Header", "memx.equities.memoirtopofbook.sbe.v1.1.commonheader", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.header_length = ProtoField.new("Header Length", "memx.equities.memoirtopofbook.sbe.v1.1.headerlength", ftypes.UINT8)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.equities.memoirtopofbook.sbe.v1.1.istestsymbol", ftypes.UINT8)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.message = ProtoField.new("Message", "memx.equities.memoirtopofbook.sbe.v1.1.message", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.message_count = ProtoField.new("Message Count", "memx.equities.memoirtopofbook.sbe.v1.1.messagecount", ftypes.UINT16)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.message_length = ProtoField.new("Message Length", "memx.equities.memoirtopofbook.sbe.v1.1.messagelength", ftypes.UINT16)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.message_type = ProtoField.new("Message Type", "memx.equities.memoirtopofbook.sbe.v1.1.messagetype", ftypes.UINT8)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.mpv = ProtoField.new("Mpv", "memx.equities.memoirtopofbook.sbe.v1.1.mpv", ftypes.DOUBLE)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_price = ProtoField.new("Offer Price", "memx.equities.memoirtopofbook.sbe.v1.1.offerprice", ftypes.DOUBLE)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_price_short = ProtoField.new("Offer Price Short", "memx.equities.memoirtopofbook.sbe.v1.1.offerpriceshort", ftypes.DOUBLE)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_size = ProtoField.new("Offer size", "memx.equities.memoirtopofbook.sbe.v1.1.offersize", ftypes.UINT32)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_size_uint_16 = ProtoField.new("Offer Size uint 16", "memx.equities.memoirtopofbook.sbe.v1.1.offersizeuint16", ftypes.UINT16)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.packet = ProtoField.new("Packet", "memx.equities.memoirtopofbook.sbe.v1.1.packet", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.payload = ProtoField.new("Payload", "memx.equities.memoirtopofbook.sbe.v1.1.payload", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.round_lot = ProtoField.new("Round Lot", "memx.equities.memoirtopofbook.sbe.v1.1.roundlot", ftypes.UINT32)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memoirtopofbook.sbe.v1.1.sbeheader", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memoirtopofbook.sbe.v1.1.sbemessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memoirtopofbook.sbe.v1.1.schemaid", ftypes.UINT8)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.security_id = ProtoField.new("Security Id", "memx.equities.memoirtopofbook.sbe.v1.1.securityid", ftypes.UINT16)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status = ProtoField.new("Security Trading Status", "memx.equities.memoirtopofbook.sbe.v1.1.securitytradingstatus", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "memx.equities.memoirtopofbook.sbe.v1.1.securitytradingstatusreason", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "memx.equities.memoirtopofbook.sbe.v1.1.sequencenumber", ftypes.UINT64)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memoirtopofbook.sbe.v1.1.sequencedmessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.equities.memoirtopofbook.sbe.v1.1.sequencedmessages", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.session_id = ProtoField.new("Session Id", "memx.equities.memoirtopofbook.sbe.v1.1.sessionid", ftypes.UINT64)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "memx.equities.memoirtopofbook.sbe.v1.1.shortsalerestriction", ftypes.UINT8)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.symbol = ProtoField.new("Symbol", "memx.equities.memoirtopofbook.sbe.v1.1.symbol", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memoirtopofbook.sbe.v1.1.symbolsfx", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.template_id = ProtoField.new("Template Id", "memx.equities.memoirtopofbook.sbe.v1.1.templateid", ftypes.UINT8)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.timestamp = ProtoField.new("Timestamp", "memx.equities.memoirtopofbook.sbe.v1.1.timestamp", ftypes.UINT64)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.trading_session = ProtoField.new("Trading Session", "memx.equities.memoirtopofbook.sbe.v1.1.tradingsession", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.version = ProtoField.new("Version", "memx.equities.memoirtopofbook.sbe.v1.1.version", ftypes.UINT16)

-- Memx Equities Sbe MemoirTopOfBook 1.1 Application Messages
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_message = ProtoField.new("Best Bid Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestbidmessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_offer_message = ProtoField.new("Best Bid Offer Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestbidoffermessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_short_message = ProtoField.new("Best Bid Short Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestbidshortmessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_offer_message = ProtoField.new("Best Offer Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestoffermessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_offer_short_message = ProtoField.new("Best Offer Short Message", "memx.equities.memoirtopofbook.sbe.v1.1.bestoffershortmessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.clear_book_message = ProtoField.new("Clear Book Message", "memx.equities.memoirtopofbook.sbe.v1.1.clearbookmessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.equities.memoirtopofbook.sbe.v1.1.instrumentdirectorymessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "memx.equities.memoirtopofbook.sbe.v1.1.regshorestrictionmessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "memx.equities.memoirtopofbook.sbe.v1.1.securitytradingstatusmessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "memx.equities.memoirtopofbook.sbe.v1.1.snapshotcompletemessage", ftypes.STRING)
omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "memx.equities.memoirtopofbook.sbe.v1.1.tradingsessionstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_message = Pref.bool("Show Best Bid Message", show.best_bid_message, "Parse and add Best Bid Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_offer_message = Pref.bool("Show Best Bid Offer Message", show.best_bid_offer_message, "Parse and add Best Bid Offer Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_short_message = Pref.bool("Show Best Bid Short Message", show.best_bid_short_message, "Parse and add Best Bid Short Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_message = Pref.bool("Show Best Offer Message", show.best_offer_message, "Parse and add Best Offer Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_short_message = Pref.bool("Show Best Offer Short Message", show.best_offer_short_message, "Parse and add Best Offer Short Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_security_trading_status_message = Pref.bool("Show Security Trading Status Message", show.security_trading_status_message, "Parse and add Security Trading Status Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.best_bid_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_message then
    show.best_bid_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_message
    changed = true
  end
  if show.best_bid_offer_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_offer_message then
    show.best_bid_offer_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_offer_message
    changed = true
  end
  if show.best_bid_short_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_short_message then
    show.best_bid_short_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_bid_short_message
    changed = true
  end
  if show.best_offer_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_message then
    show.best_offer_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_message
    changed = true
  end
  if show.best_offer_short_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_short_message then
    show.best_offer_short_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_best_offer_short_message
    changed = true
  end
  if show.clear_book_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_clear_book_message then
    show.clear_book_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_common_header then
    show.common_header = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_common_header
    changed = true
  end
  if show.instrument_directory_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_message then
    show.message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_packet then
    show.packet = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_packet
    changed = true
  end
  if show.reg_sho_restriction_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.sbe_header ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_header then
    show.sbe_header = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_message then
    show.sbe_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sbe_message
    changed = true
  end
  if show.security_trading_status_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_security_trading_status_message then
    show.security_trading_status_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_security_trading_status_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.trading_session_status_message ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_payload then
    show.payload = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_memx_equities_memoirtopofbook_sbe_v1_1.prefs.show_sequenced_messages
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

-- Security Id
memx_equities_memoirtopofbook_sbe_v1_1.security_id = {}

-- Size: Security Id
memx_equities_memoirtopofbook_sbe_v1_1.security_id.size = 2

-- Display: Security Id
memx_equities_memoirtopofbook_sbe_v1_1.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Timestamp
memx_equities_memoirtopofbook_sbe_v1_1.timestamp = {}

-- Size: Timestamp
memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size = 8

-- Display: Timestamp
memx_equities_memoirtopofbook_sbe_v1_1.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message = {}

-- Size: Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size

-- Display: Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.clear_book_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Price Short
memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short = {}

-- Size: Offer Price Short
memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.size = 2

-- Display: Offer Price Short
memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.translate(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Offer Size uint 16
memx_equities_memoirtopofbook_sbe_v1_1.offer_size_uint_16 = {}

-- Size: Offer Size uint 16
memx_equities_memoirtopofbook_sbe_v1_1.offer_size_uint_16.size = 2

-- Display: Offer Size uint 16
memx_equities_memoirtopofbook_sbe_v1_1.offer_size_uint_16.display = function(value)
  return "Offer Size uint 16: "..value
end

-- Dissect: Offer Size uint 16
memx_equities_memoirtopofbook_sbe_v1_1.offer_size_uint_16.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.offer_size_uint_16.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.offer_size_uint_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_size_uint_16, range, value, display)

  return offset + length, value
end

-- Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message = {}

-- Size: Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.offer_size_uint_16.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.size

-- Display: Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Offer Size uint 16: uint16
  index, offer_size_uint_16 = memx_equities_memoirtopofbook_sbe_v1_1.offer_size_uint_16.dissect(buffer, index, packet, parent)

  -- Offer Price Short: ShortPrice
  index, offer_price_short = memx_equities_memoirtopofbook_sbe_v1_1.offer_price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.dissect = function(buffer, offset, packet, parent)
  if show.best_offer_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_offer_short_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short = {}

-- Size: Bid Price Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.size = 2

-- Display: Bid Price Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.translate(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_size_short = {}

-- Size: Bid Size Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_size_short.size = 2

-- Display: Bid Size Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
memx_equities_memoirtopofbook_sbe_v1_1.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message = {}

-- Size: Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.bid_size_short.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.size

-- Display: Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size Short: uint16
  index, bid_size_short = memx_equities_memoirtopofbook_sbe_v1_1.bid_size_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: ShortPrice
  index, bid_price_short = memx_equities_memoirtopofbook_sbe_v1_1.bid_price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Short Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_short_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Price
memx_equities_memoirtopofbook_sbe_v1_1.offer_price = {}

-- Size: Offer Price
memx_equities_memoirtopofbook_sbe_v1_1.offer_price.size = 8

-- Display: Offer Price
memx_equities_memoirtopofbook_sbe_v1_1.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
memx_equities_memoirtopofbook_sbe_v1_1.offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price
memx_equities_memoirtopofbook_sbe_v1_1.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.offer_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirtopofbook_sbe_v1_1.offer_price.translate(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_1.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer size
memx_equities_memoirtopofbook_sbe_v1_1.offer_size = {}

-- Size: Offer size
memx_equities_memoirtopofbook_sbe_v1_1.offer_size.size = 4

-- Display: Offer size
memx_equities_memoirtopofbook_sbe_v1_1.offer_size.display = function(value)
  return "Offer size: "..value
end

-- Dissect: Offer size
memx_equities_memoirtopofbook_sbe_v1_1.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message = {}

-- Size: Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.offer_size.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.offer_price.size

-- Display: Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Offer size: uint32
  index, offer_size = memx_equities_memoirtopofbook_sbe_v1_1.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Price: Price
  index, offer_price = memx_equities_memoirtopofbook_sbe_v1_1.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.best_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_offer_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price
memx_equities_memoirtopofbook_sbe_v1_1.bid_price = {}

-- Size: Bid Price
memx_equities_memoirtopofbook_sbe_v1_1.bid_price.size = 8

-- Display: Bid Price
memx_equities_memoirtopofbook_sbe_v1_1.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
memx_equities_memoirtopofbook_sbe_v1_1.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
memx_equities_memoirtopofbook_sbe_v1_1.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirtopofbook_sbe_v1_1.bid_price.translate(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_1.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
memx_equities_memoirtopofbook_sbe_v1_1.bid_size = {}

-- Size: Bid Size
memx_equities_memoirtopofbook_sbe_v1_1.bid_size.size = 4

-- Display: Bid Size
memx_equities_memoirtopofbook_sbe_v1_1.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
memx_equities_memoirtopofbook_sbe_v1_1.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message = {}

-- Size: Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.bid_size.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.bid_price.size

-- Display: Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size: uint32
  index, bid_size = memx_equities_memoirtopofbook_sbe_v1_1.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = memx_equities_memoirtopofbook_sbe_v1_1.bid_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message = {}

-- Size: Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.bid_size.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.bid_price.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.offer_size.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.offer_price.size

-- Display: Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size: uint32
  index, bid_size = memx_equities_memoirtopofbook_sbe_v1_1.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = memx_equities_memoirtopofbook_sbe_v1_1.bid_price.dissect(buffer, index, packet, parent)

  -- Offer size: uint32
  index, offer_size = memx_equities_memoirtopofbook_sbe_v1_1.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Price: Price
  index, offer_price = memx_equities_memoirtopofbook_sbe_v1_1.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Offer Message
memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.best_bid_offer_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
memx_equities_memoirtopofbook_sbe_v1_1.trading_session = {}

-- Size: Trading Session
memx_equities_memoirtopofbook_sbe_v1_1.trading_session.size = 1

-- Display: Trading Session
memx_equities_memoirtopofbook_sbe_v1_1.trading_session.display = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_1.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirtopofbook_sbe_v1_1.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message = {}

-- Size: Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.trading_session.size

-- Display: Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: TradingSessionType
  index, trading_session = memx_equities_memoirtopofbook_sbe_v1_1.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.trading_session_status_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- As Of Sequence Number
memx_equities_memoirtopofbook_sbe_v1_1.as_of_sequence_number = {}

-- Size: As Of Sequence Number
memx_equities_memoirtopofbook_sbe_v1_1.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
memx_equities_memoirtopofbook_sbe_v1_1.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
memx_equities_memoirtopofbook_sbe_v1_1.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.as_of_sequence_number.size

-- Display: Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: uint64
  index, as_of_sequence_number = memx_equities_memoirtopofbook_sbe_v1_1.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.snapshot_complete_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Reason
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_reason = {}

-- Size: Security Trading Status Reason
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_reason.size = 1

-- Display: Security Trading Status Reason
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_reason.display = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Security Trading Status
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status = {}

-- Size: Security Trading Status
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status.size = 1

-- Display: Security Trading Status
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status.display = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message = {}

-- Size: Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_reason.size

-- Display: Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatusType
  index, security_trading_status = memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status Reason: SecurityTradingStatusReasonType
  index, security_trading_status_reason = memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.security_trading_status_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Restriction
memx_equities_memoirtopofbook_sbe_v1_1.short_sale_restriction = {}

-- Size: Short Sale Restriction
memx_equities_memoirtopofbook_sbe_v1_1.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
memx_equities_memoirtopofbook_sbe_v1_1.short_sale_restriction.display = function(value)
  if value == 0 then
    return "Short Sale Restriction: False (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: True (1)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
memx_equities_memoirtopofbook_sbe_v1_1.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.short_sale_restriction.size

-- Display: Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: BooleanType
  index, short_sale_restriction = memx_equities_memoirtopofbook_sbe_v1_1.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_restriction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Mpv
memx_equities_memoirtopofbook_sbe_v1_1.mpv = {}

-- Size: Mpv
memx_equities_memoirtopofbook_sbe_v1_1.mpv.size = 8

-- Display: Mpv
memx_equities_memoirtopofbook_sbe_v1_1.mpv.display = function(value)
  return "Mpv: "..value
end

-- Translate: Mpv
memx_equities_memoirtopofbook_sbe_v1_1.mpv.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mpv
memx_equities_memoirtopofbook_sbe_v1_1.mpv.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.mpv.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirtopofbook_sbe_v1_1.mpv.translate(raw)
  local display = memx_equities_memoirtopofbook_sbe_v1_1.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Is Test Symbol
memx_equities_memoirtopofbook_sbe_v1_1.is_test_symbol = {}

-- Size: Is Test Symbol
memx_equities_memoirtopofbook_sbe_v1_1.is_test_symbol.size = 1

-- Display: Is Test Symbol
memx_equities_memoirtopofbook_sbe_v1_1.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
memx_equities_memoirtopofbook_sbe_v1_1.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Round Lot
memx_equities_memoirtopofbook_sbe_v1_1.round_lot = {}

-- Size: Round Lot
memx_equities_memoirtopofbook_sbe_v1_1.round_lot.size = 4

-- Display: Round Lot
memx_equities_memoirtopofbook_sbe_v1_1.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
memx_equities_memoirtopofbook_sbe_v1_1.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.round_lot.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
memx_equities_memoirtopofbook_sbe_v1_1.symbol_sfx = {}

-- Size: Symbol Sfx
memx_equities_memoirtopofbook_sbe_v1_1.symbol_sfx.size = 6

-- Display: Symbol Sfx
memx_equities_memoirtopofbook_sbe_v1_1.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
memx_equities_memoirtopofbook_sbe_v1_1.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.symbol_sfx.size
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

  local display = memx_equities_memoirtopofbook_sbe_v1_1.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Symbol
memx_equities_memoirtopofbook_sbe_v1_1.symbol = {}

-- Size: Symbol
memx_equities_memoirtopofbook_sbe_v1_1.symbol.size = 6

-- Display: Symbol
memx_equities_memoirtopofbook_sbe_v1_1.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_equities_memoirtopofbook_sbe_v1_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.symbol.size
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

  local display = memx_equities_memoirtopofbook_sbe_v1_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message = {}

-- Size: Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.size =
  memx_equities_memoirtopofbook_sbe_v1_1.timestamp.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.security_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.symbol.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.symbol_sfx.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.round_lot.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.is_test_symbol.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.mpv.size

-- Display: Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_equities_memoirtopofbook_sbe_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = memx_equities_memoirtopofbook_sbe_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: InstrumentDirectorySymbol
  index, symbol = memx_equities_memoirtopofbook_sbe_v1_1.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: InstrumentDirectorySymbolSfx
  index, symbol_sfx = memx_equities_memoirtopofbook_sbe_v1_1.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Round Lot: uint32
  index, round_lot = memx_equities_memoirtopofbook_sbe_v1_1.round_lot.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: BooleanType
  index, is_test_symbol = memx_equities_memoirtopofbook_sbe_v1_1.is_test_symbol.dissect(buffer, index, packet, parent)

  -- Mpv: Price
  index, mpv = memx_equities_memoirtopofbook_sbe_v1_1.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.instrument_directory_message, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_equities_memoirtopofbook_sbe_v1_1.payload = {}

-- Size: Payload
memx_equities_memoirtopofbook_sbe_v1_1.payload.size = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.size
  end
  -- Size of Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.size
  end
  -- Size of Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.size
  end
  -- Size of Snapshot Complete Message
  if template_id == 4 then
    return memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.size
  end
  -- Size of Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.size
  end
  -- Size of Best Bid Offer Message
  if template_id == 10 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.size
  end
  -- Size of Best Bid Message
  if template_id == 11 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.size
  end
  -- Size of Best Offer Message
  if template_id == 12 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.size
  end
  -- Size of Best Bid Short Message
  if template_id == 13 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.size
  end
  -- Size of Best Offer Short Message
  if template_id == 14 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.size
  end
  -- Size of Clear Book Message
  if template_id == 15 then
    return memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.size
  end

  return 0
end

-- Display: Payload
memx_equities_memoirtopofbook_sbe_v1_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_equities_memoirtopofbook_sbe_v1_1.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirtopofbook_sbe_v1_1.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirtopofbook_sbe_v1_1.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirtopofbook_sbe_v1_1.security_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 4 then
    return memx_equities_memoirtopofbook_sbe_v1_1.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirtopofbook_sbe_v1_1.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Offer Message
  if template_id == 10 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Message
  if template_id == 11 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Message
  if template_id == 12 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Short Message
  if template_id == 13 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_bid_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Short Message
  if template_id == 14 then
    return memx_equities_memoirtopofbook_sbe_v1_1.best_offer_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 15 then
    return memx_equities_memoirtopofbook_sbe_v1_1.clear_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_equities_memoirtopofbook_sbe_v1_1.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_equities_memoirtopofbook_sbe_v1_1.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirtopofbook_sbe_v1_1.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirtopofbook_sbe_v1_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.payload, range, display)

  return memx_equities_memoirtopofbook_sbe_v1_1.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_equities_memoirtopofbook_sbe_v1_1.version = {}

-- Size: Version
memx_equities_memoirtopofbook_sbe_v1_1.version.size = 2

-- Display: Version
memx_equities_memoirtopofbook_sbe_v1_1.version.display = function(value)
  if value == 1 then
    return "Version: Version 1.0.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
memx_equities_memoirtopofbook_sbe_v1_1.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_equities_memoirtopofbook_sbe_v1_1.schema_id = {}

-- Size: Schema Id
memx_equities_memoirtopofbook_sbe_v1_1.schema_id.size = 1

-- Display: Schema Id
memx_equities_memoirtopofbook_sbe_v1_1.schema_id.display = function(value)
  if value == 3 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
memx_equities_memoirtopofbook_sbe_v1_1.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_equities_memoirtopofbook_sbe_v1_1.template_id = {}

-- Size: Template Id
memx_equities_memoirtopofbook_sbe_v1_1.template_id.size = 1

-- Display: Template Id
memx_equities_memoirtopofbook_sbe_v1_1.template_id.display = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_equities_memoirtopofbook_sbe_v1_1.block_length = {}

-- Size: Block Length
memx_equities_memoirtopofbook_sbe_v1_1.block_length.size = 2

-- Display: Block Length
memx_equities_memoirtopofbook_sbe_v1_1.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_equities_memoirtopofbook_sbe_v1_1.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_equities_memoirtopofbook_sbe_v1_1.sbe_header = {}

-- Size: Sbe Header
memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.size =
  memx_equities_memoirtopofbook_sbe_v1_1.block_length.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.template_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.schema_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.version.size

-- Display: Sbe Header
memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = memx_equities_memoirtopofbook_sbe_v1_1.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint8
  index, template_id = memx_equities_memoirtopofbook_sbe_v1_1.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint8
  index, schema_id = memx_equities_memoirtopofbook_sbe_v1_1.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = memx_equities_memoirtopofbook_sbe_v1_1.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sbe_header, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_equities_memoirtopofbook_sbe_v1_1.sbe_message = {}

-- Calculate size of: Sbe Message
memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_equities_memoirtopofbook_sbe_v1_1.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_equities_memoirtopofbook_sbe_v1_1.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 11 branches
  index = memx_equities_memoirtopofbook_sbe_v1_1.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sbe_message, range, display)
  end

  return memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.fields(buffer, offset, packet, parent)
end

-- Message Length
memx_equities_memoirtopofbook_sbe_v1_1.message_length = {}

-- Size: Message Length
memx_equities_memoirtopofbook_sbe_v1_1.message_length.size = 2

-- Display: Message Length
memx_equities_memoirtopofbook_sbe_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_equities_memoirtopofbook_sbe_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
memx_equities_memoirtopofbook_sbe_v1_1.message = {}

-- Calculate size of: Message
memx_equities_memoirtopofbook_sbe_v1_1.message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirtopofbook_sbe_v1_1.message_length.size

  index = index + memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Message
memx_equities_memoirtopofbook_sbe_v1_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_equities_memoirtopofbook_sbe_v1_1.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_equities_memoirtopofbook_sbe_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memoirtopofbook_sbe_v1_1.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
memx_equities_memoirtopofbook_sbe_v1_1.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = memx_equities_memoirtopofbook_sbe_v1_1.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.message, range, display)
  end

  return memx_equities_memoirtopofbook_sbe_v1_1.message.fields(buffer, offset, packet, parent)
end

-- Message Count
memx_equities_memoirtopofbook_sbe_v1_1.message_count = {}

-- Size: Message Count
memx_equities_memoirtopofbook_sbe_v1_1.message_count.size = 2

-- Display: Message Count
memx_equities_memoirtopofbook_sbe_v1_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_equities_memoirtopofbook_sbe_v1_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message = {}

-- Size: Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_equities_memoirtopofbook_sbe_v1_1.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = memx_equities_memoirtopofbook_sbe_v1_1.message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sequenced_message, range, display)
  end

  return memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages = {}

-- Size: Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirtopofbook_sbe_v1_1.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sequenced_messages, range, display)

  return memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
memx_equities_memoirtopofbook_sbe_v1_1.sequence_number = {}

-- Size: Sequence Number
memx_equities_memoirtopofbook_sbe_v1_1.sequence_number.size = 8

-- Display: Sequence Number
memx_equities_memoirtopofbook_sbe_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_equities_memoirtopofbook_sbe_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
memx_equities_memoirtopofbook_sbe_v1_1.session_id = {}

-- Size: Session Id
memx_equities_memoirtopofbook_sbe_v1_1.session_id.size = 8

-- Display: Session Id
memx_equities_memoirtopofbook_sbe_v1_1.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_equities_memoirtopofbook_sbe_v1_1.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
memx_equities_memoirtopofbook_sbe_v1_1.header_length = {}

-- Size: Header Length
memx_equities_memoirtopofbook_sbe_v1_1.header_length.size = 1

-- Display: Header Length
memx_equities_memoirtopofbook_sbe_v1_1.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_equities_memoirtopofbook_sbe_v1_1.header_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_equities_memoirtopofbook_sbe_v1_1.message_type = {}

-- Size: Message Type
memx_equities_memoirtopofbook_sbe_v1_1.message_type.size = 1

-- Display: Message Type
memx_equities_memoirtopofbook_sbe_v1_1.message_type.display = function(value)
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
memx_equities_memoirtopofbook_sbe_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirtopofbook_sbe_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirtopofbook_sbe_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_equities_memoirtopofbook_sbe_v1_1.common_header = {}

-- Size: Common Header
memx_equities_memoirtopofbook_sbe_v1_1.common_header.size =
  memx_equities_memoirtopofbook_sbe_v1_1.message_type.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.header_length.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.session_id.size + 
  memx_equities_memoirtopofbook_sbe_v1_1.sequence_number.size

-- Display: Common Header
memx_equities_memoirtopofbook_sbe_v1_1.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_equities_memoirtopofbook_sbe_v1_1.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_equities_memoirtopofbook_sbe_v1_1.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_equities_memoirtopofbook_sbe_v1_1.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memoirtopofbook_sbe_v1_1.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_equities_memoirtopofbook_sbe_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_equities_memoirtopofbook_sbe_v1_1.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1.fields.common_header, buffer(offset, 0))
    local index = memx_equities_memoirtopofbook_sbe_v1_1.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirtopofbook_sbe_v1_1.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirtopofbook_sbe_v1_1.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_equities_memoirtopofbook_sbe_v1_1.packet = {}

-- Dissect Packet
memx_equities_memoirtopofbook_sbe_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_equities_memoirtopofbook_sbe_v1_1.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = memx_equities_memoirtopofbook_sbe_v1_1.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_equities_memoirtopofbook_sbe_v1_1.init()
end

-- Dissector for Memx Equities MemoirTopOfBook Sbe 1.1
function omi_memx_equities_memoirtopofbook_sbe_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_equities_memoirtopofbook_sbe_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_equities_memoirtopofbook_sbe_v1_1, buffer(), omi_memx_equities_memoirtopofbook_sbe_v1_1.description, "("..buffer:len().." Bytes)")
  return memx_equities_memoirtopofbook_sbe_v1_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_memx_equities_memoirtopofbook_sbe_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_equities_memoirtopofbook_sbe_v1_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Memx Equities MemoirTopOfBook Sbe 1.1
local function omi_memx_equities_memoirtopofbook_sbe_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_equities_memoirtopofbook_sbe_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_equities_memoirtopofbook_sbe_v1_1
  omi_memx_equities_memoirtopofbook_sbe_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities MemoirTopOfBook Sbe 1.1
omi_memx_equities_memoirtopofbook_sbe_v1_1:register_heuristic("udp", omi_memx_equities_memoirtopofbook_sbe_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
