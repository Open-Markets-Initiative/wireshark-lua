-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- 24X Equities MemoirTopOfBook Sbe 1.3 Protocol
local omi_n24x_equities_memoirtopofbook_sbe_v1_3 = Proto("24X.Equities.MemoirTopOfBook.Sbe.v1.3.Lua", "24X Equities MemoirTopOfBook Sbe 1.3")

-- Protocol table
local n24x_equities_memoirtopofbook_sbe_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- 24X Equities MemoirTopOfBook Sbe 1.3 Fields
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "24x.equities.memoirtopofbook.sbe.v1.3.asofsequencenumber", ftypes.UINT64)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.bid_price = ProtoField.new("Bid Price", "24x.equities.memoirtopofbook.sbe.v1.3.bidprice", ftypes.DOUBLE)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.bid_price_short = ProtoField.new("Bid Price Short", "24x.equities.memoirtopofbook.sbe.v1.3.bidpriceshort", ftypes.DOUBLE)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.bid_size = ProtoField.new("Bid Size", "24x.equities.memoirtopofbook.sbe.v1.3.bidsize", ftypes.UINT32)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.bid_size_short = ProtoField.new("Bid Size Short", "24x.equities.memoirtopofbook.sbe.v1.3.bidsizeshort", ftypes.UINT16)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "24x.equities.memoirtopofbook.sbe.v1.3.blocklength", ftypes.UINT16)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.common_header = ProtoField.new("Common Header", "24x.equities.memoirtopofbook.sbe.v1.3.commonheader", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.header_length = ProtoField.new("Header Length", "24x.equities.memoirtopofbook.sbe.v1.3.headerlength", ftypes.UINT8)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "24x.equities.memoirtopofbook.sbe.v1.3.istestsymbol", ftypes.UINT8)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message = ProtoField.new("Message", "24x.equities.memoirtopofbook.sbe.v1.3.message", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "24x.equities.memoirtopofbook.sbe.v1.3.messagecount", ftypes.UINT16)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "24x.equities.memoirtopofbook.sbe.v1.3.messagelength", ftypes.UINT16)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message_type = ProtoField.new("Message Type", "24x.equities.memoirtopofbook.sbe.v1.3.messagetype", ftypes.UINT8)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.mpv = ProtoField.new("Mpv", "24x.equities.memoirtopofbook.sbe.v1.3.mpv", ftypes.DOUBLE)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.offer_price = ProtoField.new("Offer Price", "24x.equities.memoirtopofbook.sbe.v1.3.offerprice", ftypes.DOUBLE)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.offer_price_short = ProtoField.new("Offer Price Short", "24x.equities.memoirtopofbook.sbe.v1.3.offerpriceshort", ftypes.DOUBLE)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.offer_size = ProtoField.new("Offer size", "24x.equities.memoirtopofbook.sbe.v1.3.offersize", ftypes.UINT32)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.offer_size_uint_16 = ProtoField.new("Offer Size uint 16", "24x.equities.memoirtopofbook.sbe.v1.3.offersizeuint16", ftypes.UINT16)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.packet = ProtoField.new("Packet", "24x.equities.memoirtopofbook.sbe.v1.3.packet", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.payload = ProtoField.new("Payload", "24x.equities.memoirtopofbook.sbe.v1.3.payload", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.round_lot = ProtoField.new("Round Lot", "24x.equities.memoirtopofbook.sbe.v1.3.roundlot", ftypes.UINT32)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sbe_header = ProtoField.new("Sbe Header", "24x.equities.memoirtopofbook.sbe.v1.3.sbeheader", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "24x.equities.memoirtopofbook.sbe.v1.3.sbemessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "24x.equities.memoirtopofbook.sbe.v1.3.schemaid", ftypes.UINT8)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.security_id = ProtoField.new("Security Id", "24x.equities.memoirtopofbook.sbe.v1.3.securityid", ftypes.UINT16)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status = ProtoField.new("Security Trading Status", "24x.equities.memoirtopofbook.sbe.v1.3.securitytradingstatus", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "24x.equities.memoirtopofbook.sbe.v1.3.securitytradingstatusreason", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "24x.equities.memoirtopofbook.sbe.v1.3.sequencenumber", ftypes.UINT64)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "24x.equities.memoirtopofbook.sbe.v1.3.sequencedmessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "24x.equities.memoirtopofbook.sbe.v1.3.sequencedmessages", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.session_id = ProtoField.new("Session Id", "24x.equities.memoirtopofbook.sbe.v1.3.sessionid", ftypes.UINT64)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "24x.equities.memoirtopofbook.sbe.v1.3.shortsalerestriction", ftypes.UINT8)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "24x.equities.memoirtopofbook.sbe.v1.3.symbol", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "24x.equities.memoirtopofbook.sbe.v1.3.symbolsfx", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "24x.equities.memoirtopofbook.sbe.v1.3.templateid", ftypes.UINT8)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "24x.equities.memoirtopofbook.sbe.v1.3.timestamp", ftypes.UINT64)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "24x.equities.memoirtopofbook.sbe.v1.3.tradingsession", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.version = ProtoField.new("Version", "24x.equities.memoirtopofbook.sbe.v1.3.version", ftypes.UINT16)

-- 24X Equities Sbe MemoirTopOfBook 1.3 Application Messages
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_message = ProtoField.new("Best Bid Message", "24x.equities.memoirtopofbook.sbe.v1.3.bestbidmessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_offer_message = ProtoField.new("Best Bid Offer Message", "24x.equities.memoirtopofbook.sbe.v1.3.bestbidoffermessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_short_message = ProtoField.new("Best Bid Short Message", "24x.equities.memoirtopofbook.sbe.v1.3.bestbidshortmessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_offer_message = ProtoField.new("Best Offer Message", "24x.equities.memoirtopofbook.sbe.v1.3.bestoffermessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_offer_short_message = ProtoField.new("Best Offer Short Message", "24x.equities.memoirtopofbook.sbe.v1.3.bestoffershortmessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.clear_book_message = ProtoField.new("Clear Book Message", "24x.equities.memoirtopofbook.sbe.v1.3.clearbookmessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "24x.equities.memoirtopofbook.sbe.v1.3.instrumentdirectorymessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "24x.equities.memoirtopofbook.sbe.v1.3.regshorestrictionmessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "24x.equities.memoirtopofbook.sbe.v1.3.securitytradingstatusmessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "24x.equities.memoirtopofbook.sbe.v1.3.snapshotcompletemessage", ftypes.STRING)
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "24x.equities.memoirtopofbook.sbe.v1.3.tradingsessionstatusmessage", ftypes.STRING)

-- 24X Equities MemoirTopOfBook Sbe 1.3 generated fields
omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message_index = ProtoField.new("Message Index", "24x.equities.memoirtopofbook.sbe.v1.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- 24X Equities MemoirTopOfBook Sbe 1.3 Element Dissection Options
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

-- Register 24X Equities MemoirTopOfBook Sbe 1.3 Show Options
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_message = Pref.bool("Show Best Bid Message", show.best_bid_message, "Parse and add Best Bid Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_offer_message = Pref.bool("Show Best Bid Offer Message", show.best_bid_offer_message, "Parse and add Best Bid Offer Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_short_message = Pref.bool("Show Best Bid Short Message", show.best_bid_short_message, "Parse and add Best Bid Short Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_message = Pref.bool("Show Best Offer Message", show.best_offer_message, "Parse and add Best Offer Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_short_message = Pref.bool("Show Best Offer Short Message", show.best_offer_short_message, "Parse and add Best Offer Short Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_security_trading_status_message = Pref.bool("Show Security Trading Status Message", show.security_trading_status_message, "Parse and add Security Trading Status Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.best_bid_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_message then
    show.best_bid_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_message
    changed = true
  end
  if show.best_bid_offer_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_offer_message then
    show.best_bid_offer_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_offer_message
    changed = true
  end
  if show.best_bid_short_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_short_message then
    show.best_bid_short_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_bid_short_message
    changed = true
  end
  if show.best_offer_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_message then
    show.best_offer_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_message
    changed = true
  end
  if show.best_offer_short_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_short_message then
    show.best_offer_short_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_best_offer_short_message
    changed = true
  end
  if show.clear_book_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_clear_book_message then
    show.clear_book_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_common_header then
    show.common_header = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_common_header
    changed = true
  end
  if show.instrument_directory_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_message then
    show.message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_packet then
    show.packet = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.reg_sho_restriction_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.sbe_header ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_header then
    show.sbe_header = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.security_trading_status_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_security_trading_status_message then
    show.security_trading_status_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_security_trading_status_message
    changed = true
  end
  if show.sequenced_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_message then
    show.sequenced_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.trading_session_status_message ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_payload then
    show.payload = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_n24x_equities_memoirtopofbook_sbe_v1_3.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect 24X Equities MemoirTopOfBook Sbe 1.3
-----------------------------------------------------------------------

-- Security Id
n24x_equities_memoirtopofbook_sbe_v1_3.security_id = {}

-- Size: Security Id
n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size = 2

-- Display: Security Id
n24x_equities_memoirtopofbook_sbe_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Timestamp
n24x_equities_memoirtopofbook_sbe_v1_3.timestamp = {}

-- Size: Timestamp
n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size = 8

-- Display: Timestamp
n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Clear Book Message
n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message = {}

-- Size: Clear Book Message
n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size

-- Display: Clear Book Message
n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.clear_book_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short = {}

-- Size: Offer Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.size = 2

-- Display: Offer Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.translate(raw)
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Offer Size uint 16
n24x_equities_memoirtopofbook_sbe_v1_3.offer_size_uint_16 = {}

-- Size: Offer Size uint 16
n24x_equities_memoirtopofbook_sbe_v1_3.offer_size_uint_16.size = 2

-- Display: Offer Size uint 16
n24x_equities_memoirtopofbook_sbe_v1_3.offer_size_uint_16.display = function(value)
  return "Offer Size uint 16: "..value
end

-- Dissect: Offer Size uint 16
n24x_equities_memoirtopofbook_sbe_v1_3.offer_size_uint_16.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.offer_size_uint_16.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.offer_size_uint_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.offer_size_uint_16, range, value, display)

  return offset + length, value
end

-- Best Offer Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message = {}

-- Size: Best Offer Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.offer_size_uint_16.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.size

-- Display: Best Offer Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Offer Size uint 16: uint16
  index, offer_size_uint_16 = n24x_equities_memoirtopofbook_sbe_v1_3.offer_size_uint_16.dissect(buffer, index, packet, parent)

  -- Offer Price Short: ShortPrice
  index, offer_price_short = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.dissect = function(buffer, offset, packet, parent)
  if show.best_offer_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_offer_short_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short = {}

-- Size: Bid Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.size = 2

-- Display: Bid Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.translate(raw)
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_size_short = {}

-- Size: Bid Size Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_size_short.size = 2

-- Display: Bid Size Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
n24x_equities_memoirtopofbook_sbe_v1_3.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Best Bid Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message = {}

-- Size: Best Bid Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.bid_size_short.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.size

-- Display: Best Bid Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size Short: uint16
  index, bid_size_short = n24x_equities_memoirtopofbook_sbe_v1_3.bid_size_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: ShortPrice
  index, bid_price_short = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Short Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_short_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Price
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price = {}

-- Size: Offer Price
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.size = 8

-- Display: Offer Price
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price
n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.translate(raw)
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer size
n24x_equities_memoirtopofbook_sbe_v1_3.offer_size = {}

-- Size: Offer size
n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.size = 4

-- Display: Offer size
n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.display = function(value)
  return "Offer size: "..value
end

-- Dissect: Offer size
n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Best Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message = {}

-- Size: Best Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.size

-- Display: Best Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Offer size: uint32
  index, offer_size = n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Price: Price
  index, offer_price = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.best_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_offer_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price = {}

-- Size: Bid Price
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.size = 8

-- Display: Bid Price
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.translate(raw)
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
n24x_equities_memoirtopofbook_sbe_v1_3.bid_size = {}

-- Size: Bid Size
n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.size = 4

-- Display: Bid Size
n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Best Bid Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message = {}

-- Size: Best Bid Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.size

-- Display: Best Bid Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size: uint32
  index, bid_size = n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message = {}

-- Size: Best Bid Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.size

-- Display: Best Bid Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size: uint32
  index, bid_size = n24x_equities_memoirtopofbook_sbe_v1_3.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = n24x_equities_memoirtopofbook_sbe_v1_3.bid_price.dissect(buffer, index, packet, parent)

  -- Offer size: uint32
  index, offer_size = n24x_equities_memoirtopofbook_sbe_v1_3.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Price: Price
  index, offer_price = n24x_equities_memoirtopofbook_sbe_v1_3.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Offer Message
n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.best_bid_offer_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session = {}

-- Size: Trading Session
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session.size = 1

-- Display: Trading Session
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session.display = function(value)
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
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memoirtopofbook_sbe_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Trading Session Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message = {}

-- Size: Trading Session Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.trading_session.size

-- Display: Trading Session Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: TradingSessionType
  index, trading_session = n24x_equities_memoirtopofbook_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.trading_session_status_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- As Of Sequence Number
n24x_equities_memoirtopofbook_sbe_v1_3.as_of_sequence_number = {}

-- Size: As Of Sequence Number
n24x_equities_memoirtopofbook_sbe_v1_3.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
n24x_equities_memoirtopofbook_sbe_v1_3.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
n24x_equities_memoirtopofbook_sbe_v1_3.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Snapshot Complete Message
n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.as_of_sequence_number.size

-- Display: Snapshot Complete Message
n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: uint64
  index, as_of_sequence_number = n24x_equities_memoirtopofbook_sbe_v1_3.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.snapshot_complete_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Reason
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_reason = {}

-- Size: Security Trading Status Reason
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_reason.size = 1

-- Display: Security Trading Status Reason
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_reason.display = function(value)
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
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Security Trading Status
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status = {}

-- Size: Security Trading Status
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status.size = 1

-- Display: Security Trading Status
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status.display = function(value)
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
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message = {}

-- Size: Security Trading Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_reason.size

-- Display: Security Trading Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatusType
  index, security_trading_status = n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status Reason: SecurityTradingStatusReasonType
  index, security_trading_status_reason = n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.security_trading_status_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Restriction
n24x_equities_memoirtopofbook_sbe_v1_3.short_sale_restriction = {}

-- Size: Short Sale Restriction
n24x_equities_memoirtopofbook_sbe_v1_3.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
n24x_equities_memoirtopofbook_sbe_v1_3.short_sale_restriction.display = function(value)
  if value == 0 then
    return "Short Sale Restriction: False (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: True (1)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
n24x_equities_memoirtopofbook_sbe_v1_3.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Reg Sho Restriction Message
n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.short_sale_restriction.size

-- Display: Reg Sho Restriction Message
n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: BooleanType
  index, short_sale_restriction = n24x_equities_memoirtopofbook_sbe_v1_3.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_restriction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Mpv
n24x_equities_memoirtopofbook_sbe_v1_3.mpv = {}

-- Size: Mpv
n24x_equities_memoirtopofbook_sbe_v1_3.mpv.size = 8

-- Display: Mpv
n24x_equities_memoirtopofbook_sbe_v1_3.mpv.display = function(value)
  return "Mpv: "..value
end

-- Translate: Mpv
n24x_equities_memoirtopofbook_sbe_v1_3.mpv.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mpv
n24x_equities_memoirtopofbook_sbe_v1_3.mpv.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.mpv.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_equities_memoirtopofbook_sbe_v1_3.mpv.translate(raw)
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.mpv, range, value, display)

  return offset + length, value
end

-- Is Test Symbol
n24x_equities_memoirtopofbook_sbe_v1_3.is_test_symbol = {}

-- Size: Is Test Symbol
n24x_equities_memoirtopofbook_sbe_v1_3.is_test_symbol.size = 1

-- Display: Is Test Symbol
n24x_equities_memoirtopofbook_sbe_v1_3.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
n24x_equities_memoirtopofbook_sbe_v1_3.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Round Lot
n24x_equities_memoirtopofbook_sbe_v1_3.round_lot = {}

-- Size: Round Lot
n24x_equities_memoirtopofbook_sbe_v1_3.round_lot.size = 4

-- Display: Round Lot
n24x_equities_memoirtopofbook_sbe_v1_3.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
n24x_equities_memoirtopofbook_sbe_v1_3.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.round_lot.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
n24x_equities_memoirtopofbook_sbe_v1_3.symbol_sfx = {}

-- Size: Symbol Sfx
n24x_equities_memoirtopofbook_sbe_v1_3.symbol_sfx.size = 6

-- Display: Symbol Sfx
n24x_equities_memoirtopofbook_sbe_v1_3.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
n24x_equities_memoirtopofbook_sbe_v1_3.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.symbol_sfx.size
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

  local display = n24x_equities_memoirtopofbook_sbe_v1_3.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Symbol
n24x_equities_memoirtopofbook_sbe_v1_3.symbol = {}

-- Size: Symbol
n24x_equities_memoirtopofbook_sbe_v1_3.symbol.size = 6

-- Display: Symbol
n24x_equities_memoirtopofbook_sbe_v1_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
n24x_equities_memoirtopofbook_sbe_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.symbol.size
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

  local display = n24x_equities_memoirtopofbook_sbe_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message = {}

-- Size: Instrument Directory Message
n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.security_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.symbol.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.symbol_sfx.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.round_lot.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.is_test_symbol.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.mpv.size

-- Display: Instrument Directory Message
n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_equities_memoirtopofbook_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_equities_memoirtopofbook_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: InstrumentDirectorySymbol
  index, symbol = n24x_equities_memoirtopofbook_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: InstrumentDirectorySymbolSfx
  index, symbol_sfx = n24x_equities_memoirtopofbook_sbe_v1_3.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Round Lot: uint32
  index, round_lot = n24x_equities_memoirtopofbook_sbe_v1_3.round_lot.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: BooleanType
  index, is_test_symbol = n24x_equities_memoirtopofbook_sbe_v1_3.is_test_symbol.dissect(buffer, index, packet, parent)

  -- Mpv: Price
  index, mpv = n24x_equities_memoirtopofbook_sbe_v1_3.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
n24x_equities_memoirtopofbook_sbe_v1_3.payload = {}

-- Size: Payload
n24x_equities_memoirtopofbook_sbe_v1_3.payload.size = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.size
  end
  -- Size of Reg Sho Restriction Message
  if template_id == 2 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.size
  end
  -- Size of Security Trading Status Message
  if template_id == 3 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.size
  end
  -- Size of Snapshot Complete Message
  if template_id == 4 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.size
  end
  -- Size of Trading Session Status Message
  if template_id == 5 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.size
  end
  -- Size of Best Bid Offer Message
  if template_id == 10 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.size
  end
  -- Size of Best Bid Message
  if template_id == 11 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.size
  end
  -- Size of Best Offer Message
  if template_id == 12 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.size
  end
  -- Size of Best Bid Short Message
  if template_id == 13 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.size
  end
  -- Size of Best Offer Short Message
  if template_id == 14 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.size
  end
  -- Size of Clear Book Message
  if template_id == 15 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.size
  end

  return 0
end

-- Display: Payload
n24x_equities_memoirtopofbook_sbe_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
n24x_equities_memoirtopofbook_sbe_v1_3.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.security_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 4 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Offer Message
  if template_id == 10 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Message
  if template_id == 11 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Message
  if template_id == 12 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Short Message
  if template_id == 13 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_bid_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Short Message
  if template_id == 14 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.best_offer_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 15 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.clear_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
n24x_equities_memoirtopofbook_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return n24x_equities_memoirtopofbook_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = n24x_equities_memoirtopofbook_sbe_v1_3.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.payload, range, display)

  return n24x_equities_memoirtopofbook_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
n24x_equities_memoirtopofbook_sbe_v1_3.version = {}

-- Size: Version
n24x_equities_memoirtopofbook_sbe_v1_3.version.size = 2

-- Display: Version
n24x_equities_memoirtopofbook_sbe_v1_3.version.display = function(value)
  if value == 259 then
    return "Version: Version 1.3"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
n24x_equities_memoirtopofbook_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
n24x_equities_memoirtopofbook_sbe_v1_3.schema_id = {}

-- Size: Schema Id
n24x_equities_memoirtopofbook_sbe_v1_3.schema_id.size = 1

-- Display: Schema Id
n24x_equities_memoirtopofbook_sbe_v1_3.schema_id.display = function(value)
  if value == 3 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
n24x_equities_memoirtopofbook_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
n24x_equities_memoirtopofbook_sbe_v1_3.template_id = {}

-- Size: Template Id
n24x_equities_memoirtopofbook_sbe_v1_3.template_id.size = 1

-- Display: Template Id
n24x_equities_memoirtopofbook_sbe_v1_3.template_id.display = function(value)
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
n24x_equities_memoirtopofbook_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
n24x_equities_memoirtopofbook_sbe_v1_3.block_length = {}

-- Size: Block Length
n24x_equities_memoirtopofbook_sbe_v1_3.block_length.size = 2

-- Display: Block Length
n24x_equities_memoirtopofbook_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
n24x_equities_memoirtopofbook_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header = {}

-- Size: Sbe Header
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.block_length.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.template_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.schema_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.version.size

-- Display: Sbe Header
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = n24x_equities_memoirtopofbook_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint8
  index, template_id = n24x_equities_memoirtopofbook_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint8
  index, schema_id = n24x_equities_memoirtopofbook_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = n24x_equities_memoirtopofbook_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sbe_header, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_message = {}

-- Display: Sbe Message
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = n24x_equities_memoirtopofbook_sbe_v1_3.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 11 branches
  index = n24x_equities_memoirtopofbook_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
n24x_equities_memoirtopofbook_sbe_v1_3.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sbe_message, buffer(offset, 0))
    local current = n24x_equities_memoirtopofbook_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    n24x_equities_memoirtopofbook_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Message Length
n24x_equities_memoirtopofbook_sbe_v1_3.message_length = {}

-- Size: Message Length
n24x_equities_memoirtopofbook_sbe_v1_3.message_length.size = 2

-- Display: Message Length
n24x_equities_memoirtopofbook_sbe_v1_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
n24x_equities_memoirtopofbook_sbe_v1_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
n24x_equities_memoirtopofbook_sbe_v1_3.message = {}

-- Display: Message
n24x_equities_memoirtopofbook_sbe_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
n24x_equities_memoirtopofbook_sbe_v1_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = n24x_equities_memoirtopofbook_sbe_v1_3.message_length.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = n24x_equities_memoirtopofbook_sbe_v1_3.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Message
n24x_equities_memoirtopofbook_sbe_v1_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message, buffer(offset, 0))
    local current = n24x_equities_memoirtopofbook_sbe_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    n24x_equities_memoirtopofbook_sbe_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
n24x_equities_memoirtopofbook_sbe_v1_3.message_count = {}

-- Size: Message Count
n24x_equities_memoirtopofbook_sbe_v1_3.message_count.size = 2

-- Display: Message Count
n24x_equities_memoirtopofbook_sbe_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
n24x_equities_memoirtopofbook_sbe_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message = {}

-- Calculate size of: Sequenced Message
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memoirtopofbook_sbe_v1_3.message_count.size

  -- Parse runtime size of: Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = n24x_equities_memoirtopofbook_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = n24x_equities_memoirtopofbook_sbe_v1_3.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end

-- Dissect: Sequenced Message
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sequenced_message, range, display)
  end

  return n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages = {}

-- Size: Sequenced Messages
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sequenced_messages, range, display)

  return n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
n24x_equities_memoirtopofbook_sbe_v1_3.sequence_number = {}

-- Size: Sequence Number
n24x_equities_memoirtopofbook_sbe_v1_3.sequence_number.size = 8

-- Display: Sequence Number
n24x_equities_memoirtopofbook_sbe_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
n24x_equities_memoirtopofbook_sbe_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
n24x_equities_memoirtopofbook_sbe_v1_3.session_id = {}

-- Size: Session Id
n24x_equities_memoirtopofbook_sbe_v1_3.session_id.size = 8

-- Display: Session Id
n24x_equities_memoirtopofbook_sbe_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
n24x_equities_memoirtopofbook_sbe_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
n24x_equities_memoirtopofbook_sbe_v1_3.header_length = {}

-- Size: Header Length
n24x_equities_memoirtopofbook_sbe_v1_3.header_length.size = 1

-- Display: Header Length
n24x_equities_memoirtopofbook_sbe_v1_3.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
n24x_equities_memoirtopofbook_sbe_v1_3.header_length.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
n24x_equities_memoirtopofbook_sbe_v1_3.message_type = {}

-- Size: Message Type
n24x_equities_memoirtopofbook_sbe_v1_3.message_type.size = 1

-- Display: Message Type
n24x_equities_memoirtopofbook_sbe_v1_3.message_type.display = function(value)
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
n24x_equities_memoirtopofbook_sbe_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memoirtopofbook_sbe_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memoirtopofbook_sbe_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
n24x_equities_memoirtopofbook_sbe_v1_3.common_header = {}

-- Size: Common Header
n24x_equities_memoirtopofbook_sbe_v1_3.common_header.size =
  n24x_equities_memoirtopofbook_sbe_v1_3.message_type.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.header_length.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.session_id.size + 
  n24x_equities_memoirtopofbook_sbe_v1_3.sequence_number.size

-- Display: Common Header
n24x_equities_memoirtopofbook_sbe_v1_3.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
n24x_equities_memoirtopofbook_sbe_v1_3.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = n24x_equities_memoirtopofbook_sbe_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = n24x_equities_memoirtopofbook_sbe_v1_3.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memoirtopofbook_sbe_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = n24x_equities_memoirtopofbook_sbe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
n24x_equities_memoirtopofbook_sbe_v1_3.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3.fields.common_header, buffer(offset, 0))
    local index = n24x_equities_memoirtopofbook_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memoirtopofbook_sbe_v1_3.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memoirtopofbook_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
n24x_equities_memoirtopofbook_sbe_v1_3.packet = {}

-- Dissect Packet
n24x_equities_memoirtopofbook_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = n24x_equities_memoirtopofbook_sbe_v1_3.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = n24x_equities_memoirtopofbook_sbe_v1_3.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_n24x_equities_memoirtopofbook_sbe_v1_3.init()
end

-- Dissector for 24X Equities MemoirTopOfBook Sbe 1.3
function omi_n24x_equities_memoirtopofbook_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_n24x_equities_memoirtopofbook_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_n24x_equities_memoirtopofbook_sbe_v1_3, buffer(), omi_n24x_equities_memoirtopofbook_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return n24x_equities_memoirtopofbook_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_n24x_equities_memoirtopofbook_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
n24x_equities_memoirtopofbook_sbe_v1_3.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for 24X Equities MemoirTopOfBook Sbe 1.3
local function omi_n24x_equities_memoirtopofbook_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not n24x_equities_memoirtopofbook_sbe_v1_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_n24x_equities_memoirtopofbook_sbe_v1_3
  omi_n24x_equities_memoirtopofbook_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for 24X Equities MemoirTopOfBook Sbe 1.3
omi_n24x_equities_memoirtopofbook_sbe_v1_3:register_heuristic("udp", omi_n24x_equities_memoirtopofbook_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: 24 Exchange
--   Version: 1.3
--   Date: Monday, September 1, 2025
--   Specification: memoir-top-of-book-feed-v1_3.pdf
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
