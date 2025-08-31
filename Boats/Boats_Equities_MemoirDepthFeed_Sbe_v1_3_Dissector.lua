-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Boats Equities MemoirDepthFeed Sbe 1.3 Protocol
local omi_boats_equities_memoirdepthfeed_sbe_v1_3 = Proto("Boats.Equities.MemoirDepthFeed.Sbe.v1.3.Lua", "Boats Equities MemoirDepthFeed Sbe 1.3")

-- Protocol table
local boats_equities_memoirdepthfeed_sbe_v1_3 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Boats Equities MemoirDepthFeed Sbe 1.3 Fields
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "boats.equities.memoirdepthfeed.sbe.v1.3.asofsequencenumber", ftypes.UINT64)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "boats.equities.memoirdepthfeed.sbe.v1.3.blocklength", ftypes.UINT16)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.common_header = ProtoField.new("Common Header", "boats.equities.memoirdepthfeed.sbe.v1.3.commonheader", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_price = ProtoField.new("Corrected Price", "boats.equities.memoirdepthfeed.sbe.v1.3.correctedprice", ftypes.DOUBLE)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_quantity = ProtoField.new("Corrected Quantity", "boats.equities.memoirdepthfeed.sbe.v1.3.correctedquantity", ftypes.UINT32)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.header_length = ProtoField.new("Header Length", "boats.equities.memoirdepthfeed.sbe.v1.3.headerlength", ftypes.UINT8)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "boats.equities.memoirdepthfeed.sbe.v1.3.istestsymbol", ftypes.UINT8)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message = ProtoField.new("Message", "boats.equities.memoirdepthfeed.sbe.v1.3.message", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "boats.equities.memoirdepthfeed.sbe.v1.3.messagecount", ftypes.UINT16)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "boats.equities.memoirdepthfeed.sbe.v1.3.messagelength", ftypes.UINT16)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message_type = ProtoField.new("Message Type", "boats.equities.memoirdepthfeed.sbe.v1.3.messagetype", ftypes.UINT8)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.mpv = ProtoField.new("Mpv", "boats.equities.memoirdepthfeed.sbe.v1.3.mpv", ftypes.DOUBLE)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_id = ProtoField.new("Order Id", "boats.equities.memoirdepthfeed.sbe.v1.3.orderid", ftypes.UINT64)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.original_price = ProtoField.new("Original Price", "boats.equities.memoirdepthfeed.sbe.v1.3.originalprice", ftypes.DOUBLE)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.original_quantity = ProtoField.new("Original Quantity", "boats.equities.memoirdepthfeed.sbe.v1.3.originalquantity", ftypes.UINT32)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.packet = ProtoField.new("Packet", "boats.equities.memoirdepthfeed.sbe.v1.3.packet", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.payload = ProtoField.new("Payload", "boats.equities.memoirdepthfeed.sbe.v1.3.payload", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.price = ProtoField.new("Price", "boats.equities.memoirdepthfeed.sbe.v1.3.price", ftypes.DOUBLE)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.quantity = ProtoField.new("Quantity", "boats.equities.memoirdepthfeed.sbe.v1.3.quantity", ftypes.UINT32)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.reserved = ProtoField.new("Reserved", "boats.equities.memoirdepthfeed.sbe.v1.3.reserved", ftypes.UINT8)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.round_lot = ProtoField.new("Round Lot", "boats.equities.memoirdepthfeed.sbe.v1.3.roundlot", ftypes.UINT32)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sbe_header = ProtoField.new("Sbe Header", "boats.equities.memoirdepthfeed.sbe.v1.3.sbeheader", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "boats.equities.memoirdepthfeed.sbe.v1.3.sbemessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "boats.equities.memoirdepthfeed.sbe.v1.3.schemaid", ftypes.UINT8)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.security_id = ProtoField.new("Security Id", "boats.equities.memoirdepthfeed.sbe.v1.3.securityid", ftypes.UINT16)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status = ProtoField.new("Security Trading Status", "boats.equities.memoirdepthfeed.sbe.v1.3.securitytradingstatus", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "boats.equities.memoirdepthfeed.sbe.v1.3.securitytradingstatusreason", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "boats.equities.memoirdepthfeed.sbe.v1.3.sequencenumber", ftypes.UINT64)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "boats.equities.memoirdepthfeed.sbe.v1.3.sequencedmessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "boats.equities.memoirdepthfeed.sbe.v1.3.sequencedmessages", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.session_id = ProtoField.new("Session Id", "boats.equities.memoirdepthfeed.sbe.v1.3.sessionid", ftypes.UINT64)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "boats.equities.memoirdepthfeed.sbe.v1.3.shortsalerestriction", ftypes.UINT8)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.side = ProtoField.new("Side", "boats.equities.memoirdepthfeed.sbe.v1.3.side", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "boats.equities.memoirdepthfeed.sbe.v1.3.symbol", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "boats.equities.memoirdepthfeed.sbe.v1.3.symbolsfx", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "boats.equities.memoirdepthfeed.sbe.v1.3.templateid", ftypes.UINT8)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.time = ProtoField.new("Time", "boats.equities.memoirdepthfeed.sbe.v1.3.time", ftypes.UINT64)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "boats.equities.memoirdepthfeed.sbe.v1.3.timestamp", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.trade_id = ProtoField.new("Trade Id", "boats.equities.memoirdepthfeed.sbe.v1.3.tradeid", ftypes.UINT64)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "boats.equities.memoirdepthfeed.sbe.v1.3.tradingsession", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.unit = ProtoField.new("Unit", "boats.equities.memoirdepthfeed.sbe.v1.3.unit", ftypes.UINT8)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.version = ProtoField.new("Version", "boats.equities.memoirdepthfeed.sbe.v1.3.version", ftypes.UINT16)

-- Boats Equities MemoirDepthFeed Sbe 1.3 messages
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "boats.equities.memoirdepthfeed.sbe.v1.3.brokentrademessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.clear_book_message = ProtoField.new("Clear Book Message", "boats.equities.memoirdepthfeed.sbe.v1.3.clearbookmessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_trade_message = ProtoField.new("Corrected Trade Message", "boats.equities.memoirdepthfeed.sbe.v1.3.correctedtrademessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "boats.equities.memoirdepthfeed.sbe.v1.3.instrumentdirectorymessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_added_message = ProtoField.new("Order Added Message", "boats.equities.memoirdepthfeed.sbe.v1.3.orderaddedmessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "boats.equities.memoirdepthfeed.sbe.v1.3.orderdeletedmessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_executed_message = ProtoField.new("Order Executed Message", "boats.equities.memoirdepthfeed.sbe.v1.3.orderexecutedmessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_reduced_message = ProtoField.new("Order Reduced Message", "boats.equities.memoirdepthfeed.sbe.v1.3.orderreducedmessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "boats.equities.memoirdepthfeed.sbe.v1.3.regshorestrictionmessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "boats.equities.memoirdepthfeed.sbe.v1.3.securitytradingstatusmessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "boats.equities.memoirdepthfeed.sbe.v1.3.snapshotcompletemessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.trade_message = ProtoField.new("Trade Message", "boats.equities.memoirdepthfeed.sbe.v1.3.trademessage", ftypes.STRING)
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "boats.equities.memoirdepthfeed.sbe.v1.3.tradingsessionstatusmessage", ftypes.STRING)

-- Boats Equities MemoirDepthFeed Sbe 1.3 generated fields
omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message_index = ProtoField.new("Message Index", "boats.equities.memoirdepthfeed.sbe.v1.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Boats Equities MemoirDepthFeed Sbe 1.3 Element Dissection Options
show.broken_trade_message = true
show.clear_book_message = true
show.common_header = true
show.corrected_trade_message = true
show.instrument_directory_message = true
show.message = true
show.order_added_message = true
show.order_deleted_message = true
show.order_executed_message = true
show.order_reduced_message = true
show.packet = true
show.reg_sho_restriction_message = true
show.sbe_header = true
show.sbe_message = true
show.security_trading_status_message = true
show.sequenced_message = true
show.snapshot_complete_message = true
show.timestamp = true
show.trade_message = true
show.trading_session_status_message = true
show.payload = false
show.sequenced_messages = false

-- Register Boats Equities MemoirDepthFeed Sbe 1.3 Show Options
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_corrected_trade_message = Pref.bool("Show Corrected Trade Message", show.corrected_trade_message, "Parse and add Corrected Trade Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_added_message = Pref.bool("Show Order Added Message", show.order_added_message, "Parse and add Order Added Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_reduced_message = Pref.bool("Show Order Reduced Message", show.order_reduced_message, "Parse and add Order Reduced Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_security_trading_status_message = Pref.bool("Show Security Trading Status Message", show.security_trading_status_message, "Parse and add Security Trading Status Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_timestamp = Pref.bool("Show Timestamp", show.timestamp, "Parse and add Timestamp to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.broken_trade_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_broken_trade_message
    changed = true
  end
  if show.clear_book_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_clear_book_message then
    show.clear_book_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_common_header then
    show.common_header = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_common_header
    changed = true
  end
  if show.corrected_trade_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_corrected_trade_message then
    show.corrected_trade_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_corrected_trade_message
    changed = true
  end
  if show.instrument_directory_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_message then
    show.message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_message
    changed = true
  end
  if show.order_added_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_added_message then
    show.order_added_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_added_message
    changed = true
  end
  if show.order_deleted_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_deleted_message then
    show.order_deleted_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_executed_message then
    show.order_executed_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_executed_message
    changed = true
  end
  if show.order_reduced_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_reduced_message then
    show.order_reduced_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_reduced_message
    changed = true
  end
  if show.packet ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_packet then
    show.packet = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.reg_sho_restriction_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.sbe_header ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_header then
    show.sbe_header = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.security_trading_status_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_security_trading_status_message then
    show.security_trading_status_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_security_trading_status_message
    changed = true
  end
  if show.sequenced_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_message then
    show.sequenced_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.timestamp ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_timestamp then
    show.timestamp = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_timestamp
    changed = true
  end
  if show.trade_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trade_message then
    show.trade_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trade_message
    changed = true
  end
  if show.trading_session_status_message ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_payload then
    show.payload = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_boats_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Boats Equities MemoirDepthFeed Sbe 1.3
-----------------------------------------------------------------------

-- As Of Sequence Number
boats_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number = {}

-- Size: As Of Sequence Number
boats_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
boats_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
boats_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Unit
boats_equities_memoirdepthfeed_sbe_v1_3.unit = {}

-- Size: Unit
boats_equities_memoirdepthfeed_sbe_v1_3.unit.size = 1

-- Display: Unit
boats_equities_memoirdepthfeed_sbe_v1_3.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
boats_equities_memoirdepthfeed_sbe_v1_3.unit.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.unit.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.unit, range, value, display)

  return offset + length, value
end

-- Time
boats_equities_memoirdepthfeed_sbe_v1_3.time = {}

-- Size: Time
boats_equities_memoirdepthfeed_sbe_v1_3.time.size = 8

-- Display: Time
boats_equities_memoirdepthfeed_sbe_v1_3.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
boats_equities_memoirdepthfeed_sbe_v1_3.time.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.time, range, value, display)

  return offset + length, value
end

-- Timestamp
boats_equities_memoirdepthfeed_sbe_v1_3.timestamp = {}

-- Calculate size of: Timestamp
boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.time.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.unit.size

  return index
end

-- Display: Timestamp
boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp
boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 8 Byte Unsigned Fixed Width Integer
  index, time = boats_equities_memoirdepthfeed_sbe_v1_3.time.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = boats_equities_memoirdepthfeed_sbe_v1_3.unit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp
boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  if show.timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.timestamp, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Complete Message
boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message = {}

-- Calculate size of: Snapshot Complete Message
boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.size

  return index
end

-- Display: Snapshot Complete Message
boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, as_of_sequence_number = boats_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.snapshot_complete_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Id
boats_equities_memoirdepthfeed_sbe_v1_3.security_id = {}

-- Size: Security Id
boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size = 2

-- Display: Security Id
boats_equities_memoirdepthfeed_sbe_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Clear Book Message
boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message = {}

-- Calculate size of: Clear Book Message
boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  return index
end

-- Display: Clear Book Message
boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.clear_book_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Price
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_price = {}

-- Size: Corrected Price
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_price.size = 8

-- Display: Corrected Price
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
translate.corrected_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Price
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.corrected_price(raw)
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity = {}

-- Size: Corrected Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.size = 4

-- Display: Corrected Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.display = function(value)
  return "Corrected Quantity: "..value
end

-- Dissect: Corrected Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_quantity, range, value, display)

  return offset + length, value
end

-- Original Price
boats_equities_memoirdepthfeed_sbe_v1_3.original_price = {}

-- Size: Original Price
boats_equities_memoirdepthfeed_sbe_v1_3.original_price.size = 8

-- Display: Original Price
boats_equities_memoirdepthfeed_sbe_v1_3.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
translate.original_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Price
boats_equities_memoirdepthfeed_sbe_v1_3.original_price.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.original_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.original_price(raw)
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity = {}

-- Size: Original Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.size = 4

-- Display: Original Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.display = function(value)
  return "Original Quantity: "..value
end

-- Dissect: Original Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.original_quantity, range, value, display)

  return offset + length, value
end

-- Trade Id
boats_equities_memoirdepthfeed_sbe_v1_3.trade_id = {}

-- Size: Trade Id
boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.size = 8

-- Display: Trade Id
boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Corrected Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message = {}

-- Calculate size of: Corrected Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.original_price.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.corrected_price.size

  return index
end

-- Display: Corrected Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: 4 Byte Unsigned Fixed Width Integer
  index, original_quantity = boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: 8 Byte Unsigned Fixed Width Integer
  index, original_price = boats_equities_memoirdepthfeed_sbe_v1_3.original_price.dissect(buffer, index, packet, parent)

  -- Corrected Quantity: 4 Byte Unsigned Fixed Width Integer
  index, corrected_quantity = boats_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Price: 8 Byte Unsigned Fixed Width Integer
  index, corrected_price = boats_equities_memoirdepthfeed_sbe_v1_3.corrected_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.corrected_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_trade_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message = {}

-- Calculate size of: Broken Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.original_price.size

  return index
end

-- Display: Broken Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: 4 Byte Unsigned Fixed Width Integer
  index, original_quantity = boats_equities_memoirdepthfeed_sbe_v1_3.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: 8 Byte Unsigned Fixed Width Integer
  index, original_price = boats_equities_memoirdepthfeed_sbe_v1_3.original_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.broken_trade_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
boats_equities_memoirdepthfeed_sbe_v1_3.price = {}

-- Size: Price
boats_equities_memoirdepthfeed_sbe_v1_3.price.size = 8

-- Display: Price
boats_equities_memoirdepthfeed_sbe_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
boats_equities_memoirdepthfeed_sbe_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.price(raw)
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.quantity = {}

-- Size: Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.quantity.size = 4

-- Display: Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
boats_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.trade_message = {}

-- Calculate size of: Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.quantity.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.price.size

  return index
end

-- Display: Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = boats_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = boats_equities_memoirdepthfeed_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.trade_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
boats_equities_memoirdepthfeed_sbe_v1_3.order_id = {}

-- Size: Order Id
boats_equities_memoirdepthfeed_sbe_v1_3.order_id.size = 8

-- Display: Order Id
boats_equities_memoirdepthfeed_sbe_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
boats_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Executed Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message = {}

-- Calculate size of: Order Executed Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.order_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.quantity.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.price.size

  return index
end

-- Display: Order Executed Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = boats_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = boats_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = boats_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = boats_equities_memoirdepthfeed_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_executed_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Reduced Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message = {}

-- Calculate size of: Order Reduced Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.order_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.quantity.size

  return index
end

-- Display: Order Reduced Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reduced Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = boats_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = boats_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reduced Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_reduced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_reduced_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message = {}

-- Calculate size of: Order Deleted Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.order_id.size

  return index
end

-- Display: Order Deleted Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = boats_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_deleted_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Side
boats_equities_memoirdepthfeed_sbe_v1_3.side = {}

-- Size: Side
boats_equities_memoirdepthfeed_sbe_v1_3.side.size = 1

-- Display: Side
boats_equities_memoirdepthfeed_sbe_v1_3.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
boats_equities_memoirdepthfeed_sbe_v1_3.side.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = boats_equities_memoirdepthfeed_sbe_v1_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.side, range, value, display)

  return offset + length, value
end

-- Order Added Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message = {}

-- Calculate size of: Order Added Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.order_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.side.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.quantity.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.price.size

  return index
end

-- Display: Order Added Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = boats_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = boats_equities_memoirdepthfeed_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = boats_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = boats_equities_memoirdepthfeed_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Message
boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.order_added_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session = {}

-- Size: Trading Session
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session.size = 1

-- Display: Trading Session
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session.display = function(value)
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
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = boats_equities_memoirdepthfeed_sbe_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Trading Session Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message = {}

-- Calculate size of: Trading Session Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.trading_session.size

  return index
end

-- Display: Trading Session Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Ascii String Enum with 4 values
  index, trading_session = boats_equities_memoirdepthfeed_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.trading_session_status_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Reason
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason = {}

-- Size: Security Trading Status Reason
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.size = 1

-- Display: Security Trading Status Reason
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.display = function(value)
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
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Security Trading Status
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status = {}

-- Size: Security Trading Status
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.size = 1

-- Display: Security Trading Status
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.display = function(value)
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
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message = {}

-- Calculate size of: Security Trading Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.size

  return index
end

-- Display: Security Trading Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Ascii String Enum with 4 values
  index, security_trading_status = boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status Reason: 1 Byte Ascii String Enum with 3 values
  index, security_trading_status_reason = boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Restriction
boats_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction = {}

-- Size: Short Sale Restriction
boats_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
boats_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.display = function(value)
  if value == 0 then
    return "Short Sale Restriction: False (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: True (1)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
boats_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Reg Sho Restriction Message
boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message = {}

-- Calculate size of: Reg Sho Restriction Message
boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.size

  return index
end

-- Display: Reg Sho Restriction Message
boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, short_sale_restriction = boats_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_restriction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Mpv
boats_equities_memoirdepthfeed_sbe_v1_3.mpv = {}

-- Size: Mpv
boats_equities_memoirdepthfeed_sbe_v1_3.mpv.size = 8

-- Display: Mpv
boats_equities_memoirdepthfeed_sbe_v1_3.mpv.display = function(value)
  return "Mpv: "..value
end

-- Translate: Mpv
translate.mpv = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mpv
boats_equities_memoirdepthfeed_sbe_v1_3.mpv.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.mpv.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.mpv(raw)
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.mpv, range, value, display)

  return offset + length, value
end

-- Is Test Symbol
boats_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol = {}

-- Size: Is Test Symbol
boats_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.size = 1

-- Display: Is Test Symbol
boats_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
boats_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Reserved
boats_equities_memoirdepthfeed_sbe_v1_3.reserved = {}

-- Size: Reserved
boats_equities_memoirdepthfeed_sbe_v1_3.reserved.size = 1

-- Display: Reserved
boats_equities_memoirdepthfeed_sbe_v1_3.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
boats_equities_memoirdepthfeed_sbe_v1_3.reserved.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.reserved, range, value, display)

  return offset + length, value
end

-- Round Lot
boats_equities_memoirdepthfeed_sbe_v1_3.round_lot = {}

-- Size: Round Lot
boats_equities_memoirdepthfeed_sbe_v1_3.round_lot.size = 4

-- Display: Round Lot
boats_equities_memoirdepthfeed_sbe_v1_3.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
boats_equities_memoirdepthfeed_sbe_v1_3.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.round_lot.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
boats_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx = {}

-- Size: Symbol Sfx
boats_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.size = 6

-- Display: Symbol Sfx
boats_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
boats_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.size
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

  local display = boats_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Symbol
boats_equities_memoirdepthfeed_sbe_v1_3.symbol = {}

-- Size: Symbol
boats_equities_memoirdepthfeed_sbe_v1_3.symbol.size = 6

-- Display: Symbol
boats_equities_memoirdepthfeed_sbe_v1_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
boats_equities_memoirdepthfeed_sbe_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.symbol.size
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

  local display = boats_equities_memoirdepthfeed_sbe_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message = {}

-- Calculate size of: Instrument Directory Message
boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.size(buffer, offset + index)

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.security_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.symbol.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.round_lot.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.reserved.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.mpv.size

  return index
end

-- Display: Instrument Directory Message
boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = boats_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = boats_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = boats_equities_memoirdepthfeed_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = boats_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Round Lot: 4 Byte Unsigned Fixed Width Integer
  index, round_lot = boats_equities_memoirdepthfeed_sbe_v1_3.round_lot.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = boats_equities_memoirdepthfeed_sbe_v1_3.reserved.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, is_test_symbol = boats_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.dissect(buffer, index, packet, parent)

  -- Mpv: 8 Byte Unsigned Fixed Width Integer
  index, mpv = boats_equities_memoirdepthfeed_sbe_v1_3.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
boats_equities_memoirdepthfeed_sbe_v1_3.payload = {}

-- Calculate runtime size of: Payload
boats_equities_memoirdepthfeed_sbe_v1_3.payload.size = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.size(buffer, offset)
  end
  -- Size of Reg Sho Restriction Message
  if template_id == 2 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.size(buffer, offset)
  end
  -- Size of Security Trading Status Message
  if template_id == 3 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.size(buffer, offset)
  end
  -- Size of Trading Session Status Message
  if template_id == 5 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.size(buffer, offset)
  end
  -- Size of Order Added Message
  if template_id == 10 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.size(buffer, offset)
  end
  -- Size of Order Deleted Message
  if template_id == 11 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.size(buffer, offset)
  end
  -- Size of Order Reduced Message
  if template_id == 12 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if template_id == 13 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if template_id == 14 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.size(buffer, offset)
  end
  -- Size of Broken Trade Message
  if template_id == 15 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.size(buffer, offset)
  end
  -- Size of Corrected Trade Message
  if template_id == 16 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.size(buffer, offset)
  end
  -- Size of Clear Book Message
  if template_id == 18 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.size(buffer, offset)
  end
  -- Size of Snapshot Complete Message
  if template_id == 100 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
boats_equities_memoirdepthfeed_sbe_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
boats_equities_memoirdepthfeed_sbe_v1_3.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Message
  if template_id == 10 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if template_id == 11 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Reduced Message
  if template_id == 12 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if template_id == 13 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if template_id == 14 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if template_id == 15 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corrected Trade Message
  if template_id == 16 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 18 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 100 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
boats_equities_memoirdepthfeed_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return boats_equities_memoirdepthfeed_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = boats_equities_memoirdepthfeed_sbe_v1_3.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.payload, range, display)

  return boats_equities_memoirdepthfeed_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
boats_equities_memoirdepthfeed_sbe_v1_3.version = {}

-- Size: Version
boats_equities_memoirdepthfeed_sbe_v1_3.version.size = 2

-- Display: Version
boats_equities_memoirdepthfeed_sbe_v1_3.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
boats_equities_memoirdepthfeed_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
boats_equities_memoirdepthfeed_sbe_v1_3.schema_id = {}

-- Size: Schema Id
boats_equities_memoirdepthfeed_sbe_v1_3.schema_id.size = 1

-- Display: Schema Id
boats_equities_memoirdepthfeed_sbe_v1_3.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
boats_equities_memoirdepthfeed_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
boats_equities_memoirdepthfeed_sbe_v1_3.template_id = {}

-- Size: Template Id
boats_equities_memoirdepthfeed_sbe_v1_3.template_id.size = 1

-- Display: Template Id
boats_equities_memoirdepthfeed_sbe_v1_3.template_id.display = function(value)
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
    return "Template Id: Order Added Message (10)"
  end
  if value == 11 then
    return "Template Id: Order Deleted Message (11)"
  end
  if value == 12 then
    return "Template Id: Order Reduced Message (12)"
  end
  if value == 13 then
    return "Template Id: Order Executed Message (13)"
  end
  if value == 14 then
    return "Template Id: Trade Message (14)"
  end
  if value == 15 then
    return "Template Id: Broken Trade Message (15)"
  end
  if value == 16 then
    return "Template Id: Corrected Trade Message (16)"
  end
  if value == 18 then
    return "Template Id: Clear Book Message (18)"
  end
  if value == 100 then
    return "Template Id: Snapshot Complete Message (100)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
boats_equities_memoirdepthfeed_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
boats_equities_memoirdepthfeed_sbe_v1_3.block_length = {}

-- Size: Block Length
boats_equities_memoirdepthfeed_sbe_v1_3.block_length.size = 2

-- Display: Block Length
boats_equities_memoirdepthfeed_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
boats_equities_memoirdepthfeed_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header = {}

-- Calculate size of: Sbe Header
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.block_length.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.template_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.schema_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.version.size

  return index
end

-- Display: Sbe Header
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = boats_equities_memoirdepthfeed_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, template_id = boats_equities_memoirdepthfeed_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = boats_equities_memoirdepthfeed_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = boats_equities_memoirdepthfeed_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sbe_header, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_message = {}

-- Display: Sbe Message
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = boats_equities_memoirdepthfeed_sbe_v1_3.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 13 branches
  index = boats_equities_memoirdepthfeed_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
boats_equities_memoirdepthfeed_sbe_v1_3.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sbe_message, buffer(offset, 0))
    local current = boats_equities_memoirdepthfeed_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    boats_equities_memoirdepthfeed_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Message Length
boats_equities_memoirdepthfeed_sbe_v1_3.message_length = {}

-- Size: Message Length
boats_equities_memoirdepthfeed_sbe_v1_3.message_length.size = 2

-- Display: Message Length
boats_equities_memoirdepthfeed_sbe_v1_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
boats_equities_memoirdepthfeed_sbe_v1_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
boats_equities_memoirdepthfeed_sbe_v1_3.message = {}

-- Display: Message
boats_equities_memoirdepthfeed_sbe_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
boats_equities_memoirdepthfeed_sbe_v1_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = boats_equities_memoirdepthfeed_sbe_v1_3.message_length.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = boats_equities_memoirdepthfeed_sbe_v1_3.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Message
boats_equities_memoirdepthfeed_sbe_v1_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message, buffer(offset, 0))
    local current = boats_equities_memoirdepthfeed_sbe_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    boats_equities_memoirdepthfeed_sbe_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
boats_equities_memoirdepthfeed_sbe_v1_3.message_count = {}

-- Size: Message Count
boats_equities_memoirdepthfeed_sbe_v1_3.message_count.size = 2

-- Display: Message Count
boats_equities_memoirdepthfeed_sbe_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
boats_equities_memoirdepthfeed_sbe_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message = {}

-- Calculate size of: Sequenced Message
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.message_count.size

  -- Parse runtime size of: Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = boats_equities_memoirdepthfeed_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = boats_equities_memoirdepthfeed_sbe_v1_3.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end

-- Dissect: Sequenced Message
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sequenced_message, range, display)
  end

  return boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages = {}

-- Calculate runtime size of: Sequenced Messages
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sequenced_messages, range, display)

  return boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
boats_equities_memoirdepthfeed_sbe_v1_3.sequence_number = {}

-- Size: Sequence Number
boats_equities_memoirdepthfeed_sbe_v1_3.sequence_number.size = 8

-- Display: Sequence Number
boats_equities_memoirdepthfeed_sbe_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
boats_equities_memoirdepthfeed_sbe_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
boats_equities_memoirdepthfeed_sbe_v1_3.session_id = {}

-- Size: Session Id
boats_equities_memoirdepthfeed_sbe_v1_3.session_id.size = 8

-- Display: Session Id
boats_equities_memoirdepthfeed_sbe_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
boats_equities_memoirdepthfeed_sbe_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
boats_equities_memoirdepthfeed_sbe_v1_3.header_length = {}

-- Size: Header Length
boats_equities_memoirdepthfeed_sbe_v1_3.header_length.size = 1

-- Display: Header Length
boats_equities_memoirdepthfeed_sbe_v1_3.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
boats_equities_memoirdepthfeed_sbe_v1_3.header_length.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
boats_equities_memoirdepthfeed_sbe_v1_3.message_type = {}

-- Size: Message Type
boats_equities_memoirdepthfeed_sbe_v1_3.message_type.size = 1

-- Display: Message Type
boats_equities_memoirdepthfeed_sbe_v1_3.message_type.display = function(value)
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
boats_equities_memoirdepthfeed_sbe_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = boats_equities_memoirdepthfeed_sbe_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_equities_memoirdepthfeed_sbe_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
boats_equities_memoirdepthfeed_sbe_v1_3.common_header = {}

-- Calculate size of: Common Header
boats_equities_memoirdepthfeed_sbe_v1_3.common_header.size = function(buffer, offset)
  local index = 0

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.message_type.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.header_length.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.session_id.size

  index = index + boats_equities_memoirdepthfeed_sbe_v1_3.sequence_number.size

  return index
end

-- Display: Common Header
boats_equities_memoirdepthfeed_sbe_v1_3.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
boats_equities_memoirdepthfeed_sbe_v1_3.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = boats_equities_memoirdepthfeed_sbe_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = boats_equities_memoirdepthfeed_sbe_v1_3.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = boats_equities_memoirdepthfeed_sbe_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = boats_equities_memoirdepthfeed_sbe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
boats_equities_memoirdepthfeed_sbe_v1_3.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3.fields.common_header, buffer(offset, 0))
    local index = boats_equities_memoirdepthfeed_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_equities_memoirdepthfeed_sbe_v1_3.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_equities_memoirdepthfeed_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
boats_equities_memoirdepthfeed_sbe_v1_3.packet = {}

-- Dissect Packet
boats_equities_memoirdepthfeed_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = boats_equities_memoirdepthfeed_sbe_v1_3.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = boats_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_boats_equities_memoirdepthfeed_sbe_v1_3.init()
end

-- Dissector for Boats Equities MemoirDepthFeed Sbe 1.3
function omi_boats_equities_memoirdepthfeed_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_boats_equities_memoirdepthfeed_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_boats_equities_memoirdepthfeed_sbe_v1_3, buffer(), omi_boats_equities_memoirdepthfeed_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return boats_equities_memoirdepthfeed_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_boats_equities_memoirdepthfeed_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_boats_equities_memoirdepthfeed_sbe_v1_3_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(25, 1):uint()

  if value == 2 then
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

-- Dissector Heuristic for Boats Equities MemoirDepthFeed Sbe 1.3
local function omi_boats_equities_memoirdepthfeed_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_boats_equities_memoirdepthfeed_sbe_v1_3_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_boats_equities_memoirdepthfeed_sbe_v1_3
  omi_boats_equities_memoirdepthfeed_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Boats Equities MemoirDepthFeed Sbe 1.3
omi_boats_equities_memoirdepthfeed_sbe_v1_3:register_heuristic("udp", omi_boats_equities_memoirdepthfeed_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Blue Ocean Ats
--   Version: 1.3
--   Date: Monday, September 1, 2025
--   Specification: MEMOIR Depth Feed (v1.3).pdf
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
