-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities MemoirDepthFeed Sbe 1.3 Protocol
local omi_memx_equities_memoirdepthfeed_sbe_v1_3 = Proto("Memx.Equities.MemoirDepthFeed.Sbe.v1.3.Lua", "Memx Equities MemoirDepthFeed Sbe 1.3")

-- Protocol table
local memx_equities_memoirdepthfeed_sbe_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Equities MemoirDepthFeed Sbe 1.3 Fields
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "memx.equities.memoirdepthfeed.sbe.v1.3.asofsequencenumber", ftypes.UINT64)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "memx.equities.memoirdepthfeed.sbe.v1.3.blocklength", ftypes.UINT16)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.common_header = ProtoField.new("Common Header", "memx.equities.memoirdepthfeed.sbe.v1.3.commonheader", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_price = ProtoField.new("Corrected Price", "memx.equities.memoirdepthfeed.sbe.v1.3.correctedprice", ftypes.DOUBLE)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_quantity = ProtoField.new("Corrected Quantity", "memx.equities.memoirdepthfeed.sbe.v1.3.correctedquantity", ftypes.UINT32)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.header_length = ProtoField.new("Header Length", "memx.equities.memoirdepthfeed.sbe.v1.3.headerlength", ftypes.UINT8)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.equities.memoirdepthfeed.sbe.v1.3.istestsymbol", ftypes.UINT8)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.message = ProtoField.new("Message", "memx.equities.memoirdepthfeed.sbe.v1.3.message", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "memx.equities.memoirdepthfeed.sbe.v1.3.messagecount", ftypes.UINT16)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "memx.equities.memoirdepthfeed.sbe.v1.3.messagelength", ftypes.UINT16)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.message_type = ProtoField.new("Message Type", "memx.equities.memoirdepthfeed.sbe.v1.3.messagetype", ftypes.UINT8)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.mpv = ProtoField.new("Mpv", "memx.equities.memoirdepthfeed.sbe.v1.3.mpv", ftypes.DOUBLE)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_id = ProtoField.new("Order Id", "memx.equities.memoirdepthfeed.sbe.v1.3.orderid", ftypes.UINT64)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.original_price = ProtoField.new("Original Price", "memx.equities.memoirdepthfeed.sbe.v1.3.originalprice", ftypes.DOUBLE)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.original_quantity = ProtoField.new("Original Quantity", "memx.equities.memoirdepthfeed.sbe.v1.3.originalquantity", ftypes.UINT32)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.packet = ProtoField.new("Packet", "memx.equities.memoirdepthfeed.sbe.v1.3.packet", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.payload = ProtoField.new("Payload", "memx.equities.memoirdepthfeed.sbe.v1.3.payload", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.price = ProtoField.new("Price", "memx.equities.memoirdepthfeed.sbe.v1.3.price", ftypes.DOUBLE)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.quantity = ProtoField.new("Quantity", "memx.equities.memoirdepthfeed.sbe.v1.3.quantity", ftypes.UINT32)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.reserved = ProtoField.new("Reserved", "memx.equities.memoirdepthfeed.sbe.v1.3.reserved", ftypes.UINT8)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.round_lot = ProtoField.new("Round Lot", "memx.equities.memoirdepthfeed.sbe.v1.3.roundlot", ftypes.UINT32)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memoirdepthfeed.sbe.v1.3.sbeheader", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memoirdepthfeed.sbe.v1.3.sbemessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memoirdepthfeed.sbe.v1.3.schemaid", ftypes.UINT8)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.security_id = ProtoField.new("Security Id", "memx.equities.memoirdepthfeed.sbe.v1.3.securityid", ftypes.UINT16)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status = ProtoField.new("Security Trading Status", "memx.equities.memoirdepthfeed.sbe.v1.3.securitytradingstatus", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "memx.equities.memoirdepthfeed.sbe.v1.3.securitytradingstatusreason", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "memx.equities.memoirdepthfeed.sbe.v1.3.sequencenumber", ftypes.UINT64)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memoirdepthfeed.sbe.v1.3.sequencedmessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.equities.memoirdepthfeed.sbe.v1.3.sequencedmessages", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.session_id = ProtoField.new("Session Id", "memx.equities.memoirdepthfeed.sbe.v1.3.sessionid", ftypes.UINT64)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "memx.equities.memoirdepthfeed.sbe.v1.3.shortsalerestriction", ftypes.UINT8)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.side = ProtoField.new("Side", "memx.equities.memoirdepthfeed.sbe.v1.3.side", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "memx.equities.memoirdepthfeed.sbe.v1.3.symbol", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memoirdepthfeed.sbe.v1.3.symbolsfx", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "memx.equities.memoirdepthfeed.sbe.v1.3.templateid", ftypes.UINT8)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "memx.equities.memoirdepthfeed.sbe.v1.3.timestamp", ftypes.UINT64)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.trade_id = ProtoField.new("Trade Id", "memx.equities.memoirdepthfeed.sbe.v1.3.tradeid", ftypes.UINT64)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "memx.equities.memoirdepthfeed.sbe.v1.3.tradingsession", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.version = ProtoField.new("Version", "memx.equities.memoirdepthfeed.sbe.v1.3.version", ftypes.UINT16)

-- Memx Equities MemoirDepthFeed Sbe 1.3 messages
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "memx.equities.memoirdepthfeed.sbe.v1.3.brokentrademessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.clear_book_message = ProtoField.new("Clear Book Message", "memx.equities.memoirdepthfeed.sbe.v1.3.clearbookmessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_trade_message = ProtoField.new("Corrected Trade Message", "memx.equities.memoirdepthfeed.sbe.v1.3.correctedtrademessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.equities.memoirdepthfeed.sbe.v1.3.instrumentdirectorymessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_added_message = ProtoField.new("Order Added Message", "memx.equities.memoirdepthfeed.sbe.v1.3.orderaddedmessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "memx.equities.memoirdepthfeed.sbe.v1.3.orderdeletedmessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_executed_message = ProtoField.new("Order Executed Message", "memx.equities.memoirdepthfeed.sbe.v1.3.orderexecutedmessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_reduced_message = ProtoField.new("Order Reduced Message", "memx.equities.memoirdepthfeed.sbe.v1.3.orderreducedmessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "memx.equities.memoirdepthfeed.sbe.v1.3.regshorestrictionmessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "memx.equities.memoirdepthfeed.sbe.v1.3.securitytradingstatusmessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "memx.equities.memoirdepthfeed.sbe.v1.3.snapshotcompletemessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.trade_message = ProtoField.new("Trade Message", "memx.equities.memoirdepthfeed.sbe.v1.3.trademessage", ftypes.STRING)
omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "memx.equities.memoirdepthfeed.sbe.v1.3.tradingsessionstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx Equities MemoirDepthFeed Sbe 1.3 Element Dissection Options
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
show.trade_message = true
show.trading_session_status_message = true
show.payload = false
show.sequenced_messages = false

-- Register Memx Equities MemoirDepthFeed Sbe 1.3 Show Options
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_corrected_trade_message = Pref.bool("Show Corrected Trade Message", show.corrected_trade_message, "Parse and add Corrected Trade Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_added_message = Pref.bool("Show Order Added Message", show.order_added_message, "Parse and add Order Added Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_reduced_message = Pref.bool("Show Order Reduced Message", show.order_reduced_message, "Parse and add Order Reduced Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_security_trading_status_message = Pref.bool("Show Security Trading Status Message", show.security_trading_status_message, "Parse and add Security Trading Status Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.broken_trade_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_broken_trade_message
    changed = true
  end
  if show.clear_book_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_clear_book_message then
    show.clear_book_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_common_header then
    show.common_header = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_common_header
    changed = true
  end
  if show.corrected_trade_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_corrected_trade_message then
    show.corrected_trade_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_corrected_trade_message
    changed = true
  end
  if show.instrument_directory_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_message then
    show.message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_message
    changed = true
  end
  if show.order_added_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_added_message then
    show.order_added_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_added_message
    changed = true
  end
  if show.order_deleted_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_deleted_message then
    show.order_deleted_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_executed_message then
    show.order_executed_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_executed_message
    changed = true
  end
  if show.order_reduced_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_reduced_message then
    show.order_reduced_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_order_reduced_message
    changed = true
  end
  if show.packet ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_packet then
    show.packet = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.reg_sho_restriction_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.sbe_header ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_header then
    show.sbe_header = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.security_trading_status_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_security_trading_status_message then
    show.security_trading_status_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_security_trading_status_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.trade_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trade_message then
    show.trade_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trade_message
    changed = true
  end
  if show.trading_session_status_message ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_payload then
    show.payload = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_memx_equities_memoirdepthfeed_sbe_v1_3.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities MemoirDepthFeed Sbe 1.3
-----------------------------------------------------------------------

-- As Of Sequence Number
memx_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number = {}

-- Size: As Of Sequence Number
memx_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
memx_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
memx_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Timestamp
memx_equities_memoirdepthfeed_sbe_v1_3.timestamp = {}

-- Size: Timestamp
memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size = 8

-- Display: Timestamp
memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Snapshot Complete Message
memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.size

-- Display: Snapshot Complete Message
memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, as_of_sequence_number = memx_equities_memoirdepthfeed_sbe_v1_3.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.snapshot_complete_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Id
memx_equities_memoirdepthfeed_sbe_v1_3.security_id = {}

-- Size: Security Id
memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size = 2

-- Display: Security Id
memx_equities_memoirdepthfeed_sbe_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Clear Book Message
memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message = {}

-- Size: Clear Book Message
memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size

-- Display: Clear Book Message
memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.clear_book_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Price
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price = {}

-- Size: Corrected Price
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.size = 8

-- Display: Corrected Price
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Price
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.translate(raw)
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity = {}

-- Size: Corrected Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.size = 4

-- Display: Corrected Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.display = function(value)
  return "Corrected Quantity: "..value
end

-- Dissect: Corrected Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_quantity, range, value, display)

  return offset + length, value
end

-- Original Price
memx_equities_memoirdepthfeed_sbe_v1_3.original_price = {}

-- Size: Original Price
memx_equities_memoirdepthfeed_sbe_v1_3.original_price.size = 8

-- Display: Original Price
memx_equities_memoirdepthfeed_sbe_v1_3.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
memx_equities_memoirdepthfeed_sbe_v1_3.original_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Price
memx_equities_memoirdepthfeed_sbe_v1_3.original_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.original_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirdepthfeed_sbe_v1_3.original_price.translate(raw)
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity = {}

-- Size: Original Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.size = 4

-- Display: Original Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.display = function(value)
  return "Original Quantity: "..value
end

-- Dissect: Original Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.original_quantity, range, value, display)

  return offset + length, value
end

-- Trade Id
memx_equities_memoirdepthfeed_sbe_v1_3.trade_id = {}

-- Size: Trade Id
memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.size = 8

-- Display: Trade Id
memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Corrected Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message = {}

-- Size: Corrected Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.original_price.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.size

-- Display: Corrected Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: 4 Byte Unsigned Fixed Width Integer
  index, original_quantity = memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: 8 Byte Signed Fixed Width Integer
  index, original_price = memx_equities_memoirdepthfeed_sbe_v1_3.original_price.dissect(buffer, index, packet, parent)

  -- Corrected Quantity: 4 Byte Unsigned Fixed Width Integer
  index, corrected_quantity = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Price: 8 Byte Signed Fixed Width Integer
  index, corrected_price = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.corrected_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.corrected_trade_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message = {}

-- Size: Broken Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.original_price.size

-- Display: Broken Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: 4 Byte Unsigned Fixed Width Integer
  index, original_quantity = memx_equities_memoirdepthfeed_sbe_v1_3.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: 8 Byte Signed Fixed Width Integer
  index, original_price = memx_equities_memoirdepthfeed_sbe_v1_3.original_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.broken_trade_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
memx_equities_memoirdepthfeed_sbe_v1_3.price = {}

-- Size: Price
memx_equities_memoirdepthfeed_sbe_v1_3.price.size = 8

-- Display: Price
memx_equities_memoirdepthfeed_sbe_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
memx_equities_memoirdepthfeed_sbe_v1_3.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
memx_equities_memoirdepthfeed_sbe_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirdepthfeed_sbe_v1_3.price.translate(raw)
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.quantity = {}

-- Size: Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.quantity.size = 4

-- Display: Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
memx_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.trade_message = {}

-- Size: Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.quantity.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.price.size

-- Display: Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = memx_equities_memoirdepthfeed_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.trade_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
memx_equities_memoirdepthfeed_sbe_v1_3.order_id = {}

-- Size: Order Id
memx_equities_memoirdepthfeed_sbe_v1_3.order_id.size = 8

-- Display: Order Id
memx_equities_memoirdepthfeed_sbe_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Executed Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message = {}

-- Size: Order Executed Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.order_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.quantity.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.price.size

-- Display: Order Executed Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_equities_memoirdepthfeed_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = memx_equities_memoirdepthfeed_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_executed_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Reduced Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message = {}

-- Size: Order Reduced Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.order_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.quantity.size

-- Display: Order Reduced Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reduced Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reduced Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_reduced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_reduced_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message = {}

-- Size: Order Deleted Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.order_id.size

-- Display: Order Deleted Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_deleted_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Side
memx_equities_memoirdepthfeed_sbe_v1_3.side = {}

-- Size: Side
memx_equities_memoirdepthfeed_sbe_v1_3.side.size = 1

-- Display: Side
memx_equities_memoirdepthfeed_sbe_v1_3.side.display = function(value)
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
memx_equities_memoirdepthfeed_sbe_v1_3.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirdepthfeed_sbe_v1_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.side, range, value, display)

  return offset + length, value
end

-- Order Added Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message = {}

-- Size: Order Added Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.order_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.side.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.quantity.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.price.size

-- Display: Order Added Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memoirdepthfeed_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = memx_equities_memoirdepthfeed_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_equities_memoirdepthfeed_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = memx_equities_memoirdepthfeed_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Message
memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.order_added_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session = {}

-- Size: Trading Session
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session.size = 1

-- Display: Trading Session
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session.display = function(value)
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
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirdepthfeed_sbe_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Trading Session Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message = {}

-- Size: Trading Session Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.trading_session.size

-- Display: Trading Session Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Ascii String Enum with 4 values
  index, trading_session = memx_equities_memoirdepthfeed_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.trading_session_status_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Reason
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason = {}

-- Size: Security Trading Status Reason
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.size = 1

-- Display: Security Trading Status Reason
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.display = function(value)
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
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Security Trading Status
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status = {}

-- Size: Security Trading Status
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.size = 1

-- Display: Security Trading Status
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.display = function(value)
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
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message = {}

-- Size: Security Trading Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.size

-- Display: Security Trading Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Ascii String Enum with 4 values
  index, security_trading_status = memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status Reason: 1 Byte Ascii String Enum with 3 values
  index, security_trading_status_reason = memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.security_trading_status_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Restriction
memx_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction = {}

-- Size: Short Sale Restriction
memx_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
memx_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.display = function(value)
  if value == 0 then
    return "Short Sale Restriction: False (0)"
  end
  if value == 1 then
    return "Short Sale Restriction: True (1)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
memx_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Reg Sho Restriction Message
memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.size

-- Display: Reg Sho Restriction Message
memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, short_sale_restriction = memx_equities_memoirdepthfeed_sbe_v1_3.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_restriction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Mpv
memx_equities_memoirdepthfeed_sbe_v1_3.mpv = {}

-- Size: Mpv
memx_equities_memoirdepthfeed_sbe_v1_3.mpv.size = 8

-- Display: Mpv
memx_equities_memoirdepthfeed_sbe_v1_3.mpv.display = function(value)
  return "Mpv: "..value
end

-- Translate: Mpv
memx_equities_memoirdepthfeed_sbe_v1_3.mpv.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mpv
memx_equities_memoirdepthfeed_sbe_v1_3.mpv.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.mpv.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memoirdepthfeed_sbe_v1_3.mpv.translate(raw)
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.mpv, range, value, display)

  return offset + length, value
end

-- Is Test Symbol
memx_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol = {}

-- Size: Is Test Symbol
memx_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.size = 1

-- Display: Is Test Symbol
memx_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
memx_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Reserved
memx_equities_memoirdepthfeed_sbe_v1_3.reserved = {}

-- Size: Reserved
memx_equities_memoirdepthfeed_sbe_v1_3.reserved.size = 1

-- Display: Reserved
memx_equities_memoirdepthfeed_sbe_v1_3.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
memx_equities_memoirdepthfeed_sbe_v1_3.reserved.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.reserved, range, value, display)

  return offset + length, value
end

-- Round Lot
memx_equities_memoirdepthfeed_sbe_v1_3.round_lot = {}

-- Size: Round Lot
memx_equities_memoirdepthfeed_sbe_v1_3.round_lot.size = 4

-- Display: Round Lot
memx_equities_memoirdepthfeed_sbe_v1_3.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
memx_equities_memoirdepthfeed_sbe_v1_3.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.round_lot.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
memx_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx = {}

-- Size: Symbol Sfx
memx_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.size = 6

-- Display: Symbol Sfx
memx_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
memx_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.size
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

  local display = memx_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Symbol
memx_equities_memoirdepthfeed_sbe_v1_3.symbol = {}

-- Size: Symbol
memx_equities_memoirdepthfeed_sbe_v1_3.symbol.size = 6

-- Display: Symbol
memx_equities_memoirdepthfeed_sbe_v1_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_equities_memoirdepthfeed_sbe_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.symbol.size
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

  local display = memx_equities_memoirdepthfeed_sbe_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message = {}

-- Size: Instrument Directory Message
memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.security_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.symbol.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.round_lot.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.reserved.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.mpv.size

-- Display: Instrument Directory Message
memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_equities_memoirdepthfeed_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: 2 Byte Unsigned Fixed Width Integer
  index, security_id = memx_equities_memoirdepthfeed_sbe_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memoirdepthfeed_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memoirdepthfeed_sbe_v1_3.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Round Lot: 4 Byte Unsigned Fixed Width Integer
  index, round_lot = memx_equities_memoirdepthfeed_sbe_v1_3.round_lot.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = memx_equities_memoirdepthfeed_sbe_v1_3.reserved.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, is_test_symbol = memx_equities_memoirdepthfeed_sbe_v1_3.is_test_symbol.dissect(buffer, index, packet, parent)

  -- Mpv: 8 Byte Signed Fixed Width Integer
  index, mpv = memx_equities_memoirdepthfeed_sbe_v1_3.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_equities_memoirdepthfeed_sbe_v1_3.payload = {}

-- Size: Payload
memx_equities_memoirdepthfeed_sbe_v1_3.payload.size = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.size
  end
  -- Size of Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.size
  end
  -- Size of Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.size
  end
  -- Size of Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.size
  end
  -- Size of Order Added Message
  if template_id == 10 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.size
  end
  -- Size of Order Deleted Message
  if template_id == 11 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.size
  end
  -- Size of Order Reduced Message
  if template_id == 12 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.size
  end
  -- Size of Order Executed Message
  if template_id == 13 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.size
  end
  -- Size of Trade Message
  if template_id == 14 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.size
  end
  -- Size of Broken Trade Message
  if template_id == 15 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.size
  end
  -- Size of Corrected Trade Message
  if template_id == 16 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.size
  end
  -- Size of Clear Book Message
  if template_id == 18 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.size
  end
  -- Size of Snapshot Complete Message
  if template_id == 100 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.size
  end

  return 0
end

-- Display: Payload
memx_equities_memoirdepthfeed_sbe_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_equities_memoirdepthfeed_sbe_v1_3.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if template_id == 2 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Message
  if template_id == 3 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.security_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 5 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Message
  if template_id == 10 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if template_id == 11 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Reduced Message
  if template_id == 12 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_reduced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if template_id == 13 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if template_id == 14 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if template_id == 15 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corrected Trade Message
  if template_id == 16 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.corrected_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 18 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.clear_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 100 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_equities_memoirdepthfeed_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_equities_memoirdepthfeed_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirdepthfeed_sbe_v1_3.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.payload, range, display)

  return memx_equities_memoirdepthfeed_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_equities_memoirdepthfeed_sbe_v1_3.version = {}

-- Size: Version
memx_equities_memoirdepthfeed_sbe_v1_3.version.size = 2

-- Display: Version
memx_equities_memoirdepthfeed_sbe_v1_3.version.display = function(value)
  if value == 259 then
    return "Version: Version 1.3"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
memx_equities_memoirdepthfeed_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_equities_memoirdepthfeed_sbe_v1_3.schema_id = {}

-- Size: Schema Id
memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.size = 1

-- Display: Schema Id
memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.display = function(value)
  if value == 2 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_equities_memoirdepthfeed_sbe_v1_3.template_id = {}

-- Size: Template Id
memx_equities_memoirdepthfeed_sbe_v1_3.template_id.size = 1

-- Display: Template Id
memx_equities_memoirdepthfeed_sbe_v1_3.template_id.display = function(value)
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
memx_equities_memoirdepthfeed_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_equities_memoirdepthfeed_sbe_v1_3.block_length = {}

-- Size: Block Length
memx_equities_memoirdepthfeed_sbe_v1_3.block_length.size = 2

-- Display: Block Length
memx_equities_memoirdepthfeed_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_equities_memoirdepthfeed_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header = {}

-- Size: Sbe Header
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.block_length.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.template_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.version.size

-- Display: Sbe Header
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_equities_memoirdepthfeed_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, template_id = memx_equities_memoirdepthfeed_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_equities_memoirdepthfeed_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sbe_header, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message = {}

-- Calculate size of: Sbe Message
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_equities_memoirdepthfeed_sbe_v1_3.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_equities_memoirdepthfeed_sbe_v1_3.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 13 branches
  index = memx_equities_memoirdepthfeed_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sbe_message, range, display)
  end

  return memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent)
end

-- Message Length
memx_equities_memoirdepthfeed_sbe_v1_3.message_length = {}

-- Size: Message Length
memx_equities_memoirdepthfeed_sbe_v1_3.message_length.size = 2

-- Display: Message Length
memx_equities_memoirdepthfeed_sbe_v1_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_equities_memoirdepthfeed_sbe_v1_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
memx_equities_memoirdepthfeed_sbe_v1_3.message = {}

-- Calculate size of: Message
memx_equities_memoirdepthfeed_sbe_v1_3.message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memoirdepthfeed_sbe_v1_3.message_length.size

  index = index + memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Message
memx_equities_memoirdepthfeed_sbe_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_equities_memoirdepthfeed_sbe_v1_3.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_equities_memoirdepthfeed_sbe_v1_3.message_length.dissect(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memoirdepthfeed_sbe_v1_3.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
memx_equities_memoirdepthfeed_sbe_v1_3.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = memx_equities_memoirdepthfeed_sbe_v1_3.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.message, range, display)
  end

  return memx_equities_memoirdepthfeed_sbe_v1_3.message.fields(buffer, offset, packet, parent)
end

-- Message Count
memx_equities_memoirdepthfeed_sbe_v1_3.message_count = {}

-- Size: Message Count
memx_equities_memoirdepthfeed_sbe_v1_3.message_count.size = 2

-- Display: Message Count
memx_equities_memoirdepthfeed_sbe_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_equities_memoirdepthfeed_sbe_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message = {}

-- Size: Sequenced Message
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_equities_memoirdepthfeed_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = memx_equities_memoirdepthfeed_sbe_v1_3.message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sequenced_message, range, display)
  end

  return memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages = {}

-- Size: Sequenced Messages
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sequenced_messages, range, display)

  return memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
memx_equities_memoirdepthfeed_sbe_v1_3.sequence_number = {}

-- Size: Sequence Number
memx_equities_memoirdepthfeed_sbe_v1_3.sequence_number.size = 8

-- Display: Sequence Number
memx_equities_memoirdepthfeed_sbe_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_equities_memoirdepthfeed_sbe_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
memx_equities_memoirdepthfeed_sbe_v1_3.session_id = {}

-- Size: Session Id
memx_equities_memoirdepthfeed_sbe_v1_3.session_id.size = 8

-- Display: Session Id
memx_equities_memoirdepthfeed_sbe_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_equities_memoirdepthfeed_sbe_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
memx_equities_memoirdepthfeed_sbe_v1_3.header_length = {}

-- Size: Header Length
memx_equities_memoirdepthfeed_sbe_v1_3.header_length.size = 1

-- Display: Header Length
memx_equities_memoirdepthfeed_sbe_v1_3.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_equities_memoirdepthfeed_sbe_v1_3.header_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_equities_memoirdepthfeed_sbe_v1_3.message_type = {}

-- Size: Message Type
memx_equities_memoirdepthfeed_sbe_v1_3.message_type.size = 1

-- Display: Message Type
memx_equities_memoirdepthfeed_sbe_v1_3.message_type.display = function(value)
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
memx_equities_memoirdepthfeed_sbe_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memoirdepthfeed_sbe_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memoirdepthfeed_sbe_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_equities_memoirdepthfeed_sbe_v1_3.common_header = {}

-- Size: Common Header
memx_equities_memoirdepthfeed_sbe_v1_3.common_header.size =
  memx_equities_memoirdepthfeed_sbe_v1_3.message_type.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.header_length.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.session_id.size + 
  memx_equities_memoirdepthfeed_sbe_v1_3.sequence_number.size

-- Display: Common Header
memx_equities_memoirdepthfeed_sbe_v1_3.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_equities_memoirdepthfeed_sbe_v1_3.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_equities_memoirdepthfeed_sbe_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_equities_memoirdepthfeed_sbe_v1_3.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memoirdepthfeed_sbe_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_equities_memoirdepthfeed_sbe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_equities_memoirdepthfeed_sbe_v1_3.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3.fields.common_header, buffer(offset, 0))
    local index = memx_equities_memoirdepthfeed_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memoirdepthfeed_sbe_v1_3.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memoirdepthfeed_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_equities_memoirdepthfeed_sbe_v1_3.packet = {}

-- Dissect Packet
memx_equities_memoirdepthfeed_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_equities_memoirdepthfeed_sbe_v1_3.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = memx_equities_memoirdepthfeed_sbe_v1_3.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_equities_memoirdepthfeed_sbe_v1_3.init()
end

-- Dissector for Memx Equities MemoirDepthFeed Sbe 1.3
function omi_memx_equities_memoirdepthfeed_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_equities_memoirdepthfeed_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_equities_memoirdepthfeed_sbe_v1_3, buffer(), omi_memx_equities_memoirdepthfeed_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return memx_equities_memoirdepthfeed_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_memx_equities_memoirdepthfeed_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_equities_memoirdepthfeed_sbe_v1_3.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(25, 1):uint()

  if value == 2 then
    return true
  end

  return false
end

-- Verify Version Field
memx_equities_memoirdepthfeed_sbe_v1_3.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(26, 2):uint()

  if value == 259 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Equities MemoirDepthFeed Sbe 1.3
local function omi_memx_equities_memoirdepthfeed_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_equities_memoirdepthfeed_sbe_v1_3.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not memx_equities_memoirdepthfeed_sbe_v1_3.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_equities_memoirdepthfeed_sbe_v1_3.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_equities_memoirdepthfeed_sbe_v1_3
  omi_memx_equities_memoirdepthfeed_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities MemoirDepthFeed Sbe 1.3
omi_memx_equities_memoirdepthfeed_sbe_v1_3:register_heuristic("udp", omi_memx_equities_memoirdepthfeed_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.3
--   Date: Monday, April 5, 2021
--   Specification: MEMOIR Depth Feed-v1_3.pdf
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
